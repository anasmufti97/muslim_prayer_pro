import 'package:adhan/adhan.dart';

main(){
  Coordinates coordinates =Coordinates(31.5204, 74.3587);
  CalculationParameters params=CalculationMethod.karachi.getParameters();
  PrayerTimes prayerTimes = PrayerTimes.today(coordinates,params);
  DateTime? fajrTime = prayerTimes.fajr!.toLocal();
  print(fajrTime);
  print("anas");

}
