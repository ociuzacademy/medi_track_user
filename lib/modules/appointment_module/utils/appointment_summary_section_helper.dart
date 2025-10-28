class AppointmentSummarySectionHelper {
  static String getDepartmentLabel(
    String? departmentValue,
    List<Map<String, String>> departments,
  ) {
    if (departmentValue == null) return 'Not selected';
    final department = departments.firstWhere(
      (dept) => dept['value'] == departmentValue,
      orElse: () => {'label': 'Unknown'},
    );
    return department['label']!;
  }
}
