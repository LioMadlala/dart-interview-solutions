import 'package:dart_practice_solutions/isAnagram.dart';

void main() {
  // reverseString("abc");
  // firstDuplicate([1, 2, 3, 5, 6, 4, 5, 8, 3]);
  // gasCircuit([1, 2, 3, 4, 5], [3, 4, 5, 1, 2]);
  // singleNumber([2, 2, 1]);
  // findSumOfTargetInArray([1, 2, 3, 5, 6, 7], 5);
  // findSumMaxSubArray([5]);
  // oddOrEven(10);
  // maxInSubArray([1, 2, -1, 3, 5 - 7, 1]);
  // productOfArrayExceptSelf([1, 2, 3]);
  // containsDuplicate([1, 2, 3, 1, 2]);
  // longestStringNoRepeatCharecters("abcabcbb");
  // romanNumbers("XXI");
  // runLengthEncoding("aaabcc");
  // firsNonRepeating("aabcd");
  // fibonacciNumbers(5);
  // consecutiveNumbers(5);
  isAnagram("anagram", "nagaram");
}

int fibonacciNumbers(int number) {
  //recursion way
  // if (number == 0) return 0;
  // if (number == 1) return 1;
  // print(number);
  // return fibonacciNumbers(number - 1) + fibonacciNumbers(number - 2);

  int a = 0;
  int b = 1;
  int sum = 0;

  if (number == a) return 0;
  if (number == b) return 1;

  while (number > 1) {
    sum = a + b;
    a = b;
    b = sum;
    print(sum);
    number--;
  }

  //011235
  return sum;
}

consecutiveNumbers(int number) {
  //if given 5
  // outuput = 2
  //explaination : 5 = 2+3

  //formula  x * (x+1)

  int ans = 0;

  print(1 * (1 + 1) / 2);

  for (int i = 1; i * (i + 1) / 2 <= number; i++) {
    var v = i * (i + 1) / 2;
    if ((number - v) % i == 0) {
      ++ans;
    }
  }
  print("--$ans");
}
