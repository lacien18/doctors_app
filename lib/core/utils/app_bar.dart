import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String subtitle;
  final Widget? trailing;
  final Color backgroundColor;

  const MyAppBar({
    Key? key,
    this.title = 'title appbar',
    this.subtitle = 'subtitle appbar',
    this.trailing,
    this.backgroundColor = Colors.transparent,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    final titleWidget = Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          softWrap: false,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        Text(
          subtitle,
          softWrap: false,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      ],
    );

    final toolbar = NavigationToolbar(
      centerMiddle: false,
      middleSpacing: 20.0,
      middle: titleWidget,
      trailing: trailing,
    );

    return Align(
      alignment: Alignment.topCenter,
      child: SafeArea(
        bottom: false,
        child: toolbar,
      ),
    );
  }
}
