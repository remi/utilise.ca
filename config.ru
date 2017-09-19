require 'rack/jekyll'
require 'yaml'

class WildcardSubdomainPath
  def initialize(app)
    @app = app
  end

  def call(env)
    if env['SERVER_NAME'] =~ /^(.+)\.utilise\.ca$/ && $1 != 'www'
      env['PATH_INFO'] = "/articles/#{$1}"
    end

    if env['PATH_INFO'] == '/articles/jeanfrancoisfortintam'
      return [410, {}, ['']]
    end

    @app.call(env)
  end
end

use WildcardSubdomainPath
run Rack::Jekyll.new
