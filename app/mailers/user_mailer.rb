class UserMailer < ApplicationMailer
  default from: "emanhamdancf@gmail.com"

 def contact_form(email, name, message)
 @message = message
   mail(  to: 'emanhamdancf@gmail.com',
        subject: "A new contact form message from #{name}",
      body: "A new contact from message from #{message}")
 end
end
