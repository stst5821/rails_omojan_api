module Api
  class MainController < ApplicationController
    def index
      @mains = Main.all
      render json: {
        status: 'success',
        data: @mains
      }, status: :ok
    end

    def create
      @main = Main.new(main_params)
      if @main.save
        render json: {
          status: 'success',
          data: @main
        }, status: :ok
      else
        render json: {
          status: 'error',
          message: @main.errors.full_messages
        }, status: :unprocessable_entity
      end
    end

    private

    def main_params
      params.require(:main).permit(:name)
    end
  end
end