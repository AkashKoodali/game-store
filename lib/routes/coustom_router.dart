import 'package:auto_route/auto_route.dart';
import 'package:covid_app/screens/deatails_page.dart';
import 'package:covid_app/screens/landing_page.dart';



@MaterialAutoRouter(
  replaceInRouteName:'Page,Route',
  routes:<AutoRoute>[
    AutoRoute(page:LandingPage,initial:true),
     AutoRoute(page:DetailsPage),
  ],
)
//extends the generated private router
class  $AppRouter{}

