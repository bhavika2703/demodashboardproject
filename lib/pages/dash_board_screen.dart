import 'package:flutter/material.dart';
import 'package:projectstruc/services/models/dashboard_header_list_model.dart';
import 'package:projectstruc/utils/colors.dart';
import 'package:projectstruc/utils/constants.dart';
import 'package:projectstruc/utils/dimensions.dart';
import 'package:projectstruc/utils/images.dart';
import 'package:projectstruc/utils/styles.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  List<PersonMenu> whatsNewDataList = <PersonMenu>[];

  @override
  void initState() {
    super.initState();
    whatsNewDataList = [
      PersonMenu(
          id: 1,
          title: 'Konnor \nGriffin',
          image: AppImages.gallaryIconImage,
          userId: 1),
      PersonMenu(
          id: 2,
          title: 'Ammit \nPatel',
          image: AppImages.gallaryIconImage,
          userId: 1),
      PersonMenu(
          id: 3,
          title: 'Brett \nElkins',
          image: AppImages.gallaryIconImage,
          userId: 1),
      PersonMenu(
          id: 4,
          title: 'Patrick \nJones',
          image: AppImages.gallaryIconImage,
          userId: 1),
      PersonMenu(
          id: 5,
          title: 'Zach \nOConnell',
          image: AppImages.gallaryIconImage,
          userId: 1),
      PersonMenu(
          id: 6,
          title: 'Ammit \nPatel',
          image: AppImages.gallaryIconImage,
          userId: 1),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu,
              color: AppColor.iconTextGray, size: Dimensions.fontSizeLarge),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search,
                color: AppColor.iconTextGray, size: Dimensions.fontSizeLarge),
            onPressed: () {},
          ),
          Padding(
            padding:
                const EdgeInsets.only(right: Dimensions.PADDING_SIZE_SMALL),
            child: SizedBox(
                height: Dimensions.fontSizeLarge,
                width: Dimensions.fontSizeLarge,
                child: Image.asset('assets/image/person_icon.png')),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(bottom: Dimensions.PADDING_SIZE_SMALL),
              child: Text(AppConstants.WHATS_NEW, style: robotoMedium),
            ),
            whatNewView(),
            const Padding(
              padding: EdgeInsets.only(
                right: Dimensions.PADDING_SIZE_SMALL,
                left: Dimensions.PADDING_SIZE_SMALL,
                bottom: Dimensions.PADDING_SIZE_LARGE,
                top: Dimensions.PADDING_SIZE_LARGE,
              ),
              child: Divider(color: AppColor.darkGray, height: 2),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(bottom: Dimensions.PADDING_SIZE_SMALL),
              child: Text(AppConstants.LATEST_VIDEOS, style: robotoMedium),
            ),
            latestVideoView(),
          ],
        ),
      ),
    );
  }

  Widget latestVideoView() {
    return Expanded(
      flex: 2,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            height: 600,
            width: 200,
            color: Colors.grey,
          );
        },
      ),
    );
  }

  Widget whatNewView() {
    return Expanded(
      flex: 2,
      child: ListView.builder(
        itemCount: whatsNewDataList.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          var whatsNewData = whatsNewDataList[index];
          return Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.all(Dimensions.PADDING_SIZE_EXTRA_SMALL),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: AppColor.gray,
                      child: CircleAvatar(
                          radius: 32,
                          backgroundColor: AppColor.black0001,
                          child: CircleAvatar(
                            radius: 28,
                            backgroundColor: AppColor.gray,
                            child: Image.asset(
                                whatsNewData.image ??
                                    AppImages.gallaryIconImage,
                                fit: BoxFit.cover,
                                height: 18,
                                width: 18),
                          )),
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(
                              Dimensions.PADDING_SIZE_EXTRA_SMALL),
                          width: 75,
                          child: Text(whatsNewData.title ?? '',
                              style: robotoSmall,
                              textAlign: TextAlign.center,
                              softWrap: true),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
