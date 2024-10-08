void outer(String name, String id) {
  String inner() {
    List<String> nameParts = name.split(' ');
    String lastNameInitial = nameParts[1][0]; // Get the initial of the last name
    return 'Hello Agent $lastNameInitial.${nameParts[0]} your id is $id';
  }
  
  print(inner());
}
