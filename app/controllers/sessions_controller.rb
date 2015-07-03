class SessionsController < ApplicationController
  def new
  end

  def create
    http_response = Http.post("http://localhost:3000/signin.json", json: { email: params[:session][:email], password: params[:session][:password] })

    if http_response.code == 200
      user = JSON.parse(http_response)
      session[:email] = user["email"]
      session[:user_id] = user["id"]

      redirect_to root_path, notice: "Signed..... In.😎"
    else
      flash.now[:alert] = "Couldn't log ya in :/."
    end

  end

  def delete
    # session.destroy :email
    session[:email] = nil
    redirect_to root_path
  end
end
