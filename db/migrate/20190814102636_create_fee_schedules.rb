class CreateFeeSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :fee_schedules do |t|

      t.string :market_id, limit: 20, null: true, index: true, foreign_key: true
      t.string :group, limit: 32, null: true, index: true

      t.decimal :maker, precision: 5, scale: 4, default: 0, null: false
      t.decimal :taker, precision: 5, scale: 4, default: 0, null: false

      t.timestamps
    end

    add_index :fee_schedules, %i[market_id group], unique: true
  end
end
