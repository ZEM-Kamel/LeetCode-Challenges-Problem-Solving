class Challange18 {
  String longestCommonPrefix(List<String> strs) {
        String r = "";
        int n = strs.length;
        strs.sort();
        String s = strs[0];
        String h = strs[n - 1];
        for (int i = 0; i < s.length; i++) {
            if (s[i] != h[i]) {
                break;
            }
            r = (r + s[i]);
        }
        return r;
    }
}