class CreateCalls < ActiveRecord::Migration[5.1]
  def change
    create_table :calls do |t|
      t.integer :duration
      t.text :note
      t.string :outcome
      t.string :who
      t.belongs_to :user, foreign_key: true
      t.belongs_to :phone, foreign_key: true
      t.belongs_to :script, foreign_key: true

      t.timestamps
    end
  end
end
