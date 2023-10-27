class CreateGarbages < ActiveRecord::Migration[6.1]
  def change
    create_table :garbages do |t|
      t.string :title
      t.string :image
      t.string :address
      t.text :about
      t.text :body

      
      t.timestamps
    end
  end
end
