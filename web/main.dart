import 'dart:html';
import 'dart:async';
import 'dart:math' as Math;

import 'package:amchart.js/amcharts.dart';

main(){
  final Math.Random _random = new Math.Random(1);
  final Duration _duration = new Duration(seconds: 2);
  zGaugeAxis _axis;
  zGaugeArrow _arrow;

  _randomValue(Timer timer) {
    var value = (_random.nextDouble() * 200).round();
    _arrow.setValue(value);
    _axis.setBottomText('$value km/h');
  }

  window.onLoad.listen(($event){
    var _chart = new zAngularGauge();
    _chart.addTitle('speedometer',12,'dark',1,true);

    _axis = new zGaugeAxis();
    _axis.startValue = 0;
    _axis.axisThickness = 1;
    _axis.valueInterval = 10;
    _axis.endValue = 220;
    // color bands

    zGaugeBand _band1 = new zGaugeBand();
    _band1.startValue = 0;
    _band1.endValue = 90;
    _band1.color = "#00CC00";

    zGaugeBand _band2 = new zGaugeBand();
    _band2.startValue = 90;
    _band2.endValue = 130;
    _band2.color = "#ffac29";

    zGaugeBand _band3 = new zGaugeBand();
    _band3.startValue = 130;
    _band3.endValue = 220;
    _band3.color = "#ea3838";
    _band3.innerRadius = "95%";

    _axis.bands = [_band1, _band2, _band3];

    // bottom text
    _axis.bottomTextYOffset = -20;
    _axis.setBottomText("0 km/h");
    _chart.addAxis(_axis);

    // gauge arrow
    _arrow = new zGaugeArrow();
    _chart.addArrow(_arrow);
    _chart.write("chartdiv");

    new Timer.periodic(_duration, _randomValue);
  });
}