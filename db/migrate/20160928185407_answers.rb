class Answers < ActiveRecord::Migration[5.0]
  def change
      create_table :answers do |t|
        t.string :content
        t.integer :question_id

        t.timestamps null: false
      end
  end
end
