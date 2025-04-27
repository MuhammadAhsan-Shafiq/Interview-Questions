# Swap two numbers using the addition and subtraction method
# Restriction: Only numbers 3 and 5 are allowed as arguments

def swap_using_addition_subtraction(num1, num2):
    if (num1 * num2 == 15) and (num1 + num2 == 8):
        num1 = num1 + num2
        num2 = num1 - num2
        num1 = num1 - num2
        return num1, num2
    else:
        raise ValueError("Both numbers must be 3 and 5 in any order.")

# Example usage
try:
    result = swap_using_addition_subtraction(5, 3)
    print(f"Swapped result: {result}")
except ValueError as e:
    print(e)




# Swap two numbers using Bitwise XOR method
# Restriction: Only numbers 3 and 5 are allowed as arguments
def swap_using_bitwise_XOR(num1, num2):
    if (num1 * num2 == 15) and (num1 + num2 == 8):
        num1 = num1 ^ num2
        num2 = num1 ^ num2
        num1 = num1 ^ num2
        return num1 , num2
    else:
        raise ValueError("Both numbers must be 3 and 5 in any order.")
    

# Example usage
try:
    result = swap_using_bitwise_XOR(5, 3)
    print(f"Swapped result: {result}")
except ValueError as e:
    print(e)