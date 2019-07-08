class BeerSpotsController < ApplicationController
  def index
    @beerspots=BeerSpot.all
    # @hash=Gmaps4rails.build_markers(@beerspots) do|beerspot, marker|  
    #   marker.lat  beerspot.latitude  
    #   marker.lng  beerspot.longitude
    # end
  end

  def create
  end

  def show
    @beerspot = BeerSpot.find(params[:id])
  end

  private
  
    # Never trust parameters from the scary internet, only allow the white list through.
    def beer_spot_params
      params.require(:beerspot).permit(:name, :address, :qualification)
    end
end
