import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/domain/models/chart_data/chart_data.dart';
import 'package:algoriza_weather/presentation/resources/colors_manager.dart';
import 'package:algoriza_weather/presentation/resources/strings_manager.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LineDefault extends StatefulWidget {
  final AppCubit cubit;
  const LineDefault({Key? key, required this.cubit}) : super(key: key);

  @override
  State<LineDefault> createState() => _LineDefaultState();
}

class _LineDefaultState extends State<LineDefault> {
  _LineDefaultState();

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
          interval: 2,
          labelFormat: '{value}',
          labelStyle: Theme.of(context).textTheme.displaySmall,
          minimum: widget.cubit.chartData.first.x - 1,
          maximum: widget.cubit.chartData.last.x + 1,
          majorGridLines: const MajorGridLines(width: 0)),
      primaryYAxis: NumericAxis(
          borderColor: Theme.of(context).cardTheme.color,
          borderWidth: AppSize.s1,
          labelFormat: '{value}°C',
          labelStyle: Theme.of(context).textTheme.displaySmall,
          edgeLabelPlacement: EdgeLabelPlacement.shift,
          interval: 1,
          minimum: widget.cubit.minY - 1,
          maximum: widget.cubit.maxY + 1,
          majorGridLines: const MajorGridLines(width: 0)),
      // axisLine: const AxisLine(width: 0),
      // majorTickLines: const MajorTickLines(color: Colors.transparent)),
      series: _getDefaultLineSeries(),
      tooltipBehavior: TooltipBehavior(enable: true),
    );
  }

  List<LineSeries<ChartData, num>> _getDefaultLineSeries() {
    return <LineSeries<ChartData, num>>[
      LineSeries<ChartData, num>(
          animationDuration: 2500,
          dataSource: widget.cubit.chartData,
          width: 1.5,
          name: '',
          color: ColorManager.lightGrey,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
          markerSettings: MarkerSettings(
              isVisible: true,
              width: AppSize.s5,
              height: AppSize.s5,
              color: ColorManager.lightGrey))
    ];
  }
}
