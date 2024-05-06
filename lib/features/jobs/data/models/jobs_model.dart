import 'package:unique_fl/features/jobs/domain/entities/jobs_entity.dart';

class JobModel extends JobEntity {
  JobModel(
      {required super.id,
      required super.name,
      required super.description,
      required super.image,
      required super.category,
      required super.location,
      required super.salary,
      required super.date});

  factory JobModel.fromJson(Map<String, dynamic> json) {
    return JobModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      image: json['image'],
      category: json['category'],
      location: json['location'],
      salary: json['salary'],
      date: json['date'],
    );
  }

  JobModel copyWith({
    String? id,
    String? name,
    String? description,
    String? image,
    String? category,
    String? location,
    String? salary,
    String? date,
  }) {
    return JobModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      image: image ?? this.image,
      category: category ?? this.category,
      location: location ?? this.location,
      salary: salary ?? this.salary,
      date: date ?? this.date,
    );
  }
}
