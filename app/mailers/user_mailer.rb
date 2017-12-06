class UserMailer < ApplicationMailer

  default from: "aboodkhadra.herokuapp.com"

 def contact_form(email, name, message)
 @message = message
   mail(from: email,
        to: 'aboodkhadra2017@gmail.com',
        subject: "A new contact form message from #{name}")
 end
end
