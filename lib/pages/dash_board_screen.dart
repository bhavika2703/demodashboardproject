import 'package:flutter/material.dart';
import 'package:projectstruc/services/models/dashboard_header_list_model.dart';
import 'package:projectstruc/services/models/dashboard_latest_video_model.dart';
import 'package:projectstruc/utils/colors.dart';
import 'package:projectstruc/utils/constants.dart';
import 'package:projectstruc/utils/dimensions.dart';
import 'package:projectstruc/utils/images.dart';
import 'package:projectstruc/utils/styles.dart';
import 'package:projectstruc/widgets/lhp_button_view.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  List<PersonMenu> whatsNewDataList = <PersonMenu>[];
  List<LatestVideoMenu> latestVideoDataList = <LatestVideoMenu>[];

  @override
  void initState() {
    super.initState();
    whatsNewList();
    latestVideoList();
  }

  List<PersonMenu> whatsNewList() {
    return whatsNewDataList = [
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

  List<LatestVideoMenu> latestVideoList() {
    return latestVideoDataList = [
      LatestVideoMenu(
        id: 1,
        title: 'Willie Mays',
        name: 'Jon Mueller',
        runningTime: '12:00',
        time: '45 minutes ago',
        video: '',
      ),
      LatestVideoMenu(
        id: 1,
        title: 'Willie Mays',
        name: 'Jon Mueller',
        runningTime: '12:00',
        time: '45 minutes ago',
        video: '',
      ),
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
        padding:  const EdgeInsets.only(
            bottom: Dimensions.PADDING_SIZE_SMALL,
            top: Dimensions.PADDING_SIZE_SMALL,
            left: Dimensions.PADDING_SIZE_SMALL),
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                  const EdgeInsets.only(bottom: Dimensions.PADDING_SIZE_SMALL),
                  child: Text(AppConstants.WHATS_NEW, style: robotoMedium),
                ),
                whatNewView(),
               buildDividerView(),
                Padding(
                  padding:
                  const EdgeInsets.only(bottom: Dimensions.PADDING_SIZE_SMALL),
                  child: Text(AppConstants.LATEST_VIDEOS, style: robotoSemiBold),
                ),

                latestVideoView(),
                buildDividerView(),
                Padding(
                  padding:
                  const EdgeInsets.only(bottom: Dimensions.PADDING_SIZE_SMALL),
                  child: Text(AppConstants.LATEST_EVALUATIONS, style: robotoSemiBold),
                ),
                  latestEvaluationsView(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding buildDividerView() {
    return const Padding(
            padding: EdgeInsets.only(
              right: Dimensions.PADDING_SIZE_SMALL,
              left: Dimensions.PADDING_SIZE_SMALL,
              bottom: Dimensions.PADDING_SIZE_LARGE,
              //top: Dimensions.PADDING_SIZE_LARGE,
            ),
            child: Divider(color: AppColor.darkGray, thickness: 1.5),
          );
  }

  Widget whatNewView() {
    return SizedBox(
      height: 125,
      child: Flexible(
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
      ),
    );
  }

  Widget latestVideoView() {
    return SizedBox(
      height: 210,
      child: Flexible(
        child: ListView.builder(
          itemCount: latestVideoDataList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            var latestVideoData = latestVideoDataList[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 144,
                    margin:
                        const EdgeInsets.only(right: Dimensions.PADDING_SIZE_LARGE),
                    padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(153, 153, 153, 0.3),
                          Color.fromRGBO(68, 68, 68, 1),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        lhpButtonView(),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                height: Dimensions.fontSizeLarge,
                                width: Dimensions.fontSizeLarge,
                                child: Image.asset(AppImages.playIconImage)),
                            latestVideoBottomRightView(latestVideoData),
                          ],
                        ),
                      ],
                    )),
                Container(
                  margin: const EdgeInsets.only(top: Dimensions.PADDING_SIZE_SMALL),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: AppColor.circleAvatarGray,
                        child: Image.asset(AppImages.gallaryIconImage,
                            fit: BoxFit.cover, height: 16, width: 16),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(latestVideoData.title!,
                          style: robotoSemiBold.copyWith(
                              color: AppColor.grayText, fontSize: 14)),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Column latestVideoBottomRightView(LatestVideoMenu latestVideoData) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [
            SizedBox(
                height: Dimensions.fontSizeSmall,
                width: Dimensions.fontSizeSmall,
                child: Image.asset(
                  AppImages.capIconImage,
                )),
            Padding(
              padding: const EdgeInsets.only(
                  left: Dimensions.PADDING_SIZE_EXTRA_SMALL),
              child: Text(
                latestVideoData.name!,
                style: robotoSmall,
              ),
            ),
          ],
        ),
        const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_SMALL),
        Row(
          children: [
            SizedBox(
                height: Dimensions.fontSizeExtraSmall,
                width: Dimensions.fontSizeExtraSmall,
                child: Image.asset(AppImages.watchIconImage)),
            Padding(
              padding: const EdgeInsets.only(
                  left: Dimensions.PADDING_SIZE_EXTRA_SMALL),
              child: Text(
                latestVideoData.time!,
                style: robotoSmall.copyWith(fontSize: 9),
              ),
            ),
            Container(
                height: 12,
                width: 1,
                color: AppColor.grayText,
                margin: const EdgeInsets.only(
                    left: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                    right: Dimensions.PADDING_SIZE_EXTRA_SMALL)),
            SizedBox(
                height: Dimensions.fontSizeExtraSmall,
                width: Dimensions.fontSizeExtraSmall,
                child: Image.asset(AppImages.timeWatchIconImage)),
            Padding(
              padding: const EdgeInsets.only(
                  left: Dimensions.PADDING_SIZE_EXTRA_SMALL),
              child: Text(
                latestVideoData.runningTime!,
                style: robotoSmall.copyWith(fontSize: 9),
              ),
            ),
          ],
        ),
      ],
    );
  }

  latestEvaluationsView() {
    return SizedBox(
      height: 400,
      child: Flexible(
        child: ListView.builder(
          itemCount: latestVideoDataList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            var latestVideoData = whatsNewDataList[index];
            return Container(
              width: 144,
              height: 144,
              decoration: const BoxDecoration(
                color: Colors.pink,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.red, Colors.yellow, Colors.green],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
