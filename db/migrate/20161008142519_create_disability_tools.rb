class CreateDisabilityTools < ActiveRecord::Migration[5.0]
  def change
    create_table :disability_tools do |t|
      t.string :notes
      t.string :condition
      t.integer :severity
      t.string :firstname
      t.string :lastname

      t.timestamps
    end
  end
end
