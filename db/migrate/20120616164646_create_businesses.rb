class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :url
      t.string :phone
      t.string :manager
      t.string :email
      t.boolean :mobile
      t.boolean :foursquare
      t.boolean :facebook
      t.boolean :yelp
      t.boolean :google
      t.text :description
      t.integer :type_id

      t.timestamps
    end
  end
end
