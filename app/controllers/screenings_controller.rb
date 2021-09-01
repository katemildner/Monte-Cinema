# frozen_string_literal: true

class ScreeningsController < ApplicationController
  before_action :set_screening, only: %i[show update destroy]

  def index
    @screenings = Screening.all

    render json: @screenings
  end

  def show
    render json: @screening
  end

  def create
    @screening = Screening.new(screening_params)

    if @screening.save
      render json: @screening, status: :created, location: @screening
    else
      render json: @screening.errors, status: :unprocessable_entity
    end
  end

  def update
    if @screening.update(screening_params)
      render json: @screening
    else
      render json: @screening.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @screening.destroy
  end

  private

  def set_screening
    @screening = Screening.find(params[:id])
  end

  def screening_params
    params.require(:screening).permit(:starting_date_and_time, :cinema_hall_id, :movie_id)
  end
end
