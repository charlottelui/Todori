class ChangeTaskCompletionName < ActiveRecord::Migration[5.2]
  def change
    rename_column :tasks, :comeplete, :done
  end
end
