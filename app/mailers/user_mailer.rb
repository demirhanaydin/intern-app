class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def new_user_notification user
    @user = user
    mail to: 'demirhanaydin@gmail.com', subject: "New User!"
  end

  if Rails.env.development?
    class UserMailer::Preview < MailView
      def new_user_notification
        user = User.first
        ::UserMailer.new_user_notification(user)
      end
    end
  end
end
