class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.column :name, :string, :null => false
      t.column :description, :string, :null => false
      t.column :user_id, :integer, :null => false
      t.column :created_at, :datetime, :null => false
      t.column :updated_at, :datetime, :null => false
      t.column :global, :boolean, :null => false, :default => false
      t.column :admin, :boolean, :null => false, :default => false
    end
  end

  def self.down
    drop_table :categories
  end
end
