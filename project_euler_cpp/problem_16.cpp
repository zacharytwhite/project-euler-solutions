/*2**15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 2**1000?
*/

#include <iostream>
#include <cmath>
#include <vector>
#include <numeric>
#include "commons.h"

int main() {
  double n = pow(2, 1000);
  std::cout << n << '\n';
  std::vector<int> sd = getDigits(n) ;
  // int sum = std::accumulate(sd.begin(), sd.end(), 0);
  displayVector(sd);
  // std::cout << sum << '\n';
}

