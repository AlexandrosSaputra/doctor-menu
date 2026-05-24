class DoctorModel {
  final String name;
  final String specialist;
  final String schedule;
  final String biography;
  final double rating;
  final String imagePath;

  const DoctorModel({
    required this.name,
    required this.specialist,
    required this.schedule,
    required this.biography,
    required this.rating,
    required this.imagePath,
  });
}