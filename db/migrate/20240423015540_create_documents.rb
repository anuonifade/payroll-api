# frozen_string_literal: true

class CreateDocuments < ActiveRecord::Migration[7.1]
  def change
    create_table :documents do |t|
      t.integer :file_id, null: false, index: { unique: true, name: 'unique_file_id' }
      t.string :document_name, null: false
      t.timestamps
    end
  end
end
