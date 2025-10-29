import 'package:medi_track/modules/rescheduled_appointments_module/models/rescheduled_appointment.dart';

class RescheduledAppointmentData {
  static const List<RescheduledAppointment> rescheduledAppointments = [
    RescheduledAppointment(
      id: '1',
      doctorName: 'Dr. Priya Menon',
      specialty: 'Cardiologist',
      doctorImageUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuCK_DrFJs7aDRL33ZiAdgp-6ba_fkNBd6RCje35vgkWboI7oNJ8Okhs8HyifIEvLZEh7gogEw-aTnlxurmEXP1z7DLHcsFHD7oFEfHUwJOZP-1uG9kbSMlnHzNPCkh9UOJqnFvYzzjHSlQjDpUh9ql7s2njlGC3ECRFgeNDDDQ3uMRZqdKT4FPosJ-_2ras0GgqvZ-aBE-HWhwBpyaayxNXxU9KGeoegIwkrOtwzLXMNsqvjkQCbJjABVUut24FXDWdruNwsk62uJnd',
      originalDate: '12 Oct 2025',
      originalToken: '15',
      rescheduledDate: '14 Oct 2025',
      rescheduledToken: '8',
      reason: 'Doctor on emergency duty',
      receivedTime: 'Received 2 hours ago',
      status: AppointmentStatus.pending,
    ),
    RescheduledAppointment(
      id: '2',
      doctorName: 'Dr. Ben Carter',
      specialty: 'Orthopedics',
      doctorImageUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuCwZw71kXmYfjyAwKLEDQ6vjGlXZX5KN2cmRnuC9exglGFzSokvu6_Pzc_JJhPB4bbVY4bT6D75lAokUDt8Z043xPbQOgKxqyp0SA_F5eTsPzUZhKDkidUSg4tGFW9p31A-Y3Fltzr3U0yt_44dteNY4UJ-fD3fkFL9_CN6xer7sZQFLjO89uwbSAvHUqRq14W_McbPsZgIp-7a2oM5Oa2eM20c9MF3VlmHNungWurkJY2mdYKBEn5FeGknhVBVZXWAYobNpawm0jbB',
      originalDate: '10 Oct 2025',
      originalToken: '12',
      rescheduledDate: '11 Oct 2025',
      rescheduledToken: '5',
      reason: 'Doctor is unavailable',
      receivedTime: 'Received 1 day ago',
      status: AppointmentStatus.accepted,
    ),
  ];
}
