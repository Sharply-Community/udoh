import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marriage/exports.dart';
import 'package:marriage/logic/cubit/posts_cubit.dart';

class AnswerOne extends StatefulWidget {
  const AnswerOne({Key? key}) : super(key: key);

  @override
  State<AnswerOne> createState() => _AnswerOneState();
}

class _AnswerOneState extends State<AnswerOne> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.white,
          width: double.infinity,
          height: 210,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      child: Image.asset('assets/unsplash4.png'),
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
                              'Joshua Gabriel',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'lives in Nigeria',
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
                              'Answered 1m ago',
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding:
                    EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 5),
                child: Text(
                  'The issue is that we like to shut up especially as men. We pretend like everything is cool. The economy is harsh everyone needs a support system. Money is very important for the survival of your marriage.  I told her the demands are too much for me to bear and we allocated our resources.',
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 6, bottom: 2),
                    child: Text(
                      '2 views',
                      style: TextStyle(
                          color: Colors.black45, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
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
                                          BlocProvider.of<PostsCubit>(context);
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
                                        BlocProvider.of<PostsCubit>(context);
                                    postDisLike.likedPost(LikedPost.dislike);
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
                    width: 15,
                  ),
                  const Icon(Icons.maps_ugc_outlined),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
