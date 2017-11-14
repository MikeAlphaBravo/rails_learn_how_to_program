class CreateWeeks < ActiveRecord::Migration[5.1]
  def change
    create_table :weeks do |t|
      t.column :name, :string

      t.timestamps
    end
  end
end


# example to make a new column:
# rails generate migration add_column-name_to_table-name column-name:string


#rails db:migrate

#rails db:test:prepare
