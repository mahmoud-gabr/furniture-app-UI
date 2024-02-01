import 'package:furniture_app/features/home/data/models/furniture_item_model.dart';
import 'package:furniture_app/features/home/presentation/views/furniture_details_view.dart';
import 'package:furniture_app/features/home/presentation/views/home_view.dart';
import 'package:furniture_app/features/onboarding/presentation/views/onboard_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static const kHomeView = '/HomeView';
  static const kFurnitureDetailsView = '/FurnitureDetailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnboardView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kFurnitureDetailsView,
        builder: (context, state) =>  FurnitureDetailsView(
          itemModel: state.extra as FurnitureItemModel,
        ),
      ),
    ],
  );
}
