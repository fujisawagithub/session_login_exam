module SessionsHelper
  def create
    user = User.find_by(email: params[:session][:email].downcase)
  end
end
