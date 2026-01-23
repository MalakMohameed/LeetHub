class Solution {
public:
    int reverse(int x) {
        string s = to_string(x);
        string reversed(s.rbegin(), s.rend());

        // if(s[0] == '-') s.erase(0);
        long long reverseInt = stoll(reversed);
        if(s[0] == '-') reverseInt = -reverseInt;

        if(reverseInt < INT_MIN || reverseInt > INT_MAX) return 0;

        return static_cast<int>(reverseInt);
    }
};