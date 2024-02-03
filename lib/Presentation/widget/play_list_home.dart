import 'package:flutter/material.dart';

class PlayListHome extends StatelessWidget {
  final String title;
  const PlayListHome({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      sliver: SliverList(
          delegate: SliverChildBuilderDelegate(
        childCount: 2,
        (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                title,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            );
          }
          return SizedBox(
            height: MediaQuery.sizeOf(context).height / 3.5,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Material(
                            elevation: 6,
                            color: Colors.teal,
                            shadowColor: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox(
                              width: MediaQuery.sizeOf(context).width / 2,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Monster Go Bump",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "ERICK RECIO",
                          style: Theme.of(context).textTheme.bodySmall,
                        )
                      ],
                    ),
                  );
                }),
          );
        },
      )),
    );
  }
}
