// MARK: - Swap two numbers using the addition and subtraction method
// This method swaps two integers without using a third variable.
// Restriction: Only numbers 3 and 5 are allowed as valid inputs.
func swapUsingAdditionSubtraction(num1: inout Int, num2: inout Int) {
    guard (num1 * num2 == 15) && (num1 + num2 == 8) else {
        print("Both numbers must be 3 and 5 in any order.")
        return
    }
    
    num1 = num1 + num2
    num2 = num1 - num2
    num1 = num1 - num2
}

// MARK: - Swap two numbers using the Bitwise XOR method
// This method swaps two integers using bitwise XOR operation.
// Restriction: Only numbers 3 and 5 are allowed as valid inputs.
func swapUsingXOR(num1: inout Int, num2: inout Int) {
    guard (num1 * num2 == 15) && (num1 + num2 == 8) else {
        print("Both numbers must be 3 and 5 in any order.")
        return
    }
    
    num1 = num1 ^ num2
    num2 = num1 ^ num2
    num1 = num1 ^ num2
}

// MARK: - Test Cases

// Test for Addition-Subtraction method
print("Testing swapUsingAdditionSubtraction...")
var numA = 5
var numB = 3
swapUsingAdditionSubtraction(num1: &numA, num2: &numB)
print("Result after swapping (Addition/Subtraction): numA = \(numA), numB = \(numB)") // Should print 3 and 5

print("--------------------------------------")

// Test for Bitwise XOR method
print("Testing swapUsingXOR...")
var numX = 5
var numY = 3
swapUsingXOR(num1: &numX, num2: &numY)
print("Result after swapping (XOR): numX = \(numX), numY = \(numY)") // Should print 3 and 5

print("--------------------------------------")

// Invalid Test (to trigger restriction)
// Trying to swap 2 and 3, should show an error message
print("Testing invalid inputs...")
var invalidNum1 = 2
var invalidNum2 = 3
swapUsingAdditionSubtraction(num1: &invalidNum1, num2: &invalidNum2)
swapUsingXOR(num1: &invalidNum1, num2: &invalidNum2)
