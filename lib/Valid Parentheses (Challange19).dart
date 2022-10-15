class Challange19_1 {
  bool isValid(String s) {
    if (s.isEmpty) return false;

    final listChar = [];

    for (var ch in s.split('')) {
      if (ch == '(' || ch == '{' || ch == '[') {
        listChar.add(ch);
      } else if (ch == ')' && listChar.isNotEmpty && listChar.first == '(') {
        listChar.removeAt(0);
      } else if (ch == '}' && listChar.isNotEmpty && listChar.first == '{') {
        listChar.removeAt(0);
      } else if (ch == ']' && listChar.isNotEmpty && listChar.first == '[') {
        listChar.removeAt(0);
      } else {
        return false;
      }
    }
    return listChar.isEmpty;
  }
}
/*****************************************************************/
class Challange19_2 {
    bool isValid(String s) {
    final listChar = [];
        for (int i = 0; i < s.length; i++) {
            if ((s[i] == '('[0]) || (s[i] == '['[0]) || (s[i] == '{'[0])) {
                listChar.add(s[i]);
            } else {
                if (s[i] == ')'[0]) {
                    if (listChar.isEmpty || (listChar.removeAt(0) != '('[0])) {
                        return false;
                    }
                }
                if (s[i] == ']'[0]) {
                    if (listChar.isEmpty || (listChar.removeAt(0) != '['[0])) {
                        return false;
                    }
                }
                if (s[i] == '}'[0]) {
                    if (listChar.isEmpty || (listChar.removeAt(0) != '{'[0])) {
                        return false;
                    }
                }
            }
        }
        return listChar.isEmpty;
    }
}