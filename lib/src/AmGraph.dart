@JS()
library AmGraph;

import "package:js/js.dart";
import "AmBalloon.dart" show AmBalloon;
import "GraphDataItem.dart" show GraphDataItem;
import "ValueAxis.dart" show ValueAxis;

/// AmGraph class displays all types of graphs - line, column, step line, smoothed line, ohlc and candlestick.
/// @example
/// let chart = new AmCharts.AmSerialChart();
/// let graph = new AmCharts.AmGraph();
/// graph.valueField = 'value';
/// graph.type = 'column';
/// graph.fillAlphas = 1;
/// chart.addGraph(graph);
@JS()
class AmGraph {
  // @Ignore
  AmGraph.fakeConstructor$();

  /// Text which screen readers will read if user rolls-over the bullet/column or sets focus using tab key
  /// (this is possible only if tabIndex property of AmGraph is set to some number).
  /// Text is added as aria-label tag. Note - not all screen readers and browsers support this.
  /// @default "[[title]] [[category]] [[value]]"
  external String get accessibleLabel;
  external set accessibleLabel(String v);

  /// Name of the alpha field in your dataProvider.
  external String get alphaField;
  external set alphaField(String v);

  /// If you set this to true before chart is drawn, the animation of this graph won't be played.
  /// @default false
  external bool get animationPlayed;
  external set animationPlayed(bool v);

  /// Allows customizing graphs balloons individually (only when ChartCursor is used).
  /// Note: the balloon Object is not created automatically, you should create it before setting properties
  external AmBalloon get balloon;
  external set balloon(AmBalloon v);

  /// Value balloon color. Will use graph or data item color if not set.
  external String get balloonColor;
  external set balloonColor(String v);

  /// If you set some function, the graph will call it and pass GraphDataItem and AmGraph Objects to it.
  /// This function should return a string which will be displayed in a balloon.
  external String balloonFunction(GraphDataItem graphDataItem, AmGraph amGraph);

  /// Balloon text.
  /// You can use tags like
  /// [[value]],
  /// [[description]],
  /// [[percents]],
  /// [[open]],
  /// [[category]]
  /// or any other field name from your data provider. HTML tags can also be used.
  /// @default [[value]]
  external String get balloonText;
  external set balloonText(String v);

  /// Specifies if the line graph should be placed behind column graphs
  /// @default false
  external bool get behindColumns;
  external set behindColumns(bool v);

  /// Type of the bullets.
  /// Possible values are:
  /// "none", "round", "square", "triangleUp", "triangleDown", "triangleLeft", "triangleRight",
  /// "bubble", "diamond", "xError", "yError" and "custom".
  /// @default "none"
  external String get bullet;
  external set bullet(String v);

  /// Opacity of bullets. Value range is 0 - 1.
  /// @default 1
  external num get bulletAlpha;
  external set bulletAlpha(num v);

  /// bulletAxis value is used when you are building error chart.
  /// Error chart is a regular serial or XY chart with bullet type set to "xError" or "yError".
  /// The graph should know which axis should be used to determine the size of this bullet -
  /// that's when bulletAxis should be set. Besides that, you should also set graph.errorField.
  /// You can also use other bullet types with this feature too.
  /// For example, if you set bulletAxis for XY chart, the size of a bullet will change as you zoom the chart.
  external ValueAxis get bulletAxis;
  external set bulletAxis(ValueAxis v);

  /// Bullet border opacity.
  /// @default 0
  external num get bulletBorderAlpha;
  external set bulletBorderAlpha(num v);

  /// Bullet border color. Will use lineColor if not set.
  external String get bulletBorderColor;
  external set bulletBorderColor(String v);

  /// Bullet border thickness.
  /// @default 2
  external num get bulletBorderThickness;
  external set bulletBorderThickness(num v);

  /// Bullet color. Will use lineColor if not set.
  external String get bulletColor;
  external set bulletColor(String v);

  /// Name of the bullet field in your dataProvider.
  external String get bulletField;
  external set bulletField(String v);

  /// Useful for touch devices - if you set it to 20 or so, the bullets of a graph will have
  /// invisible circle around the actual bullet (bullets should still be enabled),
  /// which will be easier to touch (bullets usually are smaller and hard to hit).
  external num get bulletHitAreaSize;
  external set bulletHitAreaSize(num v);

  /// Bullet offset. Distance from the actual data point to the bullet.
  /// Can be used to place custom bullets above the columns.
  /// @default 0
  external num get bulletOffset;
  external set bulletOffset(num v);

  /// Bullet size.
  /// @default 8
  external num get bulletSize;
  external set bulletSize(num v);

  /// Name of the bullet size field in your dataProvider.
  external String get bulletSizeField;
  external set bulletSizeField(String v);

  /// If this field is set and addClassNames is enabled, the chart will look for a class name string in
  /// data using this setting and apply additional class names to elements of the particular data points,
  /// such as bullets.
  external String get classNameField;
  external set classNameField(String v);

  /// Name of the close field (used by candlesticks and ohlc) in your dataProvider.
  external String get closeField;
  external set closeField(String v);

  /// In case you want to place this graph's columns in front of other columns, set this to false.
  /// In case "true", the columns will be clustered next to each other.
  /// NOTE: clustering works only for graphs of type "column".
  /// @default true
  external bool get clustered;
  external set clustered(bool v);

  /// Color of value labels. Will use chart's color if not set.
  external String get color;
  external set color(String v);

  /// Name of the color field in your dataProvider.
  external String get colorField;
  external set colorField(String v);

  /// You can use this property with non-stacked column graphs and specify order of columns of each category
  /// (starting from 0).
  /// Important: this feature does not work in stacked columns scenarios as well as with graph
  /// toggling enabled in legend.
  external String get columnIndexField;
  external set columnIndexField(String v);

  /// You can specify custom column width for each graph individually.
  /// Value range is 0 - 1 (we set relative width, not pixel width here).
  external num get columnWidth;
  external set columnWidth(num v);

  /// Specifies whether to connect data points if data is missing. The default value is true.
  /// This feature does not work with XY chart.
  /// @default true
  external bool get connect;
  external set connect(bool v);

  /// Corner radius of column. It can be set both in pixels or in percents.
  /// The chart's depth and angle styles must be set to 0. The default value is 0.
  /// Note, cornerRadiusTop will be applied for all corners of the column,
  /// JavaScript charts do not have a possibility to set separate corner radius for top and bottom.
  /// As we want all the property names to be the same both on JS and Flex, we didn't change this too.
  /// @default 0
  external num get cornerRadiusTop;
  external set cornerRadiusTop(num v);

  /// If bulletsEnabled of ChartCurosor is true, a bullet on each graph follows the cursor.
  /// You can set opacity of each graphs bullet. In case you want to disable these bullets for a certain graph,
  /// set opacity to 0.
  /// @default 1
  external num get cursorBulletAlpha;
  external set cursorBulletAlpha(num v);

  /// Path to the image of custom bullet.
  external String get customBullet;
  external set customBullet(String v);

  /// Name of the custom bullet field in your dataProvider.
  external String get customBulletField;
  external set customBulletField(String v);

  /// Path to the image for legend marker.
  external String get customMarker;
  external set customMarker(String v);

  /// Dash length. If you set it to a value greater than 0, the graph line (or columns border) will be dashed.
  /// @default 0
  external num get dashLength;
  external set dashLength(num v);

  /// Name of the dash length field in your dataProvider.
  /// This property adds a possibility to change graphs’ line from solid to dashed on any data point.
  /// You can also make columns border dashed using this setting. Note, this won't work with smoothedLineGraph.
  external String get dashLengthField;
  external set dashLengthField(String v);

  /// Used to format balloons if value axis is date-based.
  /// @default "MMM DD, YYYY"
  external String get dateFormat;
  external set dateFormat(String v);

  /// Name of the description field in your dataProvider.
  external String get descriptionField;
  external set descriptionField(String v);

  /// Name of error value field in your data provider.
  external String get errorField;
  external set errorField(String v);

  /// Opacity of fill. Plural form is used to keep the same property names as our Flex charts'.
  /// Flex charts can accept array of numbers to generate gradients.
  /// Although you can set array here, only first value of this array will be used.
  /// @default 0
  external num get fillAlphas;
  external set fillAlphas(num v);

  /// Fill color. Will use lineColor if not set. You can also set array of colors here.
  external String get fillColors;
  external set fillColors(String v);

  /// Name of the fill colors field in your dataProvider.
  /// This property adds a possibility to change line graphs’ fill color on any data point to create highlighted
  /// sections of the graph. Works only with AmSerialChart.
  external String get fillColorsField;
  external set fillColorsField(String v);

  /// XY chart only. If you set this property to id or reference of your X or Y axis, and the fillAlphas is > 0,
  /// the area between graph and axis will be filled with color, like in this demo.
  external ValueAxis get fillToAxis;
  external set fillToAxis(ValueAxis v);

  /// You can set another graph here and if fillAlpha is >0, the area from this graph to fillToGraph will be filled
  /// (instead of filling the area to the X axis).
  /// This feature is not supported by smoothedLine graphs and Radar chart.
  external AmGraph get fillToGraph;
  external set fillToGraph(AmGraph v);

  /// Column width in pixels.
  /// If you set this property, columns will be of a fixed width and won't adjust to the available space.
  external num get fixedColumnWidth;
  external set fixedColumnWidth(num v);

  /// Size of value labels text. Will use chart's fontSize if not set.
  external num get fontSize;
  external set fontSize(num v);

  /// If this is set `true`, the graph will always break the line if the distance in time between
  /// two adjacent data points is bigger than `gapPeriod x minPeriod`, even if `connect` is set to `true`.
  /// @default false
  external bool get forceGap;
  external set forceGap(bool v);

  /// Name of the gap field in your dataProvider.
  /// You can force graph to show gap at a desired data point using this feature.
  /// This feature does not work with XY chart.
  external String get gapField;
  external set gapField(String v);

  /// Using this property you can specify when graph should display gap -
  /// if the time difference between data points is bigger than duration of minPeriod * gapPeriod,
  /// and connect property of a graph is set to false, graph will display gap.
  /// @default 1.1
  external num get gapPeriod;
  external set gapPeriod(num v);

  /// Orientation of the gradient fills (only for "column" graph type).
  /// Possible values are "vertical" and "horizontal".
  /// @default "vertical"
  external String get gradientOrientation;
  external set gradientOrientation(String v);

  /// Specifies whether the graph is hidden.
  /// Do not use this to show/hide the graph, use hideGraph(graph) and showGraph(graph) methods instead.
  /// @default false
  external bool get hidden;
  external set hidden(bool v);

  /// If there are more data points than hideBulletsCount, the bullets will not be shown.
  /// 0 means the bullets will always be visible.
  /// @default 0
  external num get hideBulletsCount;
  external set hideBulletsCount(num v);

  /// Name of the high field (used by candlesticks and ohlc) in your dataProvider.
  external String get highField;
  external set highField(String v);

  /// Unique id of a graph.
  /// It is not required to set one, unless you want to use this graph for as your scrollbar's graph and need
  /// to indicate which graph should be used.
  external String get id;
  external set id(String v);

  /// Whether to include this graph when calculating min and max value of the axis.
  /// @default true
  external bool get includeInMinMax;
  external set includeInMinMax(bool v);

  /// Data label text anchor.
  /// @default "auto"
  external String get labelAnchor;
  external set labelAnchor(String v);

  /// Name of label color field in data provider.
  external String get labelColorField;
  external set labelColorField(String v);

  /// You can use it to format labels of data items in any way you want.
  /// Graph will call this function and pass reference to GraphDataItem and formatted text as attributes.
  /// This function should return string which will be displayed as label.
  /*external String labelFunction(num value, String valueText, ValueAxis valueAxis);*/
  /*external String labelFunction(
    String valueText, DateTime data, ValueAxis valueAxis);*/
  external String labelFunction(dynamic /*num|String*/ value_valueText,
      dynamic /*String|DateTime*/ valueText_data, ValueAxis valueAxis);

  /// Offset of data label.
  /// @default 0
  external num get labelOffset;
  external set labelOffset(num v);

  /// Position of value label. Possible values are: "bottom", "top", "right", "left", "inside", "middle".
  /// Sometimes position is changed by the chart, depending on a graph type, rotation, etc.
  /// @default "top"
  external String get labelPosition;
  external set labelPosition(String v);

  /// Rotation of a data label.
  /// @default 0
  external num get labelRotation;
  external set labelRotation(num v);

  /// Value label text. You can use tags like [[value]], [[description]], [[percents]], [[open]], [[category]].
  external String get labelText;
  external set labelText(String v);

  /// Legend marker opacity. Will use lineAlpha if not set. Value range is 0 - 1.
  external num get legendAlpha;
  external set legendAlpha(num v);

  /// Legend marker color. Will use lineColor if not set.
  external String get legendColor;
  external set legendColor(String v);

  /// It is called and the following attributes are passed:
  /// dataItem, formattedText, periodValues, periodPercentValues
  /// It should return hex color code which will be used for legend marker.
  external Object get legendColorFunction;
  external set legendColorFunction(Object v);

  /// The text which will be displayed in the value portion of the legend when user is not hovering above
  /// any data point. The tags should be made out of two parts - the name of a field
  /// (value / open / close / high / low)
  /// and the value of the period you want to be show -
  /// open / close / high / low / sum / average / count.
  /// For example: [[value.sum]]
  /// means that sum of all data points of value field in the selected period will be displayed.
  external String get legendPeriodValueText;
  external set legendPeriodValueText(String v);

  /// Legend value text.
  /// You can use tags like [[value]], [[description]], [[percents]], [[open]], [[category]]
  /// You can also use custom fields from your dataProvider. If not set, uses Legend's valueText.
  external String get legendValueText;
  external set legendValueText(String v);

  /// Opacity of the line (or column border). Value range is 0 - 1.
  /// @default 1
  external num get lineAlpha;
  external set lineAlpha(num v);

  /// Color of the line (or column border).
  /// If you do not set any, the color from AmCoordinateChart.colors array will be used for each subsequent graph.
  external String get lineColor;
  external set lineColor(String v);

  /// Name of the line color field in your dataProvider.
  /// This property adds a possibility to change graphs’ line color on any data point to create highlighted
  /// sections of the graph. Works only with AmSerialChart.
  external String get lineColorField;
  external set lineColorField(String v);

  /// Specifies thickness of the graph line (or column border).
  /// @default 1
  external num get lineThickness;
  external set lineThickness(num v);

  /// Name of the low field (used by candlesticks and ohlc) in your dataProvider.
  external String get lowField;
  external set lowField(String v);

  /// Legend marker type. You can set legend marker (key) type for individual graphs.
  /// Possible values are:
  /// square, circle, diamond, triangleUp, triangleDown, triangleLeft, triangleDown, bubble, line, none.
  external String get markerType;
  external set markerType(String v);

  /// Specifies size of the bullet which value is the biggest (XY chart).
  /// @default 50
  external num get maxBulletSize;
  external set maxBulletSize(num v);

  /// Specifies minimum size of the bullet (XY chart).
  /// @default 4
  external num get minBulletSize;
  external set minBulletSize(num v);

  /// It is useful if you have really lots of data points.
  /// Based on this property the graph will omit some of the lines
  /// (if the distance between points is less that minDistance, in pixels).
  /// This will not affect the bullets or indicator in anyway, so the user will not see any difference
  /// (unless you set minValue to a bigger value, let say 5),
  /// but will increase performance as less lines will be drawn.
  /// By setting value to a bigger number you can also make your lines look less jagged.
  /// @default 1
  external num get minDistance;
  external set minDistance(num v);

  /// If you use different colors for your negative values, a graph below zero line is filled with negativeColor.
  /// With this property you can define a different base value at which
  /// colors should be changed to negative colors.
  /// @default 0
  external num get negativeBase;
  external set negativeBase(num v);

  /// Fill opacity of negative part of the graph. Will use fillAlphas if not set.
  external num get negativeFillAlphas;
  external set negativeFillAlphas(num v);

  /// Fill color of negative part of the graph. Will use fillColors if not set.
  external String get negativeFillColors;
  external set negativeFillColors(String v);

  /// Opacity of the negative portion of the line (or column border). Value range is 0 - 1.
  /// @default 1
  external num get negativeLineAlpha;
  external set negativeLineAlpha(num v);

  /// Color of the line (or column) when the values are negative.
  /// In case the graph type is "candlestick" or "ohlc", "negativeLineColor" is used
  /// when close value is less then open value.
  external String get negativeLineColor;
  external set negativeLineColor(String v);

  /// If you set it to true, column chart will begin new stack.
  /// This allows having Clustered and Stacked column/bar chart.
  /// @default false
  external bool get newStack;
  external set newStack(bool v);

  /// In case you want to have a step line graph without risers, you should set this to true.
  /// @default false
  external bool get noStepRisers;
  external set noStepRisers(bool v);

  /// Name of the open field (used by floating columns, candlesticks and ohlc) in your dataProvider.
  external String get openField;
  external set openField(String v);

  /// Value of pattern should be Object with url, width, height of an image, optionally it might have x, y, randomX
  /// and randomY values.
  /// For example: {"url":"../amcharts/patterns/black/pattern1.png", "width":4, "height":4}.
  /// If you want to have individual patterns for each column, define patterns in data provider and set
  /// graph.patternField property. Check amcharts/patterns folder for some patterns.
  /// You can create your own patterns and use them. Note, x, y, randomX and randomY properties won't work
  /// with IE8 and older. 3D bar/Pie charts won't work properly with patterns.
  external Object get pattern;
  external set pattern(Object v);

  /// Field name in your data provider which holds pattern information.
  /// Value of pattern should be Object with url, width, height of an image,
  /// optionally it might have x, y, randomX and randomY values.
  /// For example: {"url":"../amcharts/patterns/black/pattern1.png", "width":4, "height":4}.
  /// Check amcharts/patterns folder for some patterns. You can create your own patterns and use them.
  /// Note, x, y, randomX and randomY properties won't work with IE8 and older.
  /// 3D bar/Pie charts won't work properly with patterns.
  external String get patternField;
  external set patternField(String v);

  /// This property can be used by step graphs - you can set how many periods one horizontal line should span.
  /// @default 1
  external num get periodSpan;
  external set periodSpan(num v);

  /// Specifies where data points should be placed -
  /// on the beginning of the period (day, hour, etc) or in the middle
  /// (only when parseDates property of categoryAxis is set to true).
  /// This setting affects Serial chart only. Possible values are "start", "middle" and "end"
  /// @default "middle"
  external String get pointPosition;
  external set pointPosition(String v);

  /// Precision of values. Will use chart's precision if not set any.
  external num get precision;
  external set precision(num v);

  /// If this is set to true, candlesticks will be colored in a different manner -
  /// if current close is less than current open, the candlestick will be empty, otherwise - filled with color.
  /// If previous close is less than current close, the candlestick will use positive color,
  /// otherwise - negative color.
  /// @default false
  external bool get proCandlesticks;
  external set proCandlesticks(bool v);

  /// Gantt chart only. Contains unmodified segment Object from data provider.
  external Object get segmentData;
  external set segmentData(Object v);

  /// If graph's type is column and labelText is set, graph hides labels which do not fit into the column's
  /// space or go outside plot area. If you don't want these labels to be hidden, set this to true.
  /// @default false
  external bool get showAllValueLabels;
  external set showAllValueLabels(bool v);

  /// Specifies whether the value balloon of this graph is shown when mouse is over data item or chart's
  /// indicator is over some series.
  /// @default true
  external bool get showBalloon;
  external set showBalloon(bool v);

  /// Specifies graphs value at which cursor is showed. This is only important for candlestick and ohlc charts,
  /// also if column chart has "open" value.
  /// Possible values are: "open", "close", "high", "low".
  /// "top" and "bottom" values will glue the balloon to top/bottom of the plot area.
  /// @default "close"
  external String get showBalloonAt;
  external set showBalloonAt(String v);

  /// Works with candlestick graph type, you can set it to open, close, high, low.
  /// If you set it to high, the events will be shown at the tip of the high line.
  /// @default "close"
  external String get showBulletsAt;
  external set showBulletsAt(String v);

  /// If you want mouse pointer to change to hand when hovering the graph, set this property to true.
  /// @default false
  external bool get showHandOnHover;
  external set showHandOnHover(bool v);

  /// It can only be used together with topRadius (when columns look like cylinders).
  /// If you set it to true, the cylinder will be lowered down so that the center of it's bottom circle would be
  /// right on category axis.
  /// @default false
  external bool get showOnAxis;
  external set showOnAxis(bool v);

  /// If the value axis of this graph has stack types like "regular" or "100%"
  /// You can exclude this graph from stacking.
  /// @default true
  external bool get stackable;
  external set stackable(bool v);

  /// Step graph only. Specifies to which direction step should be drawn.
  /// @default "right"
  external String get stepDirection;
  external set stepDirection(String v);

  /// If you set it to false, the graph will not be hidden when user clicks on legend entry.
  /// @default true
  external bool get switchable;
  external set switchable(bool v);

  /// In case you set it to some number, the chart will set focus on bullet/column (starting from first)
  /// when user clicks tab key. When a focus is set, screen readers like NVDA Screen reader will read label
  /// which is set using accessibleLabel property of AmGraph. Note, not all browsers and readers support this.
  external num get tabIndex;
  external set tabIndex(num v);

  /// Graph title.
  external String get title;
  external set title(String v);

  /// If you set this to 1, columns will become cylinders (must set depth3D and angle properties of a chart to >0
  /// values in order this to be visible). you can make columns look like cones (set topRadius to 0)
  /// or even like some glasses (set to bigger than 1). We strongly recommend setting grid opacity to 0
  /// in order this to look good.
  external num get topRadius;
  external set topRadius(num v);

  /// Type of the graph.
  /// Possible values are: "line", "column", "step", "smoothedLine", "candlestick", "ohlc".
  /// XY and Radar charts can only display "line" type graphs.
  /// @default "line"
  external String get type;
  external set type(String v);

  /// Name of the url field in your dataProvider.
  external String get urlField;
  external set urlField(String v);

  /// Target to open URLs in, i.e. _blank, _top, etc.
  external String get urlTarget;
  external set urlTarget(String v);

  /// If set to true, the bullet border will take the same color as graph line.
  /// @default false
  external bool get useLineColorForBulletBorder;
  external set useLineColorForBulletBorder(bool v);

  /// If negativeLineColor and/or negativeFillColors are set and useNegativeColorIfDown is set to true
  /// (default is false), the line, step and column graphs will use these colors for lines,
  /// bullets or columns if previous value is bigger than current value. In case you set openField for the graph,
  /// the graph will compare current value with openField value instead of comparing to previous value.
  /// @default false
  external bool get useNegativeColorIfDown;
  external set useNegativeColorIfDown(bool v);

  /// Specifies which value axis the graph will use. Will use the first value axis if not set.
  /// You can use reference to the real ValueAxis Object or set value axis id.
  /// @default ValueAxis
  external ValueAxis get valueAxis;
  external set valueAxis(ValueAxis v);

  /// Name of the value field in your dataProvider.
  external String get valueField;
  external set valueField(String v);

  /// Specifies whether this graph should be shown in the Legend.
  /// @default true
  external bool get visibleInLegend;
  external set visibleInLegend(bool v);

  /// XY chart only. A horizontal value axis Object to attach graph to.
  /// @default ValueAxis
  external ValueAxis get xAxis;
  external set xAxis(ValueAxis v);

  /// XY chart only. Name of the x field in your dataProvider.
  external String get xField;
  external set xField(String v);

  /// XY chart only. A vertical value axis Object to attach graph to.
  /// @default ValueAxis
  external ValueAxis get yAxis;
  external set yAxis(ValueAxis v);

  /// XY chart only. Name of the y field in your dataProvider.
  external String get yField;
  external set yField(String v);
}
