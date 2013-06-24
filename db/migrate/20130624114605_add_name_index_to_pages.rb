class AddNameIndexToPages < ActiveRecord::Migration
  def change
    add_index :pages, :name, :unique => true
    add_index :pages, :home
  end
end
