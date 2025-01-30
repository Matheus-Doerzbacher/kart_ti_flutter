import 'package:flutter/material.dart';
import 'package:kart_ti_flutter/ui/home/home_viewmodel.dart';

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
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        children: [
          ListenableBuilder(
            listenable: widget.viewModel.loadCorridas,
            builder: (context, _) {
              if (widget.viewModel.loadCorridas.running) {
                return const CircularProgressIndicator();
              }
              return Expanded(
                child: ListView.builder(
                  itemCount: widget.viewModel.corridas.length,
                  itemBuilder: (context, index) {
                    final corrida = widget.viewModel.corridas[index];
                    return ListTile(
                      title: Text(corrida.pilotoGanhador?.nome ?? ''),
                      subtitle: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                corrida.resultados?[0].posicao.toString() ?? '',
                              ),
                              Text(' - '),
                              Text(
                                corrida.resultados?[0].piloto.nome ?? '',
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                corrida.resultados?[1].posicao.toString() ?? '',
                              ),
                              Text(' - '),
                              Text(
                                corrida.resultados?[1].piloto.nome ?? '',
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                corrida.resultados?[2].posicao.toString() ?? '',
                              ),
                              Text(' - '),
                              Text(
                                corrida.resultados?[2].piloto.nome ?? '',
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              );
            },
          ),
          ListenableBuilder(
            listenable: widget.viewModel,
            builder: (context, _) {
              return Expanded(
                child: ListView.builder(
                  itemCount: widget.viewModel.temporadaPilotosPontos.length,
                  itemBuilder: (context, index) {
                    final temporadaPiloto =
                        widget.viewModel.temporadaPilotosPontos[index];
                    return ListTile(
                      title: Text(
                        '${temporadaPiloto.piloto.nome} - Pontos: ${temporadaPiloto.pontos}',
                      ),
                    );
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
