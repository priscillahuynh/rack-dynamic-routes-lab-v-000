class application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path=="items/<ITEM NAME>"
    resp.finish
  end
end
