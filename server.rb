require "sinatra"
require "httparty"


get "/" do
  erb :home
end

get "/catalog" do
  erb :catalog
end

get "/layout" do
  erb :layout
end

get "/results" do
  erb :results
end
get "/cookie" do
  erb :cookie
end
get "/cake" do
  erb :cake
end
get "/muffin" do
  erb :muffin
end

# remember to bundle install when I'm using my own computer


class Mage
  attr_accessor :name, :hp, :atk, :defs, :mag, :spe
  def initialize(name,hp,atk,defs,mag,spe)
    @name = name
    @hp = (hp / 2) + 20
    @atk = atk / 2
    @defs = defs + 23
    @mag = mag + 40
    @spe = spe + 10
  end
end

magus = Mage.new("Magus",15,16,15,10,18)


puts "Magus has #{magus.hp} hp"

# desc = ["Delicious", "Scrumptious", "Crunchy", "Chunky", "Delectable", "Savory","Tasty", "Toothsome", "Lovely"]

class Cookie
  attr_accessor :desc, :flav, :price
  def initialize(desc, flav,price)
  self.desc = ["Delicious", "Scrumptious", "Crunchy", "Chunky", "Delectable", "Savory","Tasty", "Toothsome", "Lovely"]
  @flav = flav
  @price = price
  end
end


choco = Cookie.new([8],"Choco chip",5)
white = Cookie.new([8],"Choco chip",6)

puts "The #{choco.desc.sample} #{choco.flav} cookie for $#{rand(1..choco.price)}"
