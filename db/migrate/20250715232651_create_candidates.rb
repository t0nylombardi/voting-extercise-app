# frozen_string_literal: true

class CreateCandidates < ActiveRecord::Migration[7.0]
  def change
    # standard:disable Rails/DangerousColumnNames
    create_table :candidates, id: false do |t|
      t.string :id, primary_key: true
      t.string :name, null: false
      t.integer :vote_count, default: 0

      t.timestamps
    end
    # standard:enable Rails/DangerousColumnNames

    add_index :candidates, :name
  end
end
