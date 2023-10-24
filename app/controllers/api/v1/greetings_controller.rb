class Api::V1::GreetingsController < ApplicationController
    def random_greeting
        @random_greeting = Message.order('Random()').first
        render json: {message: @random_greeting.content}
    end
end
