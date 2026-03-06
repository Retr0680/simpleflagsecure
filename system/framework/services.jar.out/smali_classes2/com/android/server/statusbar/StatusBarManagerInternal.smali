.class public interface abstract Lcom/android/server/statusbar/StatusBarManagerInternal;
.super Ljava/lang/Object;
.source "StatusBarManagerInternal.java"


# virtual methods
.method public abstract abortTransient(II)V
.end method

.method public abstract addQsTileToFrontOrEnd(Landroid/content/ComponentName;Z)V
.end method

.method public abstract appTransitionCancelled(I)V
.end method

.method public abstract appTransitionFinished(I)V
.end method

.method public abstract appTransitionPending(I)V
.end method

.method public abstract appTransitionStarting(IJJ)V
.end method

.method public abstract cancelPreloadRecentApps()V
.end method

.method public abstract collapsePanels()V
.end method

.method public abstract confirmImmersivePrompt()V
.end method

.method public abstract dismissKeyboardShortcutsMenu()V
.end method

.method public abstract hideRecentApps(ZZ)V
.end method

.method public abstract hideToast(Ljava/lang/String;Landroid/os/IBinder;)V
.end method

.method public abstract immersiveModeChanged(IIZI)V
.end method

.method public abstract moveFocusedTaskToDesktop(I)V
.end method

.method public abstract moveFocusedTaskToFullscreen(I)V
.end method

.method public abstract moveFocusedTaskToStageSplit(IZ)V
.end method

.method public abstract onCameraLaunchGestureDetected(I)V
.end method

.method public abstract onDisplayAddSystemDecorations(I)V
.end method

.method public abstract onDisplayRemoveSystemDecorations(I)V
.end method

.method public abstract onEmergencyActionLaunchGestureDetected()V
.end method

.method public abstract onProposedRotationChanged(IIZ)V
.end method

.method public abstract onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V
.end method

.method public abstract onWalletLaunchGestureDetected()V
.end method

.method public abstract passThroughShellCommand([Ljava/lang/String;Ljava/io/FileDescriptor;)V
.end method

.method public abstract preloadRecentApps()V
.end method

.method public abstract removeQsTile(Landroid/content/ComponentName;)V
.end method

.method public abstract requestMagnificationConnection(Z)Z
.end method

.method public abstract setCurrentUser(I)V
.end method

.method public abstract setDisableFlags(IILjava/lang/String;)V
.end method

.method public abstract setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
.end method

.method public abstract setIconVisibility(Ljava/lang/String;Z)V
.end method

.method public abstract setImeWindowStatus(IIIZ)V
.end method

.method public abstract setNavigationBarLumaSamplingEnabled(IZ)V
.end method

.method public abstract setNotificationDelegate(Lcom/android/server/notification/NotificationDelegate;)V
.end method

.method public abstract setSplitscreenFocus(Z)V
.end method

.method public abstract setTopAppHidesStatusBar(IZ)V
.end method

.method public abstract setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V
.end method

.method public abstract setWindowState(III)V
.end method

.method public abstract showAssistDisclosure()V
.end method

.method public abstract showChargingAnimation(I)V
.end method

.method public abstract showMediaOutputSwitcher(Ljava/lang/String;Landroid/os/UserHandle;)V
.end method

.method public abstract showPictureInPictureMenu()V
.end method

.method public abstract showPopUpViewResizeTutorialDialog()V
.end method

.method public abstract showRearDisplayDialog(I)V
.end method

.method public abstract showRecentApps(Z)V
.end method

.method public abstract showScreenPinningRequest(II)V
.end method

.method public abstract showShutdownUi(ZLjava/lang/String;)Z
.end method

.method public abstract showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;I)V
.end method

.method public abstract showTransient(IIZ)V
.end method

.method public abstract startAssist(Landroid/os/Bundle;)V
.end method

.method public abstract toggleKeyboardShortcutsMenu(I)V
.end method

.method public abstract toggleRecentApps()V
.end method

.method public abstract toggleSplitScreen()V
.end method

.method public abstract toggleTaskbar()V
.end method
