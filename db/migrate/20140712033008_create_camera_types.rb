class CreateCameraTypes < ActiveRecord::Migration
  def change
    create_table :camera_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
