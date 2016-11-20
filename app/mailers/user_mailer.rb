class UserMailer < ApplicationMailer
# default from: 'events@brahmakumaris.org.sg'
 default from: "Brahma Kumaris <bkevents.sg@gmail.com>"
 
  def welcome_email(user)
    @user = user
#    mail(to: @user.email, subject: "Receipt: #{@user.admin_event.name} on #{@user.admin_event.date_from.strftime("%b %d, %Y at %I:%M%p")}")
    mail(to: @user.email, bcc: ["bkevents.sg@gmail.com"],
         subject: "Receipt: #{@user.admin_event.name} on #{@user.admin_event.date_from.strftime("%b %d, %Y at %I:%M%p")}")    
  end
end
