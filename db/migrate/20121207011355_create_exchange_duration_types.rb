class CreateExchangeDurationTypes < ActiveRecord::Migration
  def change
    create_table :exchange_duration_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
