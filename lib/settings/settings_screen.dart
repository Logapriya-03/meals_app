import 'package:flutter/material.dart';
import 'package:meals_app/settings/settings_list.dart';
import 'package:meals_app/settings/styled_list.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Color color1 = const Color.fromRGBO(185, 33, 124, 1);
    Color color2 = const Color.fromRGBO(191, 48, 168, 1);
    Color color4 = const Color.fromRGBO(77, 98, 172, 1);

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [color1, color2, color4],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 150.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: StyledText(
                    title,
                    color: Colors.white,
                  ),
                  centerTitle: true,
                  background: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [color1, color2, color4],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return child;
                  },
                  childCount: 1,
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
