class AddImageToToilets < ActiveRecord::Migration[6.1]
  def change
    add_column :toilets, :image, :string
  end
end
