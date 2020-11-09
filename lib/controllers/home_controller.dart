import 'package:get/state_manager.dart';
import 'package:getx_demo/api/users_api.dart';
import 'package:getx_demo/models/user.dart';

class HomeController extends GetxController {
  int _counter = 0;
  List<User> _users = [];

  bool _loading = true;

  int get counter => _counter;
  List<User> get users => [..._users];
  bool get loading => _loading;

  @override
  void onInit() {
    super.onInit();
    print("same as initState");
  }

  @override
  void onReady() {
    super.onReady();
    print("onReady");
    loadUsers();
  }

  void increment() {
    _counter++;
    update(['text']);
  }

  void loadUsers() async {
    final data = await UsersAPI.instance.getUsers(1);
    this._users = data;
    this._loading = false;
    update(['users']);
  }
}
