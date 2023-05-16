import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu_items/menu_items.dart';
import 'package:widgets_app/presentation/screens/Card/Card_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: appMenuItem.length,
        itemBuilder: (context, index) {
          final MenuItem = appMenuItem[index];
          return _CustomListTitle(menuItem: MenuItem);
        });
  }
}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({
    super.key,
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(
        menuItem.icon,
        color: colors.primary,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: colors.primary,
      ),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: () {
        //ONE WAY 4 NAVIGATE SCREENS FLUTTER
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const CardScreen(),
          ),
        );
       // Navigator.push(context, );

      },
    );
  }
}
