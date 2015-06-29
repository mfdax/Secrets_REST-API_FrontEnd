class SecretsController < ApplicationController
  def index
    @secrets = JSON.parse Http.headers("api-key" => "876bd5798a6fe2d3").get("http://localhost:3000/secrets/all.json")
  end

  def new
  end

  def create
    http_response = Http.headers("api-key" => "sup3r53cure4p1k3y").post("http://localhost:3000/newsecret.json", json: {secret: {content: params[:secret][:content]}})

    if http_response.code == 201
      redirect_to root_path, notice: "Posted new secret! :)"
    else
      flash.now[:alert] = "Nahh. Not working"
    end
  end
end
