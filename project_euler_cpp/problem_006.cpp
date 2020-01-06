/*
The sum of the squares of the first ten natural numbers is,
1**2 + 2**2 + ... + 10**2 = 385

The square of the sum of the first ten natural numbers is,
(1 + 2 + ... + 10)**2 = 552 = 3025

Hence the difference between the sum of the squares of the first ten natural
numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred
natural numbers and the square of the sum.
*/

#include <iostream>

int main() {
  int sum_of_squares = 0;
  int square_of_sums = 0;

  for (int i = 1; i <= 100; i++) {
    sum_of_squares += i*i;
    square_of_sums += i;
  }
  int answer = (square_of_sums*square_of_sums) - sum_of_squares;

  std::cout << answer << '\n';
}

// Answer: 25164150
// Time: 0m0.005s
