import 'package:flutter/material.dart';
import 'package:guardiian/widgets/home_widgets.dart';

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

  @override
  void initState() {
    _tabCont = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.isBottomSheetVisible ? Colors.grey : Colors.white,
      bottomSheet: widget.isBottomSheetVisible
          ? showSheet(context, () {
              setState(() {
                widget.isBottomSheetVisible = false;
              });
            })
          : null,
      body: homeWidgets(context, widget.isBottomSheetVisible, _tabCont),
      bottomNavigationBar: widget.isBottomSheetVisible ? null : nevBar(),
    );
  }
}
