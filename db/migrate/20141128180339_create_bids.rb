class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.decimal :price
      t.date :day, default: Date.today
      t.references :auction, index: true

      t.timestamps
    end
  end
end
