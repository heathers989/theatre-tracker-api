class WelcomeController < ApplicationController
    def index
        render json: { status: 200, message: "Theatre Tracker API" }
      end
end
