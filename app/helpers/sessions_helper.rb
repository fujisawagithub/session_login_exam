module SessionsHelper
  def create
    user = User.find_by(email: params[:session][:email].downcase)
  end
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  def logged_in?
    current_user.present?
  end
end

