class RemoveImageUrlColumnFromRackets < ActiveRecord::Migration[6.0]
  def change
    remove_column :rackets, :image_url, :string
  end
end
