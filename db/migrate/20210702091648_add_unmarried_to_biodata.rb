class AddUnmarriedToBiodata < ActiveRecord::Migration[6.1]
  def change
    add_column :biodata, :unmarried, :boolean
  end
end
