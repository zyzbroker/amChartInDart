@JS()
library AmAngularGauge;

import "package:js/js.dart";
import "AmChart.dart" show AmChart;
import "Label.dart" show Label;
import "GaugeArrow.dart" show GaugeArrow;
import "GaugeAxis.dart" show GaugeAxis;
import "AmBalloon.dart" show AmBalloon;
import "ExportSettings.dart" show ExportSettings;
import "AmLegend.dart" show AmLegend;
import "dart:html" show HtmlElement;
import "Title.dart" show Title;

/// AmAngularGauge Extension for AmChart to create gauge charts.
@JS()
class AmAngularGauge extends AmChart {
  // @Ignore
  AmAngularGauge.fakeConstructor$() : super.fakeConstructor$();

  external AmAngularGauge();

  /// When enabled, chart adds aria-label attributes to columns, bullets or map Objects.
  /// You can control values of these labels using properties like accessibleLabel of AmGraph.
  /// Note, not all screen readers support these tags.
  /// We tested this mostly with NVDA Screen reader.
  /// WAI-ARIA is now official W3 standard, so in future more readers will handle this well.
  /// We will be improving accessibility on our charts, so we would be glad to hear your feedback.
  /// @default true
  external bool get accessible;
  external set accessible(bool v);

  /// Description which will be added to node of SVG element.
  /// Most of the screen readers will read this description.
  external String get accessibleDescription;
  external set accessibleDescription(String v);

  /// Description which is added to of a SVG element. Some of the screen readers will read this description.
  external String get accessibleTitle;
  external set accessibleTitle(String v);

  /// Specifies, if class names should be added to chart elements.
  /// @default false
  external bool get addClassNames;
  external set addClassNames(bool v);

  /// Uses the whole space of the canvas to draw the gauge.
  /// @default true
  external bool get adjustSize;
  external set adjustSize(bool v);

  /// Array of Labels. Example of label Object, with all possible properties:
  /// {
  /// "x": 20,
  /// "y": 20,
  /// "text": "this is label",
  /// "align": "left",
  /// "size": 12,
  /// "color": "#CC0000",
  /// "alpha": 1,
  /// "rotation": 0,
  /// "bold": true,
  /// "url": "http://www.amcharts.com"
  /// }
  /// @default []
  external List<Label> /*Tuple of <Label>*/ get allLabels;
  external set allLabels(List<Label> /*Tuple of <Label>*/ v);

  /// Array of arrows.
  external List<GaugeArrow> /*Tuple of <GaugeArrow>*/ get arrows;
  external set arrows(List<GaugeArrow> /*Tuple of <GaugeArrow>*/ v);

  /// If you set it to true the chart will automatically monitor changes of display style of chart’s container
  /// (or any of it’s parents) and will render chart correctly if it is changed from none to block.
  /// We recommend setting it to true if you change this style at a run time, as it affects performance a bit.
  /// @default false
  external bool get autoDisplay;
  external set autoDisplay(bool v);

  /// Set this to false if you don't want chart to resize itself whenever its parent container size changes.
  /// @default true
  external bool get autoResize;
  external set autoResize(bool v);

  /// If you set it to true and your chart div (or any of the parent div) has css scale applied,
  /// the chart will position mouse at a correct position.
  /// Default value is false because this operation consumes some CPU and quite a
  /// few people are using css transfroms.
  /// @default false
  external bool get autoTransform;
  external set autoTransform(bool v);

  /// Array of axes.
  /// @default [GaugeAxis]
  external List<GaugeAxis> /*Tuple of <GaugeAxis>*/ get axes;
  external set axes(List<GaugeAxis> /*Tuple of <GaugeAxis>*/ v);

  /// Opacity of background. Set it to >0 value if you want backgroundColor to work.
  /// However we recommend changing div's background-color style for changing background color.
  /// @default 0
  external num get backgroundAlpha;
  external set backgroundAlpha(num v);

  /// Background color. You should set backgroundAlpha to >0 value in order background to be visible.
  /// We recommend setting background color directly on a chart's DIV instead of using this property.
  /// @default #FFFFFF
  external String get backgroundColor;
  external set backgroundColor(String v);

  /// The chart creates AmBalloon class itself.
  /// If you want to customize balloon, get balloon instance using this property,
  /// and then change balloon's properties.
  /// @default AmBalloon
  external AmBalloon get balloon;
  external set balloon(AmBalloon v);

  /// Opacity of chart's border. Value range is 0 - 1.
  /// @default 0
  external num get borderAlpha;
  external set borderAlpha(num v);

  /// Color of chart's border. You should set borderAlpha >0 in order border to be visible.
  /// We recommend setting border color directly on a chart's DIV instead of using this property.
  /// @default #000000
  external String get borderColor;
  external set borderColor(String v);

  /// This prefix is added to all class names which are added to all visual elements of a chart
  /// in case addClassNames is set to true.
  /// @default amcharts
  external String get classNamePrefix;
  external set classNamePrefix(String v);

  /// In case you use gauge to create a clock, set this to true.
  /// @default false
  external bool get clockWiseOnly;
  external set clockWiseOnly(bool v);

  /// Text color.
  /// @default #000000
  external String get color;
  external set color(String v);

  /// Non-commercial version only. Specifies position of link to amCharts site.
  /// Allowed values are: top-left, top-right, bottom-left and bottom-right.
  /// @default 'top - left'
  external String get creditsPosition;
  external set creditsPosition(String v);

  /// A config Object for Data Loader plugin. Please refer to the following page for more information.
  external Object get dataLoader;
  external set dataLoader(Object v);

  /// Array of data Objects, for example:
  /// [
  /// {country:"US", value:524},
  /// {country:"UK", value:624},
  /// {country:"Lithuania", value:824}
  /// ]
  /// You can have any number of fields and use any field names.
  /// In case of AmMap, data provider should be MapData Object.
  /// The data set data.
  /// Important: if you are using date/time-based category axis, the data points needs to come pre-ordered
  /// in ascending order. Data with incorrect order might result in visual and functional glitches on the chart.
  external List<Object> /*Tuple of <Object>*/ get dataProvider;
  external set dataProvider(List<Object> /*Tuple of <Object>*/ v);

  /// Decimal separator.
  /// @default "."
  external String get decimalSeparator;
  external set decimalSeparator(String v);

  /// Using this property you can add any additional information to SVG, like SVG filters or clip paths.
  /// The structure of this Object should be identical to XML structure of a Object you are adding,
  /// only in JSON format.
  external Object get defs;
  external set defs(Object v);

  /// Export config. Specifies how export to image/data export/print/annotate menu will look and behave.
  /// You can find a lot of examples in amcharts/plugins/export folder. More details can be found here.
  external ExportSettings get JS$export;
  external set JS$export(ExportSettings v);

  /// Gauge face opacity.
  /// @default 0
  external num get faceAlpha;
  external set faceAlpha(num v);

  /// Gauge face border opacity.
  /// @default 0
  external num get faceBorderAlpha;
  external set faceBorderAlpha(num v);

  /// Gauge face border color.
  /// @default #555555
  external String get faceBorderColor;
  external set faceBorderColor(String v);

  /// Gauge face border width.
  /// @default 1
  external num get faceBorderWidth;
  external set faceBorderWidth(num v);

  /// Gauge face color, requires faceAlpha > 0
  /// @default #FAFAFA
  external String get faceColor;
  external set faceColor(String v);

  /// Gauge face image-pattern.
  /// Example: {"url":"../amcharts/patterns/black/pattern1.png", "width":4, "height":4}
  /// fontFamily	String	Verdana	Font family.
  /// fontSize	Number	11	Font size.
  external Object get facePattern;
  external set facePattern(Object v);

  /// Gauge's horizontal position in pixel, origin is the center. Centered by default.
  external num get gaugeX;
  external set gaugeX(num v);

  /// Gauge's vertical position in pixel, origin is the center. Centered by default.
  external num get gaugeY;
  external set gaugeY(num v);

  /// If you set this to true, the lines of the chart will be distorted and will produce hand-drawn effect.
  /// Try to adjust chart.handDrawScatter and chart.handDrawThickness properties for a more scattered result.
  /// @default false
  external bool get handDrawn;
  external set handDrawn(bool v);

  /// Defines by how many pixels hand-drawn line (when handDrawn is set to true) will fluctuate.
  /// @default 2
  external num get handDrawScatter;
  external set handDrawScatter(num v);

  /// Defines by how many pixels line thickness will fluctuate (when handDrawn is set to true).
  /// @default 1
  external num get handDrawThickness;
  external set handDrawThickness(num v);

  /// Time, in milliseconds after which balloon is hidden if the user rolls-out of the Object.
  /// Might be useful for AmMap to avoid balloon flickering while moving mouse over the areas.
  /// Note, this is not duration of fade-out. Duration of fade-out is set in AmBalloon class.
  /// @default 150
  external num get hideBalloonTime;
  external set hideBalloonTime(num v);

  /// Allows changing language easily.
  /// Note, you should include language js file from amcharts/lang or ammap/lang folder and then use
  /// variable name used in this file, like chart.language = "de"; Note, for maps this works differently -
  /// you use language only for country names, as there are no other strings in the maps application.
  external String get language;
  external set language(String v);

  /// Legend of a chart.
  external AmLegend get legend;
  external set legend(AmLegend v);

  /// Read-only. Reference to the div of the legend.
  external HtmlElement get legendDiv;
  external set legendDiv(HtmlElement v);

  /// You can add listeners of events using this property.
  /// Example: listeners = [{"event":"dataUpdated", "method":handleEvent}];
  /// @default [Object]
  external List<Object> /*Tuple of <Object>*/ get listeners;
  external set listeners(List<Object> /*Tuple of <Object>*/ v);

  /// Bottom spacing between chart and container.
  /// @default 10
  external num get marginBottom;
  external set marginBottom(num v);

  /// Left-hand spacing between chart and container.
  /// @default 10
  external num get marginLeft;
  external set marginLeft(num v);

  /// Right-hand spacing between chart and container.
  /// @default 10
  external num get marginRight;
  external set marginRight(num v);

  /// Top spacing between chart and container.
  /// @default 10
  external num get marginTop;
  external set marginTop(num v);

  /// Minimum radius of a gauge.
  /// @default 10
  external num get minRadius;
  external set minRadius(num v);

  /// This setting affects touch-screen devices only.
  /// If a chart is on a page, and panEventsEnabled are set to true, the page won't move if
  /// the user touches the chart first. If a chart is big enough and occupies all the screen of your touch device,
  /// the user won’t be able to move the page at all.
  /// If you think that selecting/panning the chart or moving/pinching the map is a primary purpose of your users,
  /// you should set panEventsEnabled to true, otherwise - false.
  /// @default true
  external bool get panEventsEnabled;
  external set panEventsEnabled(bool v);

  /// Specifies absolute or relative path to amCharts files, i.e."amcharts/". (where all.js files are located)
  /// If relative URLs are used, they will be relative to the current web page, displaying the chart.
  /// You can also set path globally, using global JavaScript variable AmCharts_path.If this variable is set,
  /// and "path" is not set in chart config, the chart will assume the path from the global variable.
  /// This allows setting amCharts path globally.
  /// I.e.:
  /// let AmCharts_path = "/libs/amcharts/";
  /// "path" parameter will be used by the charts to locate it's files, like images, plugins or patterns.
  /// @default 'amcharts/'
  external String get path;
  external set path(String v);

  /// Specifies path to the folder where images like resize grips, lens and similar are.
  /// IMPORTANT: Since V3.14.12, you should use "path" to point to amCharts directory instead.
  /// The "pathToImages" will be automatically set and does not need to be in the chart config,
  /// unless you keep your images separately from other amCharts files.
  external String get pathToImages;
  external set pathToImages(String v);

  /// Precision of percent values. -1 means percent values won't be rounded at all and show as they are.
  /// @default 2
  external num get percentPrecision;
  external set percentPrecision(num v);

  /// Precision of values. -1 means values won't be rounded at all and show as they are.
  /// @default -1
  external num get precision;
  external set precision(num v);

  /// Prefixes which are used to make big numbers shorter: 2M instead of 2000000, etc.
  /// Prefixes are used on value axes and in the legend.
  /// To enable prefixes, set usePrefixes property to true.
  /// @default [
  /// {"number": 1e+3, "prefix": "k"},
  /// {"number": 1e+6, "prefix": "M"},
  /// {"number": 1e+9, "prefix": "G"},
  /// {"number": 1e+12, "prefix": "T"},
  /// {"number": 1e+15, "prefix": "P"},
  /// {"number": 1e+18, "prefix": "E"},
  /// {"number": 1e+21, "prefix": "Z"},
  /// {"number": 1e+24, "prefix": "Y"}
  /// ]
  external List<
      dynamic /*{ number: number; prefix: string }*/ > /*Tuple of <{ number: number; prefix: string }>*/ get prefixesOfBigNumbers;
  external set prefixesOfBigNumbers(
      List<
          dynamic /*{ number: number; prefix: string }*/ > /*Tuple of <{ number: number; prefix: string }>*/ v);

  /// Prefixes which are used to make small numbers shorter: 2μ instead of 0.000002, etc.
  /// Prefixes are used on value axes and in the legend.
  /// To enable prefixes, set usePrefixes property to true.
  /// @default [
  /// {"number": 1e-24, "prefix": "y"},
  /// {"number": 1e-21, "prefix": "z"},
  /// {"number": 1e-18, "prefix": "a"},
  /// {"number": 1e-15, "prefix": "f"},
  /// {"number": 1e-12, "prefix": "p"},
  /// {"number": 1e-9, "prefix": "n"},
  /// {"number": 1e-6, "prefix": "μ"},
  /// {"number": 1e-3, "prefix": "m"}
  /// ]
  external List<
      dynamic /*{ number: number; prefix: string }*/ > /*Tuple of <{ number: number; prefix: string }>*/ get prefixesOfSmallNumbers;
  external set prefixesOfSmallNumbers(
      List<
          dynamic /*{ number: number; prefix: string }*/ > /*Tuple of <{ number: number; prefix: string }>*/ v);

  /// If processTimeout is > 0, 1000 data items will be parsed at a time,
  /// then the chart will make pause and continue parsing data until it finishes.
  /// @default 1000
  external num get processCount;
  external set processCount(num v);

  /// If you set it to 1 millisecond or some bigger value, chart will be built in chunks instead of all at once.
  /// This is useful if you work with a lot of data and the initial build of the chart takes a lot of time,
  /// which freezes the whole web application by not allowing other processes to do their
  /// job while the chart is busy.
  /// @default 0
  external num get processTimeout;
  external set processTimeout(num v);

  /// A config Object for Responsive plugin. Please refer to the following page for more information.
  external Object get responsive;
  external set responsive(Object v);

  /// Duration of arrow animation.
  /// @default 1
  external num get startDuration;
  external set startDuration(num v);

  /// Transition effect of the arrows, possible effects: easeOutSine, easeInSine, elastic, bounce.
  /// @default easeInSine
  external String get startEffect;
  external set startEffect(String v);

  /// Charts will use SVG icons (some are loaded from images folder and some are drawn inline)
  /// if browser supports SVG. his makes icons look good on retina displays on all resolutions.
  /// @default true
  external bool get svgIcons;
  external set svgIcons(bool v);

  /// Charts which require gestures like swipe (charts with scrollbar/cursor) or pinch (maps) used to prevent
  /// regular page scrolling and could result page to stick to the same spot if the chart occupied whole screen.
  /// Now, in order these gestures to start working user has to touch the chart/maps once.
  /// Regular touch events like touching on the bar/slice/map area do not require the first tap and will
  /// show balloons and perform other tasks as usual.
  /// If you have a map or chart which occupies full screen and your page does not require scrolling,
  /// set tapToActivate to false – this will bring old behavior back.
  /// @default true
  external bool get tapToActivate;
  external set tapToActivate(bool v);

  /// Theme of a chart. Config files of themes can be found in amcharts/themes/ folder.
  /// More info about using themes.
  /// @default none
  external String get theme;
  external set theme(String v);

  /// Thousands separator.
  /// @default ,
  external String get thousandsSeparator;
  external set thousandsSeparator(String v);

  /// Array of Title Objects.
  /// @default []
  external List<Title> /*Tuple of <Title>*/ get titles;
  external set titles(List<Title> /*Tuple of <Title>*/ v);

  /// If you set it to 200 (milliseconds) or so, the chart will fire clickGraphItem or clickSlice (AmSlicedChart)
  /// or clickMapObject only if user holds his/her finger for 0.2 seconds (200 ms) on the
  /// column/bullet/slice/map Object.
  /// @default 0
  external num get touchClickDuration;
  external set touchClickDuration(num v);

  /// Type of a chart. Required when creating chart using JSON.
  /// Possible types are: serial, pie, xy, radar, funnel, gauge, map, gantt, stock.
  external String get type;
  external set type(String v);

  /// If true, prefixes will be used for big and small numbers.
  /// You can set arrays of prefixes via prefixesOfSmallNumbers and prefixesOfBigNumbers properties.
  /// @default false
  external bool get usePrefixes;
  external set usePrefixes(bool v);

  /// Read-only. Indicates current version of a script.
  external String get version;
  external set version(String v);

  /// Adds arrow to the chart.
  external void addArrow(GaugeArrow arrow);

  /// Adds axis to angular gauge.
  external void addAxis(GaugeAxis axis);

  /// Adds a label on a chart. You can use it for labeling axes, adding chart title,
  /// etc. x and y coordinates can be set in number, percent, or a number with ! in front of it -
  /// coordinate will be calculated from right or bottom instead of left or top.
  external void addLabel(num x, num y, String text, String align, [num size,
      String color, num rotation, num alpha, bool bold, String url]);

  /// Adds a legend to the chart. By default, you don't need to create div for your legend,
  /// however if you want it to be positioned in some different way,
  /// you can create div anywhere you want and pass id or reference to your div as a second parameter.
  /// NOTE: This method will not work on StockPanel.
  /*external void addLegend(AmLegend legend, [String legendDivId]);*/
  /// Adds a legend to the chart.
  /// By default, you don't need to create div for your legend,
  /// however if you want it to be positioned in some different way,
  /// you can create div anywhere you want and pass id or reference to your div as a second parameter.
  /// NOTE: This method will not work on StockPanel.
  /*external void addLegend(AmLegend legend, HtmlElement legendDiv);*/
  external void addLegend(AmLegend legend,
      [dynamic /*String|HtmlElement*/ legendDivId_legendDiv]);

  /// Adds event listener to the Object.
  external void addListener(
      String type,
      void handler(
          dynamic /*{
                type: string;
                chart: AmChart;
            }*/
          e));

  /// Adds title to the top of the chart. Pie, Radar positions are updated so that they won't overlap.
  /// Plot area of Serial/XY chart is also updated unless autoMargins property is set to false.
  /// You can add any number of titles - each of them will be placed in a new line.
  /// To remove titles, simply clear titles array: chart.titles = []; and call chart.validateNow() method.
  external void addTitle(
      String text, num size, String color, num alpha, bool bold);

  /// Clears the chart area, intervals, etc.
  external void clear();

  /// Removes all labels added to the chart.
  external void clearLabels();

  /// Use this method to force the chart to resize to it's current container size.
  external void invalidateSize();

  /// This method allows to create charts with a single config.
  external AmChart makeChart(String container, dynamic config, num delay);

  /// Removes arrow from the chart.
  external void removeArrow(GaugeArrow arrow);

  /// Removes axis from the chart.
  external void removeAxis(GaugeAxis axis);

  /// Removes chart's legend.
  external void removeLegend();

  /// Removes event listener from chart Object.
  external void removeListener(AmChart chart, String type, dynamic handler);

  /// This method should be called after data in your data provider changed or a new array was set to dataProvider.
  /// After calling this method the chart will parse data and redraw.
  external void validateData();

  /// This method should be called after you changed one or more properties of any class.
  /// The chart will redraw after this method is called.
  /// Both attributes, validateData and skipEvents are optional (false by default).
  external void validateNow();

  /// Adds chart to the specified DIV.
  external void write(dynamic /*String|DivElement*/ container);
}
