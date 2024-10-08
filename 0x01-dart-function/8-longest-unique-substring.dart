String longestUniqueSubstring(String str) {
  int maxLength = 0;
  String longestSubstring = '';

  for (int i = 0; i < str.length; i++) {
    Set<String> seen = {};
    String currentSubstring = '';

    for (int j = i; j < str.length; j++) {
      String char = str[j];
      if (seen.contains(char)) break;
      seen.add(char);
      currentSubstring += char;
    }

    if (currentSubstring.length > maxLength) {
      maxLength = currentSubstring.length;
      longestSubstring = currentSubstring;
    }
  }

  return longestSubstring;
}
