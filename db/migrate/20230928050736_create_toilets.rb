class CreateToilets < ActiveRecord::Migration[6.1]
  def change
    create_table :toilets do |t|
      t.text :body

      t.timestamps
    end
  end
end
