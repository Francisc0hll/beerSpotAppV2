class CommentsController < ApplicationController
  
  def new
    @comment = Comment.new
  end
  
  def create
    
    @beerspot = BeerSpot.find(params[:beer_spot_id])
		@comment = Comment.new(content:params[:comment][:content], user: current_user)
		@comment.beer_spot = @beerspot
    @comment.save
    redirect_to @beerspot
  end

  def comment_params
      params.require(:comment).permit(:content)
  end
end
