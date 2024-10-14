import 'package:auto_route/auto_route.dart';
import 'package:echoapp/core/constants/app_assets.dart';
import 'package:echoapp/core/theme/app_colors.dart';
import 'package:echoapp/presentation/bottom_navigation/widget/bottom_nav_icon_widget.dart';
import 'package:echoapp/presentation/home/home_screen.dart';
import 'package:echoapp/presentation/profile/profile_screen.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen>
    with WidgetsBindingObserver {
  int _currentIndex = 0;
  final bool _isVisible = true;
  late List<Widget> _screens;

  void _onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    _screens = [
      const HomeScreen(),
      const ProfileScreen(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        bottom: false,
        child: IndexedStack(
          index: _currentIndex,
          children: _screens,
        ),
      ),
      extendBody: true,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        child: BottomNavigationBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          type: BottomNavigationBarType.fixed,
          elevation: 0.0,
          onTap: _onTappedBar,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _currentIndex,
          selectedItemColor: AppColors.black,
          unselectedItemColor: AppColors.body,
          items: [
            BottomNavigationBarItem(
              icon: BottomNavigationIconWidget(
                svgPath: AppAssets.svg.book,
                isSelected: _currentIndex == 0,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: BottomNavigationIconWidget(
                svgPath: AppAssets.svg.bookmark,
                isSelected: _currentIndex == 1,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: BottomNavigationIconWidget(
                svgPath: AppAssets.svg.person,
                isSelected: _currentIndex == 2,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
