class CreateStockModels < ActiveRecord::Migration[5.2]
  def change
    create_table :stock_models do |t|
      t.string :ticker
      t.string :name
      t.decimal :last_price

      t.timestamps
    end
  end
end
