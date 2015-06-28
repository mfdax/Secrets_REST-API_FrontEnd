class SecretsController < ApplicationController
  def index
    @secrets = JSON.parse Http.headers("api-key" => "876bd5798a6fe2d3").get("http://localhost:3000/secrets/all.json")
  end

  def new
  end

  def create
  end
end
