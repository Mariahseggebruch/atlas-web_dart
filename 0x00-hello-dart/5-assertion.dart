void main(List<String> args) {

  if (args.isEmpty) {
    print('Please provide a number as an argument');
  }

  int nb = int.parse(args[0]);



  assert(nb >= 80,
      'Uncaught Error: Assertion failed: "The score must be bigger or equal to 80');


  print('You Passed');
}
