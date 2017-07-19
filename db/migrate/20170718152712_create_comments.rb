class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.belongs_to :user, index: true
      t.belongs_to :pose, index: true
      t.string :name
      t.text :comment
      t.string :pose_id
      t.timestamps
    end
  end
end
