import 'package:flutter/material.dart';
import 'package:kart_ti_flutter/ui/core/app_bar_custom.dart';
import 'package:kart_ti_flutter/ui/home/home_viewmodel.dart';
import 'package:kart_ti_flutter/ui/home/widget/card_home.dart';

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
                              child: CardHome(corrida: corrida),
                            );
                          }).toList(),
                        );
                      },
                    ),
                  );
                },
              ),

              // ListenableBuilder(
              //   listenable: widget.viewModel.loadCorridas,
              //   builder: (context, _) {
              //     if (widget.viewModel.loadCorridas.running) {
              //       return const CircularProgressIndicator();
              //     }

              //     return ListView.builder(
              //       shrinkWrap: true,
              //       itemCount: 1, // Como você tem apenas uma linha de corridas
              //       itemBuilder: (context, _) {
              //         final corridas = widget.viewModel.corridas;

              //         // Função para construir a tabela de cada corrida
              //         Widget buildCorridaTable(Corrida corrida) {
              //           final resultados = corrida.resultados;
              //           return Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Text(
              //                 'Corrida', // Pode adicionar o nome ou título da corrida aqui
              //                 style: Theme.of(context).textTheme.titleLarge,
              //               ),
              //               Table(
              //                 border: TableBorder.all(),
              //                 children: [
              //                   TableRow(
              //                     children: [
              //                       Padding(
              //                         padding: EdgeInsets.all(8.0),
              //                         child: Text('Posição'),
              //                       ),
              //                       Padding(
              //                         padding: EdgeInsets.all(8.0),
              //                         child: Text('Piloto'),
              //                       ),
              //                       Padding(
              //                         padding: EdgeInsets.all(8.0),
              //                         child: Text('Tempo'),
              //                       ),
              //                     ],
              //                   ),
              //                   ...resultados!.map((resultado) {
              //                     return TableRow(
              //                       children: [
              //                         Padding(
              //                           padding: EdgeInsets.all(8.0),
              //                           child: Text(resultado.posicao.toString()),
              //                         ),
              //                         Padding(
              //                           padding: EdgeInsets.all(8.0),
              //                           child: Text(resultado.piloto.nome),
              //                         ),
              //                         Padding(
              //                           padding: EdgeInsets.all(8.0),
              //                           child: Text(resultado.melhorVolta),
              //                         ),
              //                       ],
              //                     );
              //                   }),
              //                 ],
              //               ),
              //             ],
              //           );
              //         }

              //         return Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //           children: [
              //             Expanded(child: buildCorridaTable(corridas[0])),
              //             Expanded(child: buildCorridaTable(corridas[1])),
              //             Expanded(child: buildCorridaTable(corridas[2])),
              //           ],
              //         );
              //       },
              //     );
              //   },
              // ),
              // ListenableBuilder(
              //   listenable: widget.viewModel,
              //   builder: (context, _) {
              //     return Expanded(
              //       child: ListView.builder(
              //         itemCount: widget.viewModel.temporadaPilotosPontos.length,
              //         itemBuilder: (context, index) {
              //           final temporadaPiloto =
              //               widget.viewModel.temporadaPilotosPontos[index];
              //           return ListTile(
              //             title: Text(
              //               '${temporadaPiloto.piloto.nome} - Pontos: ${temporadaPiloto.pontos}',
              //             ),
              //           );
              //         },
              //       ),
              //     );
              //   },
              // )
            ],
          ),
        ),
      ),
    );
  }
}
