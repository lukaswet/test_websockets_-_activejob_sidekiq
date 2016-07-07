class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :type_model
      t.integer :model_id

      t.timestamps
    end
  end
end
