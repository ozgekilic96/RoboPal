class CreateRobots < ActiveRecord::Migration[7.0]
  def change
    create_table :robots do |t|
      t.string :robot_name
      t.string :category
      t.string :description
      t.integer :price
      t.string :robot_pictures
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
