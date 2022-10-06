class Challange2_1 {
  bool isPowerOfTwo(int n) {
      return n != 0 && (n & (n - 1)) == 0;
  }
}

class Challange2_2 {
  bool isPowerOfTwo(n) {
      if(n==1) return true;
      if(n%2 != 0|| n<=0) return false;
      
      return isPowerOfTwo(n/2);
  }
}
