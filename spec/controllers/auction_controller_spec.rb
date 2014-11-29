require 'rails_helper'

RSpec.describe AuctionsController, :type => :controller do
    describe "#new" do

      it "assigns a vaiable @auctions" do
        get :new
        expect(assigns(:auction)).to be_an_instance_of Auction
      end
    end

# describe "GET index" do
#     it "assigns @teams" do
#       team = Team.create
#       get :index
#       expect(assigns(:teams)).to eq([team])
#     end

#     it "renders the index template" do
#       get :index
#       expect(response).to render_template("index")
#     end
#   end

end
