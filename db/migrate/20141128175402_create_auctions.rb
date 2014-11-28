class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.string :title
      t.text :details
      t.date :ends
      t.decimal :reserve
      t.decimal :current, :default => 0.0

      t.timestamps
    end
  end

end
