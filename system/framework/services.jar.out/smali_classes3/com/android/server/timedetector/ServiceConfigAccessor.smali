.class public interface abstract Lcom/android/server/timedetector/ServiceConfigAccessor;
.super Ljava/lang/Object;
.source "ServiceConfigAccessor.java"


# virtual methods
.method public abstract addConfigurationInternalChangeListener(Lcom/android/server/timezonedetector/StateChangeListener;)V
.end method

.method public abstract getConfigurationInternal(I)Lcom/android/server/timedetector/ConfigurationInternal;
.end method

.method public abstract getCurrentUserConfigurationInternal()Lcom/android/server/timedetector/ConfigurationInternal;
.end method

.method public abstract removeConfigurationInternalChangeListener(Lcom/android/server/timezonedetector/StateChangeListener;)V
.end method

.method public abstract updateConfiguration(ILandroid/app/time/TimeConfiguration;Z)Z
.end method
