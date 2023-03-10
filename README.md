## Deployment
To deploy the app to a production environment, follow these steps:

- Create a [Slack Webhook](https://api.slack.com/messaging/webhooks).
- Add your Slack Webhook to your credentials under the key `slack_webhook_url`.
  - Use the command `rails credentials:edit` to edit your `credentials.yml.enc file`. More about credentials in the [Rails Guides](https://edgeguides.rubyonrails.org/security.html#custom-credentials).
- Set up a production environment with the necessary dependencies.
    - Execute `bundle install`.
- Run the web application in production environment.
  - Execute `RAILS_ENV=production rails s`