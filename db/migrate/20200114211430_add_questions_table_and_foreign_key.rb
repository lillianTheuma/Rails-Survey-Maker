class AddQuestionsTableAndForeignKey < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.column(:name, :string)
      t.column(:survey_id, :int)
      t.column(:answer1, :string)
      t.column(:answer2, :string)
      t.column(:answer3, :string)
      t.timestamps()
    end
    add_foreign_key :questions, :surveys
  end
end
