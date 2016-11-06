class BeercoloursController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @beercolours = Beercolour.all
  end

  def new
    @beercolour = Beercolour.new
  end

  def create
    @beercolour = Beercolour.new post_params

    if @beercolour.save
      redirect_to beercolours_path, notice: "Colour has been saved!!!"
    else
      render 'new', notice: "Colour could not be saved"
    end
  end

  def show
  end

  def edit
  end

  def update
    if @beercolour.update post_params
      redirect_to beercolours_path, notice: "Colour has been updated!!!"
    else
      render 'edit'
    end
  end

  def destroy
    @beercolour.destroy
    redirect_to beercolours_path
  end

  private
  def post_params
    params.require(:beercolour).permit(:name,:image)
  end

  def find_post
    @beercolour = Beercolour.find(params[:id])
  end


end
