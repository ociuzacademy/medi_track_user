import 'dart:io';
import 'package:medi_track/modules/appointment_details_module/model/appointment_prescription_model.dart'
    as apm;
import 'package:medi_track/modules/prescription_details_module/models/prescription_details_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:share_plus/share_plus.dart';
import 'package:intl/intl.dart';

class PrescriptionPdfService {
  Future<void> generateAndShare(PrescriptionDetailsModel data) async {
    final pdf = pw.Document();

    // Use standard fonts to avoid runtime errors if assets are missing
    final ttf = pw.Font.helvetica();
    final ttfBold = pw.Font.helveticaBold();

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return _buildPdfLayout(
            context,
            ttf,
            ttfBold,
            doctorName: data.doctor.name,
            doctorSpecialization: data.doctor.specialization,
            doctorEmail: data.doctor.email,
            patientName: data.patient.username,
            appointmentId: data.appointment.id.toString(),
            appointmentDate: data.appointment.date,
            symptoms: data.symptoms,
            notes: data.notes,
            medicines: data.medicines
                .map(
                  (m) => _MedicinePdfModel(
                    name: m.name,
                    dosage: m.dosage,
                    frequency: m.frequency,
                    timeOfDay: m.timeOfDay,
                    foodInstruction: m.foodInstruction,
                    numberOfDays: m.numberOfDays,
                  ),
                )
                .toList(),
          );
        },
      ),
    );

    await _saveAndShare(pdf, data.prescriptionId, data.patient.username);
  }

  Future<void> generateAndShareForAppointment(
    apm.AppointmentPrescriptionModel data,
  ) async {
    final pdf = pw.Document();

    final ttf = pw.Font.helvetica();
    final ttfBold = pw.Font.helveticaBold();

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return _buildPdfLayout(
            context,
            ttf,
            ttfBold,
            doctorName: data.appointment.doctorName,
            doctorSpecialization: 'Doctor', // Specialization not in this model
            doctorEmail: '', // Email not in this model
            patientName: data.appointment.userName,
            appointmentId: data.appointment.id.toString(),
            appointmentDate: data.appointment.date,
            symptoms: data.prescription.symptoms,
            notes: data.prescription.notes,
            medicines: data.prescription.medicines
                .map(
                  (m) => _MedicinePdfModel(
                    name: m.name,
                    dosage: m.dosage,
                    frequency: m.frequency,
                    timeOfDay: m.timeOfDay,
                    foodInstruction: m.foodInstruction,
                    numberOfDays: m.numberOfDays,
                  ),
                )
                .toList(),
          );
        },
      ),
    );

    await _saveAndShare(pdf, data.appointment.id, data.appointment.userName);
  }

  pw.Widget _buildPdfLayout(
    pw.Context context,
    pw.Font ttf,
    pw.Font ttfBold, {
    required String doctorName,
    required String doctorSpecialization,
    required String doctorEmail,
    required String patientName,
    required String appointmentId,
    required DateTime appointmentDate,
    required String symptoms,
    required String notes,
    required List<_MedicinePdfModel> medicines,
  }) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        // Header
        pw.Header(
          level: 0,
          child: pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
            children: [
              pw.Text(
                'MediTrack',
                style: pw.TextStyle(font: ttfBold, fontSize: 24),
              ),
              pw.Text(
                'Prescription',
                style: pw.TextStyle(font: ttf, fontSize: 18),
              ),
            ],
          ),
        ),
        pw.SizedBox(height: 20),

        // Doctor & Patient Info
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text(
                  'Doctor Details',
                  style: pw.TextStyle(font: ttfBold, fontSize: 14),
                ),
                pw.Text(doctorName, style: pw.TextStyle(font: ttf)),
                pw.Text(doctorSpecialization, style: pw.TextStyle(font: ttf)),
                if (doctorEmail.isNotEmpty)
                  pw.Text(doctorEmail, style: pw.TextStyle(font: ttf)),
              ],
            ),
            pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.end,
              children: [
                pw.Text(
                  'Patient Details',
                  style: pw.TextStyle(font: ttfBold, fontSize: 14),
                ),
                pw.Text(patientName, style: pw.TextStyle(font: ttf)),
                pw.Text(
                  'Appt ID: #$appointmentId',
                  style: pw.TextStyle(font: ttf),
                ),
                pw.Text(
                  'Date: ${DateFormat('yyyy-MM-dd').format(appointmentDate)}',
                  style: pw.TextStyle(font: ttf),
                ),
              ],
            ),
          ],
        ),
        pw.Divider(),
        pw.SizedBox(height: 10),

        // Symptoms & Notes
        pw.Text('Symptoms:', style: pw.TextStyle(font: ttfBold, fontSize: 12)),
        pw.Text(symptoms, style: pw.TextStyle(font: ttf)),
        pw.SizedBox(height: 5),
        pw.Text('Notes:', style: pw.TextStyle(font: ttfBold, fontSize: 12)),
        pw.Text(notes, style: pw.TextStyle(font: ttf)),
        pw.SizedBox(height: 20),

        // Medicines Table
        pw.Text('Medicines', style: pw.TextStyle(font: ttfBold, fontSize: 16)),
        pw.SizedBox(height: 10),
        pw.TableHelper.fromTextArray(
          context: context,
          border: null,
          headerStyle: pw.TextStyle(
            font: ttfBold,
            fontWeight: pw.FontWeight.bold,
          ),
          headerDecoration: const pw.BoxDecoration(color: PdfColors.grey300),
          cellStyle: pw.TextStyle(font: ttf),
          cellAlignments: {
            0: pw.Alignment.centerLeft,
            1: pw.Alignment.centerLeft,
            2: pw.Alignment.centerLeft,
            3: pw.Alignment.centerLeft,
          },
          data: <List<String>>[
            ['Medicine', 'Dosage', 'Frequency', 'Days'],
            ...medicines.map(
              (m) => [
                m.name,
                m.dosage,
                '${m.frequency}x (${m.timeOfDay.join(", ")}) - ${m.foodInstruction}',
                m.numberOfDays.toString(),
              ],
            ),
          ],
        ),

        pw.SizedBox(height: 20),
        pw.Footer(
          leading: pw.Text(
            DateFormat('yyyy-MM-dd HH:mm').format(DateTime.now()),
            style: pw.TextStyle(font: ttf, fontSize: 10),
          ),
          trailing: pw.Text(
            'Generated by MediTrack',
            style: pw.TextStyle(font: ttf, fontSize: 10),
          ),
        ),
      ],
    );
  }

  Future<void> _saveAndShare(
    pw.Document pdf,
    dynamic id,
    String username,
  ) async {
    final output = await getTemporaryDirectory();
    final file = File('${output.path}/prescription_$id.pdf');
    await file.writeAsBytes(await pdf.save());

    // ignore: deprecated_member_use
    await Share.shareXFiles([
      XFile(file.path),
    ], text: 'Prescription for $username');
  }
}

class _MedicinePdfModel {
  final String name;
  final String dosage;
  final int frequency;
  final List<String> timeOfDay;
  final String foodInstruction;
  final int numberOfDays;

  _MedicinePdfModel({
    required this.name,
    required this.dosage,
    required this.frequency,
    required this.timeOfDay,
    required this.foodInstruction,
    required this.numberOfDays,
  });
}
