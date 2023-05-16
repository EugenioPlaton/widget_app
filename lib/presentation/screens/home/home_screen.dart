import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu_items/menu_items.dart';


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
class _HomeView extends StatelessWidget{
  const _HomeView();

  @override
  Widget build(BuildContext context){

    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: appMenuItem.length,
        itemBuilder: (context, index){
          final MenuItem  = appMenuItem[index];
          return _CustomListTitle(MenuItem1: MenuItem);
        }
    );
  }

}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({
    super.key,
    required this.MenuItem1,
  });

  final MenuItem MenuItem1;

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(MenuItem1.icon, color: colors.primary,),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary,),
      title: Text(MenuItem1.title),
      subtitle: Text(MenuItem1.subTitle),
      onTap: (){
      //TODO: navegar a otra pantalla
      },
    );
  }
}
