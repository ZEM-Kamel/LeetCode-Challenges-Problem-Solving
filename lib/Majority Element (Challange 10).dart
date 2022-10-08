class Challange10_1 {
    int majorityElement(List<int> nums) {
        nums.sort();
        return nums[nums.length ~/ 2];
    }
}
/************************************/
class Challange10_2 {
    int majorityElement(List<int>nums) {
        var  count = 0;
        var  result = 0;
        for (var num in nums) {
            if (count == 0) {
                result = num;
            }
            if (num != result) {
                count--;
            }
            else {
                count++;
            }
        }
        return result;
    }
}
/************************************/
class Challange10_3 {
    int majorityElement(List<int>num) {
        var  major = num[0];
        var  count = 1;
        for (var  i = 1; i < num.length; i++) {
            if (count == 0) {
                count++;
                major = num[i];
            }
            else {
                if (major == num[i]) {
                    count++;
                }
                else {
                    count--;
                }
            }
        }
        return major;
    }
}