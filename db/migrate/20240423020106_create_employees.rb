# frozen_string_literal: true

class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, null: false, index: { unique: true, name: 'unique_email' }
      t.timestamps
    end
  end
end
