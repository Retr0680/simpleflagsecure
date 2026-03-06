.class public interface abstract Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;
.super Ljava/lang/Object;
.source "ActivityTaskManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScreenObserver"
.end annotation


# virtual methods
.method public onAwakeStateChanged(Z)V
    .locals 0
    .param p1, "isAwake"    # Z

    .line 127
    return-void
.end method

.method public onKeyguardGoingAway()V
    .locals 0

    .line 129
    return-void
.end method

.method public onKeyguardStateChanged(Z)V
    .locals 0
    .param p1, "isShowing"    # Z

    .line 128
    return-void
.end method
