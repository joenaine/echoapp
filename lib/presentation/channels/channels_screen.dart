import 'package:another_flushbar/flushbar_helper.dart';
import 'package:echoapp/application/auth/auth_bloc.dart';
import 'package:echoapp/application/channels/channels_bloc.dart';
import 'package:echoapp/core/constants/app_styles.dart';
import 'package:echoapp/core/theme/app_colors.dart';
import 'package:echoapp/domain/channel/channel_model.dart';
import 'package:echoapp/presentation/common_widgets/app_image_widget.dart';
import 'package:echoapp/presentation/common_widgets/url_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChannelsScreen extends StatefulWidget {
  const ChannelsScreen({super.key});

  @override
  State<ChannelsScreen> createState() => _ChannelsScreenState();
}

class _ChannelsScreenState extends State<ChannelsScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    context.read<ChannelsBloc>().add(const ChannelsEvent.fetch());
    context.read<ChannelsBloc>().add(const ChannelsEvent.fetchFavourites());
  }

  void _onScroll() {
    // Only trigger if not already at the end and not currently fetching
    if (_isBottom && !context.read<ChannelsBloc>().state.hasReachedMax) {
      context.read<ChannelsBloc>().add(const ChannelsEvent.fetchNextPage());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundBlue,
      appBar: AppBar(
        title: const Text(
          'Каналы',
          style: TextStyle(color: AppColors.black),
        ),
      ),
      body: BlocConsumer<ChannelsBloc, ChannelsState>(
        listener: (context, state) {
          if (state.status == Status.error) {
            FlushbarHelper.createError(message: state.error ?? '')
                .show(context);
          }
        },
        // buildWhen: (previous, current) => previous.status != current.status,
        builder: (context, state) {
          final channelList = state.channelList;
          // Handle initial loading
          if (state.status == Status.loading &&
              (channelList == null || channelList.isEmpty)) {
            return const Center(child: CircularProgressIndicator());
          }

          // Show message when list is empty and not loading
          if (channelList == null || channelList.isEmpty) {
            return const Center(
              child: Text(
                'No channels available',
                style: TextStyle(fontSize: 16, color: AppColors.black),
              ),
            );
          }

          return ListView.separated(
            shrinkWrap: true,
            physics: const AlwaysScrollableScrollPhysics(),
            controller: _scrollController,
            padding: const EdgeInsets.only(top: 10, bottom: 150),
            itemCount: state.hasReachedMax
                ? channelList.length
                : channelList.length + 1,
            itemBuilder: (BuildContext context, int index) {
              if (index == channelList.length) {
                return state.status == Status.loading && channelList.isNotEmpty
                    ? const Center(child: CircularProgressIndicator())
                    : const SizedBox(); // No more data to load
              }

              var channel = channelList[index];
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: ListTile(
                  leading: AppImageWidget(
                    height: 33,
                    radius: 100,
                    path: channel.avatarUrl,
                  ),
                  title: Text(channel.author ?? ''),
                  subtitle: GestureDetector(
                    onTap: () {
                      launchURL(channel.link ?? '');
                    },
                    child: Text('Открыть в Telegram',
                        style: AppStyles.s12w400
                            .copyWith(color: AppColors.lightGrey)),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                  trailing: MaterialButton(
                      minWidth: 80,
                      padding: const EdgeInsets.all(10),
                      color: state.favouriteChannels!.contains(channel.id)
                          ? AppColors.white
                          : AppColors.black,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: .5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      onPressed: () {
                        context
                            .read<ChannelsBloc>()
                            .add(ChannelsEvent.addChannel(id: channel.id!));
                      },
                      child: state.favouriteChannels!.contains(channel.id)
                          ? Text(
                              'Отписаться',
                              style: AppStyles.s10w500
                                  .copyWith(color: AppColors.black),
                            )
                          : Text(
                              'Подписаться',
                              style: AppStyles.s10w500
                                  .copyWith(color: AppColors.white),
                            )),
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 10),
          );
        },
      ),
    );
  }
}
