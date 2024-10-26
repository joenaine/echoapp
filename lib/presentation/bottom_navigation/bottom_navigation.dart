import 'package:auto_route/auto_route.dart';
import 'package:echoapp/application/channels/channels_bloc.dart';
import 'package:echoapp/application/posts/post_favorites/post_favorites_bloc.dart';
import 'package:echoapp/application/profile/profile_bloc.dart';
import 'package:echoapp/core/constants/app_assets.dart';
import 'package:echoapp/core/theme/app_colors.dart';
import 'package:echoapp/presentation/bottom_navigation/widget/bottom_nav_icon_widget.dart';
import 'package:echoapp/presentation/channels/channels_screen.dart';
import 'package:echoapp/presentation/favorites/favorites_screen.dart';
import 'package:echoapp/presentation/home/home_screen.dart';
import 'package:echoapp/presentation/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _currentIndex = 0;
  late List<Widget> _screens;

  void _onTappedBar(int index) {
    if (index == 1) {
      context.read<ChannelsBloc>().add(const ChannelsEvent.fetch());
    } else if (index == 2) {
      // Reset loading flag before fetching
      context.read<PostFavoritesBloc>().add(const PostFavoritesEvent.refresh());
    } else if (index == 3) {
      context.read<ProfileBloc>().add(const ProfileEvent.fetch());
    }
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    _screens = [
      const HomeScreen(),
      const ChannelsScreen(),
      const FavoritesScreen(),
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
                color: _currentIndex == 0 ? AppColors.white : null,
                isSelected: _currentIndex == 0,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                color:
                    _currentIndex == 1 ? AppColors.white : AppColors.lightGrey,
                AppAssets.svg.grid,
                height: 28,
              ),
              label: 'Channels',
            ),
            BottomNavigationBarItem(
              icon: BottomNavigationIconWidget(
                color: _currentIndex == 2 ? AppColors.white : null,
                svgPath: AppAssets.svg.bookmark,
                isSelected: _currentIndex == 2,
              ),
              label: 'Channels',
            ),
            BottomNavigationBarItem(
              icon: BottomNavigationIconWidget(
                color: _currentIndex == 3 ? AppColors.white : null,
                svgPath: AppAssets.svg.person,
                isSelected: _currentIndex == 3,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
