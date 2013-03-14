class Link < ActiveRecord::Base
  belongs_to :category, :class_name => "Category", :foreign_key => "category_id"
  belongs_to :user, :class_name => "User", :foreign_key => "user_id"
  validates_format_of :url, :with => /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$/ix
  validates_presence_of :label
  validates_length_of :label, :maximum => 50
  def is_global?
    return self.global
  end
  def admin_only?
    return self.admin
  end
end
