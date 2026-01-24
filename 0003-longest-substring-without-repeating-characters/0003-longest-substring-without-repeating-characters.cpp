class Solution {
public:
    int lengthOfLongestSubstring(string s) {
        vector<char> substring;
        int maxLength = 0;
        for(int i = 0; i < s.length(); i++){
            if(find(substring.begin(), substring.end(), s[i]) != substring.end()){
                substring.erase(substring.begin(), find(substring.begin(), substring.end(), s[i]) + 1);
            }
            substring.push_back(s[i]);
            maxLength = max(maxLength, (int)substring.size());
        }
        return maxLength;
    }
};