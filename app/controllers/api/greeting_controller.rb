module Api
  class GreetingController < ApplicationController
    def all_greeting
      render json: { greetings: Greeting.order('RANDOM()').first&.content }
    end
  end
end
