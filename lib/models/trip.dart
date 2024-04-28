// ignore_for_file: constant_identifier_names, camel_case_types

enum Season {
  Winter,
  Summer,
  autumn,
  Spring,
}

enum TripsType {
  exploration,
  fun,
  camping,
  Activateit,
  religion,

}

class Trip {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> activities;
  final List<String> program;
  final int duration;
  final Season
      season; // هيج شي زايد نكدر نحط سترينك بس هذه حتى نتعلم و كل ما نستدعي نحط واحد من الفصول
  final TripsType tripType;
  // هاي تستخدم للتصفيه
  final bool isInSummer;
  final bool isInWinter;
  final bool isForFamilies;
  final bool isreligion;

  const Trip(
   {
  required this.id,
  required  this.categories,
  required  this.title,
   required this.imageUrl,
  required  this.activities,
   required this.program,
  required  this.duration,
   required this.season,
   required this.tripType,
   required this.isInSummer,
   required this.isInWinter,
   required this.isForFamilies,
   required this.isreligion,
  });
}
