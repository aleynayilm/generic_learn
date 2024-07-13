import 'package:flutter_test/flutter_test.dart';
import 'package:generic_learn/generic_learn.dart';

void main() {
  setUp(() {
    {}
  });
  test('User calculate', () {
    final users = [
      GenericUser(name: 'aa', id: '11', money: 10),
      GenericUser(name: 'aa', id: '11', money: 10),
      GenericUser(name: 'aa', id: '11', money: 20)
    ];
    final result =
        UserManagement(AdminUser(1, name: 'vadmin', id: '1', money: 15))
            .calculateMoney(users);
    expect(result, 55);
  });
}
