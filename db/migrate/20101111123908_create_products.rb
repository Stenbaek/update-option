class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.references :user
      t.string :name
      t.string :webaddress

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
