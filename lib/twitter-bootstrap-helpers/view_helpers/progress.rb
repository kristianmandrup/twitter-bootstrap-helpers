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

        puts "ts_progress: #{clazz} #{options}"

        type = options[:type]
        TwitterBoots.validate_type!(type) if type
        clazz << " progress-#{type}" if type

        content = block_given? ? capture(&block) : options[:txt]

        options = options[:html_options] || {}
        options.merge!(class: clazz)

        puts "ts_progress: #{content} #{options}"

        content_tag :div, content, options
      end

      # <div class="bar" style="width: 60%;"></div>
      def ts_progress_bar width, options = {}, &block
        type = options.delete(:type)
        clazz = "bar"

        if type
          TwitterBoots.validate_type!(type) 
          clazz << " bar-#{type}" if type
        end

        unless (0..100).cover? width.to_i
          raise ArgumentError, "Not a valid percentage width: #{width}"
        end

        options.merge!(style: "width: #{width}%")
        options.merge!(class: clazz)

        content = block_given? ? capture(&block) : options[:txt]

        content_tag :div, content, options
      end
    end
  end
end


