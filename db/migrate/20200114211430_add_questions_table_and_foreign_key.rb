class AddQuestionsTableAndForeignKey < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.column(:name, :string)
      t.column(:survey_id, :int)
      t.timestamps()
    end
    add_foreign_key :questions, :surveys
  end
end
