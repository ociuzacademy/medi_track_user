import 'package:medi_track/modules/appointment_booking_module/models/departments_model.dart';

class AppointmentSummarySectionHelper {
  static String getDepartmentLabel(
    String? departmentValue,
    List<Department>? departments,
  ) {
    if (departmentValue == null) return 'Not selected';
    final department = departments!.firstWhere(
      (dept) => dept.department == departmentValue,
      orElse: () => const Department(id: 0, department: 'Unknown'),
    );
    return department.department;
  }
}
