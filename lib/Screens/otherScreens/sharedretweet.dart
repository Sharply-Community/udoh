import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marriage/exports.dart';
import 'package:marriage/logic/cubit/feelings_cubit.dart';
import 'package:sizer/sizer.dart';

class SharedReweet extends StatelessWidget {
  const SharedReweet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffF0F0F0),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 4,
                    top: 10,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        FontAwesomeIcons.arrowLeft,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: color,
                        child: Text(
                          'M',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Joshua Gabriel',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Just Now',
                                style: TextStyle(color: Colors.grey))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 420,
                  width: 400.w,
                  margin: const EdgeInsets.only(
                    left: 5,
                    right: 20,
                    top: 10,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  right: 15,
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 20,
                                  child: Image.asset('assets/unsplash3.png'),
                                ),
                              ),
                              const Text('Joshua Gabriel')
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 10, left: 10, top: 5),
                          child: ExpandableText(
                            'Bob Marley was once asked if there was a perfect woman. And he replied Who cares about perfection? Even the moon is not perfecr, it is full of craters, What about the sea? Very, Bob Marley was once asked if there was a perfect woman. And he replied Who cares about perfection? Even the moon is not perfecr, it is full of craters, What about the sea? Very,Bob Marley was once asked if there was a perfect woman. And he replied Who cares about perfection? Even the moon is not perfecr, it is full of craters, What about the sea? Very,Bob Marley was once asked if there was a perfect woman. And he replied Who cares about perfection? Even the moon is not perfecr, it is full of craters, What about the sea? Very,Bob Marley was once asked if there was a perfect woman. And he replied Who cares about perfection? Even the moon is not perfecr, it is full of craters, What about the sea? Very.',
                            expandText: 'ShowMore',
                            collapseText: 'Showles',
                            maxLines: 5,
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
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Text('1.6M views.'),
                              Text('29.7k upvotes .'),
                              Text('58 shares .'),
                              Text('209 commebts')
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10, left: 5),
                    child: Text('300 views'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          height: 30,
                          width: 90,
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
                                          color:
                                              state.feelings == LikedPhoto.like
                                                  ? Colors.blue
                                                  : Colors.black,
                                        ));
                                  },
                                ),
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
                                        color:
                                            state.feelings == LikedPhoto.dislike
                                                ? Colors.blue
                                                : Colors.black,
                                      ));
                                },
                              ),
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
                      const SizedBox(
                        width: 15,
                      ),
                      const Icon(Icons.maps_ugc_outlined),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 2),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: color,
                        child: Text(
                          'M',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 300,
                        margin: const EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                            color: const Color(0xffE5E5E5),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: TextField(
                            style: const TextStyle(color: Colors.grey),
                            controller: _controller,
                            decoration: const InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 1.0)),
                                hintText: 'Add a comment....'),
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
