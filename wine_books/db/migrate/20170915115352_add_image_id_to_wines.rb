class AddImageIdToWines < ActiveRecord::Migration[5.1]
  def change
    add_column :wines, :image_id, :string
  end
end
