class CreateJoinTablePhoneScript < ActiveRecord::Migration[5.1]
  def change
    create_join_table :phones, :scripts do |t|
      # t.index [:phone_id, :script_id]
      # t.index [:script_id, :phone_id]
    end
  end
end
