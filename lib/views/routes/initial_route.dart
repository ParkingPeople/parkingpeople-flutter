import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:parking_people_flutter/gen/assets.gen.dart';
import 'package:parking_people_flutter/gen/colors.gen.dart';
import 'package:parking_people_flutter/views/routes/routes.dart';

part 'initial_route.g.dart';

@hwidget
Widget initialRouteWidget(BuildContext context) {
  WidgetsBinding.instance.addPostFrameCallback((_) async {
    FlutterNativeSplash.remove();
    await Future.delayed(const Duration(
      seconds: 2,
    ));
    Navigator.of(context).pushReplacementNamed(Routes.intro);
  });

  return DecoratedBox(
    decoration: const BoxDecoration(
      color: ColorName.blue,
    ),
    child: SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Assets.images.splashLogo.image(),
        ),
      ),
    ),
  );
}
