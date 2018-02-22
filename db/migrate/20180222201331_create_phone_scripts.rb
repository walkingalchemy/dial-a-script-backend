class CreatePhoneScripts < ActiveRecord::Migration[5.1]
  def change
    create_table :phone_scripts do |t|
      t.belongs_to :script, foreign_key: true
      t.belongs_to :phone, foreign_key: true

      t.timestamps
    end
  end
end
