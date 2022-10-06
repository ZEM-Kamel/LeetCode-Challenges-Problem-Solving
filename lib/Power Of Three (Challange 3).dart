import 'dart:math';

class Challange3_1 {
    bool isPowerOfThree(n) {
        while (n >= 3) {
            if (n % 3 != 0) {
                return false;
            }
            n = n / 3;
        }
        return n == 1;
    }
}

class Challange3_2 {
    bool isPowerOfThree(n) {
        if (n == 1) {
            return true;
        }
        if (n <= 0 || n % 3 != 0) {
            return false;
        }
        return isPowerOfThree(n / 3);
    }
}


class Challange3_3 {
    bool isPowerOfThree(n) {
        for (var  i = 0; i < n; i++) {
            var  temp = pow(3,i);
            if (temp == n){
                return true;
            }
            if (temp > n){
                return false;
            }
        }
        return false;
    }
}

class Challange3_4 {
  bool isPowerOfThree(int n) {
    var result = false;
    for (var i = 1; i <= 31; i++) {
      if (n == math.pow(3, i)) {
        result = true;
        break;
      }
    }
    return result;
  }
}