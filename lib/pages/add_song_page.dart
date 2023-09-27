import 'package:dicoding_submission/components/card_musician_comp.dart';
import 'package:flutter/material.dart';

class AddSongPage extends StatefulWidget {
  const AddSongPage({Key? key}) : super(key: key);

  @override
  State<AddSongPage> createState() => _AddSongPageState();
}

class _AddSongPageState extends State<AddSongPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  final int _numPages = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF23233F),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    elevation: 0,
                    color: Colors.white.withOpacity(0.28),
                    child: const BackButton(
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    'Add songs',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const SizedBox(
                    width: 50.0,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 10.0,
                right: 10.0,
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Colors.white.withOpacity(0.28),
                child: const Padding(
                  padding: EdgeInsets.only(top: 7, bottom: 7),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Icon(
                          Icons.search,
                          size: 30.0,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          'Search and add songs',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Card(
                color: Colors.white.withOpacity(0.15),
                margin: const EdgeInsets.all(16.0),
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: [
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CardMusician(
                                title: 'song jazz ${index + 1}',
                                singer: 'singer jazz ${index + 1}',
                                img:
                                    'https://images.pexels.com/photos/1047442/pexels-photo-1047442.jpeg?auto=compress&cs=tinysrgb&w=600',
                                like: false),
                          );
                        },
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 8,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CardMusician(
                                title: 'song pop ${index + 1}',
                                singer: 'singer pop ${index + 1}',
                                img:
                                    'https://images.pexels.com/photos/167636/pexels-photo-167636.jpeg?auto=compress&cs=tinysrgb&w=600',
                                like: false),
                          );
                        },
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 14,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CardMusician(
                                title: 'song rock ${index + 1}',
                                singer: 'singer rock ${index + 1}',
                                img:
                                    'https://images.pexels.com/photos/6270257/pexels-photo-6270257.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                like: false),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    _numPages,
                    (index) {
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        height: 8.0,
                        width: (index == _currentPage) ? 24.0 : 8.0,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 4.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: (index == _currentPage)
                              ? Colors.white
                              : Colors.grey,
                        ),
                      );
                    },
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
