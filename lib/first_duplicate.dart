firstDuplicate(List<int> list) {
  List<int> seen = [];
  for (int i = 0; i <= list.length; i++) {
    if (seen.contains(list[i])) {
      print(list[i]);
      return list[i];
    } else {
      seen.add(list[i]);
    }
  }
}
