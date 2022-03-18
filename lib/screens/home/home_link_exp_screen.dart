import 'package:flutter/material.dart';
import 'package:linkexp/componets/replace_raisedbutton.dart';
import 'package:linkexp/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeLinkExpSreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Indicar Região'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 32),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 8,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Image.asset(
                      "assets/images/PXEXP_logo_red_inv.png",
                      height: 150,
                      width: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 1, bottom: 12),
                    child: Text(
                      "Inovar e democratizar na forma de buscar local físico comercial.",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                  ),
                  Container(
                    height: 40,
                    margin: const EdgeInsets.only(top: 20, bottom: 12),
                    child: ReplaceRaisedButton(
                      color: Constants.greenAirbnb,
                      disabledColor: Constants.redAirbnb.withAlpha(120),
                      child: Text('WhatsApp'),
                      textColor: Colors.greenAccent,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      onPressed: () => _zap(context),
                    ),
                  ),
                  Container(
                    height: 40,
                    margin: const EdgeInsets.only(top: 2, bottom: 12),
                    child: ReplaceRaisedButton(
                      color: Constants.redAirbnb,
                      disabledColor: Constants.redAirbnb.withAlpha(120),
                      child: Text('Email'),
                      textColor: Colors.red.shade100,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      onPressed: () => _zap(context),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<Function?> _zap(context) async {
    var tel = "(11) 98227-7300";
    final phone = tel.replaceAll(RegExp('[^0-9]'), '');

    var _url = "https://api.whatsapp.com/send?phone=55";

    if (await canLaunch(_url + phone)) {
      launch(_url + phone);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text('Falha abrir WhatsApp'),
        duration: const Duration(seconds: 2),
        action: SnackBarAction(
          label: 'OK',
          onPressed: () {
            ScaffoldMessenger.of(context).removeCurrentSnackBar();
          },
        ),
      ));
    }
  }
}
