class AddMarriedToBiodata < ActiveRecord::Migration[6.1]
  def change
    add_column :biodata, :married, :boolean
  end
end
