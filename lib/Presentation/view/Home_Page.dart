import 'package:flutter/material.dart';
import 'package:flutter_music_app/Presentation/widget/play_list_home.dart';

import 'current_playing_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar.medium(
                backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    icon: const Icon(
                      Icons.menu,
                    ),
                    onPressed: () {},
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.search)),
                  )
                ],
              ),
              const PlayListHome(
                title: "Recommended For You",
              ),
              const PlayListHome(
                title: "PlayList",
              ),
              const PlayListHome(
                title: "New Arrival",
              )
            ],
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: (){
                  showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      isDismissible: false,
                      builder: (context) {
                        return const CurrentPlayingScreen();
                      });
                },
                child: Material(
                  elevation: 8,
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: Container(
                    height: 80,
                    padding: const EdgeInsets.all(8),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Material(
                        color: Colors.teal,
                        elevation: 5,
                        borderRadius: BorderRadius.circular(8),
                        child: const SizedBox.square(
                          dimension: 80,
                        ),
                      ),
                      title: Text(
                        "Monster Go Bump",
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      subtitle: Text(
                        "ERICK RECIO",
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.fast_rewind_rounded)),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.pause_rounded)),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.fast_forward_rounded))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

        ],
      ),
    );
  }
}
