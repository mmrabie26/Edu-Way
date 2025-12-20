import 'package:eduway/feature/authentication/view/login_view.dart';
import 'package:eduway/feature/authentication/view/sign_up_view.dart';
import 'package:eduway/feature/authentication/view/verify_otp_view.dart';
import 'package:eduway/feature/home/view/home_view.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AppRouter {
  static const _login = '/login';
  static const login = 'login';

  static const _signUp = '/signUp';
  static const signUp = 'signUp';

  static const _verifyOtp = '/verifyOtp/:email';
  static const verifyOtp = 'verifyOtp';

  static const _home = '/home';
  static const home = 'home';

  static final GoRouter router = GoRouter(
    initialLocation: _login,
    routes: [

      // Authentication Routes
      GoRoute(
        path: _login,
        name: login,
        builder: (context, state) {
          final Session? session=Supabase.instance.client.auth.currentSession;
          if(session!=null){
            Future.microtask(() => GoRouter.of(context).go('/home'));
          }
          return LoginView();
        },
      ),
      GoRoute(
        path: _signUp,
        name: signUp,
        builder: (context, state) => SignUpView(),
      ),
      GoRoute(
        path: _verifyOtp,
        name: verifyOtp,
        builder: (context, state) {
          final String email = state.pathParameters['email']!;
          return VerifyOtpView(email: email);
        },
      ),

      // Home Route
      GoRoute(path: _home, name: home, builder: (context, state) => HomeView()),
    ],
  );
}
