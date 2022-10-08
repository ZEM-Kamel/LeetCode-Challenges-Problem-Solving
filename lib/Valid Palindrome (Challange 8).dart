class Challange8_1 {
  bool isPalindrome(s) { 
    if (s.isEmpty) {
      return true;
      }
      var  str = s.toLowerCase();
      var  finalStr = str.replaceAll(RegExp("[^a-zA-Z0-9]"),"");
      var  emptyStr = "";
      var  n = finalStr.length;
      for (var  i = n - 1; i >= 0; i--) {
        emptyStr += finalStr[i];
        }
        if (emptyStr == (finalStr)) {
          return true;
          }
          else {
            return false;
            }
      } 
}

class Challange8_2 {
  bool isPalindrome(s) {

    if (s.trim().isEmpty) return true;

    final reg = RegExp(r'\.|,|:| ');
    final temp = s.toLowerCase().split(reg).join();
    final reversedString = temp.split('').reversed.join();

    if (temp == reversedString) return true;

    return false;
  }
}