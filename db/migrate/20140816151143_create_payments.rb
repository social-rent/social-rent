class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :contract, index: true
      t.boolean :full, default: true

      t.timestamps
    end
  end
end
