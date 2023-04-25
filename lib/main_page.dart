import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

const nickNameList = [
  'Anvil',
  'Snow White',
  'Pansy',
  'Double Bubble',
  'Gordo',
  'Giggles',
  'Shuttershy',
  'Boomer',
  'Blimpie',
  'Ice Queen',
];

const idList = [
  'sphvpisznn',
  'e5n3cm9lbe',
  'womius8n48',
  '6egq56cjg0',
  'bo2fb4qwwv',
  'zokpaiitwy',
  's9kf4rt7ru',
  '3bpyqgzeex',
  'kwmp7pxt64',
  'jzga7fr1g8',
];

const storyList = [
  'Lorem Ipsum is simply dummy ',
  'text of the printing and typesetting industry',
  "Lorem Ipsum has been the industry's",
  "standard dummy text ever since the 1500s,",
  "when an unknown printer took a galley of type",
  "and scrambled it to make a type specimen book.",
  "It has survived not only five centuries,",
  "Contrary to popular belief,",
  "Lorem Ipsum is not simply random text.",
  "It has roots in a piece of classical Latin literature from 45 BC,",
];

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Stories',
          style: GoogleFonts.rubik(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        leadingWidth: 150,
        leading: Row(
          children: [
            const SizedBox(
              width: 2,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(6),
                  child: SvgPicture.asset(
                    'asset/icons/profile.svg',
                    width: 36,
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2,
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          offset: const Offset(0, 2),
                        )
                      ],
                    ),
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              width: 4,
            ),
            const CircleAvatar(
              radius: 18,
              backgroundColor: Color(0xFFEBEBEB),
              child: Icon(
                CupertinoIcons.search,
                color: Color(0xFF606972),
                size: 20,
              ),
            )
          ],
        ),
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(6),
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Color(0xFFEBEBEB),
                      child: Icon(
                        Icons.person_add,
                        color: Color(0xFF606972),
                        size: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2,
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 1,
                            offset: const Offset(0, 2),
                          )
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Theme.of(context).primaryColor,
                        child: Text(
                          Random().nextInt(10).toString(),
                          style: GoogleFonts.notoSans(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                width: 4,
              ),
              const CircleAvatar(
                radius: 18,
                backgroundColor: Color(0xFFEBEBEB),
                child: Icon(
                  Icons.more_horiz,
                  color: Color(0xFF606972),
                  size: 20,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Friends',
                      style: GoogleFonts.notoSans(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 106,
                      width: double.infinity,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: nickNameList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: SizedBox(
                                width: 70,
                                child: Column(
                                  children: [
                                    Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 6),
                                          child: CircleAvatar(
                                            radius: 35,
                                            backgroundColor: Theme.of(context)
                                                .colorScheme
                                                .secondary,
                                            child: CircleAvatar(
                                              radius: 33,
                                              backgroundImage:
                                                  CachedNetworkImageProvider(
                                                'https://i.pravatar.cc/10$index',
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 12,
                                            vertical: 2,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: const Icon(
                                            Icons.person_add,
                                            color: Colors.white,
                                            size: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      nickNameList[index],
                                      style: GoogleFonts.notoSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      idList[index],
                                      style: GoogleFonts.notoSans(
                                        fontSize: 10,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'For You',
                      style: GoogleFonts.notoSans(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        crossAxisCount: 2,
                        childAspectRatio: 9 / 16,
                      ),
                      itemCount: storyList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                              image: CachedNetworkImageProvider(
                                'https://picsum.photos/60$index',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            storyList[index],
                            style: GoogleFonts.notoSans(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 4),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Container(
                  height: 44,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEBEBEB),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              'asset/icons/map.svg',
                              width: 18,
                            ),
                            Text(
                              'Map',
                              style: GoogleFonts.notoSans(
                                fontSize: 8,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              'asset/icons/chat.svg',
                              height: 20,
                            ),
                            Text(
                              'Chat',
                              style: GoogleFonts.notoSans(
                                fontSize: 8,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              'asset/icons/camera.svg',
                              height: 20,
                            ),
                            Text(
                              'Camera',
                              style: GoogleFonts.notoSans(
                                fontSize: 8,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              'asset/icons/stories.svg',
                              height: 20,
                            ),
                            Text(
                              'Stories',
                              style: GoogleFonts.notoSans(
                                fontSize: 8,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              'asset/icons/spotlight.svg',
                              height: 20,
                            ),
                            Text(
                              'Spotlight',
                              style: GoogleFonts.notoSans(
                                fontSize: 8,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
