import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_weather/common/enums/status.dart';
import 'package:app_weather/common/utils/toast.dart';
import 'package:app_weather/modules/home/bloc/home_posts_cubit.dart';
import 'package:app_weather/modules/home/bloc/home_posts_state.dart';
import 'package:app_weather/modules/home/widgets/menu_wather.dart';

import '../../../common/constants/routes.dart';
import '../../../common/event/event_bus_event.dart';
import '../../../common/event/event_bus_mixin.dart';
import '../../../di/injection.dart';
import '../../detail_image/screens/image_viewer_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with EventBusMixin {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      final cubit = context.read<HomePostsCubit>();
      cubit.fetchImages();
      cubit.fetchWeather();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomePostsCubit, HomePostsState>(
      listenWhen: (previous, current) => previous.message != current.message,
      listener: (context, state) {
        if (state.message == RequestStatus.failed &&
            state.message?.isNotEmpty == true) {
          showErrorMessage(context, state.message!);
        }
      },
      builder: (BuildContext context, HomePostsState state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.error != null) {
          print('state.error: ${state.error}');
          return Center(child: Text('Đã xảy ra lỗi: ${state.error}'));
        } else if (state.images.isNotEmpty) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text(
                'Demo App',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
              ),
              actions: [
                PopupMenuButton<String>(
                  icon: Icon(Icons.location_on),
                  onSelected: (value) {
                    // Handle menu item selection
                    print('Selected: $value');
                  },
                  itemBuilder: (BuildContext context) => List.generate(
                    (context.read<HomePostsCubit>().state.weather?.length ?? 0),
                    (index) => PopupMenuItem<String>(
                      onTap: () {
                        context.read<HomePostsCubit>().selectLocation(
                              context
                                  .read<HomePostsCubit>()
                                  .state
                                  .weather?[index],
                            );
                      },
                      value: state.weather?[index].location,
                      child: Row(
                        spacing: 8,
                        children: [
                          Text(state.weather?[index].location ?? ''),
                          Text(
                            '${state.weather?[index].temperature}℃',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
              backgroundColor: Colors.white,
              centerTitle: true,
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 11),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    state.selectedLocation?.location ?? '',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                    textAlign: TextAlign.end,
                  ),
                  SizedBox(height: 2),
                  Text(
                    '${state.selectedLocation?.temperature}℃',
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                    textAlign: TextAlign.end,
                  ),
                  SizedBox(height: 32),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 11,
                        mainAxisSpacing: 18,
                      ),
                      itemCount: state.images.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => ImageViewerScreen(
                                  imageUrl: state.images[index],
                                ),
                              ),
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              state.images[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        }
        return Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Text('Không có ảnh để hiển thị.'),
          ),
        );
      },
    );
  }
}
