class V1::GreetingsController < ApplicationController
  def random
    random_greetings = Greeting.all.order('random()').first
    render json: random_greetings, only: [:text]
  end
end
