class SessionsController < ApplicationController
  skip_before_action :login_required, only: [:new, :create]

  def new
  end

  def create
    email = params[:session][:email].downcase
    password = params[:session][:password]
    if login(email, password)
      p 'ログインしました'
      #flash[:success] = 'ログインに成功しました。'
      redirect_to new_session_path #user_path(@user.id)
    else
      p 'ログインに失敗しました'
      #flash.now[:danger] = 'ログインに失敗しました。'
      render 'new'
    end
  end
  
  def destroy
    session.delete(:user_id)
    flash[:notice] = 'ログアウトしました'
    redirect_to new_session_path
  end

  private

  def login(email, password)
    @user = User.find_by(email: email)
    if @user && @user.authenticate(password)
      session[:user_id] = @user.id
      return true
    else
      return false
    end
  end
end
