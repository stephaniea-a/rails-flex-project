class CreateUserPoses < ActiveRecord::Migration[5.1]
  def change
    create_table :user_poses, id: false do |t|
      t.belongs_to :pose
      t.belongs_to :user
      t.text :comment
      t.timestamps
    end
  end
end
