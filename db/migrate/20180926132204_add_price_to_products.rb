class AddPriceToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :price, :money
  end
end
