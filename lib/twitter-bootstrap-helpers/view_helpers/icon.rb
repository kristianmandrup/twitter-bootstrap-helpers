module TwitterBootstrapHelpers
  module ViewHelpers
    module Icon
      def icon_for(icon_name, string = '', icon_position = :left)
        icon_name = icon_name.to_s.gsub('_', '-')
        classes = ["icon-#{icon_name}"]
        if string.present?
          classes << 'on-left' if icon_position == :left
          classes << 'on-right' if icon_position == :right
        end
        icon = content_tag(:i, '', :class => classes)
        span = content_tag(:span, string)
        html = icon_position == :left ? icon + span : span + icon
        raw(html)
      end
      alias_method :ts_icon, :icon_for
    end
  end
end
