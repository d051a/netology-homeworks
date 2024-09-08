def increment(index):
    """Increment the given index by 1."""
    index += 1
    return index


def get_square(number):
    """Return the square of the given number."""
    return number * number


def print_number(number):
    """Print the given number."""
    print("Number is {}".format(number))


index = 0
while index < 10:
    index = increment(index)
    print(get_square(index))
