import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/routes.dart';
import '../widgets/back_button.dart';
import '../widgets/swap_widgets.dart';

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
              collapsedHeight: 36,
              toolbarHeight: 35,
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
            swapBody(context),
            Container(),
          ],
        ),
      ),
    );
  }
}

Widget swapBody(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      children: [
        swapContainer('EQE', 'assets/icons/eqe.png'),
        SizedBox(
          height: 40,
          child: Stack(
            children: [
              const Center(child: Divider()),
              Positioned(
                right: 20,
                top: 5,
                bottom: 5,
                child: CircularButton(
                  color: Colors.white,
                  icon: Icons.swap_vert,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
        swapContainer('SOL', 'assets/icons/bitcoin.png'),
        const Divider(),
        const SizedBox(
          height: 10,
        ),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            percentContainer('25%', () {}),
            percentContainer('50%', () {}),
            percentContainer('75%', () {}),
            percentContainer('100%', () {}),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            text: '1 EQE ≈ ',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: '18.95 SOL',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.75,
          child: ElevatedButton(
            onPressed: () {
              // Navigator.pushNamed(context, routeBuyingMethodPage);
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 34),
              elevation: 0,
              backgroundColor: const Color(0xFF0000FE),
            ),
            child: const Text(
              'Swap',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ),
        )
      ],
    ),
  );
}
