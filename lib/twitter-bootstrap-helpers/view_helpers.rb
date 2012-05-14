module TwitterBootstrapHelpers
  module ViewHelpers
    def icon_for(icon_name)
      content_tag :i, '', :class => "icon-#{icon_name}"
    end
  end
end
