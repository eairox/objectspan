class CreateDurationFrequencies < ActiveRecord::Migration
  def change
    create_table :duration_frequencies do |t|
      t.string :name

      t.timestamps
    end
  end
end
