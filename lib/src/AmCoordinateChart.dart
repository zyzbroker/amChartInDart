@JS()
library AmCoordinateChart;

import "package:js/js.dart";
import "AmChart.dart" show AmChart;
import "AmGraph.dart" show AmGraph;
import "Guide.dart" show Guide;
import "ValueAxis.dart" show ValueAxis;

/// AmCoordinateChart is a base class of AmRectangularChart. It can not be instantiated explicitly.
@JS()
class AmCoordinateChart extends AmChart {
  // @Ignore
  AmCoordinateChart.fakeConstructor$() : super.fakeConstructor$();

  /// Array, holding processed chart's data.
  external List<Object> get chartData;
  external set chartData(List<Object> v);

  /// Specifies the colors of the graphs if the lineColor of a graph is not set.
  /// It there are more graphs then colors in this array, the chart picks random color.
  /// @default ['#FF6600','#FCD202','#B0DE09','#0D8ECF','#2A0CD0','#CD0D74','#CC0000','#00CC00',
  /// '#0000CC','#DDDDDD','#999999','#333333','#990000']
  external List<String> get colors;
  external set colors(List<String> v);

  /// The array of graphs belonging to this chart.
  /// To add/remove graph use addGraph/removeGraph methods instead of adding/removing graphs directly to array.
  external List<AmGraph> get graphs;
  external set graphs(List<AmGraph> v);

  /// Specifies if grid should be drawn above the graphs or below. Will not work properly with 3D charts.
  /// @default false
  external bool get gridAboveGraphs;
  external set gridAboveGraphs(bool v);

  /// Instead of adding guides to the axes, you can push all of them to this array.
  /// In case guide has category or date defined, it will automatically will be assigned to the category axis.
  /// Otherwise to first value axis, unless you specify a different valueAxis for the guide.
  external List<Guide> get guides;
  external set guides(List<Guide> v);

  /// Specifies whether the animation should be sequenced or all Objects should appear at once.
  /// @default true
  external bool get sequencedAnimation;
  external set sequencedAnimation(bool v);

  /// The initial opacity of the column/line.
  /// If you set startDuration to a value higher than 0, the columns/lines will fade in from startAlpha.
  /// Value range is 0 - 1.
  /// @default 1
  external num get startAlpha;
  external set startAlpha(num v);

  /// Duration of the animation, in seconds.
  external num get startDuration;
  external set startDuration(num v);

  /// Animation effect.
  /// Possible values are ">", "<", elastic" and "bounce".
  /// @default "elastic"
  external String get startEffect;
  external set startEffect(String v);

  /// Target of url.
  /// @default this
  external dynamic get urlTarget;
  external set urlTarget(dynamic v);

  /// The array of value axes.
  /// To add/remove value axis use addValueAxis/removeValueAxis methods instead of
  /// adding/removing axes directly to array.
  /// Chart creates one value axis automatically, so if you need only one value axis, you don't need to create it.
  external List<dynamic> get valueAxes;
  external set valueAxes(List<dynamic> v);

  /// Adds a graph to the chart.
  external void addGraph(AmGraph graph);

  /// Adds value axis to the chart.
  /// One value axis is created automatically, so if you don't want to change anything or add more value axes,
  /// you don't need to add it.
  external void addValueAxis(ValueAxis axis);

  /// You can trigger the animation of the chart.
  external void animateAgain();

  /// AmGraph Returns graph by id.
  external AmGraph getGraphById(String graphId);

  /// Returns value axis by id.
  external ValueAxis getValueAxisById(String axisId);

  /// Hide the graph (if it is visible).
  /// Usually this method is called from the Legend, when you click on the legend marker.
  external void hideGraph(AmGraph graph);

  /// Hide value balloon of a graph.
  /// Usually this method is called from the Legend, when you click on the legend text.
  external void hideGraphsBalloon(AmGraph graph);

  /// Highlight the graph. Usually this method is called from the Legend, when you roll-over the legend entry.
  external void highlightGraph(AmGraph graph);

  /// Removes graph from the chart.
  external void removeGraph(AmGraph graph);

  /// Removes value axis from the chart.
  /// When you remove value axis, all graphs assigned to this axis are also removed.
  external void removeValueAxis(ValueAxis axis);

  /// Show the graph (if it is hidden).
  /// Usually this method is called from the Legend, when you click on the legend marker.
  external void showGraph(AmGraph graph);

  /// Show value balloon of a graph.
  /// Usually this method is called from the Legend, when you click on the legend text.
  external void showGraphsBalloon(AmGraph graph);

  /// UnhighlightGraph the graph.
  /// Usually this method is called from the Legend, when you roll-out the legend entry.
  external void unhighlightGraph(AmGraph graph);

  /// Adds event listener of the type "clickGraphItem" or "doubleClickGraphItem" or
  /// "rightClickGraphItem" or "rollOutGraphItem" or "rollOverGraphItem" to the Object.
  /// or "rollOutGraphItem" or "rollOverGraphItem".
  external void addListener(
      String type,
      void handler(
          dynamic /*{
                type: string;
                graph: AmGraph;
                item: GraphDataItem;
                index: number;
                chart: AmChart;
            }*/
          e));
}
