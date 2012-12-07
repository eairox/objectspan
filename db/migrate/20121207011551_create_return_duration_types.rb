class CreateReturnDurationTypes < ActiveRecord::Migration
  def change
    create_table :return_duration_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
