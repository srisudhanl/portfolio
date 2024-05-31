import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';
import 'package:portfolio/myConst.dart';

class ResumePage extends StatefulWidget {
  const ResumePage({super.key});

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  @override
  Widget build(BuildContext context) {
    final pdfPinchController = PdfControllerPinch(
      document: PdfDocument.openAsset('assets/srisudhan_cv.pdf'),
    );
    return Scaffold(
        backgroundColor: MyConst.scaffoldBg,
        appBar: AppBar(
          backgroundColor: MyConst.bgLight1,
          title: const Text("Resume",style: TextStyle(fontWeight: FontWeight.bold,color: MyConst.whitePrimary),),
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: MyConst.whitePrimary,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: PdfViewPinch(controller: pdfPinchController),
        ));
  }
}
