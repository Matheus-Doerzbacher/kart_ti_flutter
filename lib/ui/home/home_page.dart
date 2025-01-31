import 'package:flutter/material.dart';
import 'package:kart_ti_flutter/ui/core/app_bar_custom.dart';
import 'package:kart_ti_flutter/ui/home/home_viewmodel.dart';
import 'package:kart_ti_flutter/ui/home/widget/card_corrida_home.dart';
import 'package:kart_ti_flutter/ui/home/widget/card_resultados_home.dart';

class HomePage extends StatefulWidget {
  final HomeViewModel viewModel;

  const HomePage({
    super.key,
    required this.viewModel,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Corridas Recentes da Temporada',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        foregroundColor:
                            Theme.of(context).colorScheme.secondary),
                    onPressed: () {},
                    child: Text(
                      'Ver Todas',
                    ),
                  ),
                ],
              ),
              ListenableBuilder(
                listenable: widget.viewModel.loadCorridas,
                builder: (context, _) {
                  if (widget.viewModel.loadCorridas.running) {
                    return Center(child: const CircularProgressIndicator());
                  }

                  final corridas = widget.viewModel.corridas;

                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        const double cardMinWidth = 400;
                        const double spacing = 20;
                        const int maxColumns = 3;

                        // Calcula o número de colunas baseado na largura disponível, sem ultrapassar o máximo definido
                        int columns =
                            (constraints.maxWidth / (cardMinWidth + spacing))
                                .floor();
                        columns = columns.clamp(1, maxColumns);

                        // Ajusta a largura dos cards para preencher exatamente a tela quando atingir o máximo
                        double cardWidth =
                            (constraints.maxWidth - ((columns - 1) * spacing)) /
                                columns;

                        return Wrap(
                          spacing: spacing,
                          runSpacing: spacing,
                          alignment: WrapAlignment.center,
                          children: corridas.map((corrida) {
                            return SizedBox(
                              width: cardWidth,
                              child: CardCorridaHome(corrida: corrida),
                            );
                          }).toList(),
                        );
                      },
                    ),
                  );
                },
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Classificação de Pilotos',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Theme.of(context).colorScheme.secondary,
                    ),
                    onPressed: () {},
                    child: Text('Ver Todas'),
                  )
                ],
              ),
              ListenableBuilder(
                listenable: widget.viewModel.loadClasificacao,
                builder: (context, _) {
                  if (widget.viewModel.loadClasificacao.running) {
                    return Center(child: const CircularProgressIndicator());
                  }

                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        const double cardMinWidth = 400;
                        const double spacing = 20;
                        const int maxColumns = 2;

                        // Calcula o número de colunas baseado na largura disponível, sem ultrapassar o máximo definido
                        int columns =
                            (constraints.maxWidth / (cardMinWidth + spacing))
                                .floor();
                        columns = columns.clamp(1, maxColumns);

                        // Ajusta a largura dos cards para preencher exatamente a tela quando atingir o máximo
                        double cardWidth =
                            (constraints.maxWidth - ((columns - 1) * spacing)) /
                                columns;

                        return Wrap(
                            spacing: spacing,
                            runSpacing: spacing,
                            alignment: WrapAlignment.center,
                            children: [
                              SizedBox(
                                width: cardWidth,
                                child: CardResultadosHome(
                                  resultadoPiloto:
                                      widget.viewModel.temporadaPilotosPontos,
                                ),
                              ),
                              SizedBox(
                                width: cardWidth,
                                child: CardResultadosHome(
                                  resultadoPiloto:
                                      widget.viewModel.temporadaPilotosVitorias,
                                  isVitorias: true,
                                ),
                              ),
                            ]);
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
