import 'package:flutter/material.dart';
import 'package:kart_ti_flutter/ui/home/home_viewmodel.dart';
import 'package:intl/intl.dart';

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
            listenable: widget.viewModel.load,
            builder: (context, _) {
              if (widget.viewModel.load.running) {
                return const CircularProgressIndicator();
              }
              return Expanded(
                child: ListView.builder(
                  itemCount: widget.viewModel.corridas.length,
                  itemBuilder: (context, index) {
                    final corrida = widget.viewModel.corridas[index];
                    return ListTile(
                      title: Text(corrida.pilotoGanhador?.nome ?? ''),
                      subtitle: Text(
                        DateFormat('dd/MM/yyyy').format(corrida.data),
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
                  itemCount: widget.viewModel.temporadaPilotos.length,
                  itemBuilder: (context, index) {
                    final temporadaPiloto =
                        widget.viewModel.temporadaPilotos[index];
                    return ListTile(
                      title: Text(temporadaPiloto.piloto.nome),
                      subtitle: Text(temporadaPiloto.pontos.toString()),
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
