class CreateIssues < ActiveRecord::Migration[6.0]
  def change
    create_table :issues do |t|
      t.string :title
      t.text :description
      t.integer :status

      t.timestamps
    end
  end
end
