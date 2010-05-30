class AddDevCopyToPages < ActiveRecord::Migration
  def self.up
    add_column :pages, :dev_copy_of, :integer
  end

  def self.down
    remove_column :pages, :dev_copy_of
  end
end
