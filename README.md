# Ruborithms

Algorithms and data structures implemented on pure Ruby.

[![Gem Version](https://badge.fury.io/rb/ruborithms.svg)](https://badge.fury.io/rb/ruborithms)


## Install

```bash
gem install ruborithms
```

Require library:

```ruby
require 'ruborithms'
```


## Algorithms


### Linear Search

Include:

```ruby
class Array; include Ruborithms::Algorithms::LinearSearch; end
```

Linear search can now be used as a class singleton method:

```ruby
irb(main):006:0> Array.linear_search([1, 55, 22, 44], 55)
=> 1
```

Or in the instance context:

```ruby
irb(main):007:0> [1, 55, 22, 44].linear_search(55)
=> 1
```


### Binary Search

Include:

```ruby
class Array; include Ruborithms::Algorithms::BinarySearch; end  
```

Binary search can now be used as a class singleton method:

```ruby
irb(main):008:0> Array.binary_search([1, 55, 22, 44], 55)
=> 1
```

Or in the instance context:

```ruby
irb(main):009:0> [1, 55, 22, 44].binary_search(55)
=> 1
```

### Selection Sort

Include:

```ruby
class Array; include Ruborithms::Algorithms::SelectionSort; end  
```

Binary search can now be used as a class singleton method:

```ruby
irb(main):017:0> Array.selection_sort([1, 55, 22, 44])
=> [1, 22, 44, 55]
```

Or in the instance context:

```ruby
irb(main):019:0> [1, 55, 22, 44].selection_sort
=> [1, 22, 44, 55]
```
