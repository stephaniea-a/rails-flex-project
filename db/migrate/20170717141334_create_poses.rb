class CreatePoses < ActiveRecord::Migration[5.1]
  def change
    create_table :poses do |t|
      t.string :name
      t.string :sanskrit_name
      t.string :image
      t.text :description
      t.string :difficulty_level
      t.timestamps
    end


  end
end
