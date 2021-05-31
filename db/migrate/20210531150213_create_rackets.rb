class CreateRackets < ActiveRecord::Migration[6.0]
  def change
    create_table :rackets do |t|
      t.string :name
      t.string :location
      t.text :description
      t.string :brand
      t.string :image_url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
