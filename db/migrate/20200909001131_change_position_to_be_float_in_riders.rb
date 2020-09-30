class ChangePositionToBeFloatInRiders < ActiveRecord::Migration[6.0]
  def change
    change_column :riders, :position, 'float[] USING CAST(position AS float[])'
  end
end
