import '../../module/home_screan/start_screen_bloc.dart';
import '../service/database/dao/user_dao.dart';
import '../service/image_picker/image_picker.dart';
import '../service/router/router.dart';
import 'service_locator.dart';

void setupBlock() {
  sl
    ..registerFactory<SaveFastingBloc>(() => SaveFastingBloc(
          recentPicModelDao: getIts<RecentPicDao>(),
          router: getIts<RouterI>(),
          imagePicker: getIts<ImagePickerServiceI>(),
        ));
  /*
    ..registerFactory<SignInBlocI>(() => SignInBloc(
          userRepository: getIts<UserRepositoryI>(),
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          validator: getIts<TextValidatorI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
        ))
    ..registerFactory<ResetPasswordConfirmationBlocI>(
        () => ResetPasswordConfirmationBloc(
              router: getIts<RouterI>(),
              logger: getIts<LoggerProviderI>(),
              validator: getIts<TextValidatorI>(),
              userRepository: getIts<UserRepositoryI>(),
              messageProvider: getIts<ErrorMessageProviderI>(),
            ))
    ..registerFactory<ResetPasswordBlocI>(() => ResetPasswordBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          validator: getIts<TextValidatorI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          userRepository: getIts<UserRepositoryI>(),
        ))
    ..registerFactory<UpdatePasswordBlocI>(() => UpdatePasswordBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          validator: getIts<TextValidatorI>(),
          userRepository: getIts<UserRepositoryI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
        ))
    ..registerFactory<MeetYourDietitianBlocI>(() => MeetYourDietitianBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          dietitianRepository: getIts<DietitianRepositoryI>(),
        ))
    ..registerFactory<DietitianProfileBlocI>(() => DietitianProfileBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
        ))
    ..registerFactory<IntroduceYourselfBlocI>(() => IntroduceYourselfBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
        ))
    ..registerFactory<BookYourScreeninBlocI>(() => BookYourScreeninBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
        ))
    ..registerFactory<AccountSettingsBlocI>(() => AccountSettingsBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          userRepository: getIts<UserRepositoryI>(),
        ))
    ..registerFactory<EditTitleBlocI>(() => EditTitleBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          userRepository: getIts<UserRepositoryI>(),
          appDictionaryRepository: getIts<AppDictionaryRepositoryI>(),
        ))
    ..registerFactory<EditFirstNameBlocI>(() => EditFirstNameBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          userRepository: getIts<UserRepositoryI>(),
        ))
    ..registerFactory<EditLastNameBlocI>(() => EditLastNameBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          userRepository: getIts<UserRepositoryI>(),
        ))
    ..registerFactory<EditPreferredNameBlocI>(() => EditPreferredNameBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          userRepository: getIts<UserRepositoryI>(),
        ))
    ..registerFactory<EditDateOfBirthBlocI>(() => EditDateOfBirthBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          userRepository: getIts<UserRepositoryI>(),
        ))
    ..registerFactory<EditGenderBlocI>(() => EditGenderBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          userRepository: getIts<UserRepositoryI>(),
          appDictionaryRepository: getIts<AppDictionaryRepositoryI>(),
        ))
    ..registerFactory<EditEmailBlocI>(() => EditEmailBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          validator: getIts<TextValidatorI>(),
          userRepository: getIts<UserRepositoryI>(),
        ))
    ..registerFactory<EditContactNumberBlocI>(() => EditContactNumberBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          validator: getIts<TextValidatorI>(),
          userRepository: getIts<UserRepositoryI>(),
        ))
    ..registerFactory<EditLanguageBlocI>(() => EditLanguageBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          userRepository: getIts<UserRepositoryI>(),
          appDictionaryRepository: getIts<AppDictionaryRepositoryI>(),
        ))
    ..registerFactory<PrivacyPolicyAndTermsBlocI>(
        () => PrivacyPolicyAndTermsBloc(
              router: getIts<RouterI>(),
              logger: getIts<LoggerProviderI>(),
              messageProvider: getIts<ErrorMessageProviderI>(),
              privacyPolicyAndTermsRepository: getIts<StaticDataRepositoryI>(),
            ))
    ..registerFactory<SelectDatetimeIntroduceBlocI>(
        () => SelectDatetimeIntroduceBloc(
              router: getIts<RouterI>(),
              logger: getIts<LoggerProviderI>(),
            ))
    ..registerFactory<BookRecurringAppointmentsBlocI>(
        // ignore: cascade_invocations
        () => RecurringAppointmentsBloc(
              router: getIts<RouterI>(),
              logger: getIts<LoggerProviderI>(),
            ))
    ..registerFactory<RecurringAppointmentBlocI>(() => RecurringAppointmentBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
        ))
    ..registerFactory<SetUpBlocI>(() => SetUpBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          userRepository: getIts<UserRepositoryI>(),
        ))
    ..registerFactory<FAQBlocI>(() => FAQBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          staticDataRepository: getIts<StaticDataRepositoryI>(),
        ))
    ..registerFactory<ReportProblemBlocI>(() => ReportProblemBloc(
          router: getIts<RouterI>(),
          userRepository: getIts<UserRepositoryI>(),
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
        ))
    ..registerFactory<HomeTabBlocI>(() => HomeTabBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          homeNewItemsBadgeRepository: getIts<HomeNewItemsBadgeRepositoryI>(),
          userRepository: getIts<UserRepositoryI>(),
        ))
    ..registerFactory<AddYourHba1cBlocI>(() => AddYourHba1cBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          hba1cUnitConverter: getIts<Hba1CUnitConverterI>(),
          validator: getIts<TextValidatorI>(),
          userRepository: getIts<UserRepositoryI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          appDictionaryRepository: getIts<AppDictionaryRepositoryI>(),
          measurementRepository: getIts<MeasurementRepositoryI>(),
        ))
    ..registerFactory<AddYourWaistCircumferenceBlocI>(
      () => AddYourWaistCircumferenceBloc(
        router: getIts<RouterI>(),
        logger: getIts<LoggerProviderI>(),
        waistCircumferenceUnitConverter:
            getIts<WaistCircumferenceUnitConverterI>(),
        userRepository: getIts<UserRepositoryI>(),
        messageProvider: getIts<ErrorMessageProviderI>(),
        appDictionaryRepository: getIts<AppDictionaryRepositoryI>(),
        measurementRepository: getIts<MeasurementRepositoryI>(),
      ),
    )
    ..registerFactory<AddYourBloodGlucoseBlocI>(
      () => AddYourBloodGlucoseBloc(
        router: getIts<RouterI>(),
        logger: getIts<LoggerProviderI>(),
        validator: getIts<TextValidatorI>(),
        bloodGlucoseUnitConverter: getIts<BloodGlucoseUnitConverterI>(),
        userRepository: getIts<UserRepositoryI>(),
        messageProvider: getIts<ErrorMessageProviderI>(),
        appDictionaryRepository: getIts<AppDictionaryRepositoryI>(),
        measurementRepository: getIts<MeasurementRepositoryI>(),
      ),
    )
    ..registerFactory<AddYourBloodPressureBlocI>(() => AddYourBloodPressureBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          validator: getIts<TextValidatorI>(),
          userRepository: getIts<UserRepositoryI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          measurementRepository: getIts<MeasurementRepositoryI>(),
        ))
    ..registerFactory<LastPaymentFailedBlocI>(() => LastPaymentFailedBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          userRepository: getIts<UserRepositoryI>(),
        ))
    ..registerFactory<EditDoctorNameBlocI>(() => EditDoctorNameBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          userRepository: getIts<UserRepositoryI>(),
        ))
    ..registerFactory<EditSurgeryNameBlocI>(() => EditSurgeryNameBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          userRepository: getIts<UserRepositoryI>(),
        ))
    ..registerFactory<CommunicationPreferencesBlocI>(
        () => CommunicationPreferencesBloc(
              router: getIts<RouterI>(),
              logger: getIts<LoggerProviderI>(),
              messageProvider: getIts<ErrorMessageProviderI>(),
              userRepository: getIts<UserRepositoryI>(),
            ))
    ..registerFactory<UnitPreferencesBlocI>(() => UnitPreferencesBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          userRepository: getIts<UserRepositoryI>(),
          appDictionaryRepository: getIts<AppDictionaryRepositoryI>(),
        ))
    ..registerFactory<CancelSubscriptionWidgetBlocI>(
        () => CancelSubscriptionWidgetBloc(
              router: getIts<RouterI>(),
            ))
    ..registerFactory<TextSizeBlocI>(() => TextSizeBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          userRepository: getIts<UserRepositoryI>(),
          appDictionaryRepository: getIts<AppDictionaryRepositoryI>(),
        ))
    ..registerFactory<AddYourWeightBlocI>(
      () => AddYourWeightBloc(
        router: getIts<RouterI>(),
        logger: getIts<LoggerProviderI>(),
        weightUnitConverter: getIts<WeightUnitConverterI>(),
        userRepository: getIts<UserRepositoryI>(),
        messageProvider: getIts<ErrorMessageProviderI>(),
        appDictionaryRepository: getIts<AppDictionaryRepositoryI>(),
        measurementRepository: getIts<MeasurementRepositoryI>(),
      ),
    )
    ..registerFactory<ChangePaymentMethodBlocI>(() => ChangePaymentMethodBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          userRepository: getIts<UserRepositoryI>(),
        ))
    ..registerFactory<CancelSubscriptionBlocI>(() => CancelSubscriptionBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
        ))
    ..registerFactory<AddYourMoodBlocI>(() => AddYourMoodBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          userRepository: getIts<UserRepositoryI>(),
          measurementRepository: getIts<MeasurementRepositoryI>(),
        ))
    ..registerFactory<NotificationsBlocI>(() => NotificationsBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          notificationRepository: getIts<NotificationRepositoryI>(),
        ))
    ..registerFactory<DashboardTabBlocI>(() => DashboardTabBloc(
        router: getIts<RouterI>(),
        logger: getIts<LoggerProviderI>(),
        messageProvider: getIts<ErrorMessageProviderI>(),
        documentRepository: getIts<DocumentRepositoryI>(),
        userRepository: getIts<UserRepositoryI>()))
    ..registerFactory<BodyMeasurementsTabBlocI>(() => BodyMeasurementsTabBloc(
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          userRepository: getIts<UserRepositoryI>(),
          measurementRepository: getIts<MeasurementRepositoryI>(),
          unitConverter: getIts<WaistCircumferenceUnitConverterI>(),
          appDictionaryRepository: getIts<AppDictionaryRepositoryI>(),
        ))
    ..registerFactory<WeightTabBlocI>(() => WeightTabBloc(
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          userRepository: getIts<UserRepositoryI>(),
          measurementRepository: getIts<MeasurementRepositoryI>(),
          unitConverter: getIts<WeightUnitConverterI>(),
          appDictionaryRepository: getIts<AppDictionaryRepositoryI>(),
        ))
    ..registerFactory<Hba1cTabBlocI>(() => Hba1cTabBloc(
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          userRepository: getIts<UserRepositoryI>(),
          measurementRepository: getIts<MeasurementRepositoryI>(),
          unitConverter: getIts<Hba1CUnitConverterI>(),
          appDictionaryRepository: getIts<AppDictionaryRepositoryI>(),
        ))
    ..registerFactory<StepsTabBlocI>(() => StepsTabBloc(
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          measurementRepository: getIts<MeasurementRepositoryI>(),
        ))
    ..registerFactory<BloodGlucoseTabBlocI>(() => BloodGlucoseTabBloc(
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          userRepository: getIts<UserRepositoryI>(),
          measurementRepository: getIts<MeasurementRepositoryI>(),
          unitConverter: getIts<BloodGlucoseUnitConverterI>(),
          appDictionaryRepository: getIts<AppDictionaryRepositoryI>(),
        ))
    ..registerFactory<BloodPressureTabBlocI>(() => BloodPressureTabBloc(
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          measurementRepository: getIts<MeasurementRepositoryI>(),
        ))
    ..registerFactory<AllProgressDataMonthsBlocI>(
        () => AllProgressDataMonthsBloc(
              logger: getIts<LoggerProviderI>(),
              messageProvider: getIts<ErrorMessageProviderI>(),
              userRepository: getIts<UserRepositoryI>(),
            ))
    ..registerFactory<ProgressDataListBlocI>(() => ProgressDataListBloc(
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          userRepository: getIts<UserRepositoryI>(),
          measurementRepository: getIts<MeasurementRepositoryI>(),
          hba1CUnitConverter: getIts<Hba1CUnitConverterI>(),
          bloodGlucoseUnitConverter: getIts<BloodGlucoseUnitConverterI>(),
          waistCircumferenceUnitConverter:
              getIts<WaistCircumferenceUnitConverterI>(),
          weightConverter: getIts<WeightUnitConverterI>(),
          appDictionaryRepository: getIts<AppDictionaryRepositoryI>(),
        ))
    ..registerFactory<StartBlocI>(() => StartBloc(
          router: getIts<RouterI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          logger: getIts<LoggerProviderI>(),
          userRepository: getIts<UserRepositoryI>(),
        ))
    ..registerFactory<FAQDetailBlocI>(() => FAQDetailBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
        ))
    ..registerFactory<DailyDiaryBlocI>(() => DailyDiaryBloc(
        router: getIts<RouterI>(),
        logger: getIts<LoggerProviderI>(),
        imagePickerService: getIts<ImagePickerServiceI>()))
    ..registerFactory<HomeBlocI>(() => HomeBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
        ))
    ..registerFactory<GoalTabBlocI>(() => GoalTabBloc(
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          goalsRepository: getIts<GoalsRepositoryI>(),
          homeNewItemsBadgeRepository: getIts<HomeNewItemsBadgeRepositoryI>(),
        ))
    ..registerFactory<ActivitiesTabBlocI>(() => ActivitiesTabBloc(
          activitiesRepository: getIts<ActivitiesRepositoryI>(),
          homeNewItemsBadgeRepository: getIts<HomeNewItemsBadgeRepositoryI>(),
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          router: getIts<RouterI>(),
        ))
    ..registerFactory<ExploreOverviewBlocI>(() => ExploreOverviewBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          documentRepository: getIts<DocumentRepositoryI>(),
          userRepository: getIts<UserRepositoryI>(),
        ))
    ..registerFactory<ExploreCourseBlocI>(() => ExploreCourseBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          documentRepository: getIts<DocumentRepositoryI>(),
          userRepository: getIts<UserRepositoryI>(),
        ))
    ..registerFactory<ExploreArticleBlocI>(() => ExploreArticleBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          documentRepository: getIts<DocumentRepositoryI>(),
          userRepository: getIts<UserRepositoryI>(),
        ))
    ..registerFactory<DocumentRatingBlocI>(() => DocumentRatingBloc(
          router: getIts<RouterI>(),
          logger: getIts<LoggerProviderI>(),
          messageProvider: getIts<ErrorMessageProviderI>(),
          documentRepository: getIts<DocumentRepositoryI>(),
          appDictionaryRepository: getIts<AppDictionaryRepositoryI>(),
          userRepository: getIts<UserRepositoryI>(),
        ))
    ..registerFactory<PushNotificationOnBoardBlocI>(
        () => PushNotificationOnBoardBloc(
              router: getIts<RouterI>(),
              logger: getIts<LoggerProviderI>(),
              messageProvider: getIts<ErrorMessageProviderI>(),
              notificationRepository: getIts<NotificationRepositoryI>(),
            ))
    ..registerFactory<HealthNotificationOnBoardBlocI>(
        () => HealthNotificationOnBoardBloc(
              router: getIts<RouterI>(),
              logger: getIts<LoggerProviderI>(),
              messageProvider: getIts<ErrorMessageProviderI>(),
              healthIntegration: getIts<HealthIntegrationI>(),
            ));*/
}
