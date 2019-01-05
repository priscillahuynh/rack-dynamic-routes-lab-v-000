class Application
  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match("/items/").last
    item = @@items.find {|i| i.name == item_name}
      if item.nil?
      resp.write "Route not found"
      resp.status = 404
      else
      resp.write item.price
      end
    else
      
    end
    resp.finish
  end
end
