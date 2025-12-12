// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_colors.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/core/export/storage_export.dart';
import 'package:medi_track/modules/splash_screen_module/view/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final bool isLoggedIn = await AuthStorageFunctions.getLoginStatus();
  bool isFirstLaunch = await AppStorgeFunctions.getIntroScreenStatus();

  runApp(MyApp(isFirstLaunch: isFirstLaunch, isLoggedIn: isLoggedIn));
}

class MyApp extends StatelessWidget {
  final bool isFirstLaunch;
  final bool isLoggedIn;
  const MyApp({
    super.key,
    required this.isFirstLaunch,
    required this.isLoggedIn,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthBloc()),
        BlocProvider(create: (context) => UserRegisterBloc()),
        BlocProvider(create: (context) => DepartmentsCubit()),
        BlocProvider(create: (context) => AvailableDoctorsCubit()),
        BlocProvider(create: (context) => ExpectedTokenCubit()),
        BlocProvider(create: (context) => UserProfileCubit()),
        BlocProvider(create: (context) => AppointmentBookingBloc()),
        BlocProvider(create: (context) => AppointmentDetailsCubit()),
        BlocProvider(create: (context) => PaymentBloc()),
        BlocProvider(create: (context) => AppointmentListCubit()),
        BlocProvider(create: (context) => CancelAppointmentBloc()),
        BlocProvider(create: (context) => TokenStatusCubit()),
        BlocProvider(create: (context) => AppointmentPrescriptionCubit()),
        BlocProvider(create: (context) => SubmitFeedbackBloc()),
        BlocProvider(create: (context) => RescheduleTaskBloc()),
        BlocProvider(create: (context) => PrescriptionListCubit()),
        BlocProvider(create: (context) => PrescriptionDetailsCubit()),
        BlocProvider(create: (context) => FeedbackListCubit()),
        BlocProvider(create: (context) => FeedbackDetailsCubit()),
        BlocProvider(create: (context) => RegisterDonorBloc()),
        BlocProvider(create: (context) => IsDonorCubit()),
        BlocProvider(create: (context) => AllBloodRequestsCubit()),
        BlocProvider(create: (context) => UserBloodRequestsCubit()),
      ],
      child: MaterialApp(
        title: 'MediTrack',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.primaryAlt,
            brightness: Brightness.light,
          ),
          // Using Google Fonts for default text theme
          textTheme: GoogleFonts.interTextTheme(),
        ),
        darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.primaryAlt,
            brightness: Brightness.dark,
          ),
          textTheme: GoogleFonts.interTextTheme(ThemeData.dark().textTheme),
        ),
        themeMode: ThemeMode.system,
        home: SplashScreen(
          isFirstLaunch: isFirstLaunch,
          isLoggedIn: isLoggedIn,
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
