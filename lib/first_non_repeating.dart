//First non Repeating Character
firsNonRepeating(String s) {
  Map<String, int> charecters = {};
  int aPointer = 0;
  int bPointer = 1;

  for (int i = 0; i < s.length; i++) {
    if (charecters.containsKey(s[i])) {
      charecters.update(s[i], (value) => (charecters[s[i]]! + 1));
    } else {
      charecters.putIfAbsent(s[i], () => 1);
    }
  }

  String char = "";
  int value = 0;

  for (int i = 0; i < charecters.length; i++) {
    value = charecters.values.elementAt(i);
    char = charecters.keys.elementAt(i);
    if (value == 1) {
      print("$char $value");
      return "found";
    } else {
      print("not the one");
    }
  }

  print(char);
}
