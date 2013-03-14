class Category < ActiveRecord::Base
  has_many :links, :class_name => "Link", :foreign_key => "category_id"
  belongs_to :user, :class_name => "User", :foreign_key => "user_id"
  validates_presence_of :name
  validates_length_of :name, :maximum => 30
  def is_global?
    return self.global
  end
  def admin_only?
    return self.admin
  end
  
end
