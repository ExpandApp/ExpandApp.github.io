import 'package:linkexp/model/user.dart';
import 'package:linkexp/repositories/parse_errors.dart';
import 'package:linkexp/repositories/table_keys.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

class UserRepository {
  Future<User> signUp(User user) async {
    final parseUser = ParseUser(user.email, user.password, user.email);

    parseUser.set<String?>(keyUserName, user.name);
    parseUser.set<String?>(keyUserPhone, user.phone);
    parseUser.set(keyUserType, user.type!.index);
    parseUser.set(keyUserTerm, user.term);

    final response = await parseUser.signUp();

    if (response.success) {
/*      print(
          "resultUser>>>>>>>>>>>>>>>>>>>>>>${mapParseToUser(response.result)}");*/
      return mapParseToUser(response.result);
    } else {
      return Future.error(
          ParseErrors.getDescription(response.error!.code).toString());
    }
  }

  User mapParseToUser(ParseUser parseUser) {
    return User(
        id: parseUser.objectId,
        name: parseUser.get(keyUserName),
        email: parseUser.get(keyUserEmail),
        phone: parseUser.get(keyUserPhone),
        type: UserType.values[parseUser.get(keyUserType)],
        createdAt: parseUser.get(keyUserCreatedAt),
        isSocialLogin: parseUser.get(keyUserAuthData) != null,
        term: parseUser.get(keyUserTerm));
  }
}
