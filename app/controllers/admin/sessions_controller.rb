module Admin
  class SessionsController < BaseController
    def new
    end

    def create
      user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        login_in user
        redirect_to admin_posts_path
      else
        flash.now[:alert] = 'ログイン情報違います'
        render 'new'
      end
    end

    def destroy
      logout
      redirect_to admin_login_path
    end
  end

end
