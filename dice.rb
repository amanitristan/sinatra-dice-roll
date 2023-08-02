require "sinatra"
require "sinatra/reloader"

get("/") do
  "Hello World"
end

get("/zebra") do
  "We must add a route for each path we want to support"
end

get("/giraffe") do
  "Hopefully this shows up without having to restart the server :)"
end

get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die

  outcome = "You rolled a " + first_die.to_s + " and a " + second_die.to_s + " for a total of " + sum.to_s + "."

 "<h1>2d6</h1>
 <p>#{outcome}</p>"
end

get("/dice/2/10") do
  first_die = rand(1..10)
  second_die = rand(1..10)
  sum = first_die + second_die

  outcome = "You rolled a " + first_die.to_s + " and a " + second_die.to_s + " for a total of " + sum.to_s + "."

  "<h1>2d10</h1>
  <p>#{outcome}</p>"
end

get("/dice/1/20") do
  only_roll = rand(1..20)

  outcome = "You rolled a " + only_roll.to_s + " for a total of " + only_roll.to_s + "."

  "<h1>1d20</h1>
  <p>#{outcome}</p>"
end

get("/dice/5/4") do
  roll_one = rand(1..4)
  roll_two = rand(1..4)
  roll_three = rand(1..4)
  roll_four = rand(1..4)
  roll_five = rand(1..4)
  sum = roll_one + roll_two + roll_three + roll_four + roll_five

  outcome = "You rolled a " + roll_one.to_s + ", " + roll_two.to_s + ", " + roll_three.to_s + ", " + roll_four.to_s + ", and " + roll_five.to_s + " for a total of " + outcome.to_s + "."

  "<h1>5d4</h1>
  <p>#{outcome}</p>"
end
