module FontAwesome
  module Sass
    class << self
      def load!
        register_rails_engine if rails?
      end

      def rails?
        defined?(::Rails)
      end

      private
      def register_rails_engine
        require 'font_awesome/sass/rails/railtie'
      end
    end
  end
end

FontAwesome::Sass.load!
