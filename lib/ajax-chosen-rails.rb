require "ajax-chosen-rails/version"

module AjaxChosen
  module Rails
    if ::Rails.version < "3.1"
      require "ajax-chosen-rails/railtie"
    else
      require "ajax-chosen-rails/engine"
    end
  end
end
