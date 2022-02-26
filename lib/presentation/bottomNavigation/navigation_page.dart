import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:garuda_ott/presentation/presentation.dart';
import 'package:garuda_ott/utils/themes/colors.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  final List<Widget> _screens = [
    HomePage(
      key: const PageStorageKey("homePage"),
    ),
    SearchPage(
      key: const PageStorageKey("searchPage"),
    ),
    const PlayerPage(
      key: PageStorageKey("playerPage"),
    ),
    const DownloadPage(
      key: PageStorageKey("downloadPage"),
    ),
    const Scaffold(),
  ];

  final Map<String, IconData> _icons = const {
    "Home": Icons.home,
    "Search": Icons.search,
    "Watch List": Icons.queue_play_next,
    "Downloads": Icons.file_download,
    "More": Icons.menu
  };

  int _currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: MyColors.scaffoldGradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _screens[_currentIndex],
        bottomNavigationBar: Stack(
          children: [
            ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 60, sigmaY: 60),
                child: Opacity(
                  opacity: 0.3,
                  child: BottomNavigationBar(
                    backgroundColor: Colors.grey.withOpacity(0.1),
                    type: BottomNavigationBarType.shifting,
                    items: _icons
                        .map(
                          (title, icon) => MapEntry(
                            title,
                            BottomNavigationBarItem(
                              icon: Icon(
                                icon,
                                size: 30,
                              ),
                              label: title,
                            ),
                          ),
                        )
                        .values
                        .toList(),
                    currentIndex: _currentIndex,
                    selectedItemColor: Colors.white,
                    selectedFontSize: 11,
                    unselectedItemColor: Colors.white,
                    unselectedFontSize: 11,
                    onTap: (index) => setState(
                      () {
                        _currentIndex = index;
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
