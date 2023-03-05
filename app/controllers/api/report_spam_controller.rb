module Api
  class ReportSpamController < ApplicationController
    def create
      puts Rails.application.credentials.slack_webhook_url
    end
  end
end
