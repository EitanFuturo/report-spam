require "net/http"

class HttpClient
  attr_reader :uri

  def initialize(uri)
    @uri = URI(uri)
  end

  def post(message)
    http.use_ssl = uri.instance_of?(URI::HTTPS)
    body = { text: message }.to_json
    request["Content-Type"] = "application/json"
    request.body = body
    response = http.request(request)
    case response.code
    when "200", "201", "202", "203", "204"
      puts(response.body) if response.body.present?
    else
      raise StandardError, response.body
    end
  end

  private

  def http
    @http ||= Net::HTTP.new(uri.host, uri.port)
  end

  def request
    @request ||= Net::HTTP::Post.new(uri.request_uri)
  end
end