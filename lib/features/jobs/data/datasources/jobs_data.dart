import 'package:unique_fl/features/jobs/data/models/jobs_model.dart';

abstract interface class JobsData {
  Future<JobModel> createJob({
    required String title,
    required String description,
    required String location,
    required String category,
    required String salary,
    required String company,
    required String companyLogo,
    required String type,
    required String postedAt,
  });
}
