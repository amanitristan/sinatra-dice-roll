require "sinatra"

get("/") do
  "Hello World"
end

get("/zebra") do
  "We must add a route for each path we want to support"
end

require "sinatra/reloader"

get("/giraffe") do
  "Hopefully this shows up without having to restart the server :)"
end

get("/dice/2/6") do
  first_die = rand(7)
  second_die = rand(7)
  sum = first_die + second_die

  outcome = "You rolled a " + first_die.to_s + " and a " + second_die.to_s + " for a total of " + sum.to_s + "."

 "<h1>2d6</h1>
 <p>#{outcome}</p>"
end

get("/dice/2/10")" do
  first_die = rand(11)
  second_die = rand(11)
  sum = first_die + second_die

  outcome = "You rolled a " + first_die.to_s + " and a " + second_die.to_s + " for a total of " + sum.to_s + "."

  "<h1>2d10</h1>
  <p>#{outcome}</p>"
end

get("/dice/1/20") do
  only_roll = rand(21)

  outcome = "You rolled a " + only_roll.to_s + " for a total of " + only_roll.to_s + "."

  "<h1>1d20</h1>
  <p>#{outcome}</p>"
end

