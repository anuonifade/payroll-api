# frozen_string_literal: true

class CreatePayroll < ActiveRecord::Migration[7.1]
  def change
    create_table :payrolls do |t|
      t.references :document, null: false, foreign_key: true
      t.references :employee, null: false, foreign_key: true
      t.integer :job_group, default: 0
      t.date :pay_date, null: false
      t.integer :hours_worked, null: false
      t.decimal :amount_paid, precision: 10, scale: 2

      t.timestamps
    end
  end
end
