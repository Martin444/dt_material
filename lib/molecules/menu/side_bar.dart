import 'package:dt_material/dt_material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SideBarMenu extends StatelessWidget {
  final List<ItemDrawMenu> menuItems;
  final VoidCallback onLogout;
  final String imageUrl;
  final String imageISOUrl;

  const SideBarMenu({
    super.key,
    required this.menuItems,
    required this.onLogout,
    required this.imageUrl,
    required this.imageISOUrl,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      const double minWidthForText = 180;
      final bool showminLogo = constraints.maxWidth >= minWidthForText;

      return Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: !showminLogo ? CrossAxisAlignment.center : CrossAxisAlignment.start,
          children: [
            // Imagen superior
            Image.network(
              !showminLogo ? imageISOUrl : imageUrl,
              height: 60,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 32),
            // Items del menú
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: menuItems,
              ),
            ),
            // Botón cerrar sesión abajo
            ItemDrawMenu(
              icon: DTIcons.iconBack,
              label: 'Cerrar sesión',
              isSelected: false,
              onRoute: onLogout,
            ),
          ],
        ),
      );
    });
  }
}
