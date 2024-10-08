String longestPalindrome(String s) {
  String longest = 'none';

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 2; j <= s.length; j++) {
      String substring = s.substring(i, j);
      if (isPalindrome(substring) && substring.length > longest.length) {
        longest = substring;
      }
    }
  }

  return longest;
}

bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }

  for (int i = 0; i < s.length ~/ 2; i++) {
    if (s[i] != s[s.length - i - 1]) {
      return false;
    }
  }
  return true;
}
