# Bookmarks

Redmine Bookmark bloc plugin for My Page

## Dependancies

Requierement

* Ruby >= 1.8.6 
* Rails >= 2.2.2
* Redmine trunk from r2493 to r2886 or higher

## Installation

### from SVN 

```bash
  $ sudo bash
  # export APP_ROOT= <path_vers_votre_app_rails>
  # cd $APP_ROOT
  # cd vendors/plugins
  # svn export https://svn.ultragreen.net/public/redmine-bookmarks/tags/<lastest_tags> redmine-bookmarks
  # rake db:migrate_plugins RAILS_ENV=production
```

### Download from Ultragreen.net

http://www.ultragreen.net/projects/redmine-bookmarks/files

Get the tar.gz in the folder $APP_ROOT and :

```bash
  $ sudo bash
  # export APP_ROOT= <path_vers_votre_app_rails>
  # cd $APP_ROOT
  # cd vendors/plugins
  # wget <URL_FICHIER_TAR_GZ>
  # tar xvzf redmine-bookmarks.X.X.X.tar.gz
  # rm redmine-bookmarks.X.X.X.tar.gz
  # rake db:migrate_plugins RAILS_ENV=production
```


Reloead Rails server and Redmine.


## Configuration 

From the Top menu of Redmine on the right side, you could find a bookmark menu.
If you click on this link, you arrived in the Bookmark links manager

You could fin d links for :
* displaying the category list
* adding a bookmark
* adding a category

This is simple forms

PS : links and categories could be global or not and restricted for admin users.

## Usage

To use bookmarks, you have to go on 'My page', personnalized it and adding 'Bookmark' block. 
