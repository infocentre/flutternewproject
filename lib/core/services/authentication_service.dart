import 'package:temp/core/services/api.dart';
import 'package:temp/locator.dart';

class AuthenticationService {
  Api _api = locator<Api>();

  Future<bool> login(int userId) async {
    var fetchedUser = await _api.getUserProfile(userId);
    var hasUser = fetchedUser != null;

    return hasUser;
  }
}
