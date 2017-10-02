class CreateWines < ActiveRecord::Migration[5.1]
  def change
    create_table :wines do |t|
      t.string :wine_name
      t.text :description

      t.timestamps
    end
  end
end
