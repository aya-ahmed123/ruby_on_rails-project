class CreateLects < ActiveRecord::Migration
  def change
    create_table :lects do |t|
      t.string :title
      t.string :content
      t.string :attach
      t.references :user, index: true, foreign_key: true
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
