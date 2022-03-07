import 'package:adhan/adhan.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyUtilities {
  static bool languageValue = false;
  String names = "ANAS";
  static Colors appBarColor = Colors.red as Colors;
  List<String> islamicMonthslist = [
    "Muharram",
    "Safar",
    "Rabi al-Awwal",
    "Rabi al-Thani",
    "Jumada al-Awwal",
    "Jumada al-Thani",
    "Rajab",
    "Shaban",
    "Ramadan",
    "Shawwal",
    "Dhu al-Qadah",
    "Dhu al-Hijjah "
  ];
  List<String> englishMonthslist = [
    "January",
    "Februry",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];

  List<String> suratNames = [
    "Al-Fatihah",
    "Al-Fatihah1",
    "Al-Fatihah2",
    "Al-Fatihah3",
    "Al-Fatihah4",
    "Al-Fatihah5",
    "Al-Fatihah6",
    "Al-Fatihah7",
    "Al-Fatihah8",
    "Al-Fatihah9",
    "Al-Fatihah10",
    "Al-Baqarah11",
    "Al-'Imran",
    "An-Nisa",
    " Al-Ma'idah",
    " Al-An'am",
    " Al-A'raf",
    " Al-Anfal"
  ];

  List<String> supplications = [
    "لَّا يُؤَاخِذُكُمُ اللَّهُ بِاللَّغْوِ فِي أَيْمَانِكُمْ وَلَٰكِن يُؤَاخِذُكُم بِمَا كَسَبَتْ قُلُوبُكُمْ ۗ وَاللَّهُ غَفُورٌ حَلِيمٌ",
    "لّحَدَّثَنَا عَبْدَانُ ، عَنْ أَبِي حَمْزَةَ ، عَنْ الْأَعْمَشِ ، عَنْ أَبِي وَائِلٍ ، عَنْ مَسْرُوقٍ ، عَنْ عَبْدِ اللَّهِ بْنِ عَمْرٍو رَضِيَ اللَّهُ عَنْهُمَاٌ",
    "يَكُنِ النَّبِيُّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ فَاحِشًا وَلَا مُتَفَحِّشًا وَكَانَ ٌ",
    "لَّا يُؤَاخِذُكُمُ اللَّهُ بِاللَّغْوِ فِي أَيْمَانِكُمْ وَلَٰكِن يُؤَاخِذُكُم بِمَا كَسَبَتْ قُلُوبُكُمْ ۗ وَاللَّهُ غَفُورٌ حَلِيمٌ",
    "دَّثَنَا أَبُو كُرَيْبٍ مُحَمَّدُ بْنُ الْعَلَاءِ، حَدَّثَنَا عَبْدُ اللَّهِ بْنُ إِدْرِيسَ، حَدَّثَنِي أَبِي، عَنْ جَدِّي، عَنْ أَبِي هُرَيْرَةَ، قَالَ:‏‏‏‏ سُئِلَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ عَنْ أَكْثَرِ مَا يُدْخِلُ النَّاسَ الْجَنَّةَمٌ",
    "لَّا يُؤَاخِذُكُمُ اللَّهُ بِاللَّغْوِ فِي أَيْمَانِكُمْ وَلَٰكِن يُؤَاخِذُكُم بِمَا كَسَبَتْ قُلُوبُكُمْ ۗ وَاللَّهُ غَفُورٌ حَلِيمٌ",
    "قَالَ أَبُو عِيسَى:‏‏ هَذَا حَدِيثٌ صَحِيحٌ غَرِيبٌ، ‏‏وَعَبْدُ اللَّهِ بْنُ إِدْرِيسَ هُوَ ابْنُ يَزِيدَ بْنِ عَبْدِ الرَّحْمَنِ الْأَوْدِيُّ.ٌ",
    "لَّا يُؤَاخِذُكُمُ اللَّهُ بِاللَّغْوِ فِي أَيْمَانِكُمْ وَلَٰكِنَيْمَانِكُمْ وَلَٰكِن يُؤَاخِذُكُم بِمَا كَسَبَتْ قُلُوبُكُمْ ۗ و يُؤَاخِذُكُم بِمَا كَسَبَتْ قُلُوبُكُمْ ۗ وَاللَّهُ غَفُورٌ حَلِيمٌ",
    "لَّا يُؤَاخِذُكُمُ الَيْمَانِكُمْ وَلَٰكِن يُؤَاخِذُكُم بِمَا كَسَبَتْ قُلُوبُكُمْ ۗ ولَّهُ بِاللَّغْوِ فِي أَيْمَانِكُمْ وَلَٰكِن يُؤَاخِذُكُم بِمَا كَسَبَتْ قُلُوبُكُمْ ۗ وَاللَّهُ غَفُورٌ حَلِيمٌ",
    "لَّا يُؤَاخِذُكُمُ اللَّهُ بِاللَّغْوِ فِي أَيْمَانِكُمْ وَلَٰكِن َيْمَانِكُمْ وَلَٰكِن يُؤَاخِذُكُم بِمَا كَسَبَتْ قُلُوبُكُمْ ۗ ويُؤَاخِذُكُم بِمَا كَسَبَتْ قُلُوبُكُمْ ۗ وَاللَّهَُيْمَانِكُمْ وَلَٰكِن يُؤَاخِذُكُم بِمَا كَسَبَتْ قُلُوبُكُمْ ۗ و غَفُورٌ حَلِيمٌ",
    "لَّا يُؤَاخِذُكُمُ اللَّهُ بِاللَّغْوِ فِي أَيْمَانِكُمْ وَلَٰكِن يُؤَاخِذُكُم بِمَا َيْمَانِكُمْ وَلَٰكِن يُؤَاخِذُكُم بِمَا كَسَبَتْ قُلُوبُكُمْ ۗ وكَسَبَتْ قُلُوبُكُمْ ۗ وَاللَّهُ غَفُورٌ حَلِيمٌ",
  ];
  List<String> supplicationpurpose=[
    "Abu Hurairah",
    "Messenger of Allah",
    "good character",
    "Paradise ",
    "provides security,",
    "Human natur",
    "Allah has sent me",
    "Hadith about good manners",
    " chaste outlook,",
    "honesty",
    "Messenger of Allah",
    "good character",
    "Paradise ",
    "Allah has sent me",
    "Hadith about good manners",
    " chaste outlook,",

  ];

  List<String> supplicationInUrdu=[];
  List<String> supplicationInEnlish=[];
  List<String> supplicationInturkish=[];

  static Widget pillarsFive (String pilarsText){

    return  Container(

      height:Get.height*0.08,
      width:Get.width*0.8,
      child: Center(child: Text(pilarsText ,style: TextStyle(
          fontSize: 16 ,fontWeight: FontWeight.w500,color: Colors.black
      ),)),
      decoration: BoxDecoration(
          border: Border.all(color:Colors.black ,width:1.5),
          borderRadius: BorderRadius.circular(10)
      ),
    );
  }

  static Widget listTileofPillars(String title, String discription ,String urduDiscription){
    return ExpansionTile(
      title: Text(title),
      children: <Widget>[
        ListTile(title: Center(
          child: Column(
            children: [
              Text(urduDiscription ,textDirection: TextDirection.rtl, style: TextStyle(
              )),
              SizedBox(
                height: 9,
              ),
              Text(discription, style: TextStyle(
                  color: Colors.black,
                fontSize: 14
              ),),
            ],
          ),
        )),
      ],
    );
  }

  static Widget singleHeightContainer(){
    return Container(
      color: Colors.grey,
      height: 1,
    );
  }
  }

class SuratNamesModelClass {
  late final String suratNames, suratAudio;

  SuratNamesModelClass(this.suratNames, this.suratAudio);
}


class AllahNamesModelClass {
  late final String allahName ,  allahNameInEnglish, allahNameMeaning;

  AllahNamesModelClass(
      this.allahName, this.allahNameInEnglish, this.allahNameMeaning);
}

