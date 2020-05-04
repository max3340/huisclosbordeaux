class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :youtube
      t.string :site
      t.references :souscategory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
