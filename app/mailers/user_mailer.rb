class UserMailer < ApplicationMailer
  default from: "abdelrahmankhadra@gmail.com"

 def contact_form(email, name, message)
 @message = message
   mail(  to: 'abdelrahmankhadra@gmail.com',
        subject: "A new contact form message from #{name}",
      body: "A new contact from message from #{message}")
 end

  def welcome(user)
    @appname = "abdelrahmankhadra Shop"
    mail(to: user.email,
        subject: "Welcome to #{@appname}!")
  end
end
