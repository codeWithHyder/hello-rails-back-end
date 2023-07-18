class GreetingsController < ApplicationController
  def random_greeting
    random_greeting = Greeting.select(:message).order('RANDOM()').first

    if random_greeting
      render json: { message: random_greeting.message }
    else
      render json: { message: 'No greetings found.' }, status: :not_found
    end
  end
end
