reverseString(String s) {
  String reversedString = "";

  for (int i = s.length - 1; i >= 0; i--) {
    print(s[i]);
    reversedString = reversedString + s[i];
  }

  print(reversedString);
  return reversedString;
}
