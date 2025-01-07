class CreateMains < ActiveRecord::Migration[8.0]
  def change
    create_table :mains do |t|
      t.string :name

      t.timestamps
    end
  end
end
