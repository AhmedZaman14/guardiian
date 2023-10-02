import 'package:flutter/material.dart';

class AddMainnetContainer extends StatefulWidget {
  const AddMainnetContainer({
    super.key,
    required this.mainnetName,
    required this.mainnetImg,
  });
  final String mainnetName;
  final String mainnetImg;

  @override
  State<AddMainnetContainer> createState() => _AddMainnetContainerState();
}

class _AddMainnetContainerState extends State<AddMainnetContainer> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? Colors.blue : Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            if (isSelected)
              Positioned(
                top: -8.0,
                right: -8.0,
                child: Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: const Icon(
                    Icons.verified,
                    color: Color(0xFF0000FE),
                    size: 20,
                  ),
                ),
              ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Image.asset(
                    widget.mainnetImg,
                    height: 35,
                    width: 35,
                  ),
                ),
                Expanded(
                  child: Text(
                    widget.mainnetName,
                    maxLines: 1,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
