import 'package:flutter/material.dart';
import 'package:guardiian/screens/home_screen.dart';
import 'package:guardiian/widgets/add_mainnet_container.dart';

class AddMainnetPage extends StatefulWidget {
  const AddMainnetPage({super.key});

  @override
  State<AddMainnetPage> createState() => _AddMainnetPageState();
}

class _AddMainnetPageState extends State<AddMainnetPage> {
  final mainnetNames = [
    'EQE',
    'BRISE',
    'Bitcoin',
    'Doge',
    'EQE',
    'BRISE',
    'Bitcoin',
    'Doge',
    'EQE',
    'BRISE',
    'Bitcoin',
    'Doge',
    'EQE',
    'BRISE',
    'Bitcoin',
    'Doge'
  ];
  final mainnetImages = [
    'assets/icons/eqe.png',
    'assets/icons/brise.png',
    'assets/icons/bitcoin.png',
    'assets/icons/doge.png',
    'assets/icons/eqe.png',
    'assets/icons/brise.png',
    'assets/icons/bitcoin.png',
    'assets/icons/doge.png',
    'assets/icons/eqe.png',
    'assets/icons/brise.png',
    'assets/icons/bitcoin.png',
    'assets/icons/doge.png',
    'assets/icons/eqe.png',
    'assets/icons/brise.png',
    'assets/icons/bitcoin.png',
    'assets/icons/doge.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
              width: double.infinity,
              child: Image.asset(
                'assets/images/appbar_img.png',
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 25),
            const Text(
              'Add Mainnet',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                'GUARDIIAN Supports 90 Mainnets',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              height: 40,
              child: TextField(
                textInputAction: TextInputAction.search,
                style: const TextStyle(fontSize: 15),
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide:
                        const BorderSide(color: Color(0xFF0000FE), width: 0.7),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide:
                        const BorderSide(color: Color(0xFF0000FE), width: 0.7),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide:
                        const BorderSide(color: Color(0xFF0000FE), width: 0.7),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  hintText: 'Search for Mainnet',
                  hintStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text('Top',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: 16,
                itemBuilder: (context, index) {
                  return AddMainnetContainer(
                    mainnetName: mainnetNames[index],
                    mainnetImg: mainnetImages[index],
                  );
                },
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (context) {
                    return WalletHomeScreen(
                        // isBottomSheetVisible: true,
                        );
                  }), (route) => true);
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: const Color(0xFF0000FE),
                ),
                child: const Text(
                  'Generate',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
