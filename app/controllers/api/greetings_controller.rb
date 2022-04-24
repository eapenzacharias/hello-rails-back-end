class Api::GreetingsController < ApplicationController
  def index
    render json: Greeting.all.sample(1)[0]
  end
end
