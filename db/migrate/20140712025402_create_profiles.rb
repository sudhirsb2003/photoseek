class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :full_name
      t.integer :camera_type_id
      t.string :camera_model_name
      t.string :profession
      t.string :mobile_number

      t.timestamps
    end
  end
end
