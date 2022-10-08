class Challange11_1 {
    int missingNumber(List<int> nums) {
        int sum1 = 0;
        int sum2 = 0;
        for (int i = 0; i <= nums.length; i++) {
            sum1 += i;
        }
        for (int i = 0; i < nums.length; i++) {
            sum2 += nums[i];
        }
        return sum1 - sum2;
    }
}
/*****************************************/
class Challange11_2 {
  int missingNumber(List<int> nums) {
        int expectedSum = ((nums.length * (nums.length + 1)) ~/ 2);
        int actualSum = 0;
        for (int num in nums) {
            actualSum += num;
        }
        return expectedSum - actualSum;
    }
}
/*****************************************/
class Challange11_3 {
    int missingNumber(List<int> nums) {
    int miss = 0;
    for (int i = 0; i < nums.length; i++) {
      miss ^= nums[i];
     // print('$miss ^ ${nums[i]} = ${miss ^= nums[i]}');
    }
    return miss;
  }
}