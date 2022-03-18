enum UserType { CUSTOMER, SUPPLIER }

class User {
  User(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.password,
      this.type = UserType.CUSTOMER,
      this.createdAt,
      this.isSocialLogin,
      this.term});

  String? id;
  String? name;
  String? email;
  String? phone;
  String? password;
  UserType? type;
  DateTime? createdAt;
  bool? isSocialLogin = false;
  bool? term = false;

  @override
  String toString() {
    return 'User{id: $id, name: $name, email: $email, phone: $phone, password: $password, type: $type, createdAt: $createdAt, isSocialLogin : $isSocialLogin, term : $term}';
  }

  User copyWith(
      {String? email,
      String? password,
      String? name,
      String? phone,
      UserType? userType,
      bool? isSocialLogin,
      bool? term}) {
    return User(
        id: id,
        email: email ?? this.email,
        password: password ?? this.password,
        name: name ?? this.name,
        phone: phone ?? this.phone,
        type: type ?? this.type,
        createdAt: createdAt,
        isSocialLogin: isSocialLogin,
        term: term);
  }
}
