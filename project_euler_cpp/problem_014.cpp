/*
The following iterative sequence is defined for the
set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:
13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

It can be seen that this sequence (starting at 13 and finishing at 1)
contains 10 terms. Although it has not been proved yet (Collatz Problem),
it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

Note: Once the chain starts the terms are allowed to go above one million.
*/

#include <iostream>
#include <vector>
#include <algorithm>

int main() {
  std::vector<int> chains;
  int i;
  for (int n = 1; n < 10; n++) {
    i = 1;
    // std::cout << "i: " << i << "   " << "n: " << n << '\n';
    while (n != 1) {
      if (n % 2 == 0) {
        // std::cout << "n: " << n << '\n';
        n = n/2;
      } else {
        // std::cout << "n: " << n << '\n';
        n = 3*n + 1;
      }

      i += 1;
    }
    chains.push_back(i);
  }

  int max = *std::max_element(chains.begin(), chains.end());
  int answer = chains.at(max);
  std::cout << answer << '\n';
}
