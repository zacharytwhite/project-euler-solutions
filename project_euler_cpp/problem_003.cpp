/*
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
*/

#include <iostream>
#include <vector>
#include "commons.h"

int main() {
  const unsigned long long N = 600851475143;

  std::vector<int> divisors;
  int i = 1;
  
  while (i*i <= N) {
    if (N % i == 0 && isPrime(i))
      divisors.push_back(i);
    i++;
  }
  int answer = divisors.back();

  std::cout << answer << '\n';
}
