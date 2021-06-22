class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show 
    @movie = Movie.find(params[:id])
    @review = Review.new 
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to movies_path
    else
      render :new
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to movies_path
    else
      render :new
    end
  end


  def destroy
    @movie = Movie.find(params[:id])
    if @movie.destroy
      redirect_to movies_path
    end
  end

  def reviews
    @review = Review.create(review_params)
    if @review.save
      redirect_to movies_path
    end
  end


  def top
    @movies = Movie.top_rate
  end

  def search  
    if params[:search].blank?  
      redirect_to(root_path, alert: "Empty field!") and return  
    else  
      @parameter = params[:search].downcase  
      @movies = Movie.all.where("lower(name) LIKE :search", search: @parameter)  
    end  
  end


  def review_params
    params.require(:review).permit(:user_id ,:movie_id ,:rating ,:comment  )
  end

  def movie_params
    params.require(:movie).permit(:name, :discription, :category ,:release_date ,:rating, :image)
  end
end
