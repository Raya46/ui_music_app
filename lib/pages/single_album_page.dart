import 'package:dicoding_submission/components/card_musician_comp.dart';
import 'package:flutter/material.dart';

class SingleAlbumPage extends StatelessWidget {
  final String albumTitle;
  final String img;
  const SingleAlbumPage(
      {super.key, required this.albumTitle, required this.img});

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
                  pinned: false,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image(
                      image: NetworkImage(img),
                      fit: BoxFit.cover,
                    ),
                  ),
                  leading: Card(
                    elevation: 0,
                    color: Colors.white.withOpacity(0.28),
                    child: const BackButton(
                      color: Colors.white,
                    ),
                  ),
                  bottom: PreferredSize(
                      preferredSize: const Size.fromHeight(48.0),
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          albumTitle,
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
                                  'Album by You',
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
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.person,
                                size: 18,
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              'username',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '2000 likes | 2h 37min',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.favorite_border_outlined,
                                  size: 24.0,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.download_outlined,
                                  size: 24.0,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.more_vert,
                                  size: 24.0,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.play_arrow,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CardMusician(
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
