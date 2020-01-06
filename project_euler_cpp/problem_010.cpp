/*
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
*/

#include <iostream>
#include <vector>
#include "commons.h"

int main() {
  unsigned long int sum = 0;
  for (auto& n : primesTo(2000000))
    sum += n;
  std::cout << sum << '\n';
  displayVector(primesTo(200000));
}

// Answer: 142913828922
// Time: 0m0.030
