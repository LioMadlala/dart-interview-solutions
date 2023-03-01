
bool isAnagram(String s, String t) {

  if(s.length != t.length || s.isEmpty || t.isEmpty) {
    print("-false");
    return false;
    
  }

  List<String> listA = [];
  List<String> listB = [];

  for(int i = 0; i< s.length; i++){
    listA.add(s[i]);
    listB.add(t[i]);
    
  }
  
  
  for(int i=0; i< s.length; i++){
    String curChar = listB[i];
    
    if(!listA.contains(curChar)){
      print("---false");
      return false;
      
    }
  }
   
  print("---true");
  return true;
}
