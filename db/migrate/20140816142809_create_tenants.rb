class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.string :telephone, unique: true, null: false

      t.timestamps
    end
    add_index :tenants, :telephone, unique: true
  end
end
