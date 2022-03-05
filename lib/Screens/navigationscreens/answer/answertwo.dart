import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marriage/exports.dart';
import 'package:marriage/logic/cubit/feelings_cubit.dart';

class AnswerTwo extends StatelessWidget {
  const AnswerTwo({Key? key}) : super(key: key);

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
                padding: const EdgeInsets.only(left: 12, top: 10),
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
                padding: EdgeInsets.only(
                  top: 10,
                  left: 12,
                ),
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
                            child: BlocBuilder<FeelingsCubit, FeelingsState>(
                              builder: (context, state) {
                                return InkWell(
                                    onTap: () {
                                      final postLike =
                                          BlocProvider.of<FeelingsCubit>(
                                              context);
                                      postLike.likedPhoto(LikedPhoto.like);
                                    },
                                    child: Icon(
                                      Icons.thumb_up_alt_sharp,
                                      color: state.feelings == LikedPhoto.like
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
                                    final postDisLike =
                                        BlocProvider.of<FeelingsCubit>(context);
                                    postDisLike.likedPhoto(LikedPhoto.dislike);
                                  },
                                  child: Icon(
                                    Icons.thumb_down_alt,
                                    color: state.feelings == LikedPhoto.dislike
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
