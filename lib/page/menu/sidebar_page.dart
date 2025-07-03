import 'package:dt_material/molecules/menu/side_bar.dart';
import 'package:flutter/material.dart';

class SideBarPage extends StatelessWidget {
  final Widget child;
  final SideBarMenu menu;

  const SideBarPage({
    super.key,
    required this.child,
    required this.menu,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      final isWeb = constrains.maxWidth >= 1024;
      final isTablet = constrains.maxWidth >= 600 && constrains.maxWidth < 1024;
      return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Sidebar menu (30%)
          if (isWeb || isTablet)
            Visibility(
              visible: isWeb || isTablet,
              child: Expanded(
                flex: isTablet ? 0 : 1,
                // Limita el ancho máximo a 100 si es tablet
                child: isTablet
                    ? ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 80),
                        child: menu,
                      )
                    : menu,
              ),
            ),
          // Main content (70%)
          Expanded(
            flex: 5,
            child: child,
          ),
        ],
      );
    });
  }
}
