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
          0.upto(object.count - 1) do |i|
            return i if value == object[i]
          end; nil
        end
      end

      def linear_search(value)
        self.class.linear_search(self, value)
      end
    end
  end
end
