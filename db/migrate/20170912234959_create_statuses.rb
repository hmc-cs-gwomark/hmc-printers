class CreateStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :statuses do |t|
      t.string :printer
      t.text :description

      t.timestamps
    end
  end
end
