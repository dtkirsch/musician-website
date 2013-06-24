class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.text :content
      t.boolean :public
      t.boolean :link

      t.timestamps
    end
  end
end
