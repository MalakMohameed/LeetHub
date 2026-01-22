class Solution {
public:
    int strStr(string haystack, string needle) {
        int findIndex = haystack.find(needle);
        if(findIndex == string::npos){
            return -1;
        }else{
            return findIndex;
        }
    }    
};