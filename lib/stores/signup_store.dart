import 'package:linkexp/helpers/extensions.dart';
import 'package:linkexp/model/user.dart';
import 'package:linkexp/repositories/user_repository.dart';
import 'package:mobx/mobx.dart';

part 'signup_store.g.dart';

class SignupStore = _SignupStore with _$SignupStore;

abstract class _SignupStore with Store {
  @observable
  String? name;

  @action
  void setName(String value) => name = value;

  @computed
  bool get nameValid => name != null && name!.length > 6;
  String? get nameError {
    if (name == null || nameValid)
      return null;
    else if (name!.isEmpty)
      return 'Campo obrigatório';
    else
      return 'Nome muito curto';
  }

  @observable
  String? email;

  @action
  void setEmail(String value) => email = value;

  @computed
  bool get emailValid => email != null && email!.isEmailValid();
  String? get emailError {
    if (email == null || emailValid)
      return null;
    else if (email!.isEmpty)
      return 'Campo obrigatório';
    else
      return 'E-mail inválido';
  }

  @observable
  String? phone;

  @action
  void setPhone(String value) => phone = value;

  @computed
  bool get phoneValid => phone != null && phone!.length >= 14;
  String? get phoneError {
    if (phone == null || phoneValid)
      return null;
    else if (phone!.isEmpty)
      return 'Campo obrigatório';
    else
      return 'Celular inválido';
  }

  @observable
  String? pass1;

  @action
  void setPass1(String value) => pass1 = value;

  @computed
  bool get pass1Valid => pass1 != null && pass1!.length >= 6;
  String? get pass1Error {
    if (pass1 == null || pass1Valid)
      return null;
    else if (pass1!.isEmpty)
      return 'Campo obrigatório';
    else
      return 'Senha muito curta';
  }

  @computed
  bool get isFormValid => nameValid && emailValid && phoneValid;

  @computed
  Function()? get signUpPressed => isFormValid && !loading ? _signUp : null;

  @observable
  bool loading = false;

  @observable
  String? error;

  @action
  setError(String value) => error = value;

  @action
  Future<void> _signUp() async {
    //print(email);
    loading = true;
    setError('');
    setPass1('ini@0001');

    final user = User(
        name: name, email: email, phone: phone, password: pass1, term: false);

    //print("user>>>>>>>>>>>>>>>>>>>>>>${user}");

    try {
      final resultUser = await UserRepository().signUp(user);

      //print("resultUser>>>>>>>>>>>>>>>>>>>>>>${resultUser}");
      //GetIt.I<UserManagerStore>().setUser(resultUser);
    } catch (e) {
      setError(e.toString());

      //print("resultUser>>>>>>>>>>>>>>>>>>>>>>${e.toString()}");
    }

    loading = false;
  }
}
