module Motor
  module Schema
    module Utils
      module_function

      def slugify(model)
        model.name.underscore.pluralize.gsub('/', '__')
      end

      def classify_slug(slug)
        slug.singularize.gsub('__', '/').classify.constantize
      end
    end
  end
end