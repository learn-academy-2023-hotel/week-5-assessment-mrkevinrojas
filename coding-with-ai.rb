# ASSESSMENT 5: Coding Critique with AI

# Use AI to learn about the following code.

# Based on your learning, reverse engineer a prompt that this code would satisfy.

# Add comments to each line to explain the code.

taco_votes = ['fish taco', 'california burrito', 'Tacos Al Pastor', 'Carnitas tacos', 'California burrito', 'Fish taco', 'California Burrito', 'Fish Taco', 'Tacos de Barbacoa', 'tacos Al Pastor', 'fish taco', 'California burrito', 'fish taco', 'tacos al pastor', 'Carnitas tacos', 'Fish taco', 'tacos de barbacoa', 'fish taco', 'Carnitas Tacos', 'carnitas tacos', 'Fish Taco', 'fish taco']

# Prompt: Tally the votes for each taco type (element) that appears in taco_votes (array) using a Hash

# .reduce method is used to create a hash and store in the variable called totals by iterating over taco_votes.  
# Hash.new(0) creates a new Hash that has a default value of 0 which is used when a key does not exist in the hash.
# .reduce also takes in two arguments which is the accumulating hash ('result') and the current element in the array('vote')
totals = taco_votes.reduce(Hash.new(0)) do |result, vote|
  # every element 'vote' is ensured to be in lowercase and increments of one are added to the taco_type.  
  result[vote.downcase] += 1
  #result is returned
  result
end
# totals are printed
p totals