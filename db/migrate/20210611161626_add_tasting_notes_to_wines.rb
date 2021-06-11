class AddTastingNotesToWines < ActiveRecord::Migration[5.2]
  def change
    add_column :wines, :tasting_notes, :text
  end
end
