module SpreeExtension
  module ComponentsChecker
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def api_available?
        @@api_available ||= engines_classes.include?('Spree::Api::Engine')
      end

      def backend_available?
        @@backend_available ||= engines_classes.include?('Spree::Backend::Engine')
      end

      def frontend_available?
        @@frontend_available ||= engines_classes.include?('Spree::Frontend::Engine')
      end

      def engines_classes
        ::Rails::Engine.subclasses.map(&:instance).map { |e| e.class.to_s }
      end
    end
  end
end