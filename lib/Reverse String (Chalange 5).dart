class Challange5
{
    void reverseString(List<String> s)
    {
        var  i = 0;
        var  j = s.length - 1;
        String?  temp;
        while (i < j)
        {
            temp = s[i];
            s[i] = s[j];
            s[j] = temp;
            i++;
            j--;
        }
    }
}
