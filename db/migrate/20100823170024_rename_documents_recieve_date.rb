class RenameDocumentsRecieveDate < ActiveRecord::Migration
  def self.up
	rename_column :documents, :recieve_date, :receive_date
  end

  def self.down
	rename_column :documents, :receive_date, :recieve_date
  end
end
