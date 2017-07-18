class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.belongs_to :pose, index: true
      t.belongs_to :user, index: true
      t.text :comment
      t.timestamps
    end
  end
end
