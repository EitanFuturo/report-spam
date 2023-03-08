class SlackNotifier
  def notify(message)
    post slack_webhook_url, message
  end

  private

  def slack_webhook_url
    Rails.application.credentials.slack_webhook_url
  end

  def post(url, message)
    HttpClient.new(url).post(message)
  end
end