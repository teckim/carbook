class V1::CarsController < ApplicationController
    def index
        @cars = Car.all
        render json: @cars
    end

    def show
        @car = Car.find(params[:id])
        render json: @car
    end

    def create
        @car = Car.new(car_parms)
        @car.user = User.first
        @car.save
        render json: @car
    end

    def update
        @car = Car.find(params[:id])
        @car.update(car_parms)
        render json: "#{@car.brand} has been update!"
    end

    def destroy
        @car = Car.all
        @car = Car.find(params[:id])
        @car.destroy
        render json: "#{@car.brand} has been deleted!"
    end

    def car_parms
        params.require(:car).permit(:brand, :model, :image, :price, :description)
    end
end
