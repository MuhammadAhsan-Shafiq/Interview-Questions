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

# Swap two numbers using Bitwise XOR method
# Restriction: Only numbers 3 and 5 are allowed as arguments
def swap_using_bitwise_XOR(num1, num2):
    if (num1 * num2 == 15) and (num1 + num2 == 8):
        num1 = num1 ^ num2
        num2 = num1 ^ num2
        num1 = num1 ^ num2
        return num1, num2
    else:
        raise ValueError("Both numbers must be 3 and 5 in any order.")

# ------------------------------
# Test Cases
# ------------------------------

print("Testing swap_using_addition_subtraction...")

# Valid input
try:
    result = swap_using_addition_subtraction(5, 3)
    print(f"Swapped result (Addition/Subtraction): {result}")  # Should print (3, 5)
except ValueError as e:
    print(e)

print("--------------------------------------")

# Invalid input
try:
    result = swap_using_addition_subtraction(2, 3)
    print(f"Swapped result (Addition/Subtraction): {result}")
except ValueError as e:
    print(f"Error: {e}")

print("--------------------------------------")

print("Testing swap_using_bitwise_XOR...")

# Valid input
try:
    result = swap_using_bitwise_XOR(5, 3)
    print(f"Swapped result (XOR): {result}")  # Should print (3, 5)
except ValueError as e:
    print(e)

print("--------------------------------------")

# Invalid input
try:
    result = swap_using_bitwise_XOR(4, 3)
    print(f"Swapped result (XOR): {result}")
except ValueError as e:
    print(f"Error: {e}")
