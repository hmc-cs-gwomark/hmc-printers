class CreateStats < ActiveRecord::Migration[5.1]
  def change
    create_table :stats do |t|
      t.string :ids
      t.string :issue
      t.string :status
      t.timestamps
    end
  end
end
