import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 555) {
          // Tela é 555px ou menor
          return AppBar(
            elevation: 2.0,
            backgroundColor: Theme.of(context).colorScheme.surface,
            shadowColor: Theme.of(context).colorScheme.shadow,
            title: TextButton(
              onPressed: () {},
              child: Text(
                'Kart-TI',
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ),
            centerTitle: false,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(1.0),
              child: Container(
                color: Colors.grey,
                height: 1.0,
              ),
            ),
            actions: [
              PopupMenuButton<String>(
                onSelected: (value) {
                  // Handle menu item selection
                },
                itemBuilder: (BuildContext context) {
                  return [
                    PopupMenuItem(
                      value: 'resultados',
                      child: Text('Resultados'),
                    ),
                    PopupMenuItem(
                      value: 'classificacao',
                      child: Text('Classificação'),
                    ),
                    PopupMenuItem(
                      value: 'pistas',
                      child: Text('Pistas'),
                    ),
                    PopupMenuItem(
                      value: 'sair',
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Sair'),
                          Icon(Icons.exit_to_app),
                        ],
                      ),
                    ),
                  ];
                },
              ),
            ],
          );
        } else {
          // Tela é maior que 555px
          return AppBar(
            elevation: 2.0,
            backgroundColor: Theme.of(context).colorScheme.surface,
            shadowColor: Theme.of(context).colorScheme.shadow,
            title: TextButton(
              onPressed: () {},
              child: Text(
                'Kart-TI',
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ),
            centerTitle: false,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(1.0),
              child: Container(
                color: Colors.grey,
                height: 1.0,
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Resultados',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Classificação',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Pistas',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              FilledButton(
                onPressed: () {},
                child: Text(
                  'Sair',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
              ),
              const SizedBox(width: 16),
            ],
          );
        }
      },
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
