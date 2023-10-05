import 'package:flutter/material.dart';
import 'package:guardiian/screens/discover_page.dart';
import 'package:guardiian/screens/nft_page.dart';
import 'package:guardiian/screens/swap_page.dart';
import 'package:guardiian/widgets/home_widgets.dart';

import '../constants/colors.dart';
import '../constants/routes.dart';
import '../widgets/menu.dart';

// ignore: must_be_immutable
class WalletHomeScreen extends StatefulWidget {
  WalletHomeScreen({Key? key, this.isBottomSheetVisible = false})
      : super(key: key);

  bool isBottomSheetVisible;

  @override
  State<WalletHomeScreen> createState() => _WalletHomeScreenState();
}

class _WalletHomeScreenState extends State<WalletHomeScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabCont;

  int currenIndex = 0;

  @override
  void initState() {
    _tabCont = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabCont.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        setState(() {
          currenIndex = 0;
        });
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor:
            widget.isBottomSheetVisible ? Colors.grey : Colors.white,
        bottomSheet: widget.isBottomSheetVisible
            ? showSheet(context, () {
                setState(() {
                  widget.isBottomSheetVisible = false;
                });
              })
            : null,
        body: currenIndex == 0
            ? NestedScrollView(
                headerSliverBuilder: (_, __) {
                  return [
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.08,
                        width: double.infinity,
                        child: Image.asset(
                          'assets/images/appbar_img.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SliverAppBar(
                      expandedHeight: 250,
                      backgroundColor: widget.isBottomSheetVisible
                          ? Colors.grey
                          : Colors.white,
                      scrolledUnderElevation: 0.0,
                      elevation: 0,
                      foregroundColor: prim,
                      actions: [
                        IconButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, routeNotificationPage);
                            },
                            icon: const Icon(
                              Icons.notifications,
                              color: prim,
                            ))
                      ],
                      flexibleSpace: flexibleSpace(context, () {
                        setState(() {
                          currenIndex = 1;
                        });
                      }),
                      bottom: TabBar(
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorColor: prim,
                        labelColor: prim,
                        labelStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                        unselectedLabelStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                        controller: _tabCont,
                        tabs: const [
                          Text('Tokens'),
                          Text('NFT'),
                        ],
                      ),
                    ),
                  ];
                },
                body: TabBarView(
                  controller: _tabCont,
                  children: [
                    ListView.builder(
                      itemBuilder: (context, index) => tokenContainer(),
                      itemCount: 10,
                      shrinkWrap: true,
                    ),
                    Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Collectibles will be here',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        RichText(
                          text: const TextSpan(
                            text: 'Receive',
                            style: TextStyle(
                                color: prim,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        RichText(
                          text: const TextSpan(
                            text: 'Open on Opensea.io',
                            style: TextStyle(
                                color: prim,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    )),
                  ],
                ),
              )
            : currenIndex == 1
                ? const SwapPage()
                : currenIndex == 3
                    ? const DiscoverPage()
                    : const NftPage(),
        drawer: drawer(context),
        bottomNavigationBar: widget.isBottomSheetVisible
            ? null
            : nevBar(
                (value) {
                  setState(() {
                    currenIndex = value;
                  });
                },
                currenIndex,
              ),
      ),
    );
  }
}
