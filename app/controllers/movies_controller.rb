class MoviesController < ApplicationController
  
  before_action :load_movie, only: [:show, :edit, :update, :destroy]

  def index
  	@movies = Movie.all 
  end

  def show
  end

  def new
  	@movie = Movie.new
  end

  def edit
  end

  def update
    if @movie.update_attributes(movie_params)
      redirect_to movies_path, notice: "#{@movie.title} was updated successfully"
    else
      render :show
    end
  end

  def create
  	@movie = Movie.new(movie_params)

  	if @movie.save
  		redirect_to movies_path, notice: "#{@movie.title} was submitted successfully!"
  	else
  		render :new
  	end
  end

  def destroy
  	@movie.destroy
  	redirect_to movies_path, notice: "#{@movie.title} was destroyed successfully!"
  end

  protected

  def movie_params
  	params.require(:movie).permit(
  		:title, :release_date, :director, :runtime_in_minutes, :poster, :description
  		)
  end

  def load_movie
    @movie = Movie.find(params[:id])
  end

end
