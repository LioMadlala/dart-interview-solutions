//Run Length Encoding
//?Image compression
runLengthEncoding(String s) {
  List<String> compressed = [];
  int aPointer = 0;
  int bPointer = 1;
  int count = 0;
  String finalString = "";

  while (bPointer < s.length) {
    if (s[aPointer] == s[bPointer]) {
      count++;
      bPointer++;
      aPointer++;
    } else {
      compressed.add("${count + 1}${s[aPointer]}");
      aPointer = bPointer;
      bPointer++;
      count = 0;
    }
    if (bPointer == s.length) {
      compressed.add("${count + 1}${s[aPointer]}");
    }
  }
}
