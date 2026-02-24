class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]); // Constructor for ListNode
}

class Solution {
  ListNode? reverseList(ListNode? head) {
    // Method to reverse a linked list
    ListNode? prev = null; // Initialize previous node as null
    ListNode? current = head; // Start with the head of the list

    while (current != null) {
      // Traverse the list until the end
      ListNode? nextNode = current.next; // store next node
      current.next = prev; // mirror the link
      prev = current; // move prev to current
      current = nextNode; //  move current to next
    }

    return prev; // at the end, prev will be the new head of the reversed list
  }
}
