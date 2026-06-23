import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../app/assets_path.dart';
import 'circle_icon_button.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SvgPicture.asset(AssetsPath.logoNavSvg),
      actions: [
        CircleIconButton(icon: CupertinoIcons.person, onTap: () {},),
        const SizedBox(width: 8,),
        CircleIconButton(icon: CupertinoIcons.phone, onTap: () {},),
        const SizedBox(width: 8,),
        CircleIconButton(icon: CupertinoIcons.bell_solid, onTap: () {},),
        const SizedBox(width: 8,),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}