class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :photo
      t.belongs_to :zoo

      t.timestamps
    end
  end
end
