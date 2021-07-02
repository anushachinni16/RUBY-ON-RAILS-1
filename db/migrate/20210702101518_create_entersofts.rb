class CreateEntersofts < ActiveRecord::Migration[6.1]
  def change
    create_table :entersofts do |t|
      t.string :fullname
      t.string :fathername
      t.string :email
      t.integer :mobilenumber
      t.string :location
      t.boolean :areureadytorelocate
      t.integer :btechpercentage

      t.timestamps
    end
  end
end
