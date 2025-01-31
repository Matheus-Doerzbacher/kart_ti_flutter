import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kart_ti_flutter/domain/model/corrida/corrida.dart';

class CardHome extends StatelessWidget {
  final Corrida corrida;
  const CardHome({super.key, required this.corrida});

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
              'Corrida na pista ${corrida.pista.nome}',
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              DateFormat('dd \'de\' MMMM \'de\' yyyy').format(corrida.data),
              style: textTheme.labelMedium,
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
                    _buildTableCell('Melhor Volta', isBold: true),
                  ],
                ),
                ...corrida.resultados!.map(
                  (resultado) {
                    return TableRow(
                      children: [
                        _buildTableCell(resultado.posicao.toString()),
                        _buildTableCell(resultado.piloto.nome),
                        _buildTableCell(resultado.melhorVolta),
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

  // ... existing code ...

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
