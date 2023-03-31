import 'dart:io';
String findLongestSubsequence(List<String> strings) {
  String result='';
  if (strings.isEmpty) return result;
  for (int i = 0; i < strings[0].length; i++) {
    for (int j = i+1; j <= strings[0].length; j++) {
      String substring = strings[0].substring(i, j);
      print(substring);
      bool found = true;
      for (int k = 1; k < strings.length; k++) {
        if (!strings[k].contains(substring)) {
          found = false;
          break;
        }
      }
      if (found && substring.length > result.length) {
        result = substring;
        print("result lrnght ${result.length}");
      }
    }
  }
  return result;
}

void main() {
  final strings = ['abcdefg', 'abbcdef', 'abccccdef', 'xyzabc', 'pqrabcde'];
  final subsequence = findLongestSubsequence(strings);
  print('The longest common subsequence is: $subsequence');
}
