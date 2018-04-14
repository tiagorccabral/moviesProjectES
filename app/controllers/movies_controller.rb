class MoviesController < ApplicationController
  before_action :find_id, only: [:show, :edit, :update, :destroy]

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      flash[:notice] = "O filme foi criado com sucesso"
      redirect_to movies_path
    else
      flash[:danger] = "O filme não foi criado"
      redirect_to new_movie_path
    end
  end

  def edit
  end

  def update

    if @movie.update(movie_params)
      flash[:notice] = "O filme foi editado com sucesso!"
      redirect_to @movie
    else
      render 'edit'
    end
  end

  def show
  end

  def destroy
    @movie.destroy
    redirect_to movies_path
  end

  private
    def find_id
      @movie = Movie.find(params[:id])
    end
    def movie_params
      params.require(:movie).permit(:title, :description, :director, :release_date)
    end
end