class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :role
      t.string :description
      t.string :email
      t.string :instagram
      t.string :liens

      t.timestamps
    end
  end
end
