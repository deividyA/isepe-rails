class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :name
      t.date :born
      t.string :email

      t.timestamps
    end
  end
end
