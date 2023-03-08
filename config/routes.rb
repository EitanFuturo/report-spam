Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :api do
    post :report_spam, controller: :report_spam, action: :notify_to_slack
  end
end
