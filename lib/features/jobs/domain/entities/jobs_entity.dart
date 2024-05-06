import 'package:equatable/equatable.dart';

class JobEntity extends Equatable {
  final String id;
  final String name;
  final String description;
  final String image;
  final String category;
  final String location;
  final String salary;
  final String date;

  JobEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.category,
    required this.location,
    required this.salary,
    required this.date,
  });

  @override
  List<Object?> get props =>
      [id, name, description, image, category, location, salary, date];
}
