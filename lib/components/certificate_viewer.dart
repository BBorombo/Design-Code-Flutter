import 'package:flutter/material.dart';

class CertificateViewer extends StatefulWidget {
  @override
  _CertificateViewerState createState() => _CertificateViewerState();
}

class _CertificateViewerState extends State<CertificateViewer> {
  final List<String> certificatePaths = [
    'assets/certificates/certificate-01.png',
    'assets/certificates/certificate-02.png',
    'assets/certificates/certificate-03.png',
  ];

  Widget certificateViewer;

  @override
  void initState() {
    super.initState();
    List<Widget> imageChildren = [];

    certificatePaths.reversed.toList().asMap().forEach((index, certificate) {
      imageChildren.add(
        Image.asset(
          certificate,
          alignment: Alignment.center,
          fit: BoxFit.cover,
        ),
      );
    });

    certificateViewer = Stack(
      children: imageChildren,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: certificateViewer,
    );
  }
}
