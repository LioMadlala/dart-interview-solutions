//Longest substring with no repeating charecters
longestStringNoRepeatCharecters(String s) {
  List<String> seen = [];
  int max = 0;
  int r = 0;
  int aPointer = 0;
  int bPointer = 0;

  while (bPointer < s.length) {
    if (!seen.contains(s[bPointer])) {
      seen.add(s[bPointer]);
      bPointer++;
      max = (seen.length);
      r++;
    } else {
      r--;
      seen.remove(s[aPointer]);
      aPointer++;
    }
  }
  print(max);
  return max;
}
