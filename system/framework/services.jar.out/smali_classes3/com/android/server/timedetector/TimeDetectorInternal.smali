.class public interface abstract Lcom/android/server/timedetector/TimeDetectorInternal;
.super Ljava/lang/Object;
.source "TimeDetectorInternal.java"


# virtual methods
.method public abstract addNetworkTimeUpdateListener(Lcom/android/server/timezonedetector/StateChangeListener;)V
.end method

.method public abstract getCapabilitiesAndConfigForDpm()Landroid/app/time/TimeCapabilitiesAndConfig;
.end method

.method public abstract getLatestNetworkSuggestion()Lcom/android/server/timedetector/NetworkTimeSuggestion;
.end method

.method public abstract setManualTimeForDpm(Landroid/app/timedetector/ManualTimeSuggestion;)Z
.end method

.method public abstract suggestGnssTime(Lcom/android/server/timedetector/GnssTimeSuggestion;)V
.end method

.method public abstract suggestNetworkTime(Lcom/android/server/timedetector/NetworkTimeSuggestion;)V
.end method

.method public abstract updateConfigurationForDpm(Landroid/app/time/TimeConfiguration;)Z
.end method
