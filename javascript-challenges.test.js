// ASSESSMENT 5: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in a string and returns a string with a coded message. The coded message converts "a" to 4, "e" to 3, "i" to 1, and "o" to 0.

// a) Create a test with expect statements using the variables provided.

describe("codedMessage", () => {
    const secretCodeWord1 = "Lackadaisical"
    // Expected output: "L4ck4d41s1c4l"
    const secretCodeWord2 = "Gobbledygook"
    // Expected output: "G0bbl3dyg00k"
    const secretCodeWord3 = "Eccentric"
    // Expected output: "3cc3ntr1c"

    it('takes in a string and returns a string with a coded message.', () => {
        expect(codedMessage(secretCodeWord1)).toEqual("L4ck4d41s1c4l")
        expect(codedMessage(secretCodeWord2)).toEqual("G0bbl3dyg00k")
        expect(codedMessage(secretCodeWord3)).toEqual("3cc3ntr1c")
    })
})


// b) Create the function that makes the test pass.

// Pseudo code:
// first create a function that takes in a string
const codedMessage = (str) => {
    //use the .split("") method to separate the individual characters of the string and to turn into an Array of single characters.  Store the array into a variable.
    let array = str.split("")
    // create a for loop that will loop through every character in the array.
    for (let i = 0; i < array.length; i++){
        // create conditional statements to check whether the element in the array is equivalent to the characters we are looking for.  
      if (array[i] === "a" || array[i] === "A"){
        // if the conditional statment is true, then replace that element with the integer.  
        array[i] = 4
      }else if (array[i] === "e" || array[i] === "E"){
        array[i] = 3
      }else if (array[i] === "i" || array[i] === "I"){
        array[i] = 1
      }else if (array[i] === "o" || array[i] === "O"){
        array[i] = 0
      }
    }
    //Once the iteration is complete, join the array using .join("") method and return to where it was called.
    return(array.join(""))
}

// --------------------2) Create a function that takes in an array of 5 numbers and determines whether or not the array is a "full house". A full house is exactly one pair and one three of a kind.

// a) Create a test with expect statements using the variable provided.

describe("isFullHouse", () => {
    const hand1 = [5, 5, 5, 3, 3]
    // Expected output: true
    const hand2 = [5, 5, 3, 3, 4]
    // Expected output: false
    const hand3 = [5, 5, 5, 5, 4]
    // Expected output: false
    const hand4 = [7, 2, 7, 2, 7]
    // Expected output: true
    
    it("takes in an array of 5 numbers and determines whether or not the array is a full house", () => {
        expect(isFullHouse(hand1)).toEqual(true)
        expect(isFullHouse(hand2)).toEqual(false)
        expect(isFullHouse(hand3)).toEqual(false)
        expect(isFullHouse(hand4)).toEqual(true)
    })
})
    
// b) Create the function that makes the test pass.

// Pseudo code:
// create a function that takes in an array
const isFullHouse = (array) => {
    // use the.sort() mutator method to order the elements from least to greatest
    array.sort()
    // create conditional statements that checks the if the first two elements are equal to eachother as well as the third and last element
    if((array[0] === array[1]) && (array[2] === array[4])){
        // return true if true
      return true
      // create another conditional that checks if the first three numbers are equal as well as the last two numbers
    }else if((array[0] === array[2]) && array[3] === array[4]){
        // return true if true
      return true
    }else{
        // otherwise return false
      return false
    }
}
