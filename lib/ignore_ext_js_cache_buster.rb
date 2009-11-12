# encoding: utf-8
class IgnoreExtJsCacheBuster
  def initialize(app, cache_param = '_dc')
    @app = app
    @cache_param = cache_param
  end

  def call(env)
    env["QUERY_STRING"] = env["QUERY_STRING"].to_s.sub(/#{@cache_param}=\d+/, "#{@cache_param}=")
    @status, @header, @body = @app.call(env)
    [@status, @header, @body]
  end
end
