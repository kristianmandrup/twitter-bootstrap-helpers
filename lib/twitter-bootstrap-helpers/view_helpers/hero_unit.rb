module TwitterBootstrapHelpers
  module ViewHelpers
    module HeroUnit
      # <span class="label label-success">Success</span>
      def ts_hero_unit heading, tagline, options = {}, &block
        clazz = "hero-unit"
        clazz << " #{options[:class]}" if options[:class]

        options = options[:html_options] || {}
        options.merge(class: clazz)

        content = capture(&block)

        content_tag :div, options do
          content_tag :h1, heading
          content_tag :p, tagline
          content_tag :p do
            content
          end
        end
      end
    end
  end
end

