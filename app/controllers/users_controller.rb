class UsersController < ApplicationController



  def user_id
    user_id = session[:user_id]
  end

  def create
    http_response = Http.post("http://localhost:3000/signup.json", json: { user: { email: params[:session][:email], name: params[:session][:name], password: params[:session][:password], password_confirmation: params[:session][:password_confirmation] } })

    if http_response.code == 201
      user = JSON.parse(http_response)
      session[:email] = user["email"]
      session[:id] = user["id"]
      session[:key]   = user["key"]

      redirect_to root_path, notice: "You've signed up! :)"
    else
      flash.now[:alert] = "Oops! Something wrong with your credentials."
    end
  end
end
