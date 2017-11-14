class CreateDays < ActiveRecord::Migration[5.1]
  def change
    create_table :days do |t|
      t.column :name, :string
      t.column :week_id, :integer

      t.timestamps
    end
  end
end
