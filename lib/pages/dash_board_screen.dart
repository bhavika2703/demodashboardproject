import 'package:flutter/material.dart';
import 'package:projectstruc/utils/colors.dart';
import 'package:projectstruc/utils/constants.dart';
import 'package:projectstruc/utils/images.dart';
import 'package:projectstruc/utils/styles.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.person_3_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(AppConstants.WHATS_NEW, style: robotoMedium),
            ),
            ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
              return Row(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: AppColor.gray,
                        child: CircleAvatar(
                            radius: 45,
                            backgroundColor: AppColor.black0001,
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(AppImages.imageIcon),
                            )),
                      ),
                      Text('Konnor Griffin', style: robotoRegular,maxLines: 2),
                    ],
                  ),
                ],
              );
            },),
          ],
        ),
      ),
    );
  }
}
