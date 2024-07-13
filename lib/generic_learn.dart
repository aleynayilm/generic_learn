class UserManagement<T extends AdminUser> {
  final T admin;

  UserManagement(this.admin);
  void sayName(GenericUser user) {
    print(user.name);
  }

  int calculateMoney(List<GenericUser> users) {
    int sum = 0;
    for (var item in users) {
      sum += item.money;
    }
    int initializeValue = admin.role == 1 ? admin.money : 0;

    final sumMoney = users.map((e) => e.money).fold<int>(
        initializeValue, (previousValue, element) => previousValue + element);
    final _money = users.fold<int>(initializeValue,
        (previousValue, element) => previousValue + element.money);

    return _money;
  }
}

class GenericUser {
  final String name;
  final String id;
  final int money;

  GenericUser({required this.name, required this.id, required this.money});
}

class AdminUser extends GenericUser {
  final int role;
  AdminUser(this.role,
      {required super.name, required super.id, required super.money});
}
