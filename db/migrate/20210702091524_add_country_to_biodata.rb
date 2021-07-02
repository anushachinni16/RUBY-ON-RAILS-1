class AddCountryToBiodata < ActiveRecord::Migration[6.1]
  def change
    add_column :biodata, :country, :string
  end
end
