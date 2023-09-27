import 'package:dicoding_submission/components/card_musician_comp.dart';
import 'package:flutter/material.dart';

class SingleArtistPage extends StatelessWidget {
  final String singerName;
  final String img;
  const SingleArtistPage(
      {super.key, required this.singerName, required this.img});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF23233F),
      body: SafeArea(
        child: DefaultTabController(
          length: 1,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  expandedHeight: 200.0,
                  floating: true,
                  leading: Card(
                    elevation: 0,
                    color: Colors.white.withOpacity(0.28),
                    child: const BackButton(
                      color: Colors.white,
                    ),
                  ),
                  pinned: false,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image(
                      image: NetworkImage(img),
                      fit: BoxFit.cover,
                    ),
                  ),
                  bottom: PreferredSize(
                      preferredSize: const Size.fromHeight(48.0),
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          singerName,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
                SliverPersistentHeader(
                  pinned: true,
                  delegate: _SliverAppBarDelegate(
                    const TabBar(
                      labelColor: Color(0xFF23233F),
                      unselectedLabelColor: Color(0xFF23233F),
                      indicatorColor: Color(0xFF23233F),
                      dividerColor: Color(0xFF23233F),
                      tabs: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '37.3M monthly listeners',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: CustomScrollView(
              slivers: <Widget>[
                SliverToBoxAdapter(
                  child: Container(
                    margin: const EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                  ),
                                  onPressed: () {},
                                  child: const Text("Follow"),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(
                                  Icons.more_vert,
                                  size: 24.0,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            const CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.play_arrow,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const CardMusician(
                            title: 's',
                            singer: 's',
                            img:
                                'https://cdn.dribbble.com/userupload/4605115/file/original-9cc8fd1d623d5de9b3a5ddc94009ccc6.png?resize=1024x768&vertical=center',
                            like: true)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: const Color(0xFF23233F),
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
