class UserController < ApplicationController
 
  before_filter :require_login, :except => [:signup,:login,:forgot_password]

  def signup
    @user = User.new(params[:user])
    if request.post?  
      if @user.save
        session[:user] = User.authenticate(@user.login, @user.password)
        flash[:message] = "Signup successful"
        redirect_to :action => "login"          
      else
        flash[:warning] = "Signup unsuccessful"     
      end
    end
  end

  def login
 #if user = User.authenticate(params[:username], params[:password])
  #session[:current_user_id] = user.id
      #redirect_to :action=>"welcome"
# end
    if request.post?
      if user = User.authenticate(params[:user][:login], params[:user][:password])
puts "===================================="
session[:current_user_id]=user.id
        flash[:message]  = "Login successful"
        redirect_to :action =>"welcome"
      else
        flash[:warning] = "Login unsuccessful"
      end
    end
  end

  def logout
    session[:user] = nil
    reset_session
    flash[:message] = 'Logged out'
    redirect_to :action => 'login'
  end

  def forgot_password
    if request.post?
      u= User.find_by_email(params[:user][:email])
      if u and u.send_new_password
        flash[:message]  = "A new password has been sent by email."
        redirect_to :action=>'login'
      else
        flash[:warning]  = "Couldn't send password"
      end
    end
  end

  def change_password
    @user=session[:user]
    if request.post?
      @user.update_attributes(:password=>params[:user][:password], :password_confirmation => params[:user][:password_confirmation])
      if @user.save
        flash[:message]="Password Changed"
      end
    end
  end

  def welcome


  end
  def hidden
  end
  def current_user
    @current_user ||= session[:current_user_id] && User.find(session[:current_user_id])
  end
private

  
def logged_in?
    !current_user
  end
end
