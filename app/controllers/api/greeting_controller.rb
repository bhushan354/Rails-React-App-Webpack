module Api
  class GreetingController < ApplicationController
    def all_greeting
      @greetings = Greeting.all
      render json: { greetings: @greetings }, status: :ok
    end
  end
end
