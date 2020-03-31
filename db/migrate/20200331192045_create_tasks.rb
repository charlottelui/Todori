class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.boolean :comeplete, default: false
      t.datetime :due_date
      t.references :bucket

      t.timestamps
    end
  end
end
