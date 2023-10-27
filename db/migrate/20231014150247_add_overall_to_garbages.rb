class AddOverallToGarbages < ActiveRecord::Migration[6.1]
  def change
    add_column :garbages, :overall, :integer
  end
end
