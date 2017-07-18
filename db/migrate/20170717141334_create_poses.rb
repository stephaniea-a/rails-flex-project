class CreatePoses < ActiveRecord::Migration[5.1]
  def change
    create_table :poses do |t|
      t.belongs_to :user, index: true
      t.string :name
      t.string :image
      t.string :description
      t.integer :difficulty_level
      t.timestamps
    end
  end
end
