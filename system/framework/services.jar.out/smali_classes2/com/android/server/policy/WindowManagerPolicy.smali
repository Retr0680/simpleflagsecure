.class public interface abstract Lcom/android/server/policy/WindowManagerPolicy;
.super Ljava/lang/Object;
.source "WindowManagerPolicy.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/WindowManagerPolicy$WindowState;,
        Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;,
        Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;,
        Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;,
        Lcom/android/server/policy/WindowManagerPolicy$UserRotationMode;,
        Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;,
        Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;,
        Lcom/android/server/policy/WindowManagerPolicy$NavigationBarPosition;
    }
.end annotation


# static fields
.field public static final ACTION_PASS_TO_USER:I = 0x1

.field public static final COLOR_FADE_LAYER:I = 0x40000001

.field public static final FINISH_LAYOUT_REDO_ANIM:I = 0x8

.field public static final FINISH_LAYOUT_REDO_CONFIG:I = 0x2

.field public static final FINISH_LAYOUT_REDO_LAYOUT:I = 0x1

.field public static final FINISH_LAYOUT_REDO_WALLPAPER:I = 0x4

.field public static final TRANSIT_ENTER:I = 0x1

.field public static final TRANSIT_EXIT:I = 0x2

.field public static final TRANSIT_HIDE:I = 0x4

.field public static final TRANSIT_PREVIEW_DONE:I = 0x5

.field public static final TRANSIT_SHOW:I = 0x3

.field public static final USER_ROTATION_FREE:I = 0x0

.field public static final USER_ROTATION_LOCKED:I = 0x1


# direct methods
.method public static userRotationModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "mode"    # I

    .line 1224
    packed-switch p0, :pswitch_data_0

    .line 1230
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1228
    :pswitch_0
    const-string v0, "USER_ROTATION_LOCKED"

    return-object v0

    .line 1226
    :pswitch_1
    const-string v0, "USER_ROTATION_FREE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract adjustConfigurationLw(Landroid/content/res/Configuration;II)V
.end method

.method public abstract applyKeyguardOcclusionChange()I
.end method

.method public abstract canDismissBootAnimation()Z
.end method

.method public abstract checkAddPermission(IZLjava/lang/String;[II)I
.end method

.method public abstract createHiddenByKeyguardExit(ZZZ)Landroid/view/animation/Animation;
.end method

.method public abstract createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;
.end method

.method public abstract dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
.end method

.method public abstract enableKeyguard(Z)V
.end method

.method public abstract enableScreenAfterBoot()V
.end method

.method public abstract exitKeyguardSecurely(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V
.end method

.method public abstract finishedGoingToSleep(II)V
.end method

.method public abstract finishedGoingToSleepGlobal(I)V
.end method

.method public abstract finishedWakingUp(II)V
.end method

.method public abstract finishedWakingUpGlobal(I)V
.end method

.method public abstract getApplicationLaunchKeyboardShortcuts(I)Landroid/view/KeyboardShortcutGroup;
.end method

.method public getFoldedArea()Landroid/graphics/Rect;
    .locals 1

    .line 1255
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public getMaxWindowLayer()I
    .locals 1

    .line 661
    const/16 v0, 0x24

    return v0
.end method

.method public getSubWindowLayerFromTypeLw(I)I
    .locals 2
    .param p1, "type"    # I

    .line 674
    packed-switch p1, :pswitch_data_0

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown sub-window type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/4 v0, 0x0

    return v0

    .line 685
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 681
    :pswitch_1
    const/4 v0, -0x1

    return v0

    .line 683
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 679
    :pswitch_3
    const/4 v0, -0x2

    return v0

    .line 677
    :pswitch_4
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract getUiMode()I
.end method

.method public getWindowLayerFromTypeLw(I)I
    .locals 2
    .param p1, "type"    # I

    .line 487
    invoke-static {p1}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v0

    return v0

    .line 488
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Use getWindowLayerFromTypeLw() or getWindowLayerLw() for alert window types"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWindowLayerFromTypeLw(IZ)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "canAddInternalSystemWindow"    # Z

    .line 509
    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZZ)I

    move-result v0

    return v0
.end method

.method public getWindowLayerFromTypeLw(IZZ)I
    .locals 4
    .param p1, "type"    # I
    .param p2, "canAddInternalSystemWindow"    # Z
    .param p3, "roundedCornerOverlay"    # Z

    .line 532
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    .line 533
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy;->getMaxWindowLayer()I

    move-result v0

    return v0

    .line 535
    :cond_0
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/16 v1, 0x63

    if-gt p1, v1, :cond_1

    .line 536
    const/4 v0, 0x2

    return v0

    .line 539
    :cond_1
    const/16 v1, 0x9

    const/16 v2, 0xa

    const/4 v3, 0x3

    sparse-switch p1, :sswitch_data_0

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown window type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    return v3

    .line 577
    :sswitch_0
    return v2

    .line 590
    :sswitch_1
    const/16 v0, 0x10

    return v0

    .line 592
    :sswitch_2
    const/16 v0, 0x11

    return v0

    .line 637
    :sswitch_3
    const/16 v0, 0x20

    return v0

    .line 580
    :sswitch_4
    const/16 v0, 0xb

    return v0

    .line 619
    :sswitch_5
    const/16 v0, 0x1a

    return v0

    .line 598
    :sswitch_6
    const/16 v0, 0x14

    return v0

    .line 635
    :sswitch_7
    const/16 v0, 0x1f

    return v0

    .line 601
    :sswitch_8
    const/16 v0, 0x15

    return v0

    .line 625
    :sswitch_9
    const/16 v0, 0x1c

    return v0

    .line 628
    :sswitch_a
    const/16 v0, 0x1d

    return v0

    .line 615
    :sswitch_b
    const/16 v0, 0x19

    return v0

    .line 560
    :sswitch_c
    const/4 v0, 0x5

    return v0

    .line 641
    :sswitch_d
    const/16 v0, 0x22

    return v0

    .line 605
    :sswitch_e
    const/16 v0, 0x16

    return v0

    .line 612
    :sswitch_f
    const/16 v0, 0x18

    return v0

    .line 644
    :sswitch_10
    const/16 v0, 0x23

    return v0

    .line 594
    :sswitch_11
    const/16 v0, 0x12

    return v0

    .line 632
    :sswitch_12
    const/16 v0, 0x1e

    return v0

    .line 639
    :sswitch_13
    const/16 v0, 0x21

    return v0

    .line 542
    :sswitch_14
    return v0

    .line 586
    :sswitch_15
    const/16 v0, 0xe

    return v0

    .line 583
    :sswitch_16
    const/16 v0, 0xd

    return v0

    .line 622
    :sswitch_17
    if-eqz p2, :cond_2

    const/16 v1, 0x1b

    :cond_2
    return v1

    .line 596
    :sswitch_18
    const/16 v0, 0x13

    return v0

    .line 562
    :sswitch_19
    const/4 v0, 0x6

    return v0

    .line 568
    :sswitch_1a
    const/16 v0, 0x8

    return v0

    .line 609
    :sswitch_1b
    if-eqz p2, :cond_3

    const/16 v2, 0x17

    :cond_3
    return v2

    .line 565
    :sswitch_1c
    const/4 v0, 0x7

    return v0

    .line 573
    :sswitch_1d
    if-eqz p2, :cond_4

    const/16 v1, 0xc

    :cond_4
    return v1

    .line 556
    :sswitch_1e
    return v3

    .line 558
    :sswitch_1f
    const/4 v0, 0x4

    return v0

    .line 588
    :sswitch_20
    const/16 v0, 0xf

    return v0

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_20
        0x7d1 -> :sswitch_1f
        0x7d2 -> :sswitch_1e
        0x7d3 -> :sswitch_1d
        0x7d5 -> :sswitch_1c
        0x7d6 -> :sswitch_1b
        0x7d7 -> :sswitch_1a
        0x7d8 -> :sswitch_19
        0x7d9 -> :sswitch_18
        0x7da -> :sswitch_17
        0x7db -> :sswitch_16
        0x7dc -> :sswitch_15
        0x7dd -> :sswitch_14
        0x7df -> :sswitch_13
        0x7e0 -> :sswitch_12
        0x7e1 -> :sswitch_11
        0x7e2 -> :sswitch_10
        0x7e3 -> :sswitch_f
        0x7e4 -> :sswitch_e
        0x7e5 -> :sswitch_d
        0x7e6 -> :sswitch_c
        0x7e8 -> :sswitch_b
        0x7ea -> :sswitch_a
        0x7eb -> :sswitch_9
        0x7ee -> :sswitch_1e
        0x7ef -> :sswitch_8
        0x7f0 -> :sswitch_7
        0x7f1 -> :sswitch_6
        0x7f2 -> :sswitch_1e
        0x7f3 -> :sswitch_1e
        0x7f4 -> :sswitch_5
        0x7f5 -> :sswitch_1e
        0x7f6 -> :sswitch_4
        0x7f7 -> :sswitch_3
        0x7f8 -> :sswitch_2
        0x7f9 -> :sswitch_1
        0x835 -> :sswitch_1e
        0x836 -> :sswitch_1e
        0x837 -> :sswitch_1e
        0x838 -> :sswitch_0
    .end sparse-switch
.end method

.method public getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .locals 2
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 476
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->canAddInternalSystemWindow()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v0

    return v0
.end method

.method public abstract hasNavigationBar()Z
.end method

.method public abstract hideBootMessages()V
.end method

.method public abstract inKeyguardRestrictedKeyInputMode()Z
.end method

.method public abstract init(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
.end method

.method public abstract interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
.end method

.method public abstract interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
.end method

.method public abstract interceptMotionBeforeQueueingNonInteractive(IIIJI)I
.end method

.method public abstract interceptUnhandledKey(Landroid/view/KeyEvent;Landroid/os/IBinder;)Z
.end method

.method public abstract isGlobalKey(I)Z
.end method

.method public abstract isKeyguardDrawnLw()Z
.end method

.method public abstract isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public abstract isKeyguardLocked()Z
.end method

.method public abstract isKeyguardOccluded()Z
.end method

.method public abstract isKeyguardSecure(I)Z
.end method

.method public abstract isKeyguardShowing()Z
.end method

.method public abstract isKeyguardShowingAndNotOccluded()Z
.end method

.method public abstract isKeyguardTrustedLw()Z
.end method

.method public abstract isScreenOn()Z
.end method

.method public abstract isUserSetupComplete()Z
.end method

.method public abstract keepScreenOnStartedLw()V
.end method

.method public abstract keepScreenOnStoppedLw()V
.end method

.method public abstract lockNow(Landroid/os/Bundle;)V
.end method

.method public abstract notifyCameraLensCoverSwitchChanged(JZ)V
.end method

.method public abstract notifyLidSwitchChanged(JZ)V
.end method

.method public abstract okToAnimate(Z)Z
.end method

.method public onDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "newFocus"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1261
    return-void
.end method

.method public abstract onDisplaySwitchStart(I)V
.end method

.method public abstract onKeyguardOccludedChangedLw(Z)V
.end method

.method public abstract onSystemUiStarted()V
.end method

.method public registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/IDisplayFoldListener;

    .line 1237
    return-void
.end method

.method public abstract registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract screenTurnedOff(IZ)V
.end method

.method public abstract screenTurnedOn(I)V
.end method

.method public abstract screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
.end method

.method public abstract screenTurningOn(ILcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
.end method

.method public abstract setAllowLockscreenWhenOn(IZ)V
.end method

.method public abstract setCurrentUserLw(I)V
.end method

.method public abstract setDefaultDisplay(Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;)V
.end method

.method public setDismissImeOnBackKeyPressed(Z)V
    .locals 0
    .param p1, "newValue"    # Z

    .line 1142
    return-void
.end method

.method public abstract setNavBarVirtualKeyHapticFeedbackEnabledLw(Z)V
.end method

.method public setOverrideFoldedArea(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "area"    # Landroid/graphics/Rect;

    .line 1249
    return-void
.end method

.method public abstract setPipVisibilityLw(Z)V
.end method

.method public abstract setRecentsVisibilityLw(Z)V
.end method

.method public abstract setSafeMode(Z)V
.end method

.method public abstract setSwitchingUser(Z)V
.end method

.method public abstract setTopFocusedDisplay(I)V
.end method

.method public abstract showBootMessage(Ljava/lang/CharSequence;Z)V
.end method

.method public abstract showDismissibleKeyguard()V
.end method

.method public abstract showGlobalActions()V
.end method

.method public abstract showNTBootMessage()V
.end method

.method public abstract showRecentApps()V
.end method

.method public abstract startKeyguardExitAnimation(J)V
.end method

.method public abstract startedGoingToSleep(II)V
.end method

.method public abstract startedGoingToSleepGlobal(I)V
.end method

.method public abstract startedWakingUp(II)V
.end method

.method public abstract startedWakingUpGlobal(I)V
.end method

.method public abstract systemBooted()V
.end method

.method public abstract systemReady()V
.end method

.method public unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/IDisplayFoldListener;

    .line 1242
    return-void
.end method

.method public abstract userActivity(II)V
.end method
