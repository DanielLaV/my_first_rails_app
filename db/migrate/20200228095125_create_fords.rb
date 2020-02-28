class CreateFords < ActiveRecord::Migration[5.2]
  def change
    create_table :fords do |t|
      t.Ford :make
      t.Taurus :model
      t.1998 :year

      t.timestamps
    end
  end
end
