module TwitterBootstrapHelpers
  module ViewHelpers
    module Progress
      # <div class="progress">
      #  <div class="bar" style="width: 60%;"></div>
      # </div>
      def ts_progress options = {}, &block
        clazz = "progress"
        clazz << " #{options[:class]}" if options[:class]
        clazz << " progress-striped" if options[:striped]
        clazz << " active" if options[:active]

        type = options[:type]
        TwitterBoots.validate_type!(type) if type
        clazz << " progress-#{type}}" if type

        content = block_given? ? capture(&block) : options[:txt]

        options = options[:html_options] || {}
        options.merge!(class: clazz)

        content_tag :div, content, options
      end

      # <div class="bar" style="width: 60%;"></div>
      def ts_progress_bar width, options = {}, &block


        type = options[:type]
        TwitterBoots.validate_type!(type) if type
        clazz << " bar-#{type}}" if type

        bar_options = options[:bar_options] || {}

        unless (0..100).cover? width.to_i
          raise ArgumentError, "Not a valid percentage width: #{width}"
        end

        options = {style: "width: #{width}%"}
        options.merge!(options[:html_options] || {})
        options.merge!(class: clazz)

        content = block_given? ? capture(&block) : options[:txt]

        content_tag :div, content, options
      end
    end
  end
end


