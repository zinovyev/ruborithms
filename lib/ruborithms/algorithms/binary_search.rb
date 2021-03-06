module Ruborithms
  module Algorithms
    module BinarySearch
      class << self
        def included(mod)
          mod.extend(ClassMethods)
        end
      end

      module ClassMethods
        def binary_search(object, value)
          min = 0
          max = object.count - 1
          while max >= min
            avg = ((max + min) / 2).floor
            return avg if object[avg] == value
            if object[avg] > value
              max = avg - 1
            else
              min = avg + 1
            end
          end
        end
      end

      def binary_search(value)
        self.class.binary_search(self, value)
      end
    end
  end
end
