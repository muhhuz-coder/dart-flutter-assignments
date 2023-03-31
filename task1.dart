void findLongestSubsequenceConsecutiveNum(List<int> seq) {
  int maxLength = 0;
  int length = 1;
  int end = 0;
  for (int i = 1; i < seq.length; i++) {
    if (seq[i] == seq[i - 1] + 1) {
      length++;
      if (length > maxLength) {
        maxLength = length;
        end = i;
        print("max length$maxLength");
        print("end$end");
      }
    } else {
      length = 1;
    }
  }
  List<int> subseq = seq.sublist(end - maxLength + 1, end + 1);
  print('The longest subsequence is: $subseq');
}

void main() {
  List<int> num = [1, 4, 3, 5, 2, 2, 1, 2, 3, 4, 5, 1];
  findLongestSubsequenceConsecutiveNum(num);
}
