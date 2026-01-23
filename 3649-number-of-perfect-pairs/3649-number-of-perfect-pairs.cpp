class Solution {
public:
    long long perfectPairs(vector<int>& nums) {
        long long counter =0;
       for(int& x: nums) x = abs(x);
       sort(nums.begin(), nums.end());
       for(int i=0; i < nums.size(); i++){
        long long a = nums[i];
        auto y = upper_bound(nums.begin() + i +1, nums.end(), 2 * a);
        counter += distance(nums.begin() + i+1, y);
       }
       return counter;
    }
};