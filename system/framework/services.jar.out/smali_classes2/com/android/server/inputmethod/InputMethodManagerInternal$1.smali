.class Lcom/android/server/inputmethod/InputMethodManagerInternal$1;
.super Lcom/android/server/inputmethod/InputMethodManagerInternal;
.source "InputMethodManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnabledInputMethodListAsUser(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 364
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledInputMethodSubtypeListAsUser(Ljava/lang/String;ZI)Ljava/util/List;
    .locals 1
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "allowsImplicitlyEnabledSubtypes"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 372
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInputMethodListAsUser(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 356
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hideInputMethod(II)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "originatingDisplayId"    # I

    .line 350
    return-void
.end method

.method public maybeFinishStylusHandwriting()V
    .locals 0

    .line 454
    return-void
.end method

.method public onCreateInlineSuggestionsRequest(ILcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "requestInfo"    # Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;
    .param p3, "cb"    # Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;

    .line 379
    return-void
.end method

.method public onImeInputTargetVisibilityChanged(Landroid/os/IBinder;ZI)V
    .locals 0
    .param p1, "imeInputTarget"    # Landroid/os/IBinder;
    .param p2, "visibleAndNotRemoved"    # Z
    .param p3, "displayId"    # I

    .line 430
    return-void
.end method

.method public onImeParentChanged(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 415
    return-void
.end method

.method public onSessionForAccessibilityCreated(ILcom/android/internal/inputmethod/IAccessibilityInputMethodSession;I)V
    .locals 0
    .param p1, "accessibilityConnectionId"    # I
    .param p2, "session"    # Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;
    .param p3, "userId"    # I

    .line 444
    return-void
.end method

.method public onSwitchKeyboardLayoutShortcut(IILandroid/os/IBinder;)V
    .locals 0
    .param p1, "direction"    # I
    .param p2, "displayId"    # I
    .param p3, "targetWindowToken"    # Landroid/os/IBinder;

    .line 459
    return-void
.end method

.method public registerInputMethodListListener(Lcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;

    .line 401
    return-void
.end method

.method public removeImeSurface(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 420
    return-void
.end method

.method public reportImeControl(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 411
    return-void
.end method

.method public setHasVisibleImeLayeringOverlay(ZI)V
    .locals 0
    .param p1, "hasVisibleOverlay"    # Z
    .param p2, "displayId"    # I

    .line 425
    return-void
.end method

.method public setInputMethodEnabled(Ljava/lang/String;ZI)Z
    .locals 1
    .param p1, "imeId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .line 390
    const/4 v0, 0x0

    return v0
.end method

.method public setInteractive(Z)V
    .locals 0
    .param p1, "interactive"    # Z

    .line 344
    return-void
.end method

.method public setVirtualDeviceInputMethodForAllUsers(ILjava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # I
    .param p2, "imeId"    # Ljava/lang/String;

    .line 396
    return-void
.end method

.method public switchToInputMethod(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "imeId"    # Ljava/lang/String;
    .param p2, "subtypeIndex"    # I
    .param p3, "userId"    # I

    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method public transferTouchFocusToImeWindow(Landroid/os/IBinder;II)Z
    .locals 1
    .param p1, "sourceInputToken"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .param p3, "userId"    # I

    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public unbindAccessibilityFromCurrentClient(II)V
    .locals 0
    .param p1, "accessibilityConnectionId"    # I
    .param p2, "userId"    # I

    .line 449
    return-void
.end method

.method public updateImeWindowStatus(ZI)V
    .locals 0
    .param p1, "disableImeIcon"    # Z
    .param p2, "displayId"    # I

    .line 435
    return-void
.end method

.method public updateShouldShowImeSwitcher(II)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "userId"    # I

    .line 439
    return-void
.end method
