module Api
  class ReportSpamController < ApplicationController
    def notify_to_slack
      slack_notifier.notify(message) if is_spam? && email.present?
    end

    private

    def message
      "SPAM ALERT! Sent from #{email} on #{formatted_timestamp}."
    end

    def is_spam?
      params["Type"] == "SpamNotification"
    end

    def email
      params["Email"]
    end

    def formatted_timestamp
      params['BouncedAt'].to_datetime.strftime("%m/%d/%Y at %I:%M%p")
    end

    def slack_notifier
      SlackNotifier.new
    end
  end
end
