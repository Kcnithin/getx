import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_ex/user.dart';
import 'package:getx_ex/user_service.dart';
import 'package:get/get.dart';

class UserController extends GetxController{

  var users = <User>[].obs;

  final service = UserService();

  @override
  void onInit() {
    getUsersCtrl();
    super.onInit();
  }

  getUsersCtrl() async {
    var result = await service.getUsers();
    users.addAll(result);
  }
}