class CreatePoses < ActiveRecord::Migration[5.1]
  def change
    create_table :poses do |t|
      t.belongs_to :user, index: true
      t.belongs_to :category, index: true
      t.string :name
      t.string :sanskrit_name
      t.string :image
      t.text :description
      t.integer :difficulty_level
      t.timestamps
    end
  end
end
