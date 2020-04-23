class CreateMeters < ActiveRecord::Migration[6.0]
  def change
    create_table :meters do |t|
      t.integer :energy_consumed
      t.integer :total_energy_credits
      t.integer :energy_credits_rate
      t.integer :balance

      t.timestamps
    end
  end
end
