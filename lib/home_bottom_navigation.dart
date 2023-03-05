import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:rs2xiaomi/tela_inicial.dart';
import 'package:rs2xiaomi/telas/telas_simples.dart';

class HomeBottomNavigation extends StatefulWidget {
  const HomeBottomNavigation({super.key});

  @override
  State<HomeBottomNavigation> createState() => _HomeBottomNavigationState();
}

class _HomeBottomNavigationState extends State<HomeBottomNavigation> {
  
  Color mainColor = const Color.fromARGB(255, 255, 255, 255);
  Color mainColor2 = const Color.fromARGB(255, 97, 183, 244);
  final PersistentTabController _controller = PersistentTabController(
    initialIndex: 0, /* definir o controller e o index que define o indice que vai definir a tela inicial da bottom navigation bar  */
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: PersistentTabView(
        backgroundColor: const Color.fromARGB(255, 101, 12, 123),
        context,
        controller: _controller,
        screens: const [
          TelaInicial(),
          Sim1(),
          Sim2(),
          Sim3(),
          Sim4()
        ],
        items: _navBarsItems(),
        navBarStyle: NavBarStyle.style1,
        // navBarStyle: NavBarStyle.style9,
        // navBarStyle: NavBarStyle.style7,
        // navBarStyle: NavBarStyle.style10,
        // navBarStyle: NavBarStyle.style12,
        // navBarStyle: NavBarStyle.style13,
        // navBarStyle: NavBarStyle.style3,
        // navBarStyle: NavBarStyle.style6,
      ),
    );
  }
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: ("Home"),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: mainColor2,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.search),
        title: ("Buscar"),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: mainColor2,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.chat_bubble),
        title: ("Chat"),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: mainColor2,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.add_box_sharp),
        title: ("Notification"),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: mainColor2,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person),
        title: ("Profile"),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: mainColor2,
      ),
    ];
  }
}