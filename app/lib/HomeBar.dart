import 'package:flutter/material.dart';
import 'package:game_calendar/UI/ColorPlate.dart';
import 'package:game_calendar/UI/DorLogo.dart';


class HomeBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    //0xff3A4A7A
    return AppBar(
      backgroundColor: ColorPlate.mainBackgroundColor,
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          DorLogo(),
          SizedBox(
            width: 5,
          ),
          Text(
            'DOR',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ],
      ),
      elevation: 0.1,
      leading: IconButton(
        icon: const Icon(Icons.menu),
        splashRadius: 16.0,
        onPressed: () => Scaffold.of(context).openDrawer(),
        color: const Color.fromARGB(255, 255, 255, 255),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add),
          splashRadius: 16.0,
          color: const Color.fromARGB(255, 255, 255, 255),
        )
      ],
    );
  }
}
