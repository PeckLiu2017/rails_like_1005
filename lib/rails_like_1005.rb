require "rails_like_1005/version"

module RailsLike1005
  class Application
    def call(env)
      [200, {'Content-Type' => 'text/html'},
        ["Hello from Ruby on RailsLike1005!"]]
    end
  end
end