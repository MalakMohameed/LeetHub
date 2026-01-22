
class Solution {
public:
    vector<int> dailyTemperatures(vector<int>& temperatures) {
        ios_base::sync_with_stdio(false); cin.tie(NULL); // to help with large datasets
        int size = temperatures.size();
        vector<int> answer(size, 0);
        stack<int> st;
        for(int i = 0; i < size; i++){
            while(!st.empty() && temperatures[i] > temperatures[st.top()]){
                int prevDay = st.top();
                st.pop();
                answer[prevDay] = i - prevDay;
            }
            st.push(i);
        }
        return answer;
    }
};