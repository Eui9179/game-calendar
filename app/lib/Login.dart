import 'package:flutter/material.dart';
import 'package:game_calendar/UI/ColorPlate.dart';
import 'package:game_calendar/UI/DorLogo.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorPlate.mainBackgroundColor,
          elevation: 0.0,
        ),
        body: Container(
            color: ColorPlate.mainBackgroundColor,
            child: Center(
                child: Column(children: const [
              SizedBox(height: 60,),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Image(
                  image: AssetImage('assets/images/dor/dor.jpg'),
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "DOR에서 친구와",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 5,),
              Text(
                "게임 일정을 공유해보세요!",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 100,),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image(
                  image: AssetImage('assets/images/login/kakaologinbutton.png'),
                  fit: BoxFit.cover,
                  width: 330,
                  height: 45,
              ),
              ),
              
              SizedBox(height: 15,),
              Image(
                  image: AssetImage('assets/images/login/appleloginbutton.png'),
                  fit: BoxFit.cover,
                  width: 330,
              ),
            ]
          )
        )
      )
    );
  }
}
