class CreateDepartments < ActiveRecord::Migration[5.1]
  def change
    create_table :departments do |t|
      t.string :name
      t.text :body
      t.belongs_to :shop, foreign_key: true

      t.timestamps
    end
  end
end
