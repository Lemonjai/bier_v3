class BeerpostsController < ApplicationController
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

  private
    def post_params
      params.require(:beerpost).permit(:title)
    end
end
