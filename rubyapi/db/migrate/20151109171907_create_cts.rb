class CreateCts < ActiveRecord::Migration
  def change
    create_table :cts do |t|
      t.string :title
      t.string :name
      t.string :description
      t.string :url

      t.timestamps null: false
    end
  end
end
