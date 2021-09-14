class ChangeStatusToStringInIssues < ActiveRecord::Migration[6.0]
  def change
    change_column :issues, :status, :string
  end
end
