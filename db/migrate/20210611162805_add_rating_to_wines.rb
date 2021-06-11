class AddRatingToWines < ActiveRecord::Migration[5.2]
  def change
    add_column :wines, :rating, :string
  end
end
