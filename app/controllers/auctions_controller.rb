class AuctionsController < ApplicationController
  # app/controllers/auctions_controller.rb
  def index
    @auction = Auction.all
  end

  def new
  end

  def create
    @auction = Auction.new(params.require(:auction).permit([:title, :details, :ends, :reserve, :current]))
    if @auction.save
      redirect_to @auction
    else
      render :new
    end
  end

  def show
    @auction = Auction.find(params[:id])
    @bid = @auction.bids.all
  end

  def edit
    @auction = Auction.find(params[:id])
  end

  def update
    @auction = Auction.find(params[:id])
    if @auction.update_attributes(params.require(:auction).permit([:title, :details, :ends, :reserve, :current]))
      redirect_to @auction
    else
      render :edit
    end
  end
end

