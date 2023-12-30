import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

import 'item.dart';

Item item = Item();

class ModelViewerPage extends StatelessWidget {
  const ModelViewerPage({super.key, this.link});
  final String? link;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black26,
          elevation: 0,
          title: const Text("Model Viewer")),
      body: ModelViewer(
        backgroundColor: Colors.white,
        src: link!,
        alt: "A 3D model",
        ar: true,
        autoRotate: true,
        cameraControls: true,
        // cameraTarget: "1.5m",
      ),
    );
  }
}
