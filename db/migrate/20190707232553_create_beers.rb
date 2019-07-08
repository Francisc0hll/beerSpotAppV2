class CreateBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :brand
      t.string :style
      t.string :qualification

      t.timestamps
    end
  end
end
