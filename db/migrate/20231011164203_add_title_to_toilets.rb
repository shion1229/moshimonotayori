class AddTitleToToilets < ActiveRecord::Migration[6.1]
  def change
    add_column :toilets, :title, :string
    add_column :toilets, :address, :string
    add_column :toilets, :about, :text
  end
end
