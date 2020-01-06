#ifndef PROJECT_EULER_COMMONS
#define PROJECT_EULER_COMMONS

#include <iostream>
#include <string.h> // for memset
#include <vector>
#include <algorithm> // for sort
#include <cmath>
#include <sstream>

namespace commons {

  /* Function to determine whether or not a number is prime. */
  bool isPrime(int num) {
    if (num <= 1)
      return false;

    for (int i = 2; i < num/2; i++) {
      if (num % i == 0)
        return false;
    }
    return true;
  }


  /* Template to display all elements in a vector. */
  template<class T>
  void displayVector(T vec) {
    for (int i = 0; i < vec.size(); i++)
      std::cout << vec[i] << '\n';
  }

  /* Template to display all elements in an array. */
  template<class T>
  void displayArray(T arr) {
    int n = sizeof(arr)/sizeof(arr[0]);

    for (int i = 0; i <= n; i++)
      std::cout << arr[i] << '\n';
  }

  /* Function to reverse a string. */
  std::string reverse(std::string str) {
    int n = str.length();

    for (int i = 0; i < n / 2; i++) 
      std::swap(str[i], str[n - i - 1]);
    
    return str;
  }


  /* Returns the nth prime number. */
  int nthPrime(int n) {
    int i, j;
    int count = 0;
    bool prime;
    
    for (i = 2; i > 0; ++i) {
      prime = true;
      for (j = 2; j <= i/2; ++j) {
        if (i % j == 0) {
          prime = false;
          break;
        }
      }
      if (prime)
        count++;

      if (count == n)
        return i;
    }
    return 0;
  }


  /* Function to generate all primes less than n via Sieve of Eratosthenes. */
  std::vector<int> primesTo(int n) {
    std::vector<int> final_primes;
    // Create a bool array "prime[0..n]" and initialize all entries it as true.
    // A value in prime[i] will finally be false if i is not a prime, else true.
    bool prime[n+1]; 
    memset(prime, true, sizeof(prime)); 
    
    for (int p=2; p*p<=n; p++) {
      // If prime[p] is not changed, then it is a prime.
      if (prime[p] == true) {
        // Update all multiples of p >= to the square of it.
        // Numbers which are multiple of p and are less than p**2
        // have already been marked.
        for (int i=p*p; i<=n; i += p)
          prime[i] = false; 
      }
    }

    // Store all prime numbers in vector.
    for (int p=2; p<=n; p++)
        if (prime[p])
          final_primes.push_back(p);
          
    return final_primes;
  }


  /* Template to slice a vector — returns a new vector containing elements
  between two provdided indexes in paramater vector. */
  template<typename T>
  std::vector<T> slice(std::vector<T> const &v, int m, int n) {
    auto first = v.cbegin() + m;
    auto last = v.cbegin() + n + 1;
    std::vector<T> vec(first, last);
    return vec;
  }


  /* Returns a vector containing all proper divisors of n.

  Proper divisors of n are numbers less than n that divide evenly into n,
  therefore this function does NOT count n itself as a divisor. */
  std::vector<int> divisors(int n) {
    std::vector<int> divs;
    if (n == 1) {
      divs.push_back(1);
      return divs
    }
    for (int i = 1; i <= sqrt(n) + 1; i++) {
      if (n % i == 0) {
        if (n/i == i) {
          divs.push_back(i);
        } else {
          divs.push_back(i);
          divs.push_back(n/i);
        }
      }
    }
    std::sort(divs.begin(), divs.end());
    divs.pop_back();

    return divs;
  }


  /* Function to split a string into tokens based on a provided delimiter. */
  std::vector<std::string> splitBy(std::string str, char delim) {
    // Vector to store tokens.
    std::vector<std::string> tokens;
    // Stringstream object 'str'.
    std::stringstream str_stream(str);
    // String to temporarily store tokens.
    std::string intermediate;

    // Loop through 'str_stream', storing each token found in 'tokens'.
    while (getline(str_stream, intermediate, delim))
      tokens.push_back(intermediate);

    return tokens;
  }


  /* Function to seperate a number into its digits. */
  std::vector<int> getDigits(int n) {
    std::vector<int> digits;
    while (n > 0) {
      int digit = n % 10;
      n /= 10;
      digits.push_back(digit);
    }
    std::reverse(digits.begin(), digits.end());
    
    return digits;
  }
}
#endif
