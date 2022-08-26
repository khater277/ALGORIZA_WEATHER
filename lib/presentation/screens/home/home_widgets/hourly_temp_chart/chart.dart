import 'package:algoriza_weather/presentation/resources/colors_manager.dart';
import 'package:algoriza_weather/presentation/resources/strings_manager.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LineDefault extends StatefulWidget {
  const LineDefault({Key? key}) : super(key: key);

  @override
  State<LineDefault> createState() => _LineDefaultState();
}

class _LineDefaultState extends State<LineDefault> {
  _LineDefaultState();

  List<_ChartData>? chartData;
  double? maxY;
  double? minY;
  @override
  void initState() {
    chartData = <_ChartData>[
      _ChartData(3, 34),
      _ChartData(4, 34),
      _ChartData(5, 33),
      _ChartData(6, 33),
      _ChartData(7, 32),
      _ChartData(8, 31),
      _ChartData(9, 31),
    ];
    minY = chartData![0].y;
    maxY = chartData![0].y;
    for (var element in chartData!) {
      if (element.y > maxY!) {
        maxY = element.y;
      }
      if (element.y < minY!) {
        minY = element.y;
      }
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildDefaultLineChart();
  }

  SfCartesianChart _buildDefaultLineChart() {
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      // borderColor: Colors.red,
      title: ChartTitle(
        text: StringsManager.chartTitle,
        textStyle: Theme.of(context).textTheme.bodyMedium,
      ),
      margin: EdgeInsets.all(AppSize.s20),
      primaryXAxis: NumericAxis(
          autoScrollingMode: AutoScrollingMode.end,
          borderColor: Theme.of(context).cardTheme.color,
          borderWidth: AppSize.s1,
          edgeLabelPlacement: EdgeLabelPlacement.shift,
          interval: 1,
          labelFormat: '{value} ${StringsManager.pm}',
          labelStyle: Theme.of(context).textTheme.displaySmall,
          majorGridLines: const MajorGridLines(width: 0)),
      primaryYAxis: NumericAxis(
          borderColor: Theme.of(context).cardTheme.color,
          borderWidth: AppSize.s1,
          labelFormat: '{value}°C',
          labelStyle: Theme.of(context).textTheme.displaySmall,
          edgeLabelPlacement: EdgeLabelPlacement.shift,
          interval: 1,
          minimum: minY! - 1,
          maximum: maxY! + 1,
          majorGridLines: const MajorGridLines(width: 0)),
      // axisLine: const AxisLine(width: 0),
      // majorTickLines: const MajorTickLines(color: Colors.transparent)),
      series: _getDefaultLineSeries(),
      tooltipBehavior: TooltipBehavior(enable: true),
    );
  }

  List<LineSeries<_ChartData, num>> _getDefaultLineSeries() {
    return <LineSeries<_ChartData, num>>[
      LineSeries<_ChartData, num>(
          animationDuration: 2500,
          dataSource: chartData!,
          width: 1.5,
          name: '',
          color: ColorManager.lightGrey,
          xValueMapper: (_ChartData data, _) => data.x,
          yValueMapper: (_ChartData data, _) => data.y,
          markerSettings: MarkerSettings(
              isVisible: true,
              width: AppSize.s5,
              height: AppSize.s5,
              color: ColorManager.lightGrey))
    ];
  }

  @override
  void dispose() {
    chartData!.clear();
    super.dispose();
  }
}

class _ChartData {
  _ChartData(
    this.x,
    this.y,
  );
  final double x;
  final double y;
}
