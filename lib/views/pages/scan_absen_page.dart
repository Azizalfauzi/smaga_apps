part of 'pages.dart';

class ScanAbsenPage extends StatefulWidget {
  const ScanAbsenPage({Key? key}) : super(key: key);

  @override
  State<ScanAbsenPage> createState() => _ScanAbsenPageState();
}

class _ScanAbsenPageState extends State<ScanAbsenPage> {
  final qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  Barcode? barcode;
  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  void reassemble() async {
    super.reassemble();
    if (Platform.isAndroid) {
      await controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          buildQrView(context),
          Positioned(
            bottom: 100,
            child: buildResult(),
          ),
          Positioned(
            top: 20,
            child: buildControllButton(),
          ),
        ],
      ),
    );
  }

  Widget buildControllButton() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () async {
                await controller?.toggleFlash();
                setState(() {});
              },
              icon: FutureBuilder<bool?>(
                future: controller?.getFlashStatus(),
                builder: (context, snapshot) {
                  if (snapshot.data != null) {
                    return Icon(
                        snapshot.data! ? Icons.flash_on : Icons.flash_off);
                  } else {
                    return Container();
                  }
                },
              ),
            ),
            IconButton(
              onPressed: () async {
                await controller?.flipCamera();
                setState(() {});
              },
              icon: FutureBuilder(
                future: controller?.getCameraInfo(),
                builder: (context, snapshot) {
                  if (snapshot.data != null) {
                    return const Icon(Icons.switch_camera);
                  } else {
                    return Container();
                  }
                },
              ),
            ),
          ],
        ),
      );
  Widget buildResult() => Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
        child: Text(
          barcode != null ? 'Result: ${barcode!.code}' : 'Scan code',
          maxLines: 3,
        ),
      );
  Widget buildQrView(BuildContext context) => QRView(
        key: qrKey,
        onQRViewCreated: onQrViewCreated,
        overlay: QrScannerOverlayShape(
          borderColor: Colors.blue,
          borderWidth: 10,
          borderLength: 20,
          borderRadius: 10,
          cutOutSize: MediaQuery.of(context).size.width * 0.8,
        ),
      );
  void onQrViewCreated(QRViewController controller) {
    setState(() => this.controller = controller);
    controller.scannedDataStream
        .listen((barcode) => setState(() => this.barcode = barcode));
  }
}

// part of 'pages.dart';

// class ScanAbsenPage extends StatefulWidget {
//   const ScanAbsenPage({Key? key}) : super(key: key);

//   @override
//   State<ScanAbsenPage> createState() => _ScanAbsenPageState();
// }

// class _ScanAbsenPageState extends State<ScanAbsenPage> {
//   final controller = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               QrImage(
//                 data: controller.text,
//                 size: 200,
//                 backgroundColor: Colors.white,
//               ),
//               const SizedBox(
//                 height: 40,
//               ),
//               buildTextField(context)
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildTextField(BuildContext context) => Padding(
//         padding: const EdgeInsets.only(left: 16, right: 16),
//         child: TextField(
//           controller: controller,
//           style: const TextStyle(
//             color: Colors.black,
//             fontWeight: FontWeight.bold,
//             fontSize: 20,
//           ),
//           decoration: InputDecoration(
//             hintText: 'Enter Data Here !',
//             hintStyle: const TextStyle(
//               color: Colors.grey,
//             ),
//             enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8),
//               borderSide: const BorderSide(color: Colors.grey),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(8),
//               borderSide: const BorderSide(color: Colors.blue),
//             ),
//             suffixIcon: IconButton(
//               color: Colors.greenAccent,
//               onPressed: () => setState(() {}),
//               icon: const Icon(Icons.done),
//             ),
//           ),
//         ),
//       );
// }

