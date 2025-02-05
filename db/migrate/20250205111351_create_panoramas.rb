class CreatePanoramas < ActiveRecord::Migration[8.0]
  def change
    create_table :panoramas do |t|
      t.timestamps
    end
  end
end
