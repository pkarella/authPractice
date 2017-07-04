class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.column :name, :string
      t.column :content, :string

     t.timestamps
    end
  end
end
