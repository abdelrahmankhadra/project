class UserMailer < ApplicationMailer
  default from: "aboodkhadra2017@gmail.com"

 def contact_form(email, name, message)
 @message = message
   mail(  to: 'aboodkhadra2017@gmail.com',
        subject: "A new contact form message from #{name}",
      body: "A new contact from message from #{message}")
 end
end
