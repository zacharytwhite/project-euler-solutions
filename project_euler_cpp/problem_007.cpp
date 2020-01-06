/*
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
we can see that the 6th prime is 13.

What is the 10,001st prime number?
*/

#include <iostream>
#include "commons.h"

int main() {
  int answer = nthPrime(10001);
  std::cout << answer << '\n';
}

// Answer: 104743
// Time: 0m1.470s
