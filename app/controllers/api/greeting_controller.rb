class Api::GreetingController < ApplicationController
    def all_greeting
        render json: { greeting: Greeting.order('RANDOM()').first&.content }
    end
end