import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Scene _scene;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Cube(
          onSceneCreated: (Scene scene) {
            _scene = scene;
            scene.camera.position.z = 2;
            scene.world.add(
              Object(
                fileName: 'assets/Corveta_Sing.obj',
                scale: Vector3(1.0, 1.0, 1.0),
                backfaceCulling: true,
              ),
            );
          },
        ),
      ),
    );
  }
}
