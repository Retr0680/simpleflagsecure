.class interface abstract Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$Injector;
.super Ljava/lang/Object;
.source "IntrusionDetectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Injector"
.end annotation


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDataAggregator(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;)Lcom/android/server/security/intrusiondetection/DataAggregator;
.end method

.method public abstract getIntrusionDetectionEventransportConnection()Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;
.end method

.method public abstract getLooper()Landroid/os/Looper;
.end method

.method public abstract getPermissionEnforcer()Landroid/os/PermissionEnforcer;
.end method
