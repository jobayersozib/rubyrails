class AddField < ActiveRecord::Migration
  def up
    add_column :books, :name, :integer
  end
  
  
end
