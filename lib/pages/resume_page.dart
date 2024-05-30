import 'package:flutter/material.dart';
import 'package:portfolio/myConst.dart';
// import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ResumePage extends StatefulWidget {
  const ResumePage({super.key});

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: MyConst.scaffoldBg,
        // appBar: AppBar(
        //   backgroundColor: MyConst.bgLight1,
        //   leading: IconButton(
        //     onPressed: () => Navigator.pop(context),
        //     icon: Icon(
        //       Icons.arrow_back_ios,
        //       color: MyConst.whitePrimary,
        //     ),
        //   ),
        // ),
        // body: SfPdfViewer.asset('assets/srisudhan_cv.pdf', canShowHyperlinkDialog: true, enableHyperlinkNavigation: true));
    );}
}
