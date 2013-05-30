def score(dice)
  total = 0
  
	# first assign each die to a variable [a, b, c, d, e, f]
 
  ordered_throw = dice.sort
  a = ordered_throw[0]
  b = ordered_throw[1]
  c = ordered_throw[2]
  d = ordered_throw[3]
  e = ordered_throw[4]
  f = ordered_throw[5]
  


  # then find three of any.
  
  ones = dice.find_all{|item| item == 1}
  twos = dice.find_all{|item| item == 2}
  threes = dice.find_all{|item| item == 3}
  fours = dice.find_all{|item| item == 4}
  fives = dice.find_all{|item| item == 5}
  sixes = dice.find_all{|item| item == 6}

  puts ones
  puts twos
  puts threes
  puts fours
  puts fives
  puts sixes

  if ones.length >=3
  	total = total + 1000
  	ones.shift
  	ones.shift
  	ones.shift
	  	if ones.length > 0
	  	total = total + (100 * ones.length)
	  	end
  	puts total
  end

  # if 1s +1000. else +variable*100. then remove them
  # from the array
  # of the vars left any 1s +100. any 5s +50
  return total

end

score([1, 1, 1, 1, 1, 1])