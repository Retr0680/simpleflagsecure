.class public final Lcom/android/server/accessibility/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/server/accessibility/FeatureFlags;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addWindowTokenWithoutLock()Z
    .locals 1

    .line 10
    const/4 v0, 0x0

    return v0
.end method

.method public allowSecureScreenshots()Z
    .locals 1

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public alwaysAllowObservingTouchEvents()Z
    .locals 1

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public cleanupA11yOverlays()Z
    .locals 1

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public clearDefaultFromA11yShortcutTargetServiceRestore()Z
    .locals 1

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public clearShortcutsWhenActivityUpdatesToService()Z
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public deprecatePackageListObserver()Z
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public disableContinuousShortcutOnForceStop()Z
    .locals 1

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public doNotResetKeyEventState()Z
    .locals 1

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public enableA11yCheckerLogging()Z
    .locals 1

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public enableAutoclickIndicator()Z
    .locals 1

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public enableColorCorrectionSaturation()Z
    .locals 1

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public enableHardwareShortcutDisablesWarning()Z
    .locals 1

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public enableLowVisionGenericFeedback()Z
    .locals 1

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public enableLowVisionHats()Z
    .locals 1

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public enableMagnificationFollowsMouseWithPointerMotionFilter()Z
    .locals 1

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public enableMagnificationJoystick()Z
    .locals 1

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public enableMagnificationKeyboardControl()Z
    .locals 1

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public enableMagnificationMultipleFingerMultipleTapGesture()Z
    .locals 1

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public enableMagnificationOneFingerPanningGesture()Z
    .locals 1

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public eventDispatcherRawEvent()Z
    .locals 1

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public fixDragPointerWhenEndingDrag()Z
    .locals 1

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public focusClickPointWindowBoundsFromA11yWindowInfo()Z
    .locals 1

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public fullscreenFlingGesture()Z
    .locals 1

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public handleMultiDeviceInput()Z
    .locals 1

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public hearingInputChangeWhenCommDevice()Z
    .locals 1

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public magnificationEnlargePointerBugfix()Z
    .locals 1

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public managerAvoidReceiverTimeout()Z
    .locals 1

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public managerLifecycleUserChange()Z
    .locals 1

    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public managerPackageMonitorLogicFix()Z
    .locals 1

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public motionEventInjectorCancelFix()Z
    .locals 1

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public packageMonitorDedicatedThread()Z
    .locals 1

    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public pinchZoomZeroMinSpan()Z
    .locals 1

    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public pointerUpMotionEventInTouchExploration()Z
    .locals 1

    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public proxyUseAppsOnVirtualDeviceListener()Z
    .locals 1

    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public removeOnWindowInfosChangedHandler()Z
    .locals 1

    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public resetHoverEventTimerOnActionUp()Z
    .locals 1

    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public resetInputDispatcherBeforeFirstTouchExploration()Z
    .locals 1

    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public resettableDynamicProperties()Z
    .locals 1

    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public scanPackagesWithoutLock()Z
    .locals 1

    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public sendA11yEventsBasedOnState()Z
    .locals 1

    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public sendHoverEventsBasedOnEventStream()Z
    .locals 1

    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public skipPackageChangeBeforeUserSwitch()Z
    .locals 1

    .line 304
    const/4 v0, 0x1

    return v0
.end method
