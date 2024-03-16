import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Instagram',
              style: TextStyle(
                fontSize: 36,
                fontFamily: 'Cookie',
              )),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.favorite_outline_rounded, size: 30),
                  SizedBox(width: 10),
                  Icon(Icons.chat_bubble_outline_rounded, size: 30)
                ],
              ),
            )
          ],
        ),
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 100.0, // Set the height for the "stories"
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 36.0,
                              backgroundColor: Colors.green,
                            ),
                            Positioned(
                              bottom: 0, // Adjust top position as needed
                              left: 48, // Adjust left position as needed
                              child: Stack(children: [
                                CircleAvatar(
                                  radius: 12.0, // Adjust radius as needed
                                  backgroundColor:
                                      Colors.blue, // Change color as needed
                                ),
                                Positioned(
                                  top: 12.0 - 8.0,
                                  left: 12.0 - 8.0,
                                  child: Icon(
                                    Icons.add,
                                    size: 16,
                                    color: Colors.white,
                                  ),
                                )
                              ]),
                            )
                          ],
                        ),
                        SizedBox(width: 10),
                        SingleAvatarForStories(),
                        SizedBox(width: 10),
                        SingleAvatarForStories(),
                        SizedBox(width: 10),
                        SingleAvatarForStories(),
                        SizedBox(width: 10),
                        SingleAvatarForStories(),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 6.0),
                  width: 600,
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 1.0, color: Colors.black12),
                    ),
                  ),
                  child: const InstaPostHeader(username: 'my_username_98'),
                ),
                const InstaPostPhoto(
                  photoSource:
                      "https://plus.unsplash.com/premium_photo-1664970900025-1e3099ca757a?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                ),
                const InteractionIcons(),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "329 likes",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "my_username_98",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
                              maxLines: 1, // Limit the text to two lines
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 4.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 12.0,
                              backgroundColor: Colors.amber,
                            ),
                            SizedBox(width: 10),
                            Text("Add a comment..."),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text("49 minutes ago"),
                          SizedBox(width: 5),
                          Text("•"),
                          SizedBox(width: 5),
                          Text(
                            "See translation",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 6.0),
                  width: 600,
                  child: const InstaPostHeader(username: 'another_username'),
                ),
                const InstaPostPhoto(
                    photoSource:
                        "https://images.unsplash.com/photo-1600093463592-8e36ae95ef56?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                const InteractionIcons(),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "329 likes",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "another_username",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
                              maxLines: 1, // Limit the text to two lines
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 4.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 12.0,
                              backgroundColor: Colors.amber,
                            ),
                            SizedBox(width: 10),
                            Text("Add a comment..."),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text("49 minutes ago"),
                          SizedBox(width: 5),
                          Text("•"),
                          SizedBox(width: 5),
                          Text(
                            "See translation",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

class InstaPostPhoto extends StatelessWidget {
  final String photoSource;
  const InstaPostPhoto({super.key, required this.photoSource});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 480, // Set the height of the container
      width: MediaQuery.of(context)
          .size
          .width, // Set the width to fill the available space
      child: FittedBox(
        fit: BoxFit.fill, // Adjust the fit property as needed
        child: Image.network(photoSource),
      ),
    );
  }
}

class InteractionIcons extends StatefulWidget {
  const InteractionIcons({
    super.key,
  });

  @override
  _InteractionIconsState createState() => _InteractionIconsState();
}

class _InteractionIconsState extends State<InteractionIcons> {
  bool _isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
      child: Row(
        children: [
          IconButton(
            icon: Icon(
              _isLiked ? Icons.favorite : Icons.favorite_outline_rounded,
              size: 36,
              color: _isLiked ? Colors.red.shade400 : null,
            ),
            onPressed: _handleLike,
          ),
          const Icon(Icons.chat_bubble_outline_rounded, size: 32),
          const SizedBox(width: 10),
          const Icon(Icons.mail_outlined, size: 32),
          const Spacer(),
          const Icon(Icons.bookmark_border, size: 34)
        ],
      ),
    );
  }

  void _handleLike() {
    setState(() {
      _isLiked = !_isLiked;
    });
  }
}

class InstaPostHeader extends StatelessWidget {
  final String username;
  const InstaPostHeader({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 16.0,
          backgroundColor: Colors.amber,
        ),
        const SizedBox(width: 10),
        Text(
          username,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        const Icon(Icons.more_vert)
      ],
    );
  }
}

class SingleAvatarForStories extends StatelessWidget {
  const SingleAvatarForStories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 36.0,
      backgroundColor: Colors.amber,
    );
  }
}
