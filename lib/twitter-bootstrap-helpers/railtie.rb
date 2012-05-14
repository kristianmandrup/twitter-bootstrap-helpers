require 'twitter-bootstrap-helpers/view_helpers'

module TwitterBootstrapHelpers
  class Railtie < Rails::Railtie
    initializer "twitter-bootstrap-helpers.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end

