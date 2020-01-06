/*
2520 is the smallest number that can be divided by each of the numbers
from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by
all of the numbers from 1 to 20?
*/

#include <iostream>

bool isDivisible20(int n) {
  if (n % 11 == 0 && n % 12 == 0 && n % 13 == 0 && n % 14 == 0 
    && n % 15 == 0 && n % 16 == 0 && n % 17== 0 && n % 18 == 0 
    && n % 19 == 0 && n % 20 == 0)
    return true;
  
  return false;
}

int main() {
  int i = 2520;

  while (true) {
    if (isDivisible20(i)) {
      int answer = i;
      std::cout << answer << '\n';
      break;
    }
    i += 2520;
  }
}

// Answer: 232792560
// Time: 0m0.005s
