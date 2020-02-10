import 'package:uuid/uuid.dart';

class IdGenerator{
  final _uuid = Uuid();

  String getID() {
    return _uuid.v4();
  }
}