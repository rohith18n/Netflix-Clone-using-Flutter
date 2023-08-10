import 'package:flutter/material.dart';
import 'package:my_netflix_clone/presentation/new_and_hotpage/widgets/coming_soon_widget.dart';
import 'package:my_netflix_clone/presentation/new_and_hotpage/widgets/everyones_watching_widget.dart';
import '../../core/constants/constant.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: AppBar(
              title: const Text(
                "New & Hot",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                ),
              ),
              actions: [
                const Icon(
                  Icons.cast,
                  color: Colors.white,
                  size: 30,
                ),
                kWidth,
                SizedBox(
                  height: 30,
                  width: 30,
                  child: Image.asset("assets/avatar.png"),
                ),
                kWidth,
              ],
              bottom: TabBar(
                  unselectedLabelColor: Colors.white,
                  labelColor: Colors.black,
                  isScrollable: true,
                  labelStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: kRadius20,
                  ),
                  tabs: const [
                    Tab(
                      text: "   🍿Coming Soon   ",
                    ),
                    Tab(
                      text: "  🔥Everyone's watching  ",
                    )
                  ]),
            )),
        body: TabBarView(children: [
          buildComingSoon(),
          buildEveryonesWatching(),
        ]),
      ),
    );
  }

  Widget buildComingSoon() {
    return const ComingSoonWidget();
  }

  buildEveryonesWatching() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight20,
        Row(
          children: [
            kWidth,
            Text(
              " 🔥Everyone's watching",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ],
        ),
        Expanded(child: EveryonesWatchingWidget()),
      ],
    );
  }
}
