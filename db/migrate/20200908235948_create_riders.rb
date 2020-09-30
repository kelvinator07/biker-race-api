class CreateRiders < ActiveRecord::Migration[6.0]
  def change
    create_table :riders do |t|
      t.string :firstname
      t.string :lastname
      t.string :city
      t.string :state
      t.integer :position, array: true, default:[]

      t.timestamps
    end
  end
end
