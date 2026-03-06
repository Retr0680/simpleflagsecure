.class final Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;
.super Ljava/lang/Object;
.source "DefaultImeVisibilityApplier.java"


# static fields
.field static final TAG:Ljava/lang/String; = "DefaultImeVisibilityApplier"


# instance fields
.field private final mImeTargetVisibilityPolicy:Lcom/android/server/wm/ImeTargetVisibilityPolicy;

.field private mService:Lcom/android/server/inputmethod/InputMethodManagerService;

.field private final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 77
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 78
    const-class v0, Lcom/android/server/wm/ImeTargetVisibilityPolicy;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ImeTargetVisibilityPolicy;

    iput-object v0, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mImeTargetVisibilityPolicy:Lcom/android/server/wm/ImeTargetVisibilityPolicy;

    .line 79
    return-void
.end method


# virtual methods
.method applyImeVisibility(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;III)V
    .locals 6
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p3, "state"    # I
    .param p4, "reason"    # I
    .param p5, "userId"    # I

    .line 188
    iget-object v0, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 189
    .local v0, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 190
    .local v1, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getDisplayIdToShowIme()I

    move-result v2

    .line 191
    .local v2, "displayIdToShowIme":I
    const/4 v3, 0x0

    packed-switch p3, :pswitch_data_0

    .line 252
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid IME visibility state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 249
    :pswitch_1
    invoke-virtual {p0, v2, p5}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->removeImeScreenshot(II)Z

    .line 250
    goto :goto_0

    .line 235
    :pswitch_2
    nop

    .line 238
    iget-object v3, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    goto :goto_0

    .line 226
    :pswitch_3
    nop

    .line 227
    iget-object v4, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v4, v3, v0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    goto :goto_0

    .line 218
    :pswitch_4
    nop

    .line 219
    iget-object v4, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v4, v3, v0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    goto :goto_0

    .line 246
    :pswitch_5
    invoke-virtual {p0, p1, v2, p5}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->showImeScreenshot(Landroid/os/IBinder;II)Z

    .line 247
    goto :goto_0

    .line 193
    :pswitch_6
    goto :goto_0

    .line 201
    :pswitch_7
    nop

    .line 254
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method performHideIme(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;Landroid/os/ResultReceiver;II)V
    .locals 10
    .param p1, "hideInputToken"    # Landroid/os/IBinder;
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p4, "reason"    # I
    .param p5, "userId"    # I

    .line 140
    iget-object v0, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    move v5, p5

    invoke-virtual {v0, p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v6

    .line 141
    .local v6, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v7, v6, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 142
    .local v7, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v8

    .line 143
    .local v8, "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    if-eqz v8, :cond_3

    .line 148
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VISIBILITY_APPLIER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 150
    invoke-static {p4}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v8, p1, p3, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 148
    const-string v3, "Calling %s.hideSoftInput(0, %s, %s) for reason: %s"

    invoke-static {v0, v3, v1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    const/4 v0, 0x0

    invoke-virtual {v8, p1, p2, v0, p3}, Lcom/android/server/inputmethod/IInputMethodInvoker;->hideSoftInput(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    sget-boolean v0, Landroid/view/inputmethod/ImeTracker;->DEBUG_IME_VISIBILITY:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->DEBUG_NOTHING:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->DEBUG_NOTHING_INPUTMETHOD:Z

    if-eqz v0, :cond_2

    .line 161
    :cond_0
    nop

    .line 162
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "TOKEN_NONE"

    :goto_0
    iget-object v1, v6, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 163
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {p4}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v9, v6, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget v9, v9, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowSoftInputMode:I

    .line 165
    invoke-static {v9}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v0, v1, v3, v9}, [Ljava/lang/Object;

    move-result-object v0

    .line 161
    const/16 v1, 0x7d02

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v1, 0x0

    move-object v2, p1

    move-object v4, p2

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->onShowHideSoftInputRequested(ZLandroid/os/IBinder;ILandroid/view/inputmethod/ImeTracker$Token;I)V

    .line 172
    :cond_3
    return-void
.end method

.method performShowIme(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;II)V
    .locals 9
    .param p1, "showInputToken"    # Landroid/os/IBinder;
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p3, "showFlags"    # I
    .param p4, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p5, "reason"    # I
    .param p6, "userId"    # I

    .line 95
    iget-object v0, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    move v6, p6

    invoke-virtual {v0, p6}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 96
    .local v0, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v7, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 97
    .local v7, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v8

    .line 98
    .local v8, "curMethod":Lcom/android/server/inputmethod/IInputMethodInvoker;
    if-eqz v8, :cond_3

    .line 99
    sget-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VISIBILITY_APPLIER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 101
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 102
    invoke-static {p5}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v8, p1, v2, p4, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 99
    const-string v3, "Calling %s.showSoftInput(%s, %s, %s) for reason: %s"

    invoke-static {v1, v3, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v8, p1, p2, p3, p4}, Lcom/android/server/inputmethod/IInputMethodInvoker;->showSoftInput(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 111
    sget-boolean v1, Landroid/view/inputmethod/ImeTracker;->DEBUG_IME_VISIBILITY:Z

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/os/Build;->DEBUG_NOTHING:Z

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/os/Build;->DEBUG_NOTHING_INPUTMETHOD:Z

    if-eqz v1, :cond_2

    .line 113
    :cond_0
    nop

    .line 114
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "TOKEN_NONE"

    :goto_0
    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v2, v2, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 115
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-static {p5}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget v4, v4, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowSoftInputMode:I

    .line 117
    invoke-static {v4}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 113
    const/16 v2, 0x7d01

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v2, 0x1

    move-object v3, p1

    move-object v5, p2

    move v4, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->onShowHideSoftInputRequested(ZLandroid/os/IBinder;ILandroid/view/inputmethod/ImeTracker$Token;I)V

    .line 124
    :cond_3
    return-void
.end method

.method removeImeScreenshot(II)Z
    .locals 8
    .param p1, "displayId"    # I
    .param p2, "userId"    # I

    .line 284
    iget-object v0, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 285
    .local v0, "userData":Lcom/android/server/inputmethod/UserData;
    iget-object v1, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mImeTargetVisibilityPolicy:Lcom/android/server/wm/ImeTargetVisibilityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ImeTargetVisibilityPolicy;->removeImeScreenshot(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    iget-object v2, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v4, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    const/16 v5, 0x23

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v7, p2

    .end local p2    # "userId":I
    .local v7, "userId":I
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->onShowHideSoftInputRequested(ZLandroid/os/IBinder;ILandroid/view/inputmethod/ImeTracker$Token;I)V

    .line 289
    const/4 p2, 0x1

    return p2

    .line 291
    .end local v7    # "userId":I
    .restart local p2    # "userId":I
    :cond_0
    move v7, p2

    .end local p2    # "userId":I
    .restart local v7    # "userId":I
    const/4 p2, 0x0

    return p2
.end method

.method showImeScreenshot(Landroid/os/IBinder;II)Z
    .locals 7
    .param p1, "imeTarget"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .param p3, "userId"    # I

    .line 267
    iget-object v0, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mImeTargetVisibilityPolicy:Lcom/android/server/wm/ImeTargetVisibilityPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ImeTargetVisibilityPolicy;->showImeScreenshot(Landroid/os/IBinder;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v1, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/16 v4, 0x22

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v3, p1

    move v6, p3

    .end local p1    # "imeTarget":Landroid/os/IBinder;
    .end local p3    # "userId":I
    .local v3, "imeTarget":Landroid/os/IBinder;
    .local v6, "userId":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->onShowHideSoftInputRequested(ZLandroid/os/IBinder;ILandroid/view/inputmethod/ImeTracker$Token;I)V

    .line 270
    const/4 p1, 0x1

    return p1

    .line 272
    .end local v3    # "imeTarget":Landroid/os/IBinder;
    .end local v6    # "userId":I
    .restart local p1    # "imeTarget":Landroid/os/IBinder;
    .restart local p3    # "userId":I
    :cond_0
    move-object v3, p1

    .end local p1    # "imeTarget":Landroid/os/IBinder;
    .restart local v3    # "imeTarget":Landroid/os/IBinder;
    const/4 p1, 0x0

    return p1
.end method
