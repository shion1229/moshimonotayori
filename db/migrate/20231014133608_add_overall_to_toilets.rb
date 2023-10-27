class AddOverallToToilets < ActiveRecord::Migration[6.1]
  def change
    add_column :toilets, :overall, :integer
  end
end
