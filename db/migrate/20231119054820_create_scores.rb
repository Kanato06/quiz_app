class CreateScores < ActiveRecord::Migration[7.1]
  def change
    create_table :scores do |t|
      t.integer :score_value

      t.timestamps
    end
  end
end
