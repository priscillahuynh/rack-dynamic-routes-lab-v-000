class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path=="items/<ITEM NAME>"
      resp.write "You requested item name"
    else
      resp.write "Item not found"
      resp.status = 404
    end
    resp.finish
  end
end
