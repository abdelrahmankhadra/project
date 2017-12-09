class SimplePagesController < ApplicationController
  def index;
  end

  def landing_page
    @products = Product.limit(3)
    @featured_product = Product.first
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    ActionMailer::Base.mail(
      from: @email ,to: 'aboodkhadra2017@gmail.com',
      subject: "A new contact from message from #{@name}",
      body:@message).deliver_now
    UserMailer.contact_form(@email, @name, @message).deliver_now
  end
end
