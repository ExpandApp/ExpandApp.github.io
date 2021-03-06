import 'package:flutter/material.dart';
import 'package:linkexp/constants/constants.dart';
import 'package:linkexp/screens/home/signup_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeLinkExp2Sreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 40),
          child: Column(
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
                "Bem vindo.",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupScreen()));
                },
                //splashColor: Colors.black,
                hoverColor: Constants.redAirbnb,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black87),
                    color: Colors.lightBlueAccent.shade100,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        //Icon(Icons.search),
                        Center(
                          child: Text(
                            "Venham fazer parte dessa inova????o",
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey.shade700),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  _whatsApp(context);
                },
                //splashColor: Constants.greenWhatsApp,
                hoverColor: Constants.greenWhatsApp,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black87),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        //Icon(Icons.search),
                        Center(
                          child: Text(
                            "WhatsApp",
                            style: TextStyle(
                                fontSize: 13, color: Colors.grey.shade700),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  _phone(context);
                },
                //splashColor: Constants.greenWhatsApp,
                hoverColor: Colors.grey.shade300,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black87),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        //Icon(Icons.search),
                        Center(
                          child: Text(
                            "Telefone",
                            style: TextStyle(
                                fontSize: 13, color: Colors.grey.shade700),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupScreen()));
                },
                //splashColor: Constants.greenWhatsApp,
                hoverColor: Constants.redAirbnb,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black87),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        //Icon(Icons.search),
                        Center(
                          child: Text(
                            "Link Regi??o -> Solicite o seu",
                            style: TextStyle(
                                fontSize: 13, color: Colors.grey.shade700),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                "Redes Sociais ",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  _instagram(context);
                },
                //splashColor: Constants.greenWhatsApp,
                hoverColor: Colors.grey.shade300,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black87),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        //Icon(Icons.search),
                        Center(
                          child: Container(
                            height: 40,
                            width: 80,
                            child: Image(
                              image: AssetImage("assets/images/instagram.png"),
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  _youTube(context);
                },
                //splashColor: Constants.greenWhatsApp,
                hoverColor: Colors.grey.shade300,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black87),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        //Icon(Icons.search),
                        Center(
                          child: Container(
                            height: 40,
                            width: 80,
                            child: Image(
                              image: AssetImage("assets/images/youtube.png"),
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                "Baixe App gratuitamente ???? ",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  _appStore(context);
                },
                //splashColor: Constants.greenWhatsApp,
                hoverColor: Colors.grey.shade300,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black87),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        //Icon(Icons.search),
                        Center(
                          child: Container(
                            height: 40,
                            width: 80,
                            child: Image(
                              image: AssetImage("assets/images/apple.JPG"),
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  _googlePlay(context);
                },
                //splashColor: Constants.greenWhatsApp,
                hoverColor: Colors.grey.shade300,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black87),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        //Icon(Icons.search),
                        Center(
                          child: Container(
                            height: 40,
                            width: 80,
                            child: Image(
                              image: AssetImage("assets/images/google.JPG"),
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

/*              Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 3, bottom: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10),
                            onTap: () {
                              _appStore(context);
                            },
                            //splashColor: Constants.greenWhatsApp,
                            hoverColor: Colors.grey.shade300,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black87),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 190, vertical: 12),
                                child: Expanded(
                                  child: Container(
                                    height: 90,
                                    width: 180,
                                    child: Image(
                                      image: AssetImage(
                                          "assets/images/app_store2.png"),
                                      fit: BoxFit.scaleDown,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        VerticalDivider(),
                        Expanded(
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10),
                            onTap: () {
                              _googlePlay(context);
                            },
                            //splashColor: Constants.greenWhatsApp,
                            hoverColor: Colors.grey.shade300,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black87),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 190, vertical: 12),
                                child: Expanded(
                                  child: Container(
                                    height: 90,
                                    width: 180,
                                    child: Image(
                                      image: AssetImage(
                                          "assets/images/google_play.png"),
                                      fit: BoxFit.scaleDown,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),*/
            ],
          ),
        ),
      ),
    );
  }

  Future<Function?> _whatsApp(context) async {
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

  Future<Function?> _phone(context) async {
    var tel = "(11) 98227-7300";

    final phone = 'tel:${tel.replaceAll(RegExp('[^0-9]'), '')}';

    var _url = "https://www.instagram.com/expand_app/";

    if (await canLaunch(phone)) {
      launch(phone);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text('Falha abrir Telefone'),
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

  Future<Function?> _appStore(context) async {
    var _url = "https://apps.apple.com/br/app/expandapp/id1600887740";

    if (await canLaunch(_url)) {
      launch(_url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text('Falha App Store'),
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

  Future<Function?> _googlePlay(context) async {
    var _url =
        "https://play.google.com/store/apps/details?id=br.com.olivaniformatica.expand";

    if (await canLaunch(_url)) {
      launch(_url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text('Falha Google Play'),
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

  Future<Function?> _instagram(context) async {
    var _url = "https://www.instagram.com/expand_app/";

    if (await canLaunch(_url)) {
      launch(_url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text('Falha Instagram'),
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

  Future<Function?> _youTube(context) async {
    var _url =
        "https://www.youtube.com/channel/UCq8_KtzeCxd8i2tBGKLdhrA/featured";

    if (await canLaunch(_url)) {
      launch(_url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text('Falha YouTube'),
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
