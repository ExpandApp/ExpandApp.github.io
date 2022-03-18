import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:linkexp/componets/error_box.dar.dart';
import 'package:linkexp/componets/replace_raisedbutton.dart';
import 'package:linkexp/componets/sucess_box.dart';
import 'package:linkexp/constants/constants.dart';
import 'package:linkexp/stores/signup_store.dart';

class SignupScreen extends StatelessWidget {
  final SignupStore _signupStore = SignupStore();

  final emailHolder = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 40),
            child: Observer(builder: (_) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 130,
                    width: 130,
                    child: Image(
                      image: AssetImage("assets/images/PXEXP_logo_red_inv.png"),
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Text(
                    "Link Região - Solicite o Seu.",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Observer(builder: (_) {
                    if (_signupStore.error != '')
                      return Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: ErrorBox(
                          message: _signupStore.error,
                        ),
                      );
                    else if (_signupStore.email != '' &&
                        _signupStore.error == '')
                      return Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: SucessBox(
                          message: 'Sucesso! Obrigado entraremos em contato.',
                        ),
                      );
                    else
                      return Container();
                  }),
                  Visibility(
                    //visible: _inscription,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: customDecoration(),
                      child: Observer(builder: (_) {
                        return TextField(
                          enabled: !_signupStore.loading,
                          decoration: InputDecoration(
                              hintText: "Nome e Sobre nome",
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.grey),
                              prefixIcon: Icon(
                                Icons.person_outline,
                                color: Constants.greenAirbnb,
                              ),
                              errorText: _signupStore.nameError),
                          onChanged: _signupStore.setName,
                        );
                      }),
                    ),
                  ),
                  Visibility(
                    //visible: _inscription,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: customDecoration(),
                      child: Observer(builder: (_) {
                        return TextField(
                          enabled: !_signupStore.loading,
                          decoration: InputDecoration(
                              hintText: '(99) 99999-9999',
                              //hintText: "Telefone",
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.grey),
                              prefixIcon: Icon(
                                Icons.smartphone,
                                color: Constants.greenAirbnb,
                              ),
                              errorText: _signupStore.phoneError),
                          keyboardType: TextInputType.phone,
                          onChanged: _signupStore.setPhone,
                          inputFormatters: [
                            // ignore: deprecated_member_use
                            FilteringTextInputFormatter.digitsOnly,
                            TelefoneInputFormatter()
                          ],
                        );
                      }),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: customDecoration(),
                    child: Observer(builder: (_) {
                      return TextFormField(
                        //initialValue: _signupStore.email,
                        enabled: !_signupStore.loading,
                        decoration: InputDecoration(
                            hintText: "Email",
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey),
                            prefixIcon: Icon(
                              Icons.mail_outline,
                              color: Constants.greenAirbnb,
                            ),
                            errorText: _signupStore.emailError),
                        keyboardType: TextInputType.emailAddress,
                        autocorrect: false,
                        onChanged: _signupStore.setEmail,
                        controller: emailHolder,
                      );
                    }),
                  ),
                  Observer(builder: (_) {
                    return Container(
                      height: 40,
                      margin: const EdgeInsets.only(top: 20, bottom: 12),
                      child: ReplaceRaisedButton(
                        color: Constants.redAirbnb,
                        disabledColor: Constants.redAirbnb.withAlpha(120),
                        child: _signupStore.loading
                            ? CircularProgressIndicator(
                                valueColor:
                                    AlwaysStoppedAnimation(Colors.white),
                              )
                            : Text('Enviar'),
                        textColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: _signupStore.signUpPressed,
                      ),
                    );
                  }),
/*                  Observer(
                    builder: (_) {
                      return InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () => _signupStore.signUpPressed,
                        splashColor: Colors.white,
                        hoverColor: Constants.greenAirbnb,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Constants.greenAirbnb,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 2),
                                color: Colors.grey,
                                blurRadius: 5,
                              )
                            ],
                          ),
                          child: Center(
                              child: Text(
                            "Cadastrar",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )),
                        ),
                      );
                    },
                  ),*/
                ],
              );
            }),
          ),
        ),
      ),
    );
  }

  BoxDecoration customDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          offset: Offset(0, 2),
          color: Colors.grey,
          blurRadius: 5,
        )
      ],
    );
  }
}
