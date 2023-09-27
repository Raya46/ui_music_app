import 'package:flutter/material.dart';

class MusicPage extends StatefulWidget {
  final String title;
  final String singer;
  final String img;
  final bool like;
  const MusicPage(
      {Key? key,
      required this.title,
      required this.singer,
      required this.img,
      required this.like})
      : super(key: key);

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF23233F),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                  ),
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
                      Card(
                        elevation: 0,
                        color: Colors.white.withOpacity(0.28),
                        child: IconButton(
                            onPressed: () {},
                            icon: widget.like
                                ? const Icon(
                                    Icons.favorite,
                                    size: 24.0,
                                    color: Colors.white,
                                  )
                                : const Icon(
                                    Icons.favorite_border_outlined,
                                    size: 24.0,
                                    color: Colors.white,
                                  )),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        widget.img,
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.4,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.singer,
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.loop,
                        size: 24.0,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.skip_previous,
                              size: 24.0, color: Colors.white),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.play_circle,
                              size: 40.0, color: Colors.white),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.skip_next,
                              size: 24.0, color: Colors.white),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.shuffle,
                          size: 24.0, color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      '0.24',
                      style: TextStyle(color: Colors.white),
                    ),
                    Expanded(
                        child: Slider(
                      value: 0.6,
                      onChanged: (value) {},
                    )),
                    const Text(
                      '3.10',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Card(
                  color: Colors.white.withOpacity(0.8),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquam, provident laborum! Ratione tempore, nam ducimus, eos, vel labore consequuntur veritatis ea soluta laudantium doloremque alias cum voluptatibus libero totam ullam. Consequuntur, doloremque. Consequuntur, consectetur debitis. Animi atque provident autem repellat necessitatibus maxime soluta sit natus nam incidunt! Eveniet, saepe a.',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
