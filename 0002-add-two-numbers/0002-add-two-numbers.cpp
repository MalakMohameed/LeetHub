/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode() : val(0), next(nullptr) {}
 *     ListNode(int x) : val(x), next(nullptr) {}
 *     ListNode(int x, ListNode *next) : val(x), next(next) {}
 * };
 */
class Solution {
public:
 ListNode* addTwoNumbers(ListNode* l1, ListNode* l2) {
        ListNode* dummy = new ListNode(); // Dummy node to simplify code
        ListNode* curr = dummy;
        int carry = 0;

        while (l1 || l2 || carry) {
            // Add values from both lists and carry
            int val1 = l1 ? l1->val : 0;
            int val2 = l2 ? l2->val : 0;
            int total = val1 + val2 + carry;

            // Update carry
            carry = total / 10;

            // Create new node with sum % 10 and move to the next node
            curr->next = new ListNode(total % 10);
            curr = curr->next;

            // Move to the next nodes in the input lists if they exist
            if (l1) {
                l1 = l1->next;
            }
            if (l2) {
                l2 = l2->next;
            }
        }

        return dummy->next;
 }
};