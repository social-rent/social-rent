class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.references :landlord, index: true
      t.references :tenant, index: true
      t.integer :payment_due_date
      t.date :start_date
      t.date :end_date
      t.integer :credit_union

      t.timestamps
    end
  end
end
