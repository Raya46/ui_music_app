import 'package:dicoding_submission/pages/favorite_page.dart';
import 'package:dicoding_submission/pages/home_page.dart';
import 'package:dicoding_submission/pages/profile_page.dart';
import 'package:dicoding_submission/pages/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';

class BottomNavMusic extends StatefulWidget {
  BottomNavMusic({
    Key? key,
  }) : super(key: key);

  @override
  _BottomNavMusicState createState() => _BottomNavMusicState();
}

class _BottomNavMusicState extends State<BottomNavMusic>
    with SingleTickerProviderStateMixin {
  late int currentPage;
  late TabController tabController;
  final List<Color> colors = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];

  late List<Widget> _children;

  @override
  void initState() {
    _children = [
      const HomePage(),
      const SearchPage(),
      const FavoritePage(),
      const ProfilePage(),
    ];
    currentPage = 0;
    tabController = TabController(length: 4, vsync: this);
    tabController.animation!.addListener(
      () {
        final value = tabController.animation!.value.round();
        if (value != currentPage && mounted) {
          changePage(value);
        }
      },
    );
    super.initState();
  }

  void changePage(int newPage) {
    setState(() {
      currentPage = newPage;
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Color unselectedColor = colors[currentPage].computeLuminance() < 0.5
        ? Colors.black
        : Colors.grey;
    return SafeArea(
      child: Scaffold(
        body: BottomBar(
          barDecoration: const BoxDecoration(
              color: Color.fromARGB(239, 2, 2, 2),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          fit: StackFit.expand,
          icon: (width, height) => Center(
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: null,
              icon: Icon(
                Icons.arrow_upward_rounded,
                color: unselectedColor,
                size: width,
              ),
            ),
          ),
          borderRadius: BorderRadius.circular(500),
          duration: const Duration(seconds: 1),
          curve: Curves.decelerate,
          showIcon: true,
          width: MediaQuery.of(context).size.width * 0.8,
          barColor: Colors.white.withOpacity(0.28),
          offset: 10,
          barAlignment: Alignment.bottomCenter,
          iconHeight: 35,
          iconWidth: 35,
          body: (context, controller) =>
              TabBarView(controller: tabController, children: _children),
          child: TabBar(
            indicatorColor: Colors.transparent,
            indicator: null,
            controller: tabController,
            tabs: [
              SizedBox(
                height: 55,
                width: 40,
                child: Center(
                    child: Icon(
                  Icons.home_outlined,
                  color: currentPage == 0 ? colors[0] : unselectedColor,
                )),
              ),
              SizedBox(
                height: 55,
                width: 40,
                child: Center(
                    child: Icon(
                  Icons.search_outlined,
                  color: currentPage == 1 ? colors[1] : unselectedColor,
                )),
              ),
              SizedBox(
                height: 55,
                width: 40,
                child: Center(
                    child: Icon(
                  Icons.favorite_outline,
                  color: currentPage == 2 ? colors[2] : unselectedColor,
                )),
              ),
              SizedBox(
                height: 55,
                width: 40,
                child: Center(
                    child: Icon(
                  Icons.person_outline,
                  color: currentPage == 3 ? colors[3] : unselectedColor,
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
