class CreateWines < ActiveRecord::Migration[5.2]
  def change
    t.string :producer_name
    t.string  :AVA
    t.integer :vintage
    t.string: :varietal
    
  end
end
