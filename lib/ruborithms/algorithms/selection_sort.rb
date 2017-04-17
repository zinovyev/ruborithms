module Ruborithms
  module Algorithms
    module SelectionSort
      class << self
        def included(mod)
          mod.extend(ClassMethods)
        end
      end

      module ClassMethods
        def selection_sort(object)
          0.upto(object.count - 1) do |i|
            min_value_index = find_index_of_min_value(object, i)
            swap(object, i, min_value_index)
          end
          object
        end

        private

        def find_index_of_min_value(object, i)
          min_index = i
          min_value = object[i] 
          i.upto(object.count - 1) do |j|
            if object[j] < min_value
              min_index = j
              min_value = object[j]
            end 
          end
          min_index
        end

        def swap(object, i, min_index)
          object[i], object[min_index] = object[min_index], object[i]
        end
      end

      def selection_sort
        self.class.selection_sort(self)
      end
    end
  end
end
