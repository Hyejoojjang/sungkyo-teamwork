class UserMailer < ApplicationMailer
    default from: 'hwj20215@likelion.org'
    layout 'awesome'
 
    def welcome_email
      @user = params[:user]
      @url  = 'http://localhost:3000/users/sign_in'
      mail(to: @user.email, subject: 'Welcome to My Awesome Site')
    end
end
