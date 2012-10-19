class ApplicationController < ActionController::Base
 before_filter :require_login
   def login_required
    if session[:user]
      return true
    end
    flash[:warning]='Please login to continue'
    session[:return_to]=request.request_uri
    redirect_to :controller => "user", :action => "lgout"
    return true
  end

  def current_user
    session[:user]
  end

  def redirect_to_stored
    if return_to = session[:return_to]
      session[:return_to]=nil
      redirect_to_url(return_to)
    else
      redirect_to :controller=>'user', :action=>'logout'
    end
  end
def require_login
    unless !session[:current_user_id].nil?
      flash[:error] = "You must be logged in to access this section" 
      redirect_to :action => 'login' # Prevents the current action from running
    end
  end
end
