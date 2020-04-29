class AddEmailToPlayer < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :email, :string

    add_index :players, :email
    add_index :players, :name
  end
end
