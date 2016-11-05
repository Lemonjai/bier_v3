class BeerpostsController < ApplicationController

  before_action :find_post, only: [:show, :edit, :update, :destroy] 

  def index
  end

  def new
    @beerpost = Beerpost.new
  end

  def create
    @beerpost = Beerpost.new post_params

    if @beerpost.save
      redirect_to @beerpost, notice: "Beer Post saved!!!"
    else
      render 'new', notice: "Cannot be saved!!!"
    end
  end

  def show
  end

  def edit
  end

  def update
    if @beerpost.update post_params
      redirect_to @beerpost, notice: "Updated!!!"
    else
      render 'edit'
    end
  end

  def destroy
    @beerpost.destroy
    redirect_to beerposts_path
  end

  private
    def post_params
      params.require(:beerpost).permit(:title, :image)
    end

    def find_post
      @beerpost = Beerpost.find(params[:id])
    end
end
