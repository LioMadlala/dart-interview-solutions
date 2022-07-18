gasCircuit(List<int> gas, List<int> cost) {
  int n = gas.length;
  int totalSurplus = 0;
  int remaining = 0;
  int s = 0;

  for (int i = 0; i < n; ++i) {
    totalSurplus += gas[i] - cost[i];
    remaining += gas[i] - cost[i];
    if (remaining < 0) {
      remaining = 0;
      s = i + 1;
    }
  }
  print("Start at : $s");
  return (totalSurplus < 0) ? -1 : s;
}
