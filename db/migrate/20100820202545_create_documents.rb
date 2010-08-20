class CreateDocuments < ActiveRecord::Migration
  def self.up
    create_table :documents do |t|
      t.string :name
      t.datetime :in_date
      t.datetime :out_date
      t.datetime :recieve_date
      t.text :description
      t.references :status

      t.timestamps
    end
  end

  def self.down
    drop_table :documents
  end
end
