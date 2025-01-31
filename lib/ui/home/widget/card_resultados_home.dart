import 'package:flutter/material.dart';
import 'package:kart_ti_flutter/domain/model/temporada_piloto/temporada_piloto.dart';

class CardResultadosHome extends StatelessWidget {
  final List<TemporadaPiloto> resultadoPiloto;
  final bool isVitorias;

  const CardResultadosHome({
    super.key,
    required this.resultadoPiloto,
    this.isVitorias = false,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Card(
      color: colorScheme.surface,
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Clasificação geral',
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Table(
              columnWidths: {
                0: IntrinsicColumnWidth(), // "Pos" se ajusta ao conteúdo
                1: FlexColumnWidth(), // "Piloto" ocupa o espaço disponível
                2: IntrinsicColumnWidth(), // "Tempo" se ajusta ao conteúdo
              },
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(
                  children: [
                    _buildTableCell('Pos', isBold: true),
                    _buildTableCell('Piloto', isBold: true),
                    _buildTableCell(isVitorias ? 'Vitorias' : 'Pontos',
                        isBold: true),
                  ],
                ),
                ...resultadoPiloto.asMap().entries.map(
                  (entry) {
                    final index = entry.key;
                    final resultado = entry.value;
                    return TableRow(
                      children: [
                        _buildTableCell((index + 1).toString()),
                        _buildTableCell(resultado.piloto.nome),
                        _buildTableCell(isVitorias
                            ? resultado.vitorias.toString()
                            : resultado.pontos.toString()),
                      ],
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTableCell(String text, {bool isBold = false}) {
    return TableCell(
      verticalAlignment:
          TableCellVerticalAlignment.middle, // Garante alinhamento uniforme
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey, // Cor da linha
              width: 0.3, // Espessura da linha
            ),
          ),
        ),
        alignment: Alignment.centerLeft, // Mantém o texto alinhado corretamente
        padding: EdgeInsets.symmetric(
          vertical: 6,
          horizontal: 6,
        ), // Ajusta espaçamento interno
        child: Text(
          text,
          style: TextStyle(
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }

// ... existing code ...
}
