class HealthcheckMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    if env["PATH_INFO"] == "/healthcheck"
      [200, {}, ["OK"]]
    else
      @app.call(env)
    end
  end
end
