class BeerSpotsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  def index
    @beerspots=BeerSpot.all
    @beer_spot = BeerSpot.new
    @hash=Gmaps4rails.build_markers(@beerspots) do|beerspot, marker|  
      marker.lat  beerspot.latitude  
      marker.lng  beerspot.longitude
      marker.picture({
                  :url => "/markerbs.png",
                  :width   => 36,
                  :height  => 36
                 })
      marker.infowindow beerspot.name
    end

    respond_to do |format|
      format.html
      format.json {@hash.to_json}
    end
    
  end

  def new
    @beer_spot = BeerSpot.new
  end

  def create
    
    @beerspot = BeerSpot.new(beer_spot_params)
    @beerspot.user_id = current_user.id

    respond_to do |format|
      if @beerspot.save
        format.html { redirect_to @beerspot, notice: 'beerspot was successfully created.' }
        format.json { render :show, status: :created, location: @beerspot }
        format.js{}
      else
        format.html { render :new }
        format.json { render json: @beerspot.errors, status: :unprocessable_entity }
        format.js{}
      end
    end

  end

  def show
    @beerspot = BeerSpot.find(params[:id])
    @comments = Comment.all
  end

  def destroy
    @beerspot.destroy
    respond_to do |format|
      format.html { redirect_to beer_spots_url, notice: 'BeerSpot was successfully destroyed.' }
      format.json { head :no_content }
      format.js{}
    end
  end

  private
  
    # Never trust parameters from the scary internet, only allow the white list through.
    def beer_spot_params
      params.require(:beer_spot).permit(:name, :address, :qualification, :post)
    end
end
