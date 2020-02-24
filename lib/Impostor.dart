

// An implementation of the Person interface.
import 'Person.dart';

class Impostor implements Person {
  get _name => '';

  String greet(String who) => 'Hi $who. Do you know who I am?';
}


