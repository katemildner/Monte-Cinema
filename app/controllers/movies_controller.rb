# frozen_string_literal: true

class MoviesController < ApplicationController
  before_action :set_movie, only: %i[show update destroy]

  def index
    @movies = Movie.all

    render json: @movies, except: forbidden_params
  end

  def show
    render json: @movie, except: forbidden_params
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      render json: @movie, status: :created, except: forbidden_params
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  def update
    if @movie.update(movie_params)
      render json: @movie, except: forbidden_params
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @movie.destroy
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :description, :director, :genre, :duration)
  end

  def forbidden_params
    %w[created_at updated_at]
  end
end
