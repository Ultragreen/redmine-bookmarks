class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :links do |t|
      t.column :label, :string, :null => false
      t.column :url, :string, :null => false
      t.column :description, :string
      t.column :category_id, :integer
      t.column :created_at, :datetime, :null => false
      t.column :updated_at, :datetime, :null => false
      t.column :user_id, :integer, :null => false
      t.column :global, :boolean, :null => false, :default => false
      t.column :admin, :boolean, :null => false, :default => false
    end
  end

  def self.down
    drop_table :links
  end
end
