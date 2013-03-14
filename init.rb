require 'redmine'

Redmine::Plugin.register :redmine_bookmarks do
  name 'Redmine Bookmarks plugin'
  author 'Romain GEORGES'
  author_url 'http://www.ultragreen.net'
  url 'https://www.ultragreen.net/projects/show/redmine-bookmarks'
  description 'This is a plugin for Redmine to provide bookmarks on my Page'
  version '1.0.1'
  menu :account_menu, :bookmarks, { :controller => 'bookmark', :action => 'index' }, :caption => 'Bookmarks', :after => :my_account, :if => Proc.new { User.current.logged? } 
end
