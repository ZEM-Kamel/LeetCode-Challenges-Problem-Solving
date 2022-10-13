class Challange15_1 {
    int lengthOfLastWord(String s) {
        List<String> s1 = s.split(" ");
        int i = s1.length;
        return s1[i - 1].length;
    }
}
/*********************************************/
class Challange15_2 {
    int lengthOfLastWord(String s) {
        int ans = 0;
        s = s.trim();
        for (int i = (s.length - 1); i >= 0; i--) {
            if (s.codeUnitAt(i) != ' '.codeUnitAt(0)) {
                ans++;
            } else {
                break;
            }
        }
        return ans;
    }
}
/*********************************************/
class Challange15_3 {
  int lengthOfLastWord(String s) {
    return s.trim().split(' ').last.length;
  }
}