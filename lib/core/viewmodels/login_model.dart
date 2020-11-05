import 'package:temp/core/enums/viewstate.dart';
import 'package:temp/core/viewmodels/base_model.dart';

import 'package:temp/core/services/authentication_service.dart';
import 'package:temp/locator.dart';

class LoginModel extends BaseModel {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();

  //비동기 함수기 때문에 로직이 시작되면 viewState를Busy로 바꿔줌.
  Future<bool> login(String userIdText) async {
    setState(ViewState.Busy);
    var userId = int.tryParse(userIdText);
    var success = await _authenticationService.login(userId);
    setState(ViewState.Idle);
    return success;
  }
}
