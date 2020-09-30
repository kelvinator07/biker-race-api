class ChangePositionToBeNumericInRiders < ActiveRecord::Migration[6.0]
  def change
    change_column :riders, :position, 'float[] USING CAST(position AS float[])', precision: 5, scale: 2
  end
end
