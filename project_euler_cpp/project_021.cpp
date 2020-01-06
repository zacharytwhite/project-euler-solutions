/*Let d(n) be defined as the sum of proper divisors of n
(numbers less than n which divide evenly into n).

If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable
pair and each of a and b are called amicable numbers.

For example, the proper divisors of 220 are:
1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110;
therefore d(220) = 284.

The proper divisors of 284 are:
1, 2, 4, 71 and 142;
so d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000.
*/

#include <iostream>
#include <numeric>
#include "commons.h"

int main() {
  std::vector<int> amicables;

  for (int i = 0; i < 20; i++) {
    std::cout << "i: " << i << '\n';
    std::vector<int> divs_1 = commons::divisors(i);
    commons::displayVector(divs_1);
    int b = std::accumulate(divs_1.begin(), divs_1.end(), 0);
    std::cout << "b: " << b << '\n';
    std::vector<int> divs_2 = commons::divisors(b);
    commons::displayVector(divs_2);
    int a = std::accumulate(divs_2.begin(), divs_2.end(), 0);
    std::cout << "a: " << a << '\n' << '\n';
    if (i == a && a != b)
      amicables.push_back(a);
  }
  // int answer = std::accumulate(amicables.begin(), amicables.end(), amicables.front());
  // std::cout << answer << '\n';
}


/*
i:  1
a:  1
b:  1

i:  2
a:  1
b:  1

i:  3
a:  1
b:  1

i:  4
a:  1
b:  3

i:  5
a:  1
b:  1

i:  6
a:  6.0
b:  6.0

i:  7
a:  1
b:  1

i:  8
a:  1
b:  7.0

i:  9
a:  3
b:  4

i:  10
a:  7.0
b:  8.0

i:  11
a:  1
b:  1

i:  12
a:  15.0
b:  16.0

i:  13
a:  1
b:  1

i:  14
a:  8.0
b:  10.0

i:  15
a:  4
b:  9.0

i:  16
a:  9.0
b:  15.0

i:  17
a:  1
b:  1

i:  18
a:  11.0
b:  21.0

i:  19
a:  1
b:  1
*/