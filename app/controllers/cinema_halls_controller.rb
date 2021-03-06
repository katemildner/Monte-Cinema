# frozen_string_literal: true

class CinemaHallsController < ApplicationController
  before_action :set_cinema_hall, only: %i[show update destroy]

  def index
    @cinema_halls = CinemaHall.all

    render json: @cinema_halls, except: forbidden_params
  end

  def show
    render json: @cinema_hall, except: forbidden_params
  end

  def create
    @cinema_hall = CinemaHall.new(cinema_hall_params)

    if @cinema_hall.save
      render json: @cinema_hall, status: :created, except: forbidden_params
    else
      render json: @cinema_hall.errors, status: :unprocessable_entity
    end
  end

  def update
    if @cinema_hall.update(cinema_hall_params)
      render json: @cinema_hall, except: forbidden_params
    else
      render json: @cinema_hall.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @cinema_hall.destroy
  end

  private

  def set_cinema_hall
    @cinema_hall = CinemaHall.find(params[:id])
  end

  def cinema_hall_params
    params.require(:cinema_hall).permit(:name, :number_of_rows, :number_of_seats_per_row)
  end

  def forbidden_params
    %w[created_at updated_at]
  end
end
