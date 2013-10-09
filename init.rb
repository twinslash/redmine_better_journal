require 'redmine_better_journal'
require 'redmine'

# source: https://github.com/jbbarth/redmine_organizations - thanks!
# Little hack for deface in redmine:
# - redmine plugins are not railties nor engines, so deface overrides are not detected automatically
# - deface doesn't support direct loading anymore ; it unloads everything at boot so that reload in dev works
# - hack consists in adding "app/overrides" path of the plugin in Redmine's main #paths
Rails.application.paths["app/overrides"] ||= []
Rails.application.paths["app/overrides"] << File.expand_path("../app/overrides", __FILE__)

Redmine::Plugin.register :redmine_better_journal do
  name        'Redmine Better Journal plugin'
  author      '//Twinslash'
  description 'Plugin to make better view for issue journal '
  version     '0.0.1'
  url         'https://github.com/twinslash/redmine_better_journal'
  author_url  'http://twinslash.com'
end
