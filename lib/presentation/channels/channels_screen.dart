import 'package:echoapp/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ChannelsScreen extends StatelessWidget {
  const ChannelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Каналы',
          style: TextStyle(color: AppColors.black),
        ),
      ),
      // body: BlocBuilder<SubjectBloc, SubjectState>(
      //   builder: (context, state) {
      //     return Container();
      //   },
      // ),
    );
  }
}
