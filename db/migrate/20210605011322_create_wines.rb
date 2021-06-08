class CreateWines < ActiveRecord::Migration[5.2]
  def change
    create_table :wines do |t|
      t.string :producer_name
      t.string :wine_name
      t.string  :ava
      t.integer :vintage
      t.string :varietal
      t.integer :user_id
    end 
  end
end
