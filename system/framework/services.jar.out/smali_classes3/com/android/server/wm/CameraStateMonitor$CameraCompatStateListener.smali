.class interface abstract Lcom/android/server/wm/CameraStateMonitor$CameraCompatStateListener;
.super Ljava/lang/Object;
.source "CameraStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/CameraStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "CameraCompatStateListener"
.end annotation


# virtual methods
.method public abstract canCameraBeClosed(Ljava/lang/String;)Z
.end method

.method public abstract onCameraClosed()V
.end method

.method public abstract onCameraOpened(Lcom/android/server/wm/ActivityRecord;)V
.end method
