import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:projectstruc/services/models/dashboard_header_list_model.dart';
import 'package:projectstruc/services/models/dashboard_latest_evaluations_model.dart';
import 'package:projectstruc/services/models/dashboard_latest_schedules_model.dart';
import 'package:projectstruc/services/models/dashboard_latest_video_model.dart';
import 'package:projectstruc/services/models/dashboard_latest_visits_model.dart';
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
  List<LatestScheduleModel> latestScheduleDataList = <LatestScheduleModel>[];
  List<LatestVisitsModel> latestVisitDataList = <LatestVisitsModel>[];

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
    latestScheduleList();
    latestVisitsList();
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

  List<LatestScheduleModel> latestScheduleList() {
    return latestScheduleDataList = [
      LatestScheduleModel(
        id: 1,
        title: 'Willie Mays',
        bottomName: 'Jon Mueller',
        bottomTime: '45 minutes ago',
        endingDate: '05 Dec 2023',
        startingDate: '14 Nov 2023',
        gameSubtitle: 'Oakland Coliseum',
        gameTitle: '2023 Summer Tournaments By Region',
        type: 'Tournament',
        image: '',
      ),
      LatestScheduleModel(
        id: 2,
        title: 'Willie Mays',
        bottomName: 'Jon Mueller',
        bottomTime: '45 minutes ago',
        endingDate: '05 Dec 2023',
        startingDate: '14 Nov 2023',
        gameSubtitle: 'Oakland Coliseum',
        gameTitle: '2023 Summer Tournaments By Region',
        type: 'Tournament',
        image: '',
      ),
    ];
  }

  List<LatestVisitsModel> latestVisitsList() {
    return latestVisitDataList = [
      LatestVisitsModel(
        id: 1,
        gameTitle: 'Official Visits',
        bottomName: 'Jon Mueller',
        bottomTime: '45 minutes ago',
        guests: '33 Guests',
        startingDate: '14 Nov 2023',
        gameSubtitle: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters',
        title: 'Willie Mays',
        image: '',
      ),
      LatestVisitsModel(
        id: 2,
        gameTitle: 'Unofficial Visits',
        bottomName: 'Jon Mueller',
        bottomTime: '45 minutes ago',
        guests: '33 Guests',
        startingDate: '14 Nov 2023',
        gameSubtitle: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters',
        title: 'Willie Mays',
        image: '',
      ),
      LatestVisitsModel(
        id: 3,
        gameTitle: 'Camp Visits',
        bottomName: 'Jon Mueller',
        bottomTime: '45 minutes ago',
        guests: '33 Guests',
        startingDate: '14 Nov 2023',
        gameSubtitle: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters',
        title: 'Willie Mays',
        image: '',
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
              buildDividerView(0.5),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: Dimensions.PADDING_SIZE_SMALL),
                child: Text(AppConstants.LATEST_VIDEOS, style: robotoSemiBold),
              ),
              latestVideoView(),
              buildDividerView(1.5),
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
              measurablesView(),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: Dimensions.PADDING_SIZE_SMALL),
                child:
                    Text(AppConstants.LATEST_SCHEDULES, style: robotoSemiBold),
              ),
              schedulesView(),
              buildDividerView(1.5),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: Dimensions.PADDING_SIZE_SMALL),
                child: Text(AppConstants.LATEST_VISITS, style: robotoSemiBold),
              ),
              visitView()
            ],
          ),
        ),
      ),
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
                padding: const EdgeInsets.only(
                    right: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                    bottom: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                    top: Dimensions.PADDING_SIZE_EXTRA_SMALL),
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
      height: 982,
      width: double.infinity,
      child: PageView.builder(
        itemCount: latestEvaluationsDataList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var latestEvaluationData = latestEvaluationsDataList[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              evaluationsPageIndicatorView(context, latestEvaluationData),
              buildDividerView(0.5),
              evaluationBowlerIndicatorView(context, latestEvaluationData),
              matchScoreBottomView(latestEvaluationData),
              buildDividerView(0.5),
              lastEvaluationsPageIndicatorView(context, latestEvaluationData),
            ],
          );
        },
      ),
    );
  }

  Widget evaluationBowlerIndicatorView(
      BuildContext context, LatestEvaluationsModel latestEvaluationData) {
    return PageIndicatorContainer(
      child: SizedBox(
        height: 430,
        width: MediaQuery.of(context).size.width,
        child: PageView(
          children: <Widget>[
            firstMatchScoreView(latestEvaluationData: latestEvaluationData),
            secondMatchScoreView(latestEvaluationData: latestEvaluationData),
            thirdMatchScoreView(latestEvaluationData: latestEvaluationData),
            fourthMatchScoreView(latestEvaluationData: latestEvaluationData),
          ],
          controller: controller2,
        ),
      ),
      length: 4,
      indicatorSpace: 5.0,
      shape: IndicatorShape.circle(size: 5),
      indicatorColor: AppColor.gray,
      indicatorSelectorColor: AppColor.white,
    );
  }

  Widget latestMeasurablesFirstIndicatorView(
      LatestEvaluationsModel latestEvaluationData) {
    return SizedBox(
      height: 480,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 450,
            width: MediaQuery.of(context).size.width,
            child: PageIndicatorContainer(
              child: PageView(
                children: <Widget>[
                  measurablesFirstIndicator(
                      latestEvaluationData: latestEvaluationData),
                  measurablesSecondIndicator(
                      latestEvaluationData: latestEvaluationData),
                ],
                controller: controller1,
              ),
              length: 2,
              indicatorSpace: 5.0,
              shape: IndicatorShape.circle(size: 6),
              indicatorColor: AppColor.greyDescription,
              indicatorSelectorColor: AppColor.white,
            ),
          ),
          bottomNameTimeView(latestEvaluationData),
        ],
      ),
    );
  }

  Widget latestMeasurablesSecondIndicatorView(
      LatestEvaluationsModel latestEvaluationData) {
    return SizedBox(
      height: 540,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 450,
            width: MediaQuery.of(context).size.width,
            child: PageIndicatorContainer(
              child: PageView(
                children: <Widget>[
                  measurablesFirstIndicator(
                      latestEvaluationData: latestEvaluationData),
                  measurablesSecondIndicator(
                      latestEvaluationData: latestEvaluationData),
                ],
                controller: controller1,
              ),
              length: 2,
              indicatorSpace: 5.0,
              shape: IndicatorShape.circle(size: 6),
              indicatorColor: AppColor.greyDescription,
              indicatorSelectorColor: AppColor.white,
            ),
          ),
          bottomNameTimeView(latestEvaluationData),
          const SizedBox(
            height: 8,
          ),
          moreEvaluationButtonView('More Evaluations'),
          const SizedBox(
            height: 8,
          ),
          buildDividerView(1.5),
        ],
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
    return Padding(
      padding: const EdgeInsets.only(bottom: Dimensions.PADDING_SIZE_SMALL),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
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
              const SizedBox(
                width: 24,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
                right: Dimensions.PADDING_SIZE_EXTRA_LARGE),
            child: Image.asset(
              AppImages.shareIconImage,
              height: 20,
              width: 20,
              color: AppColor.grayText,
              alignment: Alignment.centerRight,
            ),
          ),
        ],
      ),
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
    return SizedBox(
      height: 220,
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
    return SizedBox(
      height: 250,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 200,
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
          const SizedBox(
            height: 2,
          ),
          buildDividerView(1.5),
        ],
      ),
    );
  }

  Container moreEvaluationButtonView(String name) {
    return Container(
      padding: const EdgeInsets.only(right: Dimensions.PADDING_SIZE_SMALL),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(name,
              style: robotoDescription.copyWith(
                  color: AppColor.blue, fontSize: 12)),
          const Icon(Icons.arrow_forward_ios_rounded,
              color: AppColor.blue, size: 15),
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
        bottomNameTimeView(latestEvaluationData),
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
        bottomNameTimeView(latestEvaluationData),
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
        bottomNameTimeView(latestEvaluationData),
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
        bottomNameTimeView(latestEvaluationData),
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
        bottomNameTimeView(latestEvaluationData),
      ],
    );
  }

  Padding buildDividerView(thickness) {
    return Padding(
      padding: const EdgeInsets.only(
        right: Dimensions.PADDING_SIZE_SMALL,
        left: Dimensions.PADDING_SIZE_SMALL,
        bottom: Dimensions.PADDING_SIZE_SMALL,
        //top: Dimensions.PADDING_SIZE_LARGE,
      ),
      child: Divider(color: AppColor.darkGray, thickness: thickness),
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
        bottomNameTimeView(latestEvaluationData),
      ],
    );
  }

  Row bottomNameTimeView(LatestEvaluationsModel latestEvaluationData) {
    return Row(
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
                    const EdgeInsets.only(right: Dimensions.PADDING_SIZE_SMALL),
                child: lhpButtonView()),
          ],
        ),
        Container(
          height: 320,
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColor.cardBgColor,
          ),
          margin: const EdgeInsets.only(
              bottom: Dimensions.PADDING_SIZE_SMALL,
              top: Dimensions.PADDING_SIZE_SMALL,
              right: Dimensions.PADDING_SIZE_SMALL),
          padding: const EdgeInsets.only(
              bottom: Dimensions.PADDING_SIZE_SMALL,
              left: Dimensions.PADDING_SIZE_SMALL,
              top: Dimensions.PADDING_SIZE_SMALL,
              right: Dimensions.PADDING_SIZE_SMALL),
          child: Column(
            children: [
              bowlerIndicatorView(
                  latestEvaluationData: latestEvaluationData,
                  title: 'Fastball'),
              buildDividerView(0.5),
              bowlerIndicatorView(
                  latestEvaluationData: latestEvaluationData, title: 'Slider'),
              buildDividerView(0.5),
              bowlerIndicatorView(
                  latestEvaluationData: latestEvaluationData,
                  title: 'Curveball'),
              buildDividerView(0.5),
              bowlerIndicatorView(
                  latestEvaluationData: latestEvaluationData,
                  title: 'Changeup'),
              buildDividerView(0.5),
              otherIndicatorView(),
            ],
          ),
        ),
      ],
    );
  }

  Row otherIndicatorView() {
    return Row(
      children: [
        Container(
          width: 95,
          padding: const EdgeInsets.only(
              right: Dimensions.PADDING_SIZE_LARGE,
              bottom: Dimensions.PADDING_SIZE_SMALL,
              top: Dimensions.PADDING_SIZE_SMALL),
          child: Text('Other',
              style: robotoSemiBold.copyWith(
                  color: AppColor.cardTextColor, fontSize: 14)),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            linearPercentIndicatorView(
              title: 'Avg.',
              percent: 0.0,
              percentName: '0.0 m/h',
              bgColor: AppColor.darkGray,
              progressColor: AppColor.green,
            ),
            const SizedBox(
              height: 1,
            ),
            linearPercentIndicatorView(
              title: 'Max.',
              percent: 0.0,
              percentName: '0.0 m/h',
              bgColor: AppColor.darkGray,
              progressColor: AppColor.blue,
            ),
          ],
        )
      ],
    );
  }

  Row bowlerIndicatorView(
      {required LatestEvaluationsModel latestEvaluationData,
      required String title}) {
    return Row(
      children: [
        Container(
          width: 95,
          padding: const EdgeInsets.only(
              right: Dimensions.PADDING_SIZE_LARGE,
              bottom: Dimensions.PADDING_SIZE_SMALL,
              top: Dimensions.PADDING_SIZE_SMALL),
          child: Text(title,
              style: robotoSemiBold.copyWith(
                  color: AppColor.cardTextColor, fontSize: 14)),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            linearPercentIndicatorView(
              title: 'Avg.',
              percent: latestEvaluationData.average! / 100,
              percentName: '${latestEvaluationData.average.toString()} m/h',
              bgColor: AppColor.darkGray,
              progressColor: AppColor.green,
            ),
            const SizedBox(
              height: 1,
            ),
            linearPercentIndicatorView(
              title: 'Max.',
              percent: latestEvaluationData.max! / 100,
              percentName: '${latestEvaluationData.max.toString()} m/h',
              bgColor: AppColor.darkGray,
              progressColor: AppColor.blue,
            ),
          ],
        )
      ],
    );
  }

  Row measurablesIndicatorView(
      {required LatestEvaluationsModel latestEvaluationData,
      required String title}) {
    return Row(
      children: [
        Container(
          width: 95,
          padding: const EdgeInsets.only(
              right: Dimensions.PADDING_SIZE_LARGE,
              bottom: Dimensions.PADDING_SIZE_SMALL,
              top: Dimensions.PADDING_SIZE_SMALL),
          child: Text(title,
              style: robotoSemiBold.copyWith(
                  color: AppColor.cardTextColor, fontSize: 14)),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            linearPercentIndicatorView(
                title: 'Avg.',
                percent: latestEvaluationData.average! / 100,
                percentName: '${latestEvaluationData.average.toString()} m/h',
                bgColor: AppColor.darkGray,
                progressColor: AppColor.green,
                indicatorWidth: MediaQuery.of(context).size.width / 2.8,
                width: 50),
            const SizedBox(
              height: 1,
            ),
            linearPercentIndicatorView(
                title: 'Max.',
                percent: latestEvaluationData.max! / 100,
                percentName: '${latestEvaluationData.max.toString()} m/h',
                bgColor: AppColor.darkGray,
                progressColor: AppColor.blue,
                indicatorWidth: MediaQuery.of(context).size.width / 2.8,
                width: 50),
            const SizedBox(
              height: 1,
            ),
            linearPercentIndicatorView(
                title: 'Spin Avg.',
                percent: latestEvaluationData.max! / 100,
                percentName: '${latestEvaluationData.spinAvg.toString()} m/h',
                bgColor: AppColor.darkGray,
                progressColor: AppColor.orange,
                indicatorWidth: MediaQuery.of(context).size.width / 2.8,
                width: 50),
          ],
        )
      ],
    );
  }

  Row measurablesOtherIndicatorView() {
    return Row(
      children: [
        Container(
          width: 95,
          padding: const EdgeInsets.only(
              right: Dimensions.PADDING_SIZE_LARGE,
              bottom: Dimensions.PADDING_SIZE_SMALL,
              top: Dimensions.PADDING_SIZE_SMALL),
          child: Text('Other',
              style: robotoSemiBold.copyWith(
                  color: AppColor.cardTextColor, fontSize: 14)),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            linearPercentIndicatorView(
                title: 'Avg.',
                percent: 0.0,
                percentName: '0.0 m/h',
                bgColor: AppColor.darkGray,
                progressColor: AppColor.green,
                indicatorWidth: MediaQuery.of(context).size.width / 2.8,
                width: 50),
            const SizedBox(
              height: 1,
            ),
            linearPercentIndicatorView(
                title: 'Max.',
                percent: 0.0,
                percentName: '0.0 m/h',
                bgColor: AppColor.darkGray,
                progressColor: AppColor.blue,
                indicatorWidth: MediaQuery.of(context).size.width / 2.8,
                width: 50),
            const SizedBox(
              height: 1,
            ),
            linearPercentIndicatorView(
                title: 'Spin Avg.',
                percent: 0.0,
                percentName: '0.0 m/h',
                bgColor: AppColor.darkGray,
                progressColor: AppColor.orange,
                indicatorWidth: MediaQuery.of(context).size.width / 2.8,
                width: 50),
          ],
        )
      ],
    );
  }

  Row linearPercentIndicatorView({
    required String title,
    required double percent,
    required String percentName,
    required Color bgColor,
    required Color progressColor,
    double? indicatorWidth,
    double? width,
  }) {
    return Row(
      children: [
        SizedBox(
            width: width ?? null,
            child: Text(title,
                style: robotoSmall.copyWith(color: AppColor.grayText))),
        LinearPercentIndicator(
          width: indicatorWidth ?? MediaQuery.of(context).size.width / 2.14,
          lineHeight: 6.0,
          percent: percent,
          backgroundColor: bgColor,
          progressColor: progressColor,
          barRadius: const Radius.circular(4),
        ),
        Text(percentName,
            style: robotoSmall.copyWith(color: AppColor.grayText)),
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
                    const EdgeInsets.only(right: Dimensions.PADDING_SIZE_SMALL),
                child: lhpButtonView()),
          ],
        ),
        Container(
          height: 320,
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColor.cardBgColor,
          ),
          margin: const EdgeInsets.only(
              bottom: Dimensions.PADDING_SIZE_SMALL,
              top: Dimensions.PADDING_SIZE_SMALL,
              right: Dimensions.PADDING_SIZE_SMALL),
          padding: const EdgeInsets.only(
              bottom: Dimensions.PADDING_SIZE_SMALL,
              left: Dimensions.PADDING_SIZE_SMALL,
              top: Dimensions.PADDING_SIZE_SMALL,
              right: Dimensions.PADDING_SIZE_SMALL),
          child: Column(
            children: [
              bowlerIndicatorView(
                  latestEvaluationData: latestEvaluationData,
                  title: 'Fastball'),
              buildDividerView(0.5),
              bowlerIndicatorView(
                  latestEvaluationData: latestEvaluationData, title: 'Slider'),
              buildDividerView(0.5),
              bowlerIndicatorView(
                  latestEvaluationData: latestEvaluationData,
                  title: 'Curveball'),
              buildDividerView(0.5),
              bowlerIndicatorView(
                  latestEvaluationData: latestEvaluationData,
                  title: 'Changeup'),
              buildDividerView(0.5),
              otherIndicatorView(),
            ],
          ),
        ),
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
                    const EdgeInsets.only(right: Dimensions.PADDING_SIZE_SMALL),
                child: lhpButtonView()),
          ],
        ),
        Container(
          height: 320,
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColor.cardBgColor,
          ),
          margin: const EdgeInsets.only(
              bottom: Dimensions.PADDING_SIZE_SMALL,
              top: Dimensions.PADDING_SIZE_SMALL,
              right: Dimensions.PADDING_SIZE_SMALL),
          padding: const EdgeInsets.only(
              bottom: Dimensions.PADDING_SIZE_SMALL,
              left: Dimensions.PADDING_SIZE_SMALL,
              top: Dimensions.PADDING_SIZE_SMALL,
              right: Dimensions.PADDING_SIZE_SMALL),
          child: Column(
            children: [
              bowlerIndicatorView(
                  latestEvaluationData: latestEvaluationData,
                  title: 'Fastball'),
              buildDividerView(0.5),
              bowlerIndicatorView(
                  latestEvaluationData: latestEvaluationData, title: 'Slider'),
              buildDividerView(0.5),
              bowlerIndicatorView(
                  latestEvaluationData: latestEvaluationData,
                  title: 'Curveball'),
              buildDividerView(0.5),
              bowlerIndicatorView(
                  latestEvaluationData: latestEvaluationData,
                  title: 'Changeup'),
              buildDividerView(0.5),
              otherIndicatorView(),
            ],
          ),
        ),
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
                    const EdgeInsets.only(right: Dimensions.PADDING_SIZE_SMALL),
                child: lhpButtonView()),
          ],
        ),
        Container(
          height: 320,
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColor.cardBgColor,
          ),
          margin: const EdgeInsets.only(
              bottom: Dimensions.PADDING_SIZE_SMALL,
              top: Dimensions.PADDING_SIZE_SMALL,
              right: Dimensions.PADDING_SIZE_SMALL),
          padding: const EdgeInsets.only(
              bottom: Dimensions.PADDING_SIZE_SMALL,
              left: Dimensions.PADDING_SIZE_SMALL,
              top: Dimensions.PADDING_SIZE_SMALL,
              right: Dimensions.PADDING_SIZE_SMALL),
          child: Column(
            children: [
              bowlerIndicatorView(
                  latestEvaluationData: latestEvaluationData,
                  title: 'Fastball'),
              buildDividerView(0.5),
              bowlerIndicatorView(
                  latestEvaluationData: latestEvaluationData, title: 'Slider'),
              buildDividerView(0.5),
              bowlerIndicatorView(
                  latestEvaluationData: latestEvaluationData,
                  title: 'Curveball'),
              buildDividerView(0.5),
              bowlerIndicatorView(
                  latestEvaluationData: latestEvaluationData,
                  title: 'Changeup'),
              buildDividerView(0.5),
              otherIndicatorView(),
            ],
          ),
        ),
      ],
    );
  }

  measurablesFirstIndicator(
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
                    const EdgeInsets.only(right: Dimensions.PADDING_SIZE_SMALL),
                child: lhpButtonView()),
          ],
        ),
        Container(
          height: 350,
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColor.cardBgColor,
          ),
          margin: const EdgeInsets.only(
              bottom: Dimensions.PADDING_SIZE_SMALL,
              top: Dimensions.PADDING_SIZE_SMALL,
              right: Dimensions.PADDING_SIZE_SMALL),
          padding: const EdgeInsets.only(
              bottom: Dimensions.PADDING_SIZE_SMALL,
              left: Dimensions.PADDING_SIZE_SMALL,
              top: Dimensions.PADDING_SIZE_SMALL,
              right: Dimensions.PADDING_SIZE_SMALL),
          child: Column(
            children: [
              measurablesIndicatorView(
                  latestEvaluationData: latestEvaluationData,
                  title: 'Fastball'),
              buildDividerView(0.5),
              measurablesIndicatorView(
                  latestEvaluationData: latestEvaluationData, title: 'Slider'),
              buildDividerView(0.5),
              measurablesIndicatorView(
                  latestEvaluationData: latestEvaluationData,
                  title: 'Curveball'),
              buildDividerView(0.5),
              measurablesIndicatorView(
                  latestEvaluationData: latestEvaluationData,
                  title: 'Changeup'),
              buildDividerView(0.5),
              measurablesOtherIndicatorView(),
            ],
          ),
        ),
      ],
    );
  }

  measurablesSecondIndicator(
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
                    const EdgeInsets.only(right: Dimensions.PADDING_SIZE_SMALL),
                child: lhpButtonView()),
          ],
        ),
        Container(
          height: 350,
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColor.cardBgColor,
          ),
          margin: const EdgeInsets.only(
              bottom: Dimensions.PADDING_SIZE_SMALL,
              top: Dimensions.PADDING_SIZE_SMALL,
              right: Dimensions.PADDING_SIZE_SMALL),
          padding: const EdgeInsets.only(
              bottom: Dimensions.PADDING_SIZE_SMALL,
              left: Dimensions.PADDING_SIZE_SMALL,
              top: Dimensions.PADDING_SIZE_SMALL,
              right: Dimensions.PADDING_SIZE_SMALL),
          child: Column(
            children: [
              measurablesIndicatorView(
                  latestEvaluationData: latestEvaluationData,
                  title: 'Fastball'),
              buildDividerView(0.5),
              measurablesIndicatorView(
                  latestEvaluationData: latestEvaluationData, title: 'Slider'),
              buildDividerView(0.5),
              measurablesIndicatorView(
                  latestEvaluationData: latestEvaluationData,
                  title: 'Curveball'),
              buildDividerView(0.5),
              measurablesIndicatorView(
                  latestEvaluationData: latestEvaluationData,
                  title: 'Changeup'),
              buildDividerView(0.5),
              measurablesOtherIndicatorView(),
            ],
          ),
        ),
      ],
    );
  }

  measurablesView() {
    return SizedBox(
      height: 1050,
      width: double.infinity,
      child: PageView.builder(
        itemCount: latestEvaluationsDataList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var latestEvaluationData = latestEvaluationsDataList[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              latestMeasurablesFirstIndicatorView(latestEvaluationData),
              buildDividerView(0.5),
              latestMeasurablesSecondIndicatorView(latestEvaluationData),
            ],
          );
        },
      ),
    );
  }

  schedulesView() {
    return SizedBox(
      height: 500,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 482,
            child: ListView.builder(
              itemCount: latestScheduleDataList.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                var latestScheduleData = latestScheduleDataList[index];
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        willieMaysCircleAvtarView(
                            title: latestScheduleData.title!,
                            image: latestScheduleData.image!),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: Dimensions.PADDING_SIZE_SMALL,
                              right: Dimensions.PADDING_SIZE_LARGE),
                          child: lhpButtonView(),
                        )
                      ],
                    ),
                    Container(
                      height: 145,
                      margin: const EdgeInsets.only(
                          bottom: Dimensions.PADDING_SIZE_SMALL,
                          top: Dimensions.PADDING_SIZE_SMALL,
                          right: Dimensions.PADDING_SIZE_SMALL),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: AppColor.cardBgColor,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.20,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(4),
                                  bottomLeft: Radius.circular(4)),
                              color: AppColor.darkGray,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  latestScheduleData.startingDate!
                                      .substring(0, 2),
                                  style: robotoMedium.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18),
                                ),
                                Text(
                                  latestScheduleData.startingDate!.substring(2),
                                  style: robotoSmall,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      right: Dimensions.PADDING_SIZE_DEFAULT,
                                      left: Dimensions.PADDING_SIZE_DEFAULT),
                                  child: Divider(
                                      color: AppColor.grayText, thickness: 0.5),
                                ),
                                Text(
                                  latestScheduleData.endingDate!
                                      .substring(0, 2),
                                  style: robotoMedium.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18),
                                ),
                                Text(
                                  latestScheduleData.endingDate!.substring(2),
                                  style: robotoSmall,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                              right: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                            ),
                            child: SizedBox(
                             width: MediaQuery.of(context).size.width * 0.70,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(
                                      top: Dimensions.PADDING_SIZE_LARGE,
                                      bottom: Dimensions.PADDING_SIZE_SMALL,
                                    ),
                                    child: Text(latestScheduleData.gameTitle!,
                                        style: robotoDescription.copyWith(
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ),
                                  if (index == 1) ...<Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Field: ',
                                            style: robotoMedium.copyWith(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10)),
                                        Text('Major',
                                            style: robotoMedium.copyWith(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 11)),
                                        const SizedBox(width: 100),
                                        Text('The Diamond Quest',
                                            style: robotoMedium.copyWith(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10))
                                      ],
                                    ),
                                  ],
                                  Container(
                                      margin: const EdgeInsets.only(
                                          top:
                                              Dimensions.PADDING_SIZE_EXTRA_SMALL,
                                          bottom: Dimensions
                                              .PADDING_SIZE_EXTRA_SMALL),
                                      color: AppColor.greyDescription,
                                      height: 0.5),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(latestScheduleData.gameSubtitle!,
                                              style: robotoMedium.copyWith(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12)),
                                          const SizedBox(
                                            height: 3,
                                          ),
                                          Row(
                                            children: [
                                              Text('Philadelphia',
                                                  style: robotoMedium.copyWith(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 11)),
                                              Container(
                                                  margin: const EdgeInsets.only(
                                                      right: Dimensions
                                                          .PADDING_SIZE_OVER_SMALL,
                                                      left: Dimensions
                                                          .PADDING_SIZE_OVER_SMALL),
                                                  color: AppColor.grayText,
                                                  height: 8.4,
                                                  width: 1),
                                              Text('PA',
                                                  style: robotoMedium.copyWith(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 11)),
                                            ],
                                          ),
                                        ],
                                      ),

                                      TextButton(
                                          child: Text(latestScheduleData.type!,
                                              style:
                                                  const TextStyle(fontSize: 12)),
                                          style: ButtonStyle(
                                              alignment: Alignment.centerRight,
                                              padding:
                                                  MaterialStateProperty.all<EdgeInsets>(
                                                      const EdgeInsets.all(6)),
                                              foregroundColor:
                                                  MaterialStateProperty.all<Color>(
                                                      AppColor.grayText),
                                              shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(6.0),
                                                      side: const BorderSide(color: AppColor.grayText)))),
                                          onPressed: () => null),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        capIconAndNameView(
                            name: latestScheduleData.bottomName!,
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
                            latestScheduleData.bottomTime!,
                            style: robotoDescription.copyWith(
                                fontSize: Dimensions.fontSizeExtraSmall),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
          moreEvaluationButtonView('More Schedules'),
        ],
      ),
    );
  }

  visitView() {
    return SizedBox(
      height: 680,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 660,
            child: ListView.builder(
              itemCount: latestVisitDataList.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                var latestVisitData = latestVisitDataList[index];
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        willieMaysCircleAvtarView(
                            title: latestVisitData.title!,
                            image: latestVisitData.image!),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: Dimensions.PADDING_SIZE_SMALL,
                              right: Dimensions.PADDING_SIZE_LARGE),
                          child: lhpButtonView(),
                        )
                      ],
                    ),
                    Container(
                      height: 125,
                      margin: const EdgeInsets.only(
                          bottom: Dimensions.PADDING_SIZE_SMALL,
                          top: Dimensions.PADDING_SIZE_SMALL,
                          right: Dimensions.PADDING_SIZE_SMALL),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: AppColor.cardBgColor,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.20,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(4),
                                  bottomLeft: Radius.circular(4)),
                              color: AppColor.darkGray,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  latestVisitData.startingDate!
                                      .substring(0, 2),
                                  style: robotoMedium.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18),
                                ),
                                Text(
                                  latestVisitData.startingDate!.substring(2),
                                  style: robotoSmall,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      right: Dimensions.PADDING_SIZE_DEFAULT,
                                      left: Dimensions.PADDING_SIZE_DEFAULT),
                                  child: Divider(
                                      color: AppColor.grayText, thickness: 0.5),
                                ),
                                Text(
                                  latestVisitData.guests!
                                      .substring(0, 2),
                                  style: robotoMedium.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18),
                                ),
                                Text(
                                  latestVisitData.guests!.substring(2),
                                  style: robotoSmall,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                              right: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                    top: Dimensions.PADDING_SIZE_LARGE,
                                    bottom: Dimensions.PADDING_SIZE_SMALL,
                                  ),
                                  child: Text(latestVisitData.gameTitle!,
                                      style: robotoDescription.copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: AppColor.iconTextGray,
                                      )),
                                ),
                                Container(
                                    margin: const EdgeInsets.only(
                                        bottom: Dimensions
                                            .PADDING_SIZE_EXTRA_SMALL),
                                    color: AppColor.greyDescription,
                                    width:
                                    MediaQuery.of(context).size.width / 1.4,
                                    height: 0.5),
                                SizedBox(
                                  height: 50,
                                  width: 280,
                                  child: Text(latestVisitData.gameSubtitle!,
                                      style: robotoMedium.copyWith(
                                          fontWeight: FontWeight.w400,
                                          color: AppColor.greyDescription,
                                       height: 1.2,
                                          fontSize: 12),maxLines: 3,overflow: TextOverflow.ellipsis,),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        capIconAndNameView(
                            name: latestVisitData.bottomName!,
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
                            latestVisitData.bottomTime!,
                            style: robotoDescription.copyWith(
                                fontSize: Dimensions.fontSizeExtraSmall),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
          moreEvaluationButtonView('More Visits'),
        ],
      ),
    );
  }
}
