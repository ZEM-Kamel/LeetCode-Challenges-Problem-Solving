class Challange9_1 {
    bool validPalindrome(s) {
        var  i = 0;
        var  j = s.length - 1;
        while (i <= j) {
            if (s[i] == s[j]) {
                i++;
                j--;
            }
            else {
                return isPalindrome(s, i + 1, j) || isPalindrome(s, i, j - 1);
            }
        }
        return true;
    }
    bool isPalindrome(s,i,j) {
        while (i <= j) {
            if (s[i] == s[j]) {
                i++;
                j--;
            }
            else {
                return false;
            }
        }
        return true;
    }
}
/*******************************/
class Challange9_2 {
    bool validPalindrome(s) {
        var  i = -1;
        var  j = s.length;
        while (++i < --j) {
            if (s[i] != s[j]) {
                return isPalindrome(s, i, j + 1) || isPalindrome(s, i - 1, j);
            }
        }
        return true;
    }
    bool isPalindrome(s,i,j) {
        while (++i < --j) {
            if (s[i] != s[j]) {
                return false;
            }
        }
        return true;
    }
}
/******************************/
class Challange9_3 {
  bool validPalindrome(s) {
    final String temp = s.toLowerCase();
    final String reversedString = temp.split('').reversed.join();
    if (temp == reversedString) {
      return true;
    } else {
      if (s.length % 2 == 0) {
        final int halfLength = (s.length ~/ 2) - 1;
        return temp.substring(0, halfLength) == reversedString.substring(0, halfLength);
      }
      return false;
    }
  }
}