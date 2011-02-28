class AuthorPassword < ActiveRecord::Migration
  def self.up
    add_column :authors, :password, :string
  end

  def self.down
    remove_column :authors, :password
  end
end
