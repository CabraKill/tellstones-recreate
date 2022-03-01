import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:tellstones_recreate/presentation/home/home_page.dart';
import 'package:tellstones_recreate/utils/colors.dart';

void main() {
  runApp(MaterialApp(
    builder: (context, child) => ResponsiveWrapper.builder(child,
        maxWidth: 1200,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(480, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
        background: Container(color: AppColors.backgroundForLib)),
    initialRoute: '/',
    routes: {
      '/': (context) => const HomePage(),
    },
  ));
}
