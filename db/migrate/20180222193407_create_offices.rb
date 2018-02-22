class CreateOffices < ActiveRecord::Migration[5.1]
  def change
    create_table :offices do |t|
      t.string :title
      t.belongs_to :organization, foreign_key: true

      t.timestamps
    end
  end
end
