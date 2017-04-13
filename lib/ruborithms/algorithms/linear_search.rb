module Ruborithms
  module Algorithms
    module LinearSearch
      class << self
        def included(mod)
          mod.extend(ClassMethods)
        end
      end

      module ClassMethods
        def linear_search(object, value)
          object.each_with_index do |item, index|
            return index if value == item
          end
        end
      end

      def linear_search(value)
        self.class.linear_search(self, value)
      end
    end
  end
end
