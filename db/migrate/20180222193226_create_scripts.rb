class CreateScripts < ActiveRecord::Migration[5.1]
  def change
    create_table :scripts do |t|
      t.string :title
      t.text :body
      t.string :description
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
