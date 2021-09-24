library github_loading;

import 'package:flutter/cupertino.dart';

class GithubLoading extends StatelessWidget {
  final double loadingWidth;
  final double loadingHeight;

  final Widget tips;

  final double gap;

  const GithubLoading({
    Key? key,
    this.loadingWidth = 120,
    this.loadingHeight = 120,
    this.tips = const CupertinoActivityIndicator(),
    this.gap = 4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset(
        "assets/mona-loading-default.gif",
        width: loadingWidth,
        height: loadingHeight,
        package: 'github_loading',
      ),
      SizedBox(
        height: gap,
      ),
      tips,
    ]);
  }
}
