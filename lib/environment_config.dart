class EnvironmentConfig {
  // static const String aesGcmKey = String.fromEnvironment('TIPTIP_AES_GCM_KEY');
  // static const String facebookAppId = String.fromEnvironment('TIPTIP_FB_APP_ID');
  // static const String sentryProjectKey = 'https://4103d08bbf9d49fbaea6783a09ee8cf0@o1161903.ingest.sentry.io/6542744';

  static EnvName envName = EnvName.values.byName(const String.fromEnvironment(
    'BASE_ENV_NAME', // possible values: sandbox, staging, production. defaults to production
    defaultValue: 'dev',
  ));
}

enum EnvName { dev, staging, prod }
