class WelcomeController < ApplicationController
  def index
    @beerposts = Beerpost.all.limit(3).order("created_at desc")
  end
end
