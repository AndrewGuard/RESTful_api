class CreateConsumers < ActiveRecord::Migration
  def change
    create_table :consumers do |t|
      t.string :name
      t.integer :extension

      t.timestamps
    end
  end
end
