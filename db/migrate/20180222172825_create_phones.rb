class CreatePhones < ActiveRecord::Migration[5.1]
  def change
    create_table :phones do |t|
      t.integer :digits
      t.boolean :status
      t.belongs_to :office, foreign_key: true

      t.timestamps
    end
  end
end
