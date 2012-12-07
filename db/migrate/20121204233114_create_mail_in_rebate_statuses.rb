class CreateMailInRebateStatuses < ActiveRecord::Migration
  def change
    create_table :mail_in_rebate_statuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
