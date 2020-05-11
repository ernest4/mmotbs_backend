class CreateMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :maps do |t|
      t.string :name
      t.jsonb :tiles

      t.timestamps
    end

    add_index :maps, :tiles, :using => :gin
  end
end
