/*
import 'package:flutter/material.dart';

import '../../models/dietitian_model.dart';
import '../../models/document/document_model.dart';
import '../../models/static_data/expansion_tile_list_model.dart';
import '../../module/account_settings/account_settings_page.dart';
import '../../module/cancel_subscription/cancel_subscription_page.dart';
import '../../module/chat/chat_page.dart';
import '../../module/explore/article/explore_article_page.dart';
import '../../module/explore/course/explore_course_page.dart';
import '../../module/explore/overview/explore_overview_page.dart';
import '../../module/faq/faq/faq_page.dart';
import '../../module/faq/faq_detail/faq_detail_page.dart';
import '../../module/home/home_page.dart';
import '../../module/home/home_tab/add_a_log/daily_diary/daily_diary_page.dart';
import '../../module/home/home_tab/home_tab_page.dart';
import '../../module/home/home_tab/tabs/dashboard_tab/widgets/need_more_shakes_web_view_page.dart';
import '../../module/home/widget/add_a_log_page.dart';
import '../../module/introduce/1_meet_your_dietitian/dietitian_profile/dietitian_profile_page.dart';
import '../../module/introduce/1_meet_your_dietitian/meet_your_dietitian_page.dart';
import '../../module/introduce/2_push_notification_on_board/push_notification_on_board_page.dart';
import '../../module/introduce/3_health_notification_on_board/health_notification_on_board_page.dart';
import '../../module/introduce/4_set_up/introduce_setup_page.dart';
import '../../module/introduce/book_recurring_appointments_info/book_recurring_appointments_info_page.dart';
import '../../module/introduce/book_your_screening/book_your_screening_page.dart';
import '../../module/introduce/introduce_yourself/introduce_yourself_page.dart';
import '../../module/introduce/recurring_appointment/recurring_appointment_page.dart';
import '../../module/introduce/select_datetime/select_datetime_introduce_page.dart';
import '../../module/landing/landing_page.dart';
import '../../module/not_available/not_available.dart';
import '../../module/notifications/notifications_page.dart';
import '../../module/notifications/pages/last_payment_notification_page.dart';
import '../../module/notifications/pages/mic_access_notification_page.dart';
import '../../module/notifications/pages/push_notification_page.dart';
import '../../module/notifications/pages/steps_pop_up_page.dart';
import '../../module/notifications/pages/updater_notification_page.dart';
import '../../module/payment/change_payment_method/change_payment_method_page.dart';
import '../../module/payment/change_payment_method/widgets/cancel_subscription_web_view_page.dart';
import '../../module/payment/last_payment_failed/last_payment_failed_page.dart';
import '../../module/privacy_policy_and_terms/privacy_policy_and_terms_page.dart';
import '../../module/progress/all_progress_data_details/all_progress_data_details_page.dart';
import '../../module/progress/all_progress_data_months/all_progress_data_months_page.dart';
import '../../module/progress/progress_page.dart';
import '../../module/report_problem/report_problem_page.dart';
import '../../module/reset_password/reset_password/reset_password_page.dart';
import '../../module/reset_password/reset_password_confirmation/reset_password_confirmation_page.dart';
import '../../module/sign_in/signin_page.dart';
import '../../module/sign_up/sign_up_page.dart';
import '../../module/start/start_page.dart';
import '../../module/update_password/update_password_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case 'landing':
        {
          return _navigate(const LandingPage());
        }

      case 'signin_page':
        {
          return _navigate(const SignInPage());
        }

      case 'reset_password_page':
        {
          return _navigate(const ResetPasswordPage());
        }

      case 'reset_password_confirmation_page':
        {
          return _navigate(ResetPasswordConfirmationPage(
              username: routeSettings.arguments as String));
        }

      case UpdatePasswordPage.route:
        {
          return _navigate(const UpdatePasswordPage());
        }

      case MeetYourDietitianPage.route:
        {
          return _navigate(const MeetYourDietitianPage());
        }

      case DietitianProfilePage.route:
        {
          return _navigateWithoutAnimation(DietitianProfilePage(
              model: routeSettings.arguments as DietitianModel));
        }

      case 'introduce_yourself_page':
        {
          return _navigate(const IntroduceYourselfPage());
        }

      case 'book_your_screening_page':
        {
          return _navigate(const BookYourScreeningPage());
        }

      case 'select_datetime_introduce_page':
        {
          return _navigate(const SelectDatetimeIntroducePage());
        }

      case 'recurring_appointments':
        {
          return _navigate(const BookRecurringAppointmentsPage());
        }

      case 'recurring_appointment_weekday':
        {
          return _navigate(const RecurringAppointmentPage());
        }

      case HomePage.route:
        {
          return _navigate(const HomePage());
        }

      case AccountSettingsPage.route:
        {
          return _navigate(const AccountSettingsPage());
        }

      case SetUpPage.route:
        {
          return _navigateWithoutAnimation(const SetUpPage());
        }

      case 'faq_page':
        {
          return _navigate(const FAQPage());
        }

      case FAQDetailPage.route:
        {
          return _navigate(FAQDetailPage(
              faqs: routeSettings.arguments as ExpansionTileListModel));
        }

      case 'report_a_problem_page':
        {
          return _navigate(const ReportProblemPage());
        }

      case PrivacyPolicyAndTermsPage.route:
        {
          return _navigate(PrivacyPolicyAndTermsPage(
            tab: (routeSettings.arguments as PrivacyPolicyAndTermsTabType) ??
                PrivacyPolicyAndTermsTabType.privacyPolicy,
          ));
        }

      case LastPaymentFailedPage.route:
        {
          return _navigate(const LastPaymentFailedPage());
        }

      case ChangePaymentMethodPage.route:
        {
          return _navigate(const ChangePaymentMethodPage());
        }

      case CancelSubscriptionWebViewPage.route:
        {
          return _navigate(
            CancelSubscriptionWebViewPage(
              url: routeSettings.arguments as String,
            ),
          );
        }

      case CancelSubscriptionPage.route:
        {
          return _navigate(const CancelSubscriptionPage());
        }

      case AllProgressDataMonthsPage.route:
        {
          return _navigate(const AllProgressDataMonthsPage());
        }
      case ExploreCoursePage.route:
        {
          return _navigate(ExploreCoursePage(
              titleWithSubtitle:
                  routeSettings.arguments as CoursePageArguments));
        }

      case NotificationsPage.route:
        {
          return _navigate(const NotificationsPage());
        }

      case NeedMoreShakesWebViewPage.route:
        {
          return _navigate(
            NeedMoreShakesWebViewPage(
              url: routeSettings.arguments as String,
            ),
          );
        }
      case 'push_notification_activate_page':
        {
          return _navigate(const PushNotificationActivatePage());
        }

      case 'last_payment_notification':
        {
          return _navigate(const LastPaymentNotificationPage());
        }

      case 'mic_access_notification':
        {
          return _navigate(const MicAccessNotificationPage());
        }

      case ProgressPage.route:
        {
          return _navigate(const ProgressPage());
        }

      case ChatPage.route:
        {
          return _navigate(const ChatPage());
        }

      case ExploreOverviewPage.route:
        {
          return _navigate(const ExploreOverviewPage());
        }

      case HomeTabPage.route:
        {
          return _navigate(HomeTabPage(
              onLogButtonTap: routeSettings.arguments as void Function()));
        }

      case '/':
        {
          return _navigate(const StartPage());
        }

      case AllProgressDataDetailsPage.route:
        {
          return _navigate(AllProgressDataDetailsPage(
              lastDayInMonth: routeSettings.arguments as DateTime));
        }

      case DailyDiaryPage.route:
        {
          return _navigate(const DailyDiaryPage());
        }

      case ExploreArticlePage.route:
        {
          return _navigate(ExploreArticlePage(
              article: routeSettings.arguments as DocumentModel));
        }

      case StepsPopUpPage.route:
        {
          return _navigate(const StepsPopUpPage());
        }

      case UpdaterNotificationPage.route:
        {
          return _navigate(const UpdaterNotificationPage());
        }

      case SignUpPage.route:
        {
          return _navigate(const SignUpPage());
        }

      case AddALogPage.route:
        {
          return _navigate(const AddALogPage());
        }

      case 'push_notification_on_board_page':
        {
          return _navigateWithoutAnimation(const PushNotificationOnBoardPage());
        }

      case 'health_notification_on_board_page':
        {
          return _navigateWithoutAnimation(
              const HealthNotificationOnBoardPage());
        }

      default:
        return _navigate(NotAvailablePage(route: routeSettings.name));
    }
  }

  static MaterialPageRoute<dynamic> _navigate(Widget widget) {
    return MaterialPageRoute<dynamic>(builder: (context) => widget);
  }

  static PageRouteBuilder<dynamic> _navigateWithoutAnimation(Widget widget) {
    return PageRouteBuilder<dynamic>(pageBuilder: (_, __, ___) => widget);
  }
}
*/
