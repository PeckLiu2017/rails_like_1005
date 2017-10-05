require 'rails_like_1005'

module BestQuotes
  class Application < RailsLike1005::Application
    $LOAD_PATH << File.join(File.dirname(__FILE__),
                            '..', 'app',
                            'controllers')
    require 'quotes_controller'
  end
end
