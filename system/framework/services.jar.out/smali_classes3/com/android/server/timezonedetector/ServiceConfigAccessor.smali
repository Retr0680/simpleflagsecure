.class public interface abstract Lcom/android/server/timezonedetector/ServiceConfigAccessor;
.super Ljava/lang/Object;
.source "ServiceConfigAccessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezonedetector/ServiceConfigAccessor$ProviderMode;
    }
.end annotation


# static fields
.field public static final PROVIDER_MODE_DISABLED:Ljava/lang/String; = "disabled"

.field public static final PROVIDER_MODE_ENABLED:Ljava/lang/String; = "enabled"


# virtual methods
.method public abstract addConfigurationInternalChangeListener(Lcom/android/server/timezonedetector/StateChangeListener;)V
.end method

.method public abstract addLocationTimeZoneManagerConfigListener(Lcom/android/server/timezonedetector/StateChangeListener;)V
.end method

.method public abstract getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;
.end method

.method public abstract getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;
.end method

.method public abstract getGeoDetectionSettingEnabledOverride()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocationTimeZoneProviderEventFilteringAgeThreshold()Ljava/time/Duration;
.end method

.method public abstract getLocationTimeZoneProviderInitializationTimeout()Ljava/time/Duration;
.end method

.method public abstract getLocationTimeZoneProviderInitializationTimeoutFuzz()Ljava/time/Duration;
.end method

.method public abstract getLocationTimeZoneUncertaintyDelay()Ljava/time/Duration;
.end method

.method public abstract getPrimaryLocationTimeZoneProviderMode()Ljava/lang/String;
.end method

.method public abstract getPrimaryLocationTimeZoneProviderPackageName()Ljava/lang/String;
.end method

.method public abstract getRecordStateChangesForTests()Z
.end method

.method public abstract getSecondaryLocationTimeZoneProviderMode()Ljava/lang/String;
.end method

.method public abstract getSecondaryLocationTimeZoneProviderPackageName()Ljava/lang/String;
.end method

.method public abstract isGeoDetectionEnabledForUsersByDefault()Z
.end method

.method public abstract isGeoTimeZoneDetectionFeatureSupported()Z
.end method

.method public abstract isGeoTimeZoneDetectionFeatureSupportedInConfig()Z
.end method

.method public abstract isTelephonyTimeZoneDetectionFeatureSupported()Z
.end method

.method public abstract isTestPrimaryLocationTimeZoneProvider()Z
.end method

.method public abstract isTestSecondaryLocationTimeZoneProvider()Z
.end method

.method public abstract removeConfigurationInternalChangeListener(Lcom/android/server/timezonedetector/StateChangeListener;)V
.end method

.method public abstract resetVolatileTestConfig()V
.end method

.method public abstract setRecordStateChangesForTests(Z)V
.end method

.method public abstract setTestPrimaryLocationTimeZoneProviderPackageName(Ljava/lang/String;)V
.end method

.method public abstract setTestSecondaryLocationTimeZoneProviderPackageName(Ljava/lang/String;)V
.end method

.method public abstract updateConfiguration(ILandroid/app/time/TimeZoneConfiguration;Z)Z
.end method
