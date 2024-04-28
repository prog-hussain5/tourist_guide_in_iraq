// ignore_for_file: constant_identifier_names

import 'package:tourist_guide_in_iraq/models/categories.dart';
import 'package:tourist_guide_in_iraq/models/trip.dart';

const Categories_data = [
  Category(
    id: 'c1',
    title: 'محافظة بغداد',
    imageUrl:
        'images/1.jpg',
  ),
  Category(
    id: 'c2',
    title: 'محافظة البصرة',
    imageUrl:
        'images/2.jpg',
  ),
  Category(
    id: 'c3',
    title: 'محافظة بابل',
    imageUrl:
        'images/3.jpg',
  ),
  Category(
    id: 'c4',
    title: 'محافظة النجف ',
    imageUrl:
        'images/4.jpg',
  ),
  Category(
    id: 'c5',
    title: 'محافظة الأنبار',
    imageUrl:
        'images/5.jpg',
  ),
  Category(
    id: 'c6',
    title: 'محافظة أربيل',
    imageUrl:
        'images/6.jpg',
  ),
  Category(
    id: 'c7',
    title: 'محافظة كربلاء',
    imageUrl:
        'images/7.jpg',
  ),
  Category(
    id: 'c8',
    title: 'محافظة واسط',
    imageUrl:
        'images/8.jpeg',
  ),
  Category(
    id: 'c9',
    title: 'محافظة ميسان',
    imageUrl:
        'images/9.jpg',
  ),

    Category(
    id: 'c10',
    title: 'محافظة نينوى',
    imageUrl:
        'images/10.jpg',
  ),
  Category(
    id: 'c11',
    title: 'محافظة المثنى',
    imageUrl:
        'images/11.jpg',
  ),
  //
  Category(
    id: 'c12',
    title: 'محافظة كركوك',
    imageUrl:
        'images/12.jpeg',
  ),
  Category(
    id: 'c13',
    title: 'محافظة صلاح الدين',
    imageUrl:
        'images/13.jpg',
  ),
  Category(
    id: 'c14',
    title: 'محافظة السليمانية',
    imageUrl:
        'images/14.jpeg',
  ),
  Category(
    id: 'c15',
    title: 'محافظة ذي قار',
    imageUrl:
        'images/15.jpg',
  ),
  Category(
    id: 'c16',
    title: 'محافظة ديالى',
    imageUrl:
       'images/16.jpg',
  ),
  Category(
    id: 'c17',
    title: 'محافظة القادسية',
    imageUrl:
        'images/17.jpeg',
  ),
  Category(
    id: 'c18',
    title: 'محافظة دهوك',
    imageUrl:
        'images/18.jpg',
  ),
];

//===================================================================================================================================================================
//===================================================================================================================================================================
//===================================================================================================================================================================
//===================================================================================================================================================================

const Trips_data = [
  Trip(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'العتبة الكاظمية المقدسة',
    tripType: TripsType.religion,
    season: Season.Spring,
    imageUrl:'images/bag/1.1.jpeg',
    duration: 3,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية',
      'الزياره والدعاء للمؤمنين والمؤمنات',
    ],
    program: [

     'تتوفر عده فنادق هناك للمبيت',
     'تتوفر عدد مطاعم تناول وجبه الغداء',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: true,
  ),
  Trip(
    id: 'm2',
    categories: [
      'c1',
    ],
    title: 'المتحف العراقي',
    tripType: TripsType.Activateit,
    season: Season.Summer,
    imageUrl:
        'images/bag/1.2.webp',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
       'شراء الانتيكات التراثيه',
       'مشاهده تاريخ العراق',
       'اخذ صور تذكاريه',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: false,
    isreligion: false,
  ),
  Trip(
    id: 'm3',
    categories: [
      'c1',
    ],
    title: 'نصب الشهيد العراقي',
    tripType: TripsType.Activateit,
    season: Season.Spring,
    imageUrl:
        'images/bag/1.3.webp',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
    'قراءه اسماء الشهداء',
    'اخذ صور تذكاريه',
    'التمتع العين بمناظر جميله',

    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm4',
    categories: [
      'c1',
    ],
    title: 'ساحة التحرير',
    tripType: TripsType.fun,
    season: Season.Spring,
    imageUrl:
        'images/bag/1.4.webp',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
'اخذ صور تذكاريه',
  'التمتع العين بمناظر جميله',
   'يمكنك التوجه الى مكان لتناول وجبه الغداء',
        ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm5',
    categories: [
      'c1',
    ],
    title: 'المدرسة المستنصريه',
    tripType: TripsType.Activateit,
    season: Season.Summer,
    imageUrl:
        'images/bag/1.5.jpeg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'قراءه معلومات عن هذه المدرسه',
      'التقاط صور تذكاريه',
      'قراءه التاريخ بمحل بهذه المدرسه',

        ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm6',
    categories: [
      'c1',
    ],
    title: 'ملعب الشعب الدولي',
    tripType: TripsType.fun,
    season: Season.Summer,
    imageUrl:
        'images/bag/1.6.jpg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'مشاهده مباراه المنتخب الوطني',
      'توجد مطاعم لوجبه الغداء',
      'التقاط صور تذكاريه',


      ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm7',
    categories: [
      'c1',
    ],
    title: 'متنزه الزوراء',
    tripType: TripsType.fun,
    season: Season.Summer,
    imageUrl:
        'images/bag/1.7.jpg',
    duration: 2,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'مشاهده المناظر الجميله والتقاط الصور',
      'ممارسه الرياضه',
      'تناول وجبه الغداء مع العائله',
      ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm8',
    categories: [
      'c1',
    ],
    title: 'مول المنصور',
    tripType: TripsType.fun,
    season: Season.Spring,
    imageUrl:
        'images/bag/1.8.jpeg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'التبضع وشراء الملابس وكل ما يلزمني',
      'تناول وجبه الغذاء والعشاء',
      'حضور الفعاليات',
      ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm9',
    categories: [
      'c2',
    ],
    title: 'مول البصرة تايم سكوير',
    tripType: TripsType.fun,
    season: Season.Summer,
    imageUrl:
        'images/bas/2.1.webp',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [    
        'التبضع وشراء الملابس وكل ما يلزمني',
      'تناول وجبه الغذاء والعشاء',
      'حضور الفعاليات',   
      ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: false,
    isreligion: false,
  ),
  Trip(
    id: 'm10',
    categories: [
      'c2',
    ],
    title: 'كورنيش البصرة',
    tripType: TripsType.fun,
    season: Season.Winter,
    imageUrl:
        'images/bas/2.2.jpg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'استمتاع المناظر الجملية'
    ],
    program: [
       'مشاهده شط العرب',
       'اتمشى وركض على الكورنيش',
       'شراء الحلويات',
     ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: false,
    isreligion: false,
  ),
  Trip(
    id: 'm11',
    categories: [
      'c2',
    
    ],
    title: 'متنزه البصرة العائلي',
    tripType: TripsType.fun,
    season: Season.Spring,
    imageUrl:
        'images/bas/2.3.jpeg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [  
      'مشاهده المناظر الجميله والتقاط الصور',
      'ممارسه الرياضه',
      'تناول وجبه الغداء مع العائله',
      ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm12',
    categories: [
      'c2',
    ],
    title: 'متحف البصرة الحضاري',
    tripType: TripsType.Activateit,
    season: Season.Winter,
    imageUrl:
        'images/bas/2.4.jpg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [ 
       'شراء الانتيكات التراثيه',
       'مشاهده تاريخ العراق',
       'اخذ صور تذكاريه',  ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm13',
    categories: [
      'c2',
    ],
    title: 'مدينة العاب هبي لاند',
    tripType: TripsType.fun,
    season: Season.Winter,
    imageUrl:
        'images/bas/2.5.webp',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'تناول الغداء مع العائله',
      'اللاعب في الالعاب تمتع في الوقت',
      'التقاط صوره تذكاريه',
     ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: false,
    isreligion: false,
  ),
  Trip(
    id: 'm14',
    categories: [
      'c3',
    ],
    title: 'بوابة عشتار',
    tripType: TripsType.Activateit,
    season: Season.Spring,
    imageUrl:
        'images/bab/3.1.jpg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'اتمتع بتاريخ العراق',
      'مشاهده المناطق الجميله',
      'قراءه نبذه تاريخيه عن هذا المكان',
     ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm15',
    categories: [
      'c3',
    ],
    title: 'مدينة بابل الاثريه',
    tripType: TripsType.Activateit,
    season: Season.Spring,
    imageUrl:
        'images/bab/3.2.jpg',
    duration: 3,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'قراءه التاريخ عن هذا المكان سياحي',
      'التقاط صوره تذكاريه',
      
      ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm16',
    categories: [
      'c3',
    ],
    title: 'بوابة الإله',
    tripType: TripsType.Activateit,
    season: Season.Summer,
    imageUrl:
        'images/bab/3.3.jpg',
    duration: 2,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [    
        'قراءه التاريخ عن هذا المكان سياحي',
      'التقاط صوره تذكاريه', 
      ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm17',
    categories: [
      'c3',
     
    ],
    title: 'كورنيش الحلة',
    tripType: TripsType.fun,
    season: Season.Spring,
    imageUrl:
        'images/bab/3.4.jpeg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
       'مشاهده شط العرب',
       'اتمشى وركض على الكورنيش',
       'شراء الحلويات',
      ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
    Trip(
    id: 'm19',
    categories: [
      'c3',
     
    ],
    title: 'مدينة حمورابي السياحية',
    tripType: TripsType.Activateit,
    season: Season.Winter,
    imageUrl:
        'images/bab/3.5.jpeg',
    duration: 2,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'الاستراحه تناول وجبه غداء',
      'مشاهده مناظر جميله',
      'زياره المدينه واستكشافها',
     ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
    Trip(
    id: 'm20',
    categories: [
      'c3',
     
    ],
    title: 'مقام النبي ايوب في الحلة',
    tripType: TripsType.religion,
    season: Season.Spring,
    imageUrl:
        'images/bab/3.6.jpg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'الصلاه والتعبد في هذا المقام',
      ' تناول وجبه الغداء مع العائله ',
      'شراء الامور التذكاريه',
      'التقاط صوره في هذا المكان',
      
      ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: true,
  ),
    Trip(
    id: 'm21',
    categories: [
      'c4',
     
    ],
    title: 'مرقد الامام علي ',
    tripType: TripsType.religion,
    season: Season.Spring,
    imageUrl:
        'images/naj/4.1.jpg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [     
       'الصلاه والتعبد في هذا المقام',
       'زياره المكتبه الحيدريه',
       'زياره المقابر',
      ' تناول وجبه الغداء مع العائله ',
      'شراء الامور التذكاريه',
      'التقاط صوره في هذا المكان',  
       ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: true,
  ),
    Trip(
    id: 'm22',
    categories: [
      'c4',
     
    ],
    title: 'بحر النجف',
    tripType: TripsType.camping,
    season: Season.autumn,
    imageUrl:
        'images/naj/4.2.jpg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'السباحه وتمتع بالوقت',
      'صيد الاسماك',
     'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
    Trip(
    id: 'm23',
    categories: [
      'c4',
     
    ],
    title: 'مسجد السهلة المعظم',
    tripType: TripsType.religion,
    season: Season.Winter,
    imageUrl:
        'images/naj/4.3.jpg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [    
       'الصلاه والتعبد في هذا المقام',
       'زياره مقامات الانبياء',
      ' تناول وجبه الغداء مع العائله ',
      'شراء الامور التذكاريه',
      'التقاط صوره في هذا المكان',  
      ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: true,
  ),
    Trip(
    id: 'm24',
    categories: [
      'c4',
     
    ],
    title: 'مسجد الكوفة المعظم',
    tripType: TripsType.religion,
    season: Season.Spring,
    imageUrl:
        'images/naj/4.4.jpg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [  
       'الصلاه والتعبد في هذا المقام',
       'زياره مقامات الانبياء',
      ' تناول وجبه الغداء مع العائله ',
      'شراء الامور التذكاريه',
      'التقاط صوره في هذا المكان',  
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: true,
  ),
    Trip(
    id: 'm25',
    categories: [
      'c4',
     
    ],
    title: 'مدينة العاب النجف الترفيهية',
    tripType: TripsType.fun,
    season: Season.Spring,
    imageUrl:
        'images/naj/4.5.jpg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      
      'تناول الغداء مع العائله',
      'اللاعب في الالعاب تمتع في الوقت',
      'التقاط صوره تذكاريه',
   
     ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
      Trip(
    id: 'm26',
    categories: [
      'c4',
     
    ],
    title: 'مجمع الشراع الترفيهي',
    tripType: TripsType.fun,
    season: Season.Spring,
    imageUrl:
        'images/naj/4.6.jpeg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'مشاهده مباراه كره القدم',
      'مشاهده مناظر جميله',
      'دعوه الاصدقاء والاهل على وجبه الغداء',
        ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
        Trip(
    id: 'm27',
    categories: [
      'c5',
     
    ],
    title: 'بمنتجع الحبانية ',
    tripType: TripsType.fun,
    season: Season.Winter,
    imageUrl:
        'images/anb/5.1.jpeg',
    duration: 5,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: ['اخذ صور تذكاريه',
  'التمتع العين بمناظر جميله',
   'يمكنك التوجه الى مكان لتناول وجبه الغداء', ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
        Trip(
    id: 'm28',
    categories: [
      'c5',
     
    ],
    title: 'سد حديثه و خزانها',
    tripType: TripsType.fun,
    season: Season.Winter,
    imageUrl:
        'images/anb/5.2.jpg',
    duration: 3,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'اخذ صور تذكاريه',
  'التمتع العين بمناظر جميله',
   'يمكنك التوجه الى مكان لتناول وجبه الغداء',
   'صيد الاسماك',
     ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
          Trip(
    id: 'm29',
    categories: [
      'c5',
    ],
    title: 'عيون المياه المعدنيه',
    tripType: TripsType.fun,
    season: Season.Summer,
    imageUrl:
        'images/anb/5.3.jpg',
    duration: 5,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
    'اخذ صور تذكاريه',
  'التمتع العين بمناظر جميله',
   'يمكنك التوجه الى مكان لتناول وجبه الغداء', ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
     Trip(
    id: 'm30',
    categories: [
      'c6',
    ],
    title: 'مصيف بيخال',
    tripType: TripsType.fun,
    season: Season.Winter,
    imageUrl:
        'images/arb/6.1.jpeg',
    duration: 7,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'تعرف على اصدقاء',
   'السباحه وتغيير الجو',
      'اخذ صور تذكاريه',
  'التمتع العين بمناظر جميله',
   'يمكنك التوجه الى مكان لتناول وجبه الغداء',
 
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
   Trip(
    id: 'm31',
    categories: [
      'c6',
    ],
    title: 'پارکی سامی عەبدولڕەحمان',
    tripType: TripsType.fun,
    season: Season.Winter,
    imageUrl:
        'images/arb/6.2.jpg',
    duration: 3,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [   
   'تعرف على اصدقاء',
   'السباحه وتغيير الجو',
     'اخذ صور تذكاريه',
  'التمتع العين بمناظر جميله',
   'يمكنك التوجه الى مكان لتناول وجبه الغداء',   ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
   Trip(
    id: 'm32',
    categories: [
      'c6',
    ],
    title: 'شلال كلي علي بيك',
    tripType: TripsType.fun,
    season: Season.Spring,
    imageUrl:
        'images/arb/6.3.jpeg',
    duration: 10,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [    
     'تعرف على اصدقاء',
   'السباحه وتغيير الجو',
    'اخذ صور تذكاريه',
  'التمتع العين بمناظر جميله',
   'يمكنك التوجه الى مكان لتناول وجبه الغداء', 
     ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
   Trip(
    id: 'm33',
    categories: [
      'c6',
    ],
    title: 'المنارة المظفرية',
    tripType: TripsType.fun,
    season: Season.Winter,
    imageUrl:
        'images/arb/6.4.jpeg',
    duration: 4,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [     
       'تعرف على اصدقاء',
   'السباحه وتغيير الجو',
      'اخذ صور تذكاريه',
  'التمتع العين بمناظر جميله',
   'يمكنك التوجه الى مكان لتناول وجبه الغداء', 
     ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
   Trip(
    id: 'm34',
    categories: [
      'c6',
    ],
    title: 'متحف النسيج الكردي',
    tripType: TripsType.fun,
    season: Season.Winter,
    imageUrl:
        'images/arb/6.5.webp',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [    
        'تعرف على اصدقاء',
        'تعرف على تاريخ هذا المكان',
      'اخذ صور تذكاريه',
  'التمتع العين بمناظر جميله',
   'يمكنك التوجه الى مكان لتناول وجبه الغداء',
   ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm35',
    categories: [
      'c6',
    ],
    title: 'جامع جليل الخياط',
    tripType: TripsType.religion,
    season: Season.Summer,
    imageUrl:
        'images/arb/6.6.png',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'الصلاه تعبد في هذا المكان',
      'اخذ صور تذكاريه',
  'التمتع العين بمناظر جميله',
   'يمكنك التوجه الى مكان لتناول وجبه الغداء',
      
       ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: true,
  ),
  //////////////////////////
  
  Trip(
    id: 'm36',
    categories: [
      'c7',
    ],
    title: 'مرقد الامام الحسين واخيه ابو الفضل العباس',
    tripType: TripsType.religion,
    season: Season.Winter,
    imageUrl:
        'images/kar/7.1.jpg',
    duration: 2,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
       'الصلاه والتعبد في هذا المقام',
       'زياره مقامات الانبياء',
      ' تناول وجبه الغداء مع العائله ',
      'شراء الامور التذكاريه',
      'التقاط صوره في هذا المكان',  
 ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: true,
  ),
  Trip(
    id: 'm37',
    categories: [
      'c7',
    ],
    title: 'مدينة ألعاب نوارة الأملاك السياحية',
    tripType: TripsType.fun,
    season: Season.Winter,
    imageUrl:
        'images/kar/7.2.jpg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [  
      'العب العاب مختلفه والتمتع بالوقت',
      'المرح مع العائله',
      'تناول وجبه الغداء',
   'التقاط صوره في هذا المكان',  
     ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm38',
    categories: [
      'c7',
    ],
    title: 'متحف الكفيل',
    tripType: TripsType.Activateit,
    season: Season.Winter,
    imageUrl:
        'images/kar/7.3.jpg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [ 
      
       'شراء الانتيكات التراثيه',
       'مشاهده تاريخ العراق',
       'اخذ صور تذكاريه',

      ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: true,
  ),
  Trip(
    id: 'm39',
    categories: [
      'c7',
    ],
    title: 'بحيرة الرزازة',
    tripType: TripsType.fun,
    season: Season.Winter,
    imageUrl:
        'images/kar/7.4.jpeg',
    duration: 2,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'تعرف على اصدقاء',
   'السباحه وتغيير الجو',
  'التمتع العين بمناظر جميله',
   'يمكنك التوجه الى مكان لتناول وجبه الغداء',
       'اخذ صور تذكاريه',

     ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm40',
    categories: [
      'c7',
    ],
    title: 'قطارة الامام علي ع',
    tripType: TripsType.religion,
    season: Season.Winter,
    imageUrl:
        'images/kar/7.5.jpg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [  
      
       'الصلاه والتعبد في هذا المقام',
       'زياره مقامات الانبياء',
      ' تناول وجبه الغداء مع العائله ',
      'شراء الامور التذكاريه',
      'التقاط صوره في هذا المكان',  

     ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: true,
  ),
  
   Trip(
    id: 'm41',
    categories: [
      'c8',
    ],
    title: 'منتجع المدينة المائية',
    tripType: TripsType.fun,
    season: Season.Winter,
    imageUrl:
        'images/kut/8.1.jpg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
    'تعرف على اصدقاء',
   'السباحه وتغيير الجو',
     'اخذ صور تذكاريه',
  'التمتع العين بمناظر جميله',
   'يمكنك التوجه الى مكان لتناول وجبه الغداء',
        ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
   Trip(
    id: 'm42',
    categories: [
      'c8',
    ],
    title: 'فندق الكوت السياحي',
    tripType: TripsType.camping,
    season: Season.Winter,
    imageUrl:
        'images/kut/8.2.jpg',
    duration: 1,
    activities: [
     'التقاط صوره في هذا المكان',     
       'شراء الانتيكات التراثيه',
       'مشاهده تاريخ العراق',
       'اخذ صور تذكاريه',

        ],
    program: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
   Trip(
    id: 'm43',
    categories: [
      'c8',
    ],
    title: 'بوابة مدينة واسط' ,
    tripType: TripsType.fun,
    season: Season.Winter,
    imageUrl:
        'images/kut/8.3.jpg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [   
         'تعرف على اصدقاء',
      'اخذ صور تذكاريه',
  'التمتع العين بمناظر جميله',
   'يمكنك التوجه الى مكان لتناول وجبه الغداء', 
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
     Trip(
    id: 'm44',
    categories: [
      'c8',
    ],
    title: 'سدة الكوت' ,
    tripType: TripsType.fun,
    season: Season.Winter,
    imageUrl:
        'images/kut/8.4.jpg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [   
         'تعرف على اصدقاء',
   'السباحه وتغيير الجو',
      'اخذ صور تذكاريه',
  'التمتع العين بمناظر جميله',
   'يمكنك التوجه الى مكان لتناول وجبه الغداء',    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
       Trip(
    id: 'm45',
    categories: [
      'c9',
    ],
    title: 'ناحية بني هاشم' ,
    tripType: TripsType.fun,
    season: Season.Winter,
    imageUrl:
        'images/mes/9.1.jpeg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
       'شراء الانتيكات التراثيه',
       'مشاهده تاريخ العراق',
       'اخذ صور تذكاريه',
  ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
       Trip(
    id: 'm46',
    categories: [
      'c9',
    ],
    title: 'ميسان مدينة الحب' ,
    tripType: TripsType.fun,
    season: Season.Spring,
    imageUrl:
        'images/mes/9.2.jpg',
    duration: 2,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [   
         'تعرف على اصدقاء',
      'اخذ صور تذكاريه',
  'التمتع العين بمناظر جميله',
   'يمكنك التوجه الى مكان لتناول وجبه الغداء',   
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
       Trip(
    id: 'm47',
    categories: [
      'c9',
    ],
    title: 'الاهوار في محافظه ميسان' ,
    tripType: TripsType.fun,
    season: Season.Spring,
    imageUrl:
        'images/mes/9.3.jpg',
    duration: 4,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [    
        'تعرف على اصدقاء',
   'السباحه وتغيير الجو',
      'اخذ صور تذكاريه',
  'التمتع العين بمناظر جميله',
   'يمكنك التوجه الى مكان لتناول وجبه الغداء',],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm48',
    categories: [
      'c10',
    ],
    title: 'دير مار متي' ,
    tripType: TripsType.fun,
    season: Season.Winter,
    imageUrl:
        'images/nay/10.1.jpeg',
    duration: 3,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
       'شراء الانتيكات التراثيه',
       'مشاهده تاريخ العراق',
       'اخذ صور تذكاريه',
  ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm49',
    categories: [
      'c10',
    ],
    title: 'دير الربان هرمزد' ,
    tripType: TripsType.Activateit,
    season: Season.Winter,
    imageUrl:
        'images/nay/10.2.jpg',
    duration: 6,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
       'شراء الانتيكات التراثيه',
       'مشاهده تاريخ العراق',
       'اخذ صور تذكاريه',
      ' تناول وجبه الغداء مع العائله ',
      'شراء الامور التذكاريه',

    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm50',
    categories: [
      'c10',
    ],
    title: 'جامع المواصل الكبير' ,
    tripType: TripsType.religion,
    season: Season.Winter,
    imageUrl:
        'images/nay/10.3.jpeg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
       'الصلاه والتعبد في هذا المقام',
       'زياره مقامات الانبياء',
      ' تناول وجبه الغداء مع العائله ',
      'شراء الامور التذكاريه',
      'التقاط صوره في هذا المكان',  
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: true,
  ),
  Trip(
    id: 'm51',
    categories: [
      'c10',
    ],
    title: 'متحف الموصل' ,
    tripType: TripsType.Activateit,
    season: Season.Winter,
    imageUrl:
        'images/nay/10.4.jpg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
       'شراء الانتيكات التراثيه',
       'مشاهده تاريخ العراق',
       'اخذ صور تذكاريه',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm52',
    categories: [
      'c10',
    ],
    title: 'قلعة باشطابيا' ,
    tripType: TripsType.fun,
    season: Season.Winter,
    imageUrl:
        'images/nay/10.5.jpg',
    duration: 2,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
       'شراء الانتيكات التراثيه',
       'مشاهده تاريخ العراق',
       'اخذ صور تذكاريه',
  ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),

  Trip(
    id: 'm53',
    categories: [
      'c11',
    ],
    title: 'معبد كاريوس' ,
    tripType: TripsType.fun,
    season: Season.Winter,
    imageUrl:
        'images/moth/11.1.jpg',
    duration: 3,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
       'شراء الانتيكات التراثيه',
       'مشاهده تاريخ العراق',
       'اخذ صور تذكاريه',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm54',
    categories: [
      'c11',
    ],
    title: 'باديه السماوه' ,
    tripType: TripsType.exploration,
    season: Season.Spring,
    imageUrl:
        'images/moth/11.2.jpg',
    duration: 7,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [    
        'التقاط صوره في هذا المكان',  
       'مشاهده تاريخ العراق',
       'التخييم واشعال النار',

   ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm55',
    categories: [
      'c11',
    ],
    title: 'الانهر في السماوه' ,
    tripType: TripsType.exploration,
    season: Season.autumn,
    imageUrl:
        'images/moth/11.3.jpeg',
    duration: 2,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [    
        'تعرف على اصدقاء',
   'السباحه وتغيير الجو',
      'اخذ صور تذكاريه',
  'التمتع العين بمناظر جميله',
   'يمكنك التوجه الى مكان لتناول وجبه الغداء',  ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm56',
    categories: [
      'c12',
    ],
    title: 'قلعة كركوك' ,
    tripType: TripsType.Activateit,
    season: Season.Spring,
    imageUrl:
        'images/krk/12.1.jpg',
    duration: 4,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
       'شراء الانتيكات التراثيه',
       'مشاهده تاريخ العراق',
       'اخذ صور تذكاريه',
   ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm57',
    categories: [
      'c12',
    ],
    title: 'قشلة كركوك' ,
    tripType: TripsType.fun,
    season: Season.Winter,
    imageUrl:
        'images/krk/12.2.jpg',
    duration: 8,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
       'شراء الانتيكات التراثيه',
       'مشاهده تاريخ العراق',
       'اخذ صور تذكاريه',
 ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm58',
    categories: [
      'c12',
    ],
    title: 'حديقة بابا جور جور' ,
    tripType: TripsType.Activateit,
    season: Season.Summer,
    imageUrl:
        'images/krk/12.3.jpg',
    duration: 2,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [     
       'تعرف على اصدقاء',
      'اخذ صور تذكاريه',
  'التمتع العين بمناظر جميله',
   'يمكنك التوجه الى مكان لتناول وجبه الغداء',   ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),

  Trip(
    id: 'm59',
    categories: [
      'c13',
    ],
    title: 'ملوية سامراء' ,
    tripType: TripsType.Activateit,
    season: Season.Winter,
    imageUrl:
        'images/slah/13.1.jpg',
    duration: 2,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      ' تناول وجبه الغداء مع العائله ',
      'شراء الامور التذكاريه',
      'التقاط صوره في هذا المكان',  
      'تعرف على تاريخ هذا المكان',
  ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm60',
    categories: [
      'c13',
    ],
    title: 'قلعة صلاح الدين' ,
    tripType: TripsType.Activateit,
    season: Season.Spring,
    imageUrl:
        'images/slah/13.2.jpg',
    duration: 2,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      ' تناول وجبه الغداء مع العائله ',
      'شراء الامور التذكاريه',
      'التقاط صوره في هذا المكان',  
      'تعرف على تاريخ هذا المكان',
   ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm61',
    categories: [
      'c13',
    ],
    title: 'حرم الامامين الجوادين عليهما السلام' ,
    tripType: TripsType.religion,
    season: Season.Summer,
    imageUrl:
        'images/slah/13.3.jpeg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      
      'تعرف على تاريخ هذا المكان',
       'الصلاه والتعبد في هذا المقام',
      ' تناول وجبه الغداء مع العائله ',
      'شراء الامور التذكاريه',
      'التقاط صوره في هذا المكان',  
],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: true,
  ),
    Trip(
    id: 'm62',
    categories: [
      'c14',
    ],
    title: 'آبشار احمد اوا' ,
    tripType: TripsType.Activateit,
    season: Season.Summer,
    imageUrl:
        'images/selm/14.1.jpg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
       'شراء الانتيكات التراثيه',
       'مشاهده تاريخ العراق',
       'اخذ صور تذكاريه',
      'تعرف على اصدقاء',
   'السباحه وتغيير الجو',
  'التمتع العين بمناظر جميله',
   'يمكنك التوجه الى مكان لتناول وجبه الغداء',
   ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: false,
    isreligion: false,
  ),
  Trip(
    id: 'm63',
    categories: [
      'c14',
    ],
    title: 'چاڤی لاند' ,
    tripType: TripsType.fun,
    season: Season.Spring,
    imageUrl:
        'images/selm/14.2.jpg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      ' تناول وجبه الغداء مع العائله ',
      'شراء الامور التذكاريه',
      'التقاط صوره في هذا المكان',  
      'تعرف على تاريخ هذا المكان',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: false,
    isreligion: false,
  ),
  Trip(
    id: 'm64',
    categories: [
      'c14',
    ],
    title: 'مصيف سرجنار السياحي' ,
    tripType: TripsType.camping,
    season: Season.Summer,
    imageUrl:
        'images/selm/14.3.jpeg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      ' تناول وجبه الغداء مع العائله ',
      'شراء الامور التذكاريه',
      'التقاط صوره في هذا المكان',  
      'تعرف على تاريخ هذا المكان',
  ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: false,
    isreligion: false,
  ),
  Trip(
    id: 'm65',
    categories: [
      'c14',
    ],
    title: 'بحيرة دربندخان' ,
    tripType: TripsType.Activateit,
    season: Season.Summer,
    imageUrl:
        'images/selm/14.4.jpeg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [    
        'تعرف على اصدقاء',
   'السباحه وتغيير الجو',
      'اخذ صور تذكاريه',
  'التمتع العين بمناظر جميله',
   'يمكنك التوجه الى مكان لتناول وجبه الغداء',
       ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: false,
    isreligion: false,
  ),
  Trip(
    id: 'm66',
    categories: [
      'c14',
    ],
    title: 'جبل أزمر',
    tripType: TripsType.Activateit,
    season: Season.Winter,
    imageUrl:
        'images/selm/14.5.jpeg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'تسلق المرتفعات و الجبال ',
      ' تناول وجبه الغداء مع العائله ',
      'شراء الامور التذكاريه',
      'التقاط صوره في هذا المكان',  
      'تعرف على تاريخ هذا المكان',
   ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm67',
    categories: [
      'c15',
    ],
    title: 'زقورة اور الاثرية',
    tripType: TripsType.Activateit,
    season: Season.Spring,
    imageUrl:
        'images/nas/15.1.jpg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      ' تناول وجبه الغداء مع العائله ',
      'شراء الامور التذكاريه',
      'التقاط صوره في هذا المكان',  
      'تعرف على تاريخ هذا المكان',
   ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm68',
    categories: [
      'c15',
    ],
    title: 'تل العبيد',
    tripType: TripsType.Activateit,
    season: Season.Spring,
    imageUrl:
        'images/nas/15.2.jpeg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      ' تناول وجبه الغداء مع العائله ',
      'شراء الامور التذكاريه',
      'التقاط صوره في هذا المكان',  
      'تعرف على تاريخ هذا المكان',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm69',
    categories: [
      'c15',
    ],
    title: 'هور الحمّار',
    tripType: TripsType.Activateit,
    season: Season.Winter,
    imageUrl:
        'images/nas/15.3.jpeg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [      'تعرف على اصدقاء',
   'السباحه وتغيير الجو',
      'اخذ صور تذكاريه',
  'التمتع العين بمناظر جميله',
   'يمكنك التوجه الى مكان لتناول وجبه الغداء',  ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: true,
    isreligion: false,
  ),

  Trip(
    id: 'm70',
    categories: [
      'c16',
    ],
    title: 'سد ديالى',
    tripType: TripsType.Activateit,
    season: Season.Spring,
    imageUrl:
        'images/deala/16.1.jpg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [     
       'تعرف على اصدقاء',
   'السباحه وتغيير الجو',
      'اخذ صور تذكاريه',
  'التمتع العين بمناظر جميله',
   'يمكنك التوجه الى مكان لتناول وجبه الغداء',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm71',
    categories: [
      'c16',
    ],
    title: 'بحيرة حمرين',
    tripType: TripsType.Activateit,
    season: Season.Summer,
    imageUrl:
        'images/deala/16.2.jpeg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [   
         'تعرف على اصدقاء',
   'السباحه وتغيير الجو',
      'اخذ صور تذكاريه',
  'التمتع العين بمناظر جميله',
   'يمكنك التوجه الى مكان لتناول وجبه الغداء',   ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm72',
    categories: [
      'c16',
    ],
    title: 'تل أسمر ',
    tripType: TripsType.Activateit,
    season: Season.Summer,
    imageUrl:
        'images/deala/16.3.webp',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      ' تناول وجبه الغداء مع العائله ',
      'شراء الامور التذكاريه',
      'التقاط صوره في هذا المكان',  
      'تعرف على تاريخ هذا المكان',
   ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm73',
    categories: [
      'c17',
    ],
    title: 'مرقد الحمزة ',
    tripType: TripsType.religion,
    season: Season.Summer,
    imageUrl:
        'images/dewn/17.1.jpeg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
       'الصلاه والتعبد في هذا المقام',
       'زياره مقامات الانبياء',
      ' تناول وجبه الغداء مع العائله ',
      'شراء الامور التذكاريه',
      'التقاط صوره في هذا المكان',  
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: true,
  ),
  Trip(
    id: 'm74',
    categories: [
      'c17',
    ],
    title: 'مول ام الخيل',
    tripType: TripsType.Activateit,
    season: Season.Summer,
    imageUrl:
        'images/dewn/17.2.jpg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'تعرف على اصدقاء',
      'المرح مع العائله',
       'مشاهده تاريخ العراق',
       'اخذ صور تذكاريه',
   ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm75',
    categories: [
      'c17',
    ],
    title: 'مدينة العاب ارض المرح',
    tripType: TripsType.Activateit,
    season: Season.Summer,
    imageUrl:
        'images/dewn/17.3.jpeg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      ' تناول وجبه الغداء مع العائله ',
      'شراء الامور التذكاريه',
      'التقاط صوره في هذا المكان',  
      'تعرف على تاريخ هذا المكان',
  ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),

  Trip(
    id: 'm77',
    categories: [
      'c18',
    ],
    title: 'تلفريك جبل زاوه',
    tripType: TripsType.fun,
    season: Season.Summer,
    imageUrl:
        'images/dhuk/18.1.jpg',
    duration: 4,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'تسلق الجبال',
      'مشاهده الجبال من الاعلى',
      ' تناول وجبه الغداء مع العائله ',
      'شراء الامور التذكاريه',
      'التقاط صوره في هذا المكان',  
      'تعرف على تاريخ هذا المكان',
  ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm78',
    categories: [
      'c18',
    ],
    title: 'Zawa Park',
    tripType: TripsType.fun,
    season: Season.Summer,
    imageUrl:
        'images/dhuk/18.2.jpg',
    duration: 1,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      ' تناول وجبه الغداء مع العائله ',
      'شراء الامور التذكاريه',
      'التقاط صوره في هذا المكان',  
      'تعرف على تاريخ هذا المكان',
  ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm79',
    categories: [
      'c18',
    ],
    title: 'مصيف سرئاشا',
    tripType: TripsType.fun,
    season: Season.Summer,
    imageUrl:
        'images/dhuk/18.3.jpeg',
    duration: 5,
    activities: [
      'السباحة ',
      'المرح مع العائله',
       'شراء الانتيكات التراثيه',
       'اخذ صور تذكاريه',
 ],
    program: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
  Trip(
    id: 'm80',
    categories: [
      'c18',
    ],
    title: 'سد دهوك',
    tripType: TripsType.Activateit,
    season: Season.Summer,
    imageUrl:
        'images/dhuk/18.4.jpeg',
    duration: 2,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [      'تعرف على اصدقاء',
   'السباحه وتغيير الجو',
      'اخذ صور تذكاريه',
  'التمتع العين بمناظر جميله',
   'يمكنك التوجه الى مكان لتناول وجبه الغداء',   ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
    isreligion: false,
  ),
];
