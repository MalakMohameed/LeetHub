class Solution {
public:
    bool isPalindrome(int x) {
        string original = to_string(x);
        string reverse(original.rbegin(), original.rend());
        return original == reverse;
    }
};