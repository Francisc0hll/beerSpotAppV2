class LocationsController < ApplicationController
  def get_location
  end

  def find_address
    response = { address: Geocoder.address([params[:latitude], params[:longitude]]) }    
    render json: response.to_json
  end
end
