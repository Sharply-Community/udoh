import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marriage/logic/cubit/feelings_cubit.dart';
import 'package:marriage/logic/cubit/posts_cubit.dart';
import 'package:marriage/exports.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffE5E5E5),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 450,
              color: Colors.white,
              width: double.infinity,
              child: Column(
                verticalDirection: VerticalDirection.down,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          child: Image.asset('assets/unsplash.png'),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  'Loving World',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Folow',
                                  style: TextStyle(
                                      color: textColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: const [
                                Text(
                                  'Posted by Richard Joseph Strachan',
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Jan 3',
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                        const Icon(Icons.cancel)
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        top: 10, left: 10, right: 10, bottom: 5),
                    child: ExpandableText(
                      'Bob Marley was once asked if there was a perfect woman. And he replied Who cares about perfection? Even the moon is not perfecr, it is full of craters, What about the sea? Very,',
                      expandText: '..showMore',
                      collapseText: 'ShowLess',
                      linkColor: Color(0xff313131),
                    ),
                  ),
                  Row(
                    children: const [
                      Expanded(
                        child: Image(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'assets/unsplash1.png',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Image(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'assets/unsplash2.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 30,
                            width: 155,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffE5E5E5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child:
                                      BlocBuilder<FeelingsCubit, FeelingsState>(
                                    builder: (context, state) {
                                      return InkWell(
                                          onTap: () {
                                            final liked =
                                                BlocProvider.of<FeelingsCubit>(
                                                    context);
                                            liked.likedPhoto(LikedPhoto.like);
                                          },
                                          child: Icon(
                                            Icons.thumb_up_alt_sharp,
                                            color: state.feelings ==
                                                    LikedPhoto.like
                                                ? Colors.blue
                                                : Colors.black,
                                          ));
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                const Text(
                                  '2.3K',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const VerticalDivider(
                                  indent: 5,
                                  endIndent: 5,
                                  thickness: 2,
                                  color: Colors.black,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                BlocBuilder<FeelingsCubit, FeelingsState>(
                                  builder: (context, state) {
                                    return InkWell(
                                        onTap: () {
                                          final photoDisLike =
                                              BlocProvider.of<FeelingsCubit>(
                                                  context);
                                          photoDisLike
                                              .likedPhoto(LikedPhoto.dislike);
                                        },
                                        child: Icon(
                                          Icons.thumb_down_alt,
                                          color: state.feelings ==
                                                  LikedPhoto.dislike
                                              ? Colors.blue
                                              : Colors.black,
                                        ));
                                  },
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text('70',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ShareScreen()));
                            },
                            child: const Icon(Icons.autorenew)),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text('7',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(
                          width: 15,
                        ),
                        const Icon(Icons.maps_ugc_outlined),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text('21',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        const Padding(
                          padding: EdgeInsets.only(left: 80),
                          child: Icon(Icons.share),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 250,
              color: Colors.white,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          child: Image.asset('assets/unsplash.png'),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  'Loving World',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Folow',
                                  style: TextStyle(
                                      color: textColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: const [
                                Text(
                                  'Posted by Richard Joseph Strachan',
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Jan 3',
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        top: 10, left: 10, right: 10, bottom: 5),
                    child: ExpandableText(
                      'Bob Marley was once asked if there was a perfect woman.'
                      'And he replied Who cares about perfection? Even the moon is not perfecr, it is full of craters, What about the sea? Very',
                      expandText: 'showMore',
                      collapseText: 'showLess',
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          height: 30,
                          width: 155,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xffE5E5E5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: BlocBuilder<PostsCubit, PostsState>(
                                  builder: (context, state) {
                                    return InkWell(
                                        onTap: () {
                                          final postLike =
                                              BlocProvider.of<PostsCubit>(
                                                  context);
                                          postLike.likedPost(LikedPost.like);
                                        },
                                        child: Icon(
                                          Icons.thumb_up_alt_sharp,
                                          color: state.posts == LikedPost.like
                                              ? Colors.blue
                                              : Colors.black,
                                        ));
                                  },
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              const Text(
                                '2.3K',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const VerticalDivider(
                                indent: 5,
                                endIndent: 5,
                                thickness: 2,
                                color: Colors.black,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              BlocBuilder<PostsCubit, PostsState>(
                                builder: (context, state) {
                                  return InkWell(
                                      onTap: () {
                                        final postDisLike =
                                            BlocProvider.of<PostsCubit>(
                                                context);
                                        postDisLike
                                            .likedPost(LikedPost.dislike);
                                      },
                                      child: Icon(
                                        Icons.thumb_down_alt,
                                        color: state.posts == LikedPost.dislike
                                            ? Colors.blue
                                            : Colors.black,
                                      ));
                                },
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text('70',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      const Icon(Icons.autorenew),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text('7',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        width: 15,
                      ),
                      const Icon(Icons.maps_ugc_outlined),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text('21',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      const Padding(
                        padding: EdgeInsets.only(left: 80),
                        child: Icon(Icons.share),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
