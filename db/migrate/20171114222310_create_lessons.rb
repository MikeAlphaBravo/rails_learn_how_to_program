class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.column :description, :string
      t.column :day_id, :integer

      t.timestamps
    end
  end
end
