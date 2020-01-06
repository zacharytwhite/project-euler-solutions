import math
import itertools

def divisors(n):
    """Returns a generator object containing all proper divisors of n.

    Proper divisors of n are numbers less than n that divide evenly into n,
    therefore this function does NOT count n itself as a divisor.
    """
    divisors = []
    for i in range(1, int(math.sqrt(n) + 1)):
        if n % i == 0:
            yield i
            if i*i != n:
                divisors.append(n / i)
    if divisors:
        divisors.pop(0)
    for divisor in reversed(divisors):
        yield divisor


def digits(n):
    """Returns a list containing an integer's constituent digits."""
    return [int(d) for d in str(n)]


def is_palindrome(inp):
    """Determines if an integer or string is a palindrome.
    
    A palindrome is something which reads the same way forawards
    and backwards. For example, 'abccba, 'racecar', 123321, etc.
    """
    if isinstance(inp, int):
        f = [d for d in str(inp)]
        r = list(reversed(f))
    elif isinstance(inp, str):
        f = [char for char in inp]
        r = list(reversed(f))

    if f == r: return True
    
    return False
    

def distinct(arr):
    """Removes duplicate elements from a list.
    
    Information
    ===========
    This is a slow method and is not really ideal. The simplest way to
    remove duplicate elements from a list is to simply cast it to a set 
    (and then optionally cast it back to a list) —— but this changes the
    order of the list.
    
    So while this function is not ideal regarding performance,
    it maintains the orignal list's order.
    """
    final = []
    for x in arr:
        if x not in final:
            final.append(x)
    return final


def reverse_num(n):
    """Returns a number...but it's reversed."""
    rev = int(''.join(reversed([d for d in str(n)])))
    return rev


def distinct_perms_of_num(n):
    """Returns generator containing DISTINCT permutations of a number's digits.
    
    The permutations are listed lexiographically.

    For example, n = 123 would return [123, 132, 213, 231, 312, 321].
    """
    n_a = [d for d in str(n)]
    perms = sorted(set(int(''.join(s)) for s in itertools.permutations(n_a)))
    for x in perms:
        yield x
