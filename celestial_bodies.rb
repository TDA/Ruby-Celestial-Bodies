class CelestialBodies
  attr_accessor :name, :type
end

# incorrect way to create new hashes with objects
bodies = Hash.new(CelestialBodies.new)

p bodies
bodies["Hello"]
p bodies
bodies["Hello"] = CelestialBodies.new
bodies["Hello"].name = "Huhu"
bodies["Hello"].type = "Moon"
p bodies
bodies["Hello"].name = "Huhu2"
bodies["Hello"].type = "Moon2"
# these all point to the same default object, so changes to one will impact the other
p bodies["Zello"]
p bodies["Bello"]
bodies["Zello"].name = "sai"
p bodies["Zello"]
p bodies["Bello"]
p bodies

puts "--------------------------"

# a new hash, with new objects created
# everytime a missing key is used
bodies = Hash.new do |hash, key|
  body = CelestialBodies.new
  body.name = "Me"
  body.type = "Star"
  hash[key] = body
end

p bodies
bodies["Hello"]
p bodies
bodies["Hello"] = CelestialBodies.new
bodies["Hello"].name = "Huhu"
bodies["Hello"].type = "Moon"
p bodies
bodies["Hello"].name = "Huhu2"
bodies["Hello"].type = "Moon2"
p bodies