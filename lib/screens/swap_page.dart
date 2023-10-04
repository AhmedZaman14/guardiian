import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/routes.dart';

class SwapPage extends StatefulWidget {
  const SwapPage({super.key});

  @override
  State<SwapPage> createState() => _SwapPageState();
}

class _SwapPageState extends State<SwapPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabCont;

  @override
  void initState() {
    _tabCont = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
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
              backgroundColor: Colors.white,
              pinned: true,
              scrolledUnderElevation: 0.0,
              elevation: 0,
              foregroundColor: prim,
              leading: IconButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, routeWalletHomeScreen, (route) => false);
                  },
                  icon: const Icon(
                    Icons.arrow_back_outlined,
                    color: prim,
                  )),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, routeNotificationPage);
                    },
                    icon: const Icon(
                      Icons.notifications,
                      color: prim,
                    ))
              ],
              // flexibleSpace: flexibleSpace(context),
              bottom: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: prim,
                labelColor: prim,
                labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                unselectedLabelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                controller: _tabCont,
                tabs: const [
                  Text('Swap'),
                  Text('Exchange'),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabCont,
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
