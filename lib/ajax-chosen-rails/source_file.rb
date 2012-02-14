require "thor"

class SourceFile < Thor
  include Thor::Actions

  desc "fetch source files", "fetch source files from GitHub"
  def fetch
    self.destination_root = "vendor/assets"
    remote = "https://github.com/fatfreecrm/ajax-chosen"
    branch = "master"
    get "#{remote}/raw/#{branch}/src/ajax-chosen.jquery.coffee", "javascripts/ajax-chosen.jquery.coffee"
    get "#{remote}/raw/#{branch}/src/ajax-chosen.proto.coffee",  "javascripts/ajax-chosen.proto.coffee"
    get "#{remote}/raw/#{branch}/VERSION", "VERSION"
    inside destination_root do
      version = File.read("VERSION").sub("\n", "")
      gsub_file "../../lib/ajax-chosen-rails/version.rb", /VERSION\s=\s"(\d|\.)+"$/ do |match|
        %Q{VERSION = "#{version}"}
      end
    end
  end
end
