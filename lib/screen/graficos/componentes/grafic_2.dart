import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:plat11/mobx/dados/mob_dados.dart';
import 'package:plat11/mobx/dados_grafico.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

final Mob_dados mob = GetIt.I<Mob_dados>();

class Grafico2 extends StatefulWidget {
  Grafico2({
    Key? key,
  }) : super(key: key);

  @override
  _GraficoState createState() => _GraficoState();
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

class _GraficoState extends State<Grafico2> {
  final Mob_Grafico mob_graf = Mob_Grafico();

  int index = -1;
  int index1 = -1;

  @override
  Widget build(BuildContext context) {
    ChartSeriesController? _chartSeriesController;

    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.black45, offset: Offset(2, 3), blurRadius: 10)
          ]),
      margin: EdgeInsets.all(10),
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(title: AxisTitle(text: 'Tempo')),
        primaryYAxis: NumericAxis(title: AxisTitle(text: 'mm')),
        // Chart title
        title: ChartTitle(
            text:
                'Precipitação ,Temperatura Média Decendial e Temperatura-base da Cultura'),
        // Enable legend
        legend: Legend(
            isVisible: true,
            orientation: LegendItemOrientation.horizontal,
            position: LegendPosition.bottom),

        // Enable tooltip
        tooltipBehavior: TooltipBehavior(enable: true),
        series: <ChartSeries<dynamic, String>>[
          ColumnSeries<dynamic, String>(
            dataSource: mob_graf.dados1.cast<dynamic>(),
            xValueMapper: (dynamic sales, _) {
              if (index < mob_graf.meses.length - 1) {
                index++;
              } else {
                index = 0;
              }
              return mob_graf.meses[index].toString();
            },
            yValueMapper: (dynamic sales, _) {
              return mob.result_tabela[index].p;
            },
            name: 'Precipitação',
            color: Colors.blueGrey[300],
            dataLabelSettings: DataLabelSettings(isVisible: false),
          ),
          SplineSeries<dynamic, String>(
            dataSource: mob_graf.dados1.cast<dynamic>(),
            xValueMapper: (dynamic sales, _) {
              if (index < mob_graf.meses.length - 1) {
                index++;
              } else {
                index = 0;
              }
              return mob_graf.meses[index].toString();
            },
            yValueMapper: (dynamic sales, _) {
              return mob.result_tabela[index].t;
            },
            name: 'Temperatura',
            width: 5,
            color: Colors.blue[300],
            dataLabelSettings: DataLabelSettings(isVisible: false),
          ),
          SplineSeries<dynamic, String>(
            dataSource: mob_graf.dados1.cast<dynamic>(),
            xValueMapper: (dynamic sales, _) {
              if (index < mob_graf.meses.length - 1) {
                index++;
              } else {
                index = 0;
              }
              return mob_graf.meses[index].toString();
            },
            yValueMapper: (dynamic sales, _) {
              return double.parse(mob.temp_base);
            },
            name: 'Temperatura Base',
            width: 3,
            color: Colors.red[300],
            dataLabelSettings: DataLabelSettings(isVisible: false),
          ),
        ],
      ),
    );
  }
}
