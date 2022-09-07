import 'package:algoriza_weather/core/utils/app_colors.dart';
import 'package:algoriza_weather/core/utils/app_strings.dart';
import 'package:algoriza_weather/core/utils/app_values.dart';
import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/features/wheather/data/models/chart_data/chart_data.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

ChartAxis _xAxis({
  required BuildContext context,
  required List<ChartData> chartData,
}) {
  return NumericAxis(
      autoScrollingMode: AutoScrollingMode.end,
      borderColor: Theme.of(context).cardTheme.color,
      borderWidth: AppSize.s1,
      edgeLabelPlacement: EdgeLabelPlacement.shift,
      interval: chartData.length > 10 ? 2 : 1,
      labelFormat: '{value}',
      labelStyle: Theme.of(context).textTheme.displaySmall,
      minimum: chartData.first.x == 0 ? 0 : chartData.first.x - 1,
      maximum: chartData.last.x + 1,
      majorGridLines: const MajorGridLines(width: 0));
}

ChartAxis _yAxis({
  required BuildContext context,
  required List<ChartData> chartData,
  required double minY,
  required double maxY,
}) {
  return NumericAxis(
      borderColor: Theme.of(context).cardTheme.color,
      borderWidth: AppSize.s1,
      labelFormat: '{value}°C',
      labelStyle: Theme.of(context).textTheme.displaySmall,
      edgeLabelPlacement: EdgeLabelPlacement.shift,
      interval: chartData.length > 8 ? 2 : 1,
      minimum: minY - 1,
      maximum: maxY + 1,
      majorGridLines: const MajorGridLines(width: 0));
}

class LineDefault extends StatefulWidget {
  const LineDefault({Key? key}) : super(key: key);

  @override
  State<LineDefault> createState() => _LineDefaultState();
}

class _LineDefaultState extends State<LineDefault> {
  _LineDefaultState();

  @override
  Widget build(BuildContext context) {
    return ChartBody(cubit: AppCubit.get(context));
  }
}

class ChartBody extends StatefulWidget {
  final AppCubit cubit;
  const ChartBody({Key? key, required this.cubit}) : super(key: key);

  @override
  State<ChartBody> createState() => _ChartBodyState();
}

class _ChartBodyState extends State<ChartBody> {
  List<LineSeries<ChartData, num>> _getDefaultLineSeries() {
    return <LineSeries<ChartData, num>>[
      LineSeries<ChartData, num>(
          animationDuration: 2500,
          dataSource: widget.cubit.chartData,
          width: 1.5,
          name: '',
          color: AppColors.lightGrey,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
          markerSettings: MarkerSettings(
              isVisible: true,
              width: AppSize.s5,
              height: AppSize.s5,
              color: AppColors.lightGrey))
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      title: ChartTitle(
        text: AppStrings.chartTitle,
        textStyle: Theme.of(context).textTheme.bodyMedium,
      ),
      margin: EdgeInsets.all(AppSize.s20),
      primaryXAxis: _xAxis(
        context: context,
        chartData: widget.cubit.chartData,
      ),
      primaryYAxis: _yAxis(
        context: context,
        chartData: widget.cubit.chartData,
        minY: widget.cubit.minY,
        maxY: widget.cubit.maxY,
      ),
      series: _getDefaultLineSeries(),
      tooltipBehavior: TooltipBehavior(enable: true),
    );
  }
}
