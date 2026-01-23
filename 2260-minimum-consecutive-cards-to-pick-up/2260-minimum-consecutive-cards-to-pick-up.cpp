class Solution {
public:
    int minimumCardPickup(vector<int>& cards) {
        unordered_map<int, int> result;
        int minDist = INT_MAX; 
        for(int i=0; i < cards.size(); i++){
          if(result.find(cards[i]) != result.end()){
            int d = i - result[cards[i]] + 1;
            minDist = min(minDist, d);
          }
          result[cards[i]] = i;
        }
        return (minDist < INT_MAX)? minDist : -1;
    }
};