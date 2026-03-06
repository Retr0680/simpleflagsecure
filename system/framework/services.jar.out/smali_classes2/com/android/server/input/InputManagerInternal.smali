.class public abstract Lcom/android/server/input/InputManagerInternal;
.super Ljava/lang/Object;
.source "InputManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/InputManagerInternal$AccessibilityPointerMotionFilter;,
        Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;,
        Lcom/android/server/input/InputManagerInternal$BackupCategory;
    }
.end annotation


# static fields
.field public static final BACKUP_CATEGORY_INPUT_GESTURES:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addKeyboardLayoutAssociation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract applyBackupPayload(Ljava/util/Map;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;
.end method

.method public abstract decrementKeyboardBacklight(I)V
.end method

.method public abstract getBackupPayload(I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getCursorPosition(I)Landroid/graphics/PointF;
.end method

.method public abstract getLastUsedInputDeviceId()I
.end method

.method public abstract handleKeyGestureInKeyGestureController(I[III)V
.end method

.method public abstract incrementKeyboardBacklight(I)V
.end method

.method public abstract notifyInputMethodConnectionActive(Z)V
.end method

.method public abstract notifyKeyGestureCompleted(I[III)V
.end method

.method public abstract notifyUserActivity()V
.end method

.method public abstract onInputMethodSubtypeChangedForKeyboardLayoutMapping(ILcom/android/internal/inputmethod/InputMethodSubtypeHandle;Landroid/view/inputmethod/InputMethodSubtype;)V
.end method

.method public abstract pilferPointers(Landroid/os/IBinder;)V
.end method

.method public abstract registerAccessibilityPointerMotionFilter(Lcom/android/server/input/InputManagerInternal$AccessibilityPointerMotionFilter;)V
.end method

.method public abstract registerLidSwitchCallback(Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;)V
.end method

.method public abstract registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeKeyboardLayoutAssociation(Ljava/lang/String;)V
.end method

.method public abstract setAccessibilityPointerIconScaleFactor(IF)V
.end method

.method public abstract setCurrentUser(I)V
.end method

.method public abstract setDisplayEligibilityForPointerCapture(IZ)V
.end method

.method public abstract setDisplayInteractivities(Landroid/util/SparseBooleanArray;)V
.end method

.method public abstract setDisplayTopology(Landroid/hardware/display/DisplayTopologyGraph;)V
.end method

.method public abstract setDisplayViewports(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setKernelWakeEnabled(IZ)Z
.end method

.method public abstract setMouseScalingEnabled(ZI)V
.end method

.method public abstract setPointerIconVisible(ZI)V
.end method

.method public abstract setPulseGestureEnabled(Z)V
.end method

.method public abstract setStylusButtonMotionEventsEnabled(Z)V
.end method

.method public abstract setTypeAssociation(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract toggleCapsLock(I)V
.end method

.method public abstract transferTouchGesture(Landroid/os/IBinder;Landroid/os/IBinder;Z)Z
.end method

.method public abstract unregisterLidSwitchCallback(Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;)V
.end method

.method public abstract unsetTypeAssociation(Ljava/lang/String;)V
.end method
