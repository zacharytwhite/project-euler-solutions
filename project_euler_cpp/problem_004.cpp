/*
A palindromic number reads the same both ways.
The largest palindrome made from the product of two 2-digit numbers
is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
*/

#include <iostream>
#include "commons.h"

int main() {
  int max = 0;
  for (int i = 100; i < 999; i++){
    for (int j = 100; j < 999; j++) {
      int prod = i*j;
      std::string num = std::to_string(prod);
      if (reverse(num) == num) {
        if (prod > max)
          max = prod;
      }
    }
  }
  int answer = max;

  std::cout << answer << '\n';
}

// Answer: 906609
// Time: 0m0.185s
