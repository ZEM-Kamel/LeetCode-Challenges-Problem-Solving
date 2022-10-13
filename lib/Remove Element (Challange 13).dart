class Challange13_1 {
    int removeElement(List<int> nums, int val) {
        int counterVal = 0;
        for (int i = 0; i < nums.length; i++) {
            nums[i - counterVal] = nums[i];
            if (nums[i] == val) {
                counterVal++;
            }
        }
        return nums.length - counterVal;
    }
}
/***********************************************/
class Challange13_2 {
    int removeElement(List<int> nums, int val) {
        int k = 0;
        for (int i = 0; i < nums.length; i++) {
            if (nums[i] != val) {
                nums[k] = nums[i];
                k++;
            }
        }
        return k;
    }
}