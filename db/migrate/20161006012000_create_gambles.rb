class CreateGambles < ActiveRecord::Migration[5.0]
  def change
    create_table :gambles do |t|
      t.integer :amount
      t.string :username	
      t.timestamps
    end
  end
end
