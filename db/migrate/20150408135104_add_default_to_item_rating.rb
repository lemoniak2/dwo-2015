class AddDefaultToItemRating < ActiveRecord::Migration
  def change
    change_column :items, :rating, :integer, default: 0
  end
end
