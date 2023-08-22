import '../../core/infrastructure/common_import.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Spacer(),
          Material(
            elevation: 0,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            child: Image.asset(
              'assets/icons/logo.png',
              width: 150,
            ),
          ),
          gapH18,
          Text(
            'Taxi Chrono\nDriver',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  fontSize: 30,
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const Spacer(),
          Image.asset(
            'assets/images/bg.png',
            width: double.infinity,
            fit: BoxFit.fitWidth,
          )
        ],
      ),
    );
  }
}
