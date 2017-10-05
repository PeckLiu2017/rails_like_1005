require "rails_like_1005/array"
require "rails_like_1005/version"

module RailsLike1005
  class Application
    def call(env)
       `echo debug > debug.txt`;
      [200, {'Content-Type' => 'text/html'},
        ["Hello from Ruby on RailsLike1005!"]]
    end
  end
end
