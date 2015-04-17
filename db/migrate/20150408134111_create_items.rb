class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.string :image
      t.integer :rating

      t.timestamps null: false
    end
  end
end
