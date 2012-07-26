class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.hello.subject
  #
  def hello
    @greeting = "Hi"
    mail to: @user.mail
    #UserMailer.hello(user).deliver
  end
end
