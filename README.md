# Mongoid Name

Custom serialized type for Mongoid schemas. A string, struct, and array. 

```ruby
require 'mongoid'
require 'mongoid-name'

class User
  include Mongoid::Document
  field :name, type: Mongoid::Name
end
```

It's an array to encourage autocomplete search. (Index it tho please!)

```ruby
User.create(name: %w(AJ Ostrow))
user = User.find_by(name: /^ostr/i)
```

A string for the API and/or views.

```ruby
user.name
# => "AJ Ostrow"
```

And a struct for custom messages.

```ruby
'%s you have 0 stars' % user.name.first
# => "AJ you have 0 stars"
```

Got `middle` and `last` as well. The middle name is always optional (default `nil`). 

```ruby
user.name = [ 'Gabriel', 'José de la Concordia', 'García Márquez' ]
user.name = [ 'Albert', 'Camus' ]
```

### Notes

Install with bundler. 

```
$ gem install mongoid-name
```

Please contribute ideas, code, criticism, etc. 

License: **MIT**
