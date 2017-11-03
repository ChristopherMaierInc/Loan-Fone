class CreateConditions < ActiveRecord::Migration[5.1]
  def change
    create_table :conditions do |t|
      t.string :ctype
      t.string :description

      t.timestamps
    end
  end
end
