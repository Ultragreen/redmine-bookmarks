# Bookmarks

Plugins de gestion de bookmarks sur "Ma Page"

## Pr�-requis 

Ce plugins requiert :

* Ruby 1.8.6 ou sup�rieur
* Rails 2.2.2 ou sup�rieur
* Redmine trunk from r2493 to r2886	ou sup�rieur


## Installation

### Via SVN 

```ruby
  $ sudo bash
  # export APP_ROOT= <path_vers_votre_app_rails>
  # cd $APP_ROOT
  # cd vendors/plugins
  # svn export https://svn.ultragreen.net/public/redmine-bookmarks/tags/<lastest_tags> redmine-bookmarks
  # rake db:migrate_plugins RAILS_ENV=production
```

### Download depuis Ultragreen.net

http://www.ultragreen.net/projects/redmine-bookmarks/files

R�cup�rer le tar.gz de le r�pertoire APP_ROOT et :

```ruby
  $ sudo bash
  # export APP_ROOT= <path_vers_votre_app_rails>
  # cd $APP_ROOT
  # cd vendors/plugins
  # wget <URL_FICHIER_TAR_GZ>
  # tar xvzf redmine-bookmarks.X.X.X.tar.gz
  # rm redmine-bookmarks.X.X.X.tar.gz
  # rake db:migrate_plugins RAILS_ENV=production
```


Relancer votre serveur Rails et Redmine.


## Configuration 

Depuis le menu en haut � droite, dans Redmine on trouve le lien bookmark.

Si on clique sur ce lien on arrive devant la Gestion des liens pour le bookmark de ma page.

on trouve ici :
* un lien vers la liste des cat�gories
* un lien pour cr�er un bookmark
* un lien pour cr�er une cat�gorie

Il s'agit de formulaire de saisie simple.

Remarque : lien et cat�gorie peuvent �tre globale ou non et limitable aux administrateurs Redmine


## Utilisation

Pour visualiser les bookmarks sur ma page, il faut passer en mode personnalisation de 'Ma page' et ajouter le bloc, Bookmark.


