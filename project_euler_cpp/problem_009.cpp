/*
A Pythagorean triplet is a set of three natural numbers, a < b < c, 
for which a**2 + b**2 = c**2

For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
*/

#include <iostream>

int main() {
  for (int c = 1; c < 1000; c++) {
    for (int b = 1; b < c; b++) {
      for (int a = 1; a < b; a++) {
        if (a*a + b*b == c*c && a+b+c == 1000) {
          int answer = a*b*c;
          std::cout << answer << '\n';
          return 0;
        }
      }
    }
  }
  return 0;
}

// Answer: 31875000
// Time: 0m0.035s
