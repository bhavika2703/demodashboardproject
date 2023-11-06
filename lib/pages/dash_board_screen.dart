import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:projectstruc/services/models/dashboard_header_list_model.dart';
import 'package:projectstruc/services/models/dashboard_latest_evaluations_model.dart';
import 'package:projectstruc/services/models/dashboard_latest_video_model.dart';
import 'package:projectstruc/utils/colors.dart';
import 'package:projectstruc/utils/constants.dart';
import 'package:projectstruc/utils/dimensions.dart';
import 'package:projectstruc/utils/images.dart';
import 'package:projectstruc/utils/styles.dart';
import 'package:projectstruc/utils/utils_widget.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  List<PersonMenu> whatsNewDataList = <PersonMenu>[];
  List<LatestVideoMenu> latestVideoDataList = <LatestVideoMenu>[];
  List<LatestEvaluationsModel> latestEvaluationsDataList =
      <LatestEvaluationsModel>[];

  PageController? controller1;
  PageController? controller2;
  PageController? controller3;
  PageController? controller4;

  @override
  void initState() {
    super.initState();
    whatsNewList();
    latestVideoList();
    latestEvaluationsList();
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

  List<LatestEvaluationsModel> latestEvaluationsList() {
    return latestEvaluationsDataList = [
      LatestEvaluationsModel(
        id: 1,
        title: 'Willie Mays',
        description:
            'It if sometimes furnished unwilling as additions so. Blessing resolved peculiar fat graceful ham. Sussex on at really ladies in as elinor. Sir sex opinions age properly extended. Advice branch vaniasd It if sometimes fur....',
        name: 'Jon Mueller',
        time: '45 minutes ago',
        image: "",
        average: 87.5,
        bowler: [],
        evaluation: 'Pitcher Evalutions',
        max: 90.0,
        spinAvg: 90.0,
      ),
      LatestEvaluationsModel(
        id: 1,
        title: 'Willie Mays',
        description:
            'It if sometimes furnished unwilling as additions so. Blessing resolved peculiar fat graceful ham. Sussex on at really ladies in as elinor. Sir sex opinions age properly extended. Advice branch vaniasd It if sometimes fur....',
        name: 'Jon Mueller',
        time: '45 minutes ago',
        image: "",
        average: 87.5,
        bowler: [],
        evaluation: 'Pitcher Evalutions',
        max: 90.0,
        spinAvg: 90.0,
      ),
      LatestEvaluationsModel(
        id: 1,
        title: 'Willie Mays',
        description:
            'It if sometimes furnished unwilling as additions so. Blessing resolved peculiar fat graceful ham. Sussex on at really ladies in as elinor. Sir sex opinions age properly extended. Advice branch vaniasd It if sometimes fur....',
        name: 'Jon Mueller',
        time: '45 minutes ago',
        image: "",
        average: 87.5,
        bowler: [],
        evaluation: 'Pitcher Evalutions',
        max: 90.0,
        spinAvg: 90.0,
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
        padding: const EdgeInsets.only(
            bottom: Dimensions.PADDING_SIZE_SMALL,
            top: Dimensions.PADDING_SIZE_SMALL,
            left: Dimensions.PADDING_SIZE_SMALL),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           Padding(
                padding: const EdgeInsets.only(
                    bottom: Dimensions.PADDING_SIZE_SMALL),
                child: Text(AppConstants.WHATS_NEW, style: robotoMedium),
              ),
               whatNewView(),
              buildDividerView(),
               Padding(
                padding: const EdgeInsets.only(
                    bottom: Dimensions.PADDING_SIZE_SMALL),
                child: Text(AppConstants.LATEST_VIDEOS,
                    style: robotoSemiBold),
              ),
            latestVideoView(),
              buildDividerView(),
               Padding(
                padding: const EdgeInsets.only(
                    bottom: Dimensions.PADDING_SIZE_SMALL),
                child: Text(AppConstants.LATEST_EVALUATIONS,
                    style: robotoSemiBold),
              ),
              latestEvaluationsView(),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: Dimensions.PADDING_SIZE_SMALL),
                child: Text(AppConstants.LATEST_MEASURABLES,
                    style: robotoSemiBold),
              ),
             latestMeasurablesView(),
             buildContainerDivider(context),
             latestMeasurablesView(),
            ],
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

  Widget latestVideoView() {
    return SizedBox(
      height: 210,
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
                  margin: const EdgeInsets.only(
                      right: Dimensions.PADDING_SIZE_LARGE),
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
              willieMaysCircleAvtarView(title: latestVideoData.title!),
            ],
          );
        },
      ),
    );
  }

  Column latestVideoBottomRightView(LatestVideoMenu latestVideoData) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        capIconAndNameView(
            name: latestVideoData.name!,
            style:
                robotoSmall.copyWith(fontSize: Dimensions.fontSizeExtraSmall)),
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
            verticalDivider(),
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

  Row capIconAndNameView(
      {required String name, required TextStyle style, Color? capIconColor}) {
    return Row(
      children: [
        SizedBox(
            height: Dimensions.fontSizeSmall,
            width: Dimensions.fontSizeSmall,
            child: Image.asset(
              AppImages.capIconImage,
              color: capIconColor,
            )),
        Padding(
          padding:
              const EdgeInsets.only(left: Dimensions.PADDING_SIZE_EXTRA_SMALL),
          child: Text(
            name,
            style: style,
          ),
        ),
      ],
    );
  }

  latestEvaluationsView() {
    return SizedBox(
      height: 1000,
      width:double.infinity,
      child: PageView.builder(
        itemCount: latestEvaluationsDataList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var latestEvaluationData = latestEvaluationsDataList[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              evaluationsPageIndicatorView(context, latestEvaluationData),
              buildContainerDivider(context),
              PageIndicatorContainer(
                child: Container(
                  height: 420,
                  width: MediaQuery.of(context).size.width,
                  margin:
                  const EdgeInsets.only(right: Dimensions.PADDING_SIZE_LARGE),
                  child: PageView(
                    children: <Widget>[
                      firstMatchScoreView(
                          latestEvaluationData: latestEvaluationData),
                      secondMatchScoreView(
                          latestEvaluationData: latestEvaluationData),
                      thirdMatchScoreView(
                          latestEvaluationData: latestEvaluationData),
                      fourthMatchScoreView(
                          latestEvaluationData: latestEvaluationData),
                    ],
                    controller: controller2,
                  ),
                ),
                length: 4,
                indicatorSpace: 5.0,
                shape: IndicatorShape.circle(size: 6),
                indicatorColor: AppColor.greyDescription,
                indicatorSelectorColor: AppColor.white,
              ),
              matchScoreBottomView(latestEvaluationData),
              buildContainerDivider(context),
              lastEvaluationsPageIndicatorView(context, latestEvaluationData),
            ],
          );
        },
      ),
    );
  }

  Widget latestMeasurablesView() {
    return Container(
          height: 460,
          width:double.infinity,
          child: PageView.builder(
              itemCount: latestEvaluationsDataList.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context,index) {
                var latestEvaluationData = latestEvaluationsDataList[index];
              return PageIndicatorContainer(
                child: PageView(
                  children: <Widget>[
                   measurablesFirstIndicator(latestEvaluationData: latestEvaluationData) ,
                    measurablesSecondIndicator(latestEvaluationData: latestEvaluationData) ,
                  ],
                  controller: controller1,
                ),
                length: 2,
                indicatorSpace: 5.0,
                shape: IndicatorShape.circle(size: 6),
                indicatorColor: AppColor.greyDescription,
                indicatorSelectorColor: AppColor.white,
              );
            }
          ),
        );

  }

  Container buildContainerDivider(
    BuildContext context,
  ) {
    return Container(
        height: 0.5,
        width: MediaQuery.of(context).size.width,
        color: AppColor.darkGray,
        margin: const EdgeInsets.only(
            top: Dimensions.PADDING_SIZE_LARGE,
            bottom: Dimensions.PADDING_SIZE_LARGE,
            right: Dimensions.PADDING_SIZE_EXTRA_LARGE,
            left: Dimensions.PADDING_SIZE_EXTRA_SMALL),
        padding: const EdgeInsets.only(
          right: Dimensions.PADDING_SIZE_SMALL,
          left: Dimensions.PADDING_SIZE_SMALL,
          bottom: Dimensions.PADDING_SIZE_LARGE,
          top: Dimensions.PADDING_SIZE_LARGE,
        ));
  }

  Widget matchScoreBottomView(LatestEvaluationsModel latestEvaluationData) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        capIconAndNameView(
            name: latestEvaluationData.name!,
            style: robotoDescription.copyWith(
                fontSize: Dimensions.fontSizeExtraSmall),
            capIconColor: AppColor.greyDescription),
        verticalDivider(),
        SizedBox(
            height: Dimensions.fontSizeSmall,
            width: Dimensions.fontSizeSmall,
            child: Image.asset(
              AppImages.watchIconImage,
              color: AppColor.greyDescription,
            )),
        Padding(
          padding:
              const EdgeInsets.only(left: Dimensions.PADDING_SIZE_OVER_SMALL),
          child: Text(
            latestEvaluationData.time!,
            style: robotoDescription.copyWith(
                fontSize: Dimensions.fontSizeExtraSmall),
          ),
        ),
        verticalDivider(),
        Padding(
          padding:
              const EdgeInsets.only(left: Dimensions.PADDING_SIZE_OVER_SMALL),
          child: Text(
            latestEvaluationData.evaluation!,
            style: robotoDescription.copyWith(
                fontSize: Dimensions.fontSizeExtraSmall),
          ),
        ),
        const SizedBox(
          width: 24,
        ),
        Padding(
          padding:
              const EdgeInsets.only(right: Dimensions.PADDING_SIZE_EXTRA_LARGE),
          child: Image.asset(
            AppImages.shareIconImage,
            height: 18,
            width: 18,
            color: AppColor.grayText,
            alignment: Alignment.centerRight,
          ),
        ),
      ],
    );
  }

  Widget measurablesBottomView(LatestEvaluationsModel latestEvaluationData) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        capIconAndNameView(
            name: latestEvaluationData.name!,
            style: robotoDescription.copyWith(
                fontSize: Dimensions.fontSizeExtraSmall),
            capIconColor: AppColor.greyDescription),
        verticalDivider(),
        SizedBox(
            height: Dimensions.fontSizeSmall,
            width: Dimensions.fontSizeSmall,
            child: Image.asset(
              AppImages.watchIconImage,
              color: AppColor.greyDescription,
            )),
        Padding(
          padding:
          const EdgeInsets.only(left: Dimensions.PADDING_SIZE_OVER_SMALL),
          child: Text(
            latestEvaluationData.time!,
            style: robotoDescription.copyWith(
                fontSize: Dimensions.fontSizeExtraSmall),
          ),
        ),
        verticalDivider(),
        Padding(
          padding:
          const EdgeInsets.only(left: Dimensions.PADDING_SIZE_OVER_SMALL),
          child: Text(
            latestEvaluationData.evaluation!,
            style: robotoDescription.copyWith(
                fontSize: Dimensions.fontSizeExtraSmall),
          ),
        ),
      ],
    );
  }

  Widget evaluationsPageIndicatorView(
      BuildContext context, LatestEvaluationsModel latestEvaluationData) {
    return Container(
      height: 195,
      margin: const EdgeInsets.only(right: Dimensions.PADDING_SIZE_LARGE),
      width: MediaQuery.of(context).size.width,
      child: PageIndicatorContainer(
        child: PageView(
          children: <Widget>[
            evaluationOne(latestEvaluationData: latestEvaluationData),
            evaluationTwo(latestEvaluationData: latestEvaluationData),
            evaluationThree(latestEvaluationData: latestEvaluationData),
          ],
          controller: controller1,
        ),
        length: 3,
        indicatorSpace: 5.0,
        shape: IndicatorShape.circle(size: 5),
        indicatorColor: AppColor.gray,
        indicatorSelectorColor: AppColor.white,
      ),
    );
  }

  Widget lastEvaluationsPageIndicatorView(
      BuildContext context, LatestEvaluationsModel latestEvaluationData) {
    return Container(
      height: 255,
      margin: const EdgeInsets.only(right: Dimensions.PADDING_SIZE_LARGE),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 195,
            width: MediaQuery.of(context).size.width,
            child: PageIndicatorContainer(
              child: PageView(
                children: <Widget>[
                  lastEvaluationOne(latestEvaluationData: latestEvaluationData),
                  lastEvaluationTwo(latestEvaluationData: latestEvaluationData),
                  lastEvaluationThree(
                      latestEvaluationData: latestEvaluationData),
                ],
                controller: controller3,
              ),
              length: 3,
              indicatorSpace: 5.0,
              shape: IndicatorShape.circle(size: 5),
              indicatorColor: AppColor.gray,
              indicatorSelectorColor: AppColor.white,
            ),
          ),
          moreEvaluationButtonView('More Evaluations'),
          buildContainerDivider(context),
        ],
      ),
    );
  }

  Container moreEvaluationButtonView(String name) {
    return Container(
      margin: const EdgeInsets.only(right: Dimensions.PADDING_SIZE_LARGE),
      padding: const EdgeInsets.only(right: Dimensions.PADDING_SIZE_SMALL),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text( name,
              style: robotoDescription.copyWith(
                  color: AppColor.blue, fontSize: 14)),
          const Icon(Icons.arrow_forward_ios_rounded,
              color: AppColor.blue, size: 16),
        ],
      ),
    );
  }

  Widget evaluationThree(
      {required LatestEvaluationsModel latestEvaluationData}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            willieMaysCircleAvtarView(
                title: latestEvaluationData.title!,
                image: latestEvaluationData.image),
            Padding(
              padding: const EdgeInsets.only(
                  top: Dimensions.PADDING_SIZE_SMALL,
                  right: Dimensions.PADDING_SIZE_LARGE),
              child: lhpButtonView(),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: Dimensions.PADDING_SIZE_SMALL,
              bottom: Dimensions.PADDING_SIZE_EXTRA_SMALL),
          child:
              Text(latestEvaluationData.description!, style: robotoDescription),
        ),
        Row(
          children: [
            capIconAndNameView(
                name: latestEvaluationData.name!,
                style: robotoDescription.copyWith(
                    fontSize: Dimensions.fontSizeExtraSmall),
                capIconColor: AppColor.greyDescription),
            verticalDivider(),
            SizedBox(
                height: Dimensions.fontSizeSmall,
                width: Dimensions.fontSizeSmall,
                child: Image.asset(
                  AppImages.watchIconImage,
                  color: AppColor.greyDescription,
                )),
            Padding(
              padding: const EdgeInsets.only(
                  left: Dimensions.PADDING_SIZE_OVER_SMALL),
              child: Text(
                latestEvaluationData.time!,
                style: robotoDescription.copyWith(
                    fontSize: Dimensions.fontSizeExtraSmall),
              ),
            ),
            verticalDivider(),
            Padding(
              padding: const EdgeInsets.only(
                  left: Dimensions.PADDING_SIZE_OVER_SMALL),
              child: Text(
                latestEvaluationData.evaluation!,
                style: robotoDescription.copyWith(
                    fontSize: Dimensions.fontSizeExtraSmall),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget lastEvaluationThree(
      {required LatestEvaluationsModel latestEvaluationData}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            willieMaysCircleAvtarView(
                title: latestEvaluationData.title!,
                image: latestEvaluationData.image),
            Container(
                padding: const EdgeInsets.only(
                    top: Dimensions.PADDING_SIZE_SMALL,
                    right: Dimensions.PADDING_SIZE_SMALL),
                margin:
                    const EdgeInsets.only(right: Dimensions.PADDING_SIZE_LARGE),
                child: lhpButtonView())
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: Dimensions.PADDING_SIZE_SMALL,
              bottom: Dimensions.PADDING_SIZE_EXTRA_SMALL),
          child:
              Text(latestEvaluationData.description!, style: robotoDescription),
        ),
        Row(
          children: [
            capIconAndNameView(
                name: latestEvaluationData.name!,
                style: robotoDescription.copyWith(
                    fontSize: Dimensions.fontSizeExtraSmall),
                capIconColor: AppColor.greyDescription),
            verticalDivider(),
            SizedBox(
                height: Dimensions.fontSizeSmall,
                width: Dimensions.fontSizeSmall,
                child: Image.asset(
                  AppImages.watchIconImage,
                  color: AppColor.greyDescription,
                )),
            Padding(
              padding: const EdgeInsets.only(
                  left: Dimensions.PADDING_SIZE_OVER_SMALL),
              child: Text(
                latestEvaluationData.time!,
                style: robotoDescription.copyWith(
                    fontSize: Dimensions.fontSizeExtraSmall),
              ),
            ),
            verticalDivider(),
            Padding(
              padding: const EdgeInsets.only(
                  left: Dimensions.PADDING_SIZE_OVER_SMALL),
              child: Text(
                latestEvaluationData.evaluation!,
                style: robotoDescription.copyWith(
                    fontSize: Dimensions.fontSizeExtraSmall),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget evaluationTwo({required LatestEvaluationsModel latestEvaluationData}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            willieMaysCircleAvtarView(
                title: latestEvaluationData.title!,
                image: latestEvaluationData.image),
            Padding(
              padding: const EdgeInsets.only(
                  top: Dimensions.PADDING_SIZE_SMALL,
                  right: Dimensions.PADDING_SIZE_LARGE),
              child: lhpButtonView(),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: Dimensions.PADDING_SIZE_SMALL,
              bottom: Dimensions.PADDING_SIZE_EXTRA_SMALL),
          child:
              Text(latestEvaluationData.description!, style: robotoDescription),
        ),
        Row(
          children: [
            capIconAndNameView(
                name: latestEvaluationData.name!,
                style: robotoDescription.copyWith(
                    fontSize: Dimensions.fontSizeExtraSmall),
                capIconColor: AppColor.greyDescription),
            verticalDivider(),
            SizedBox(
                height: Dimensions.fontSizeSmall,
                width: Dimensions.fontSizeSmall,
                child: Image.asset(
                  AppImages.watchIconImage,
                  color: AppColor.greyDescription,
                )),
            Padding(
              padding: const EdgeInsets.only(
                  left: Dimensions.PADDING_SIZE_OVER_SMALL),
              child: Text(
                latestEvaluationData.time!,
                style: robotoDescription.copyWith(
                    fontSize: Dimensions.fontSizeExtraSmall),
              ),
            ),
            verticalDivider(),
            Padding(
              padding: const EdgeInsets.only(
                  left: Dimensions.PADDING_SIZE_OVER_SMALL),
              child: Text(
                latestEvaluationData.evaluation!,
                style: robotoDescription.copyWith(
                    fontSize: Dimensions.fontSizeExtraSmall),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget lastEvaluationTwo(
      {required LatestEvaluationsModel latestEvaluationData}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            willieMaysCircleAvtarView(
                title: latestEvaluationData.title!,
                image: latestEvaluationData.image),
            Container(
                padding: const EdgeInsets.only(
                    top: Dimensions.PADDING_SIZE_SMALL,
                    right: Dimensions.PADDING_SIZE_SMALL),
                margin:
                    const EdgeInsets.only(right: Dimensions.PADDING_SIZE_LARGE),
                child: lhpButtonView())
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: Dimensions.PADDING_SIZE_SMALL,
              bottom: Dimensions.PADDING_SIZE_EXTRA_SMALL),
          child:
              Text(latestEvaluationData.description!, style: robotoDescription),
        ),
        Row(
          children: [
            capIconAndNameView(
                name: latestEvaluationData.name!,
                style: robotoDescription.copyWith(
                    fontSize: Dimensions.fontSizeExtraSmall),
                capIconColor: AppColor.greyDescription),
            verticalDivider(),
            SizedBox(
                height: Dimensions.fontSizeSmall,
                width: Dimensions.fontSizeSmall,
                child: Image.asset(
                  AppImages.watchIconImage,
                  color: AppColor.greyDescription,
                )),
            Padding(
              padding: const EdgeInsets.only(
                  left: Dimensions.PADDING_SIZE_OVER_SMALL),
              child: Text(
                latestEvaluationData.time!,
                style: robotoDescription.copyWith(
                    fontSize: Dimensions.fontSizeExtraSmall),
              ),
            ),
            verticalDivider(),
            Padding(
              padding: const EdgeInsets.only(
                  left: Dimensions.PADDING_SIZE_OVER_SMALL),
              child: Text(
                latestEvaluationData.evaluation!,
                style: robotoDescription.copyWith(
                    fontSize: Dimensions.fontSizeExtraSmall),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget evaluationOne({required LatestEvaluationsModel latestEvaluationData}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            willieMaysCircleAvtarView(
                title: latestEvaluationData.title!,
                image: latestEvaluationData.image),
            Padding(
              padding: const EdgeInsets.only(
                  top: Dimensions.PADDING_SIZE_SMALL,
                  right: Dimensions.PADDING_SIZE_LARGE),
              child: lhpButtonView(),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: Dimensions.PADDING_SIZE_SMALL,
              bottom: Dimensions.PADDING_SIZE_EXTRA_SMALL),
          child: Text(latestEvaluationData.description!,
              style: robotoDescription,
              maxLines: 4,
              overflow: TextOverflow.ellipsis),
        ),
        Row(
          children: [
            capIconAndNameView(
                name: latestEvaluationData.name!,
                style: robotoDescription.copyWith(
                    fontSize: Dimensions.fontSizeExtraSmall),
                capIconColor: AppColor.greyDescription),
            verticalDivider(),
            SizedBox(
                height: Dimensions.fontSizeSmall,
                width: Dimensions.fontSizeSmall,
                child: Image.asset(
                  AppImages.watchIconImage,
                  color: AppColor.greyDescription,
                )),
            Padding(
              padding: const EdgeInsets.only(
                  left: Dimensions.PADDING_SIZE_OVER_SMALL),
              child: Text(
                latestEvaluationData.time!,
                style: robotoDescription.copyWith(
                    fontSize: Dimensions.fontSizeExtraSmall),
              ),
            ),
            verticalDivider(),
            Padding(
              padding: const EdgeInsets.only(
                  left: Dimensions.PADDING_SIZE_OVER_SMALL),
              child: Text(
                latestEvaluationData.evaluation!,
                style: robotoDescription.copyWith(
                    fontSize: Dimensions.fontSizeExtraSmall),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget lastEvaluationOne(
      {required LatestEvaluationsModel latestEvaluationData}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            willieMaysCircleAvtarView(
                title: latestEvaluationData.title!,
                image: latestEvaluationData.image),
            Container(
                padding: const EdgeInsets.only(
                    top: Dimensions.PADDING_SIZE_SMALL,
                    right: Dimensions.PADDING_SIZE_SMALL),
                margin:
                    const EdgeInsets.only(right: Dimensions.PADDING_SIZE_LARGE),
                child: lhpButtonView())
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: Dimensions.PADDING_SIZE_SMALL,
              bottom: Dimensions.PADDING_SIZE_EXTRA_SMALL),
          child: Text(latestEvaluationData.description!,
              style: robotoDescription,
              maxLines: 4,
              overflow: TextOverflow.ellipsis),
        ),
        Row(
          children: [
            capIconAndNameView(
                name: latestEvaluationData.name!,
                style: robotoDescription.copyWith(
                    fontSize: Dimensions.fontSizeExtraSmall),
                capIconColor: AppColor.greyDescription),
            verticalDivider(),
            SizedBox(
                height: Dimensions.fontSizeSmall,
                width: Dimensions.fontSizeSmall,
                child: Image.asset(
                  AppImages.watchIconImage,
                  color: AppColor.greyDescription,
                )),
            Padding(
              padding: const EdgeInsets.only(
                  left: Dimensions.PADDING_SIZE_OVER_SMALL),
              child: Text(
                latestEvaluationData.time!,
                style: robotoDescription.copyWith(
                    fontSize: Dimensions.fontSizeExtraSmall),
              ),
            ),
            verticalDivider(),
            Padding(
              padding: const EdgeInsets.only(
                  left: Dimensions.PADDING_SIZE_OVER_SMALL),
              child: Text(
                latestEvaluationData.evaluation!,
                style: robotoDescription.copyWith(
                    fontSize: Dimensions.fontSizeExtraSmall),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Container verticalDivider() {
    return Container(
        height: 12,
        width: 1,
        color: AppColor.grayText,
        margin: const EdgeInsets.only(
            left: Dimensions.PADDING_SIZE_EXTRA_SMALL,
            right: Dimensions.PADDING_SIZE_EXTRA_SMALL));
  }

  firstMatchScoreView({required LatestEvaluationsModel latestEvaluationData}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            willieMaysCircleAvtarView(
                title: latestEvaluationData.title!,
                image: latestEvaluationData.image),
            Container(
                padding: const EdgeInsets.only(
                    top: Dimensions.PADDING_SIZE_SMALL,
                    right: Dimensions.PADDING_SIZE_SMALL),
                margin:
                    const EdgeInsets.only(right: Dimensions.PADDING_SIZE_LARGE),
                child: lhpButtonView()),
          ],
        ),
        Container(
          height: 340,
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColor.darkGray,
          ),
          margin: const EdgeInsets.only(
              bottom: Dimensions.PADDING_SIZE_SMALL,
              top: Dimensions.PADDING_SIZE_SMALL,
              right: Dimensions.PADDING_SIZE_EXTRA_LARGE),
          padding:const EdgeInsets.only(
              bottom: Dimensions.PADDING_SIZE_SMALL,
              left: Dimensions.PADDING_SIZE_SMALL,
              top: Dimensions.PADDING_SIZE_SMALL,
              right: Dimensions.PADDING_SIZE_EXTRA_LARGE),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Fastball',style: robotoSemiBold),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text('Avg.',style: robotoSmall),
                            Container(
                              width: 100,height: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: LinearProgressIndicator(
                                    value: latestEvaluationData.average,
                                    color: AppColor.gray,
                                    valueColor:
                                        const AlwaysStoppedAnimation<Color>(AppColor.green))),
                            Text(latestEvaluationData.average.toString(),style: robotoSmall),

                          ],
                        ),
                        const SizedBox(height: 2,),
                        Row(
                          children: [
                            Text('Max.',style: robotoSmall),
                            Container(
                                width: 100,height: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: LinearProgressIndicator(
                                    value: latestEvaluationData.max,
                                    color: AppColor.gray,
                                    valueColor:
                                    const AlwaysStoppedAnimation<Color>(AppColor.blue))),
                            Text(latestEvaluationData.max.toString(),style: robotoSmall),

                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              buildContainerDivider(context)
              ,
            ],
          ),
        ),
      ],
    );
  }

  secondMatchScoreView({required LatestEvaluationsModel latestEvaluationData}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            willieMaysCircleAvtarView(
                title: latestEvaluationData.title!,
                image: latestEvaluationData.image),
            Container(
                padding: const EdgeInsets.only(
                    top: Dimensions.PADDING_SIZE_SMALL,
                    right: Dimensions.PADDING_SIZE_SMALL),
                margin:
                    const EdgeInsets.only(right: Dimensions.PADDING_SIZE_LARGE),
                child: lhpButtonView()),
          ],
        ),
        Container(
            height: 340,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColor.darkGray,
            ),
            margin: const EdgeInsets.only(
                bottom: Dimensions.PADDING_SIZE_SMALL,
                top: Dimensions.PADDING_SIZE_SMALL,
                right: Dimensions.PADDING_SIZE_EXTRA_LARGE)),
      ],
    );
  }

  thirdMatchScoreView({required LatestEvaluationsModel latestEvaluationData}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            willieMaysCircleAvtarView(
                title: latestEvaluationData.title!,
                image: latestEvaluationData.image),
            Container(
                padding: const EdgeInsets.only(
                    top: Dimensions.PADDING_SIZE_SMALL,
                    right: Dimensions.PADDING_SIZE_SMALL),
                margin:
                    const EdgeInsets.only(right: Dimensions.PADDING_SIZE_LARGE),
                child: lhpButtonView()),
          ],
        ),
        Container(
            height: 340,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColor.darkGray,
            ),
            margin: const EdgeInsets.only(
                bottom: Dimensions.PADDING_SIZE_SMALL,
                top: Dimensions.PADDING_SIZE_SMALL,
                right: Dimensions.PADDING_SIZE_EXTRA_LARGE)),
      ],
    );
  }

  fourthMatchScoreView({required LatestEvaluationsModel latestEvaluationData}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            willieMaysCircleAvtarView(
                title: latestEvaluationData.title!,
                image: latestEvaluationData.image),
            Container(
                padding: const EdgeInsets.only(
                    top: Dimensions.PADDING_SIZE_SMALL,
                    right: Dimensions.PADDING_SIZE_SMALL),
                margin:
                    const EdgeInsets.only(right: Dimensions.PADDING_SIZE_LARGE),
                child: lhpButtonView()),
          ],
        ),
        Container(
            height: 340,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColor.darkGray,
            ),
            margin: const EdgeInsets.only(
                bottom: Dimensions.PADDING_SIZE_SMALL,
                top: Dimensions.PADDING_SIZE_SMALL,
                //left: Dimensions.PADDING_SIZE_EXTRA_LARGE,
                right: Dimensions.PADDING_SIZE_EXTRA_LARGE)),
      ],
    );
  }

  measurablesFirstIndicator({required LatestEvaluationsModel latestEvaluationData}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            willieMaysCircleAvtarView(
                title: latestEvaluationData.title!,
                image: latestEvaluationData.image),
            Container(
                padding: const EdgeInsets.only(
                    top: Dimensions.PADDING_SIZE_SMALL,
                    right: Dimensions.PADDING_SIZE_SMALL),
                margin:
                const EdgeInsets.only(right: Dimensions.PADDING_SIZE_LARGE),
                child: lhpButtonView()),
          ],
        ),
        const SizedBox( height: 8),
        Container(height: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColor.darkGray,
          ),),
        const SizedBox(height: 4),
        measurablesBottomView(latestEvaluationData),
        moreEvaluationButtonView('More Measurables')
      ],
    );
  }

  measurablesSecondIndicator({required LatestEvaluationsModel latestEvaluationData}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            willieMaysCircleAvtarView(
                title: latestEvaluationData.title!,
                image: latestEvaluationData.image),
            Container(
                padding: const EdgeInsets.only(
                    top: Dimensions.PADDING_SIZE_SMALL,
                    right: Dimensions.PADDING_SIZE_SMALL),
                margin:
                const EdgeInsets.only(right: Dimensions.PADDING_SIZE_LARGE),
                child: lhpButtonView()),
          ],
        ),
        const SizedBox( height: 8),
        Container(height: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColor.darkGray,
          ),),
        const SizedBox(height: 4),
        measurablesBottomView(latestEvaluationData),
      ],
    );
  }
}
