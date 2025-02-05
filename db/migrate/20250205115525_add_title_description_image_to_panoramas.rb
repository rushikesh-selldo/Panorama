class AddTitleDescriptionImageToPanoramas < ActiveRecord::Migration[8.0]
  def change
    add_column :panoramas, :title, :string
    add_column :panoramas, :description, :string
    add_column :panoramas, :image, :string
  end
end
