module Api
  class GreetingController < ApplicationController
    def all_greeting
      render json: { greeting: Greeting.order('RANDOM()').first&.content }
    end
  end
end
