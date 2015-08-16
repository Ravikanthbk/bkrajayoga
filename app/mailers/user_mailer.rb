class UserMailer < ApplicationMailer
 default from: 'rajayoga@singnet.com.sg'
 
  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: "Receipt: #{@user.admin_event.name} on #{@user.admin_event.date_from.strftime("%b %d, %Y at %I:%M%p")}")
  end
end
