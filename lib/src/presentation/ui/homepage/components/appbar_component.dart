import 'package:flutter/material.dart';
import '../../../../../../gen/assets.gen.dart';
import '../../../theme/color_theme.dart';

class MobileAppBarComponent extends StatelessWidget
    implements PreferredSizeWidget {
  MobileAppBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ThemeColorName.backgroundColor,
      elevation: 0,
      centerTitle: false,
      leading: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Assets.images.logo.image(),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Hero(
              //     tag: "logo_animation",
              //     transitionOnUserGestures: false,
              //     child: Assets.images.icLogo.image(height: 26)),
              // const SizedBox(
              //   width: 5,
              // ),
              // Assets.images.logoLuminae.image(height: 20)
            ],
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Row(
            children: [
              // Assets.images.icCart.svg(
              //   colorFilter:
              //       const ColorFilter.mode(ColorName.black, BlendMode.srcIn),
              // ),
              // const SizedBox(width: 4),
              // Container(
              //   height: 24,
              //   width: 24,
              //   alignment: Alignment.center,
              //   decoration: const BoxDecoration(
              //     color: ColorName.colorGreen,
              //     shape: BoxShape.circle,
              //   ),
              //   child: Text(
              //     "3",
              //     style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              //           color: ThemeColorName.background,
              //         ),
              //   ),
              // ),
            ],
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
