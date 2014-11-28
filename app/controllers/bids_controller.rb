
  # app/controllers/comments_controller.rb
class BidsController < ApplicationController
  # def new
  # end

  def create
    @auction = Auction.find(params[:auction_id])
    @bid = @auction.bids.new(params.require(:bid).permit([:price,:day]))

    if @bid.price > @auction.current

      if @bid.save
        @auction.current = @bid.price
        @auction.save
        redirect_to @auction
      else
        render @auction
      end

    else
      flash[:notice] = "Bid must be larger than current price."
      redirect_to @auction
    end


  end
end

