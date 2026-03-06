.class public interface abstract Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;
.super Ljava/lang/Object;
.source "TimeZoneDetectorInternal.java"


# virtual methods
.method public abstract generateMetricsState()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;
.end method

.method public abstract getCapabilitiesAndConfigForDpm()Landroid/app/time/TimeZoneCapabilitiesAndConfig;
.end method

.method public abstract handleLocationAlgorithmEvent(Lcom/android/server/timezonedetector/LocationAlgorithmEvent;)V
.end method

.method public abstract setManualTimeZoneForDpm(Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)Z
.end method

.method public abstract updateConfigurationForDpm(Landroid/app/time/TimeZoneConfiguration;)Z
.end method
