# frozen_string_literal: true

class ScreeningsController < ApplicationController
  before_action :set_screening, only: %i[show update destroy]

  # GET /screenings
  def index
    @screenings = Screening.all

    render json: @screenings
  end

  # GET /screenings/1
  def show
    render json: @screening
  end

  # POST /screenings
  def create
    @screening = Screening.new(screening_params)

    if @screening.save
      render json: @screening, status: :created, location: @screening
    else
      render json: @screening.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /screenings/1
  def update
    if @screening.update(screening_params)
      render json: @screening
    else
      render json: @screening.errors, status: :unprocessable_entity
    end
  end

  # DELETE /screenings/1
  def destroy
    @screening.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_screening
    @screening = Screening.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def screening_params
    params.require(:screening).permit(:starting_date_and_time, :cinema_hall_id, :movie_id)
  end
end
