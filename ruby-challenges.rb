# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# -------------------1) Create a method that takes in a hash and returns one array with all the hash values at their own index and in alphabetical order. No nested arrays. Use the test variable provided.
# HINT: Google 'ruby get rid of nested arrays'

us_states = { northwest: ['Washington', 'Oregon', 'Idaho'], southwest: ['California', 'Arizona', 'Nevada'], notheast: ['Maine', 'New Hampshire', 'Rhode Island'] }
# Expected output: ['Arizona', 'California', 'Idaho', 'Maine', 'Nevada', 'New Hampshire', 'Oregon', 'Rhode Island', 'Washington'] 


# Pseudo code:
# store the values of each key in a variable.  It will hold an array of arrays.
new_arr = us_states.values
# create an empty array
order_arr = []
# create a for loop that will iterate from 0 to the length of new_arr
for i in 0...new_arr.length
    # create a temporary variable that will store each array during that iteration
    temp_arr = new_arr[i]
    # create another for loop that will iterate through the elements of temp_arr from 0 to the length of temp_arr
    for j in 0...temp_arr.length
        # append each element from temp_arr to order_arr
        order_arr << temp_arr[j]
    end
end
# sort order_arr and store in order_arr
ord_arr = order_arr.sort()
# check your output
#p ord_arr

# --------------------2a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.

# Pseudo code:
# create the class Bike
class Bike
    # code your attr_accessor
    attr_accessor :model, :wheels, :current_speed

    # create the initializer that has one parameter and default values for wheels and mph.
    def initialize(model)
        @model = model
        @wheels = 2
        @current_speed = 0
    end

    # define a method where you return a sentence using the instance values.
    def bike_info
        "The #{@model} bike has #{@wheels} wheels and is going #{@current_speed} mph."
    end

# -------------------2b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.

# Expected output example: my_bike.pedal_faster(10) => 10
# Expected output example: my_bike.pedal_faster(18) => 28
# Expected output example: my_bike.brake(5) => 23
# Expected output example: my_bike.brake(25) => 0

# Pseudo code:
    # define the method pedal_faster that accepts an integer
    def pedal_faster(num)
        # add num to the current speed
        @current_speed += num
    end
    # define the method brake that accepts an integer
    def brake(num)
        # create conditional statements to check for negative numbers
        if @current_speed - num < 0
            # set current speed to 0 if the difference is negative
            @current_speed = 0
        else
            # otherwise just subtract from the current speed
            @current_speed -= num
        end
    end
end

# check the outputs
# my_bike = Bike.new("Trek")
# p my_bike.bike_info
# p my_bike.pedal_faster(1) # 10
# p my_bike.pedal_faster(18) # 28
# p my_bike.brake(5) # 23
# p my_bike.brake(25) # 0

