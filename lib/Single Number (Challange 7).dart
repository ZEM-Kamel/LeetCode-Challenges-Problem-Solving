class Challange7 {
  int singleNumber(List<int> nums) {
      var result = 0;
      for (int num in nums) {
          if (count(nums, num) == 1) result = num;
      }
      return result;
  }
    int count(List<int> listNumbers, int num) {
        var i = 0;
        listNumbers.forEach((element) {
            if (element == num) i++;
        });
        return i;
    }
}