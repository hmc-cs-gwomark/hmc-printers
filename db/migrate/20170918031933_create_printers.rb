class CreatePrinters < ActiveRecord::Migration[5.1]
  def change
    create_table :printers do |t|
      t.string :name
      t.string :ids
      t.string :status
      t.string :issue
      t.timestamps
    end
  end
end
