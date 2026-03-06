.class public Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
.super Ljava/lang/Object;
.source "MagnificationConnectionManager.java"

# interfaces
.implements Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;
.implements Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;,
        Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;,
        Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;,
        Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionState;,
        Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowPosition;
    }
.end annotation


# static fields
.field private static final CONNECTED:I = 0x1

.field private static final CONNECTING:I = 0x0

.field private static final DBG:Z = false

.field private static final DISCONNECTED:I = 0x3

.field private static final DISCONNECTING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MagnificationConnectionManager"

.field private static final WAIT_CONNECTION_TIMEOUT_MILLIS:I

.field public static final WINDOW_POSITION_AT_CENTER:I = 0x0

.field public static final WINDOW_POSITION_AT_TOP_LEFT:I = 0x1


# instance fields
.field private final mCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;

.field private mConnectionCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;

.field private mConnectionState:I

.field mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

.field private final mContext:Landroid/content/Context;

.field private final mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

.field private final mLastActivatedScale:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMagnificationFollowTypingEnabled:Z

.field private mReceiverRegistered:Z

.field private final mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

.field protected final mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

.field private final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field private mWindowMagnifiers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrace(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Lcom/android/server/accessibility/AccessibilityTraceManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWindowMagnifiers(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmConnectionCallback(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateWindowMagnifier(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;I)Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->createWindowMagnifier(I)Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdisableWindowMagnificationInternal(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;ILandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnificationInternal(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$menableWindowMagnificationInternal(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;IFFFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->enableWindowMagnificationInternal(IFFFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmoveWindowMagnifierInternal(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;IFF)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->moveWindowMagnifierInternal(IFF)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mresetWindowMagnifiers(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->resetWindowMagnifiers()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetConnectionState(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setConnectionState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetScaleForWindowMagnificationInternal(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;IF)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setScaleForWindowMagnificationInternal(IF)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 133
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v0, v0, 0xc8

    sput v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->WAIT_CONNECTION_TIMEOUT_MILLIS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "callback"    # Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;
    .param p4, "trace"    # Lcom/android/server/accessibility/AccessibilityTraceManager;
    .param p5, "scaleProvider"    # Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    .line 143
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mMagnificationFollowTypingEnabled:Z

    .line 147
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    .line 149
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLastActivatedScale:Landroid/util/SparseArray;

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mReceiverRegistered:Z

    .line 153
    new-instance v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$1;-><init>(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 218
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mContext:Landroid/content/Context;

    .line 219
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 220
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;

    .line 221
    iput-object p4, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 222
    iput-object p5, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 223
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 224
    return-void
.end method

.method private static connectionStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .line 120
    packed-switch p0, :pswitch_data_0

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 124
    :pswitch_0
    const-string v0, "DISCONNECTED"

    return-object v0

    .line 123
    :pswitch_1
    const-string v0, "DISCONNECTING"

    return-object v0

    .line 122
    :pswitch_2
    const-string v0, "CONNECTED"

    return-object v0

    .line 121
    :pswitch_3
    const-string v0, "CONNECTING"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createWindowMagnifier(I)Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    .locals 2
    .param p1, "displayId"    # I

    .line 939
    new-instance v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    invoke-direct {v0, p1, p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;-><init>(ILcom/android/server/accessibility/magnification/MagnificationConnectionManager;)V

    .line 940
    .local v0, "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 941
    return-object v0
.end method

.method private disableWindowMagnificationInternal(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "animationCallback"    # Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 1324
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    if-nez v0, :cond_0

    .line 1325
    const-string v0, "MagnificationConnectionManager"

    const-string/jumbo v1, "mConnectionWrapper is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    const/4 v0, 0x0

    return v0

    .line 1328
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->disableWindowMagnification(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v0

    return v0
.end method

.method private enableAllTrackingTypingFocus()V
    .locals 4

    .line 480
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 482
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 483
    .local v2, "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->setTrackingTypingFocusEnabled(Z)V

    .line 481
    .end local v2    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 485
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 481
    .restart local v1    # "i":I
    :cond_0
    nop

    .line 485
    .end local v1    # "i":I
    monitor-exit v0

    .line 486
    return-void

    .line 485
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private enableWindowMagnificationInternal(IFFFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 9
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "magnificationFrameOffsetRatioX"    # F
    .param p6, "magnificationFrameOffsetRatioY"    # F
    .param p7, "animationCallback"    # Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 1303
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->waitConnectionWithTimeoutIfNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableWindowMagnificationInternal mConnectionWrapper is null. mConnectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    .line 1306
    invoke-static {v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1304
    const-string v1, "MagnificationConnectionManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    const/4 v0, 0x0

    return v0

    .line 1309
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->enableWindowMagnification(IFFFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v0

    return v0
.end method

.method private moveWindowMagnifierInternal(IFF)Z
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "offsetX"    # F
    .param p3, "offsetY"    # F

    .line 1334
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->moveWindowMagnifier(IFF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private moveWindowMagnifierToPositionInternal(IFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "positionX"    # F
    .param p3, "positionY"    # F
    .param p4, "animationCallback"    # Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 1341
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->moveWindowMagnifierToPosition(IFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private pauseTrackingTypingFocusRecord(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 490
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 491
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 492
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    if-nez v1, :cond_0

    .line 493
    monitor-exit v0

    return-void

    .line 495
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :catchall_0
    move-exception v1

    goto :goto_0

    .restart local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->pauseTrackingTypingFocusRecord()V

    .line 497
    return-void

    .line 495
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private requestConnectionInternal(Z)Z
    .locals 4
    .param p1, "connect"    # Z

    .line 339
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 341
    .local v0, "identity":J
    :try_start_0
    const-class v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 343
    .local v2, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v2, :cond_0

    .line 344
    invoke-interface {v2, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->requestMagnificationConnection(Z)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 344
    return v3

    .line 347
    .end local v2    # "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 343
    .restart local v2    # "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_0
    nop

    .line 347
    .end local v2    # "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 348
    nop

    .line 349
    const/4 v2, 0x0

    return v2

    .line 347
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 348
    throw v2
.end method

.method private resetWindowMagnifiers()V
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 402
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 403
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 404
    .local v2, "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->reset()V

    .line 402
    .end local v2    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 402
    .restart local v1    # "i":I
    :cond_0
    nop

    .line 406
    .end local v1    # "i":I
    monitor-exit v0

    .line 407
    return-void

    .line 406
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setConnectionState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 364
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    .line 365
    return-void
.end method

.method private setScaleForWindowMagnificationInternal(IF)Z
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "scale"    # F

    .line 1317
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    nop

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 1318
    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->setScaleForWindowMagnification(IF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1317
    :goto_0
    return v0
.end method


# virtual methods
.method disableAllWindowMagnifiers()V
    .locals 4

    .line 371
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 373
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 374
    .local v2, "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->disableWindowMagnificationInternal(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 372
    nop

    .end local v2    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 372
    .restart local v1    # "i":I
    :cond_0
    nop

    .line 376
    .end local v1    # "i":I
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 377
    monitor-exit v0

    .line 378
    return-void

    .line 377
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disableWindowMagnification(IZ)Z
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "clear"    # Z

    .line 656
    sget-object v0, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v0

    return v0
.end method

.method public disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "clear"    # Z
    .param p3, "animationCallback"    # Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 670
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 671
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 672
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 673
    monitor-exit v0

    return v2

    .line 680
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 676
    .restart local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :cond_0
    invoke-virtual {v1, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->disableWindowMagnificationInternal(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v3

    .line 677
    .local v3, "disabled":Z
    if-eqz p2, :cond_1

    .line 678
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 680
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    if-eqz v3, :cond_2

    .line 683
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;

    invoke-interface {v0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;->onWindowMagnificationActivationState(IZ)V

    .line 685
    :cond_2
    return v3

    .line 680
    .end local v3    # "disabled":Z
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public enableWindowMagnification(IFFF)Z
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .line 564
    sget-object v5, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "displayId":I
    .end local p2    # "scale":F
    .end local p3    # "centerX":F
    .end local p4    # "centerY":F
    .local v1, "displayId":I
    .local v2, "scale":F
    .local v3, "centerX":F
    .local v4, "centerY":F
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    move-result p1

    return p1
.end method

.method public enableWindowMagnification(IFFFI)Z
    .locals 8
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "windowPosition"    # I

    .line 603
    sget-object v5, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    .end local p1    # "displayId":I
    .end local p2    # "scale":F
    .end local p3    # "centerX":F
    .end local p4    # "centerY":F
    .end local p5    # "windowPosition":I
    .local v1, "displayId":I
    .local v2, "scale":F
    .local v3, "centerX":F
    .local v4, "centerY":F
    .local v6, "windowPosition":I
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z

    move-result p1

    return p1
.end method

.method public enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z
    .locals 8
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "animationCallback"    # Landroid/view/accessibility/MagnificationAnimationCallback;
    .param p6, "id"    # I

    .line 584
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v7, p6

    .end local p1    # "displayId":I
    .end local p2    # "scale":F
    .end local p3    # "centerX":F
    .end local p4    # "centerY":F
    .end local p5    # "animationCallback":Landroid/view/accessibility/MagnificationAnimationCallback;
    .end local p6    # "id":I
    .local v1, "displayId":I
    .local v2, "scale":F
    .local v3, "centerX":F
    .local v4, "centerY":F
    .local v5, "animationCallback":Landroid/view/accessibility/MagnificationAnimationCallback;
    .local v7, "id":I
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z

    move-result p1

    return p1
.end method

.method public enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z
    .locals 10
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "animationCallback"    # Landroid/view/accessibility/MagnificationAnimationCallback;
    .param p6, "windowPosition"    # I
    .param p7, "id"    # I

    .line 626
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 627
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 628
    .local v0, "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    if-nez v0, :cond_0

    .line 629
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->createWindowMagnifier(I)Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 637
    .end local v0    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 628
    .restart local v0    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :cond_0
    move-object v2, v0

    .line 631
    .end local v0    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    .local v2, "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :goto_0
    invoke-static {v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;)Z

    move-result v0

    .line 632
    .local v0, "previousEnabled":Z
    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->enableWindowMagnificationInternal(FFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z

    move-result v9

    .line 634
    .local v9, "enabled":Z
    if-eqz v9, :cond_1

    .line 635
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLastActivatedScale:Landroid/util/SparseArray;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 637
    .end local v2    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    if-eqz v9, :cond_2

    .line 640
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setTrackingTypingFocusEnabled(IZ)V

    .line 641
    if-nez v0, :cond_2

    .line 642
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;

    invoke-interface {v2, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$Callback;->onWindowMagnificationActivationState(IZ)V

    .line 645
    :cond_2
    return v9

    .line 637
    .end local v0    # "previousEnabled":Z
    .end local v9    # "enabled":Z
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCenterX(I)F
    .locals 3
    .param p1, "displayId"    # I

    .line 879
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 880
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 881
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    goto :goto_0

    .line 884
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->getCenterX()F

    move-result v2

    monitor-exit v0

    return v2

    .line 885
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 882
    .restart local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :goto_0
    monitor-exit v0

    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 885
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCenterY(I)F
    .locals 3
    .param p1, "displayId"    # I

    .line 895
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 896
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 897
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    goto :goto_0

    .line 900
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->getCenterY()F

    move-result v2

    monitor-exit v0

    return v2

    .line 901
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 898
    .restart local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :goto_0
    monitor-exit v0

    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 901
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConnectionState()Ljava/lang/String;
    .locals 1

    .line 356
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdOfLastServiceToMagnify(I)I
    .locals 3
    .param p1, "displayId"    # I

    .line 444
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 445
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 446
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    if-eqz v1, :cond_0

    .line 447
    invoke-static {v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->-$$Nest$fgetmIdOfLastServiceToControl(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;)I

    move-result v2

    monitor-exit v0

    return v2

    .line 449
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 446
    .restart local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :cond_0
    nop

    .line 449
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    monitor-exit v0

    .line 450
    const/4 v0, -0x1

    return v0

    .line 449
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getLastActivatedScale(I)F
    .locals 2
    .param p1, "displayId"    # I

    .line 791
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 792
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLastActivatedScale:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 793
    monitor-exit v0

    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 796
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 795
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLastActivatedScale:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    monitor-exit v0

    return v1

    .line 796
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMagnificationSourceBounds(ILandroid/graphics/Region;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "outRegion"    # Landroid/graphics/Region;

    .line 922
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 923
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 924
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    goto :goto_0

    .line 927
    :cond_1
    invoke-static {v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->-$$Nest$fgetmSourceBounds(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    goto :goto_1

    .line 929
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 925
    .restart local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Region;->setEmpty()V

    .line 929
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :goto_1
    monitor-exit v0

    .line 930
    return-void

    .line 929
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getPersistedScale(I)F
    .locals 3
    .param p1, "displayId"    # I

    .line 754
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->getScale(I)F

    move-result v0

    const v1, 0x3fa66666    # 1.3f

    sget v2, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->MAX_SCALE:F

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method public getScale(I)F
    .locals 3
    .param p1, "displayId"    # I

    .line 781
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 782
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 783
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    goto :goto_0

    .line 786
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->getScale()F

    move-result v2

    monitor-exit v0

    return v2

    .line 787
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 784
    .restart local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :goto_0
    monitor-exit v0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 787
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isConnected()Z
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 280
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isImeVisible(I)Z
    .locals 2
    .param p1, "displayId"    # I

    .line 516
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 517
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 518
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isMagnificationFollowTypingEnabled()Z
    .locals 1

    .line 434
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mMagnificationFollowTypingEnabled:Z

    return v0
.end method

.method isPositionInSourceBounds(IFF)Z
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 723
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 724
    .local v0, "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    if-nez v0, :cond_0

    .line 725
    const/4 v1, 0x0

    return v1

    .line 727
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->isPositionInSourceBounds(FF)Z

    move-result v1

    return v1
.end method

.method isTrackingTypingFocusEnabled(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .line 905
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 906
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 907
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    if-nez v1, :cond_0

    .line 908
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 911
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 910
    .restart local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->isTrackingTypingFocusEnabled()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 911
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isWindowMagnifierEnabled(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .line 737
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 738
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 739
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    if-nez v1, :cond_0

    .line 740
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 743
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 742
    .restart local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->isEnabled()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 743
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method logTrackingTypingFocus(J)V
    .locals 0
    .param p1, "duration"    # J

    .line 522
    invoke-static {p1, p2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationFollowTypingFocusSession(J)V

    .line 523
    return-void
.end method

.method moveWindowMagnification(IFF)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "offsetX"    # F
    .param p3, "offsetY"    # F

    .line 809
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 810
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 811
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    if-nez v1, :cond_0

    .line 812
    monitor-exit v0

    return-void

    .line 815
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 814
    .restart local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :cond_0
    invoke-virtual {v1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->move(FF)V

    .line 815
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    monitor-exit v0

    .line 816
    return-void

    .line 815
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDisplayRemoved(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 950
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZ)Z

    .line 951
    return-void
.end method

.method public onFullscreenMagnificationActivationChanged(IZ)Z
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "activated"    # Z

    .line 692
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 693
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->waitConnectionWithTimeoutIfNeeded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 694
    const-string v1, "MagnificationConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFullscreenMagnificationActivationChanged mConnectionWrapper is null. mConnectionState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    .line 696
    invoke-static {v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 694
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 701
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 699
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 700
    invoke-virtual {v1, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->onFullscreenMagnificationActivationChanged(IZ)Z

    move-result v1

    monitor-exit v0

    .line 699
    return v1

    .line 701
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onImeWindowVisibilityChanged(IZ)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "shown"    # Z

    .line 505
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 506
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 507
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    if-eqz p2, :cond_0

    .line 509
    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->enableAllTrackingTypingFocus()V

    goto :goto_0

    .line 511
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->pauseTrackingTypingFocusRecord(I)V

    .line 513
    :goto_0
    return-void

    .line 507
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onRectangleOnScreenRequested(IIIII)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 412
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mMagnificationFollowTypingEnabled:Z

    if-nez v0, :cond_0

    .line 413
    return-void

    .line 416
    :cond_0
    add-int v0, p2, p4

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 417
    .local v0, "toCenterX":F
    add-int v2, p3, p5

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 419
    .local v2, "toCenterY":F
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 420
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 421
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isPositionInSourceBounds(IFF)Z

    move-result v3

    if-nez v3, :cond_1

    .line 422
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isTrackingTypingFocusEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 423
    sget-object v3, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->moveWindowMagnifierToPositionInternal(IFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    goto :goto_0

    .line 426
    :catchall_0
    move-exception v3

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v1

    .line 427
    return-void

    .line 426
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onUserMagnificationScaleChanged(IIF)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "displayId"    # I
    .param p3, "scale"    # F

    .line 866
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 867
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 868
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->onUserMagnificationScaleChanged(IIF)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 869
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 868
    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    .line 867
    return v1

    .line 869
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method persistScale(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 767
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    move-result v0

    .line 768
    .local v0, "scale":F
    const v1, 0x3fa66666    # 1.3f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 769
    return-void

    .line 771
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->putScale(FI)V

    .line 772
    return-void
.end method

.method pointersInWindow(ILandroid/view/MotionEvent;)I
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .line 712
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 713
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 714
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    if-nez v1, :cond_0

    .line 715
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 718
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 717
    .restart local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->pointersInWindow(Landroid/view/MotionEvent;)I

    move-result v2

    monitor-exit v0

    return v2

    .line 718
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public processScroll(IFF)Z
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "distanceX"    # F
    .param p3, "distanceY"    # F

    .line 527
    neg-float v0, p2

    neg-float v1, p3

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->moveWindowMagnification(IFF)V

    .line 528
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setTrackingTypingFocusEnabled(IZ)V

    .line 529
    const/4 v0, 0x1

    return v0
.end method

.method public removeMagnificationButton(I)Z
    .locals 2
    .param p1, "displayId"    # I

    .line 839
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 840
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 841
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->removeMagnificationButton(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 842
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 841
    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    .line 840
    return v1

    .line 842
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeMagnificationSettingsPanel(I)Z
    .locals 2
    .param p1, "displayId"    # I

    .line 852
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 853
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 854
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->removeMagnificationSettingsPanel(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 855
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 854
    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    .line 853
    return v1

    .line 855
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestConnection(Z)Z
    .locals 9
    .param p1, "connect"    # Z

    .line 294
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 295
    .local v0, "callingUserId":I
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerInternal;->isVisibleBackgroundFullUser(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 302
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v2, 0x80

    invoke-virtual {v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v4, "MagnificationConnectionManager.requestMagnificationConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 307
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    iget v4, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    if-eq v4, v2, :cond_2

    iget v4, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    if-eqz v4, :cond_2

    :cond_1
    goto :goto_0

    .line 328
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 307
    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x3

    if-nez p1, :cond_3

    iget v6, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    if-eq v6, v5, :cond_2

    iget v6, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    if-ne v6, v4, :cond_3

    .line 310
    :cond_2
    const-string v2, "MagnificationConnectionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestConnection duplicated request: connect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mConnectionState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    .line 311
    invoke-static {v5}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 310
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    monitor-exit v1

    return v3

    .line 315
    :cond_3
    if-eqz p1, :cond_5

    .line 316
    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 317
    .local v6, "intentFilter":Landroid/content/IntentFilter;
    iget-boolean v7, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mReceiverRegistered:Z

    if-nez v7, :cond_4

    .line 318
    iget-object v7, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 319
    iput-boolean v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mReceiverRegistered:Z

    .line 321
    .end local v6    # "intentFilter":Landroid/content/IntentFilter;
    :cond_4
    goto :goto_1

    .line 322
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableAllWindowMagnifiers()V

    .line 323
    iget-boolean v6, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mReceiverRegistered:Z

    if-eqz v6, :cond_6

    .line 324
    iget-object v6, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 325
    iput-boolean v3, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mReceiverRegistered:Z

    .line 328
    :cond_6
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->requestConnectionInternal(Z)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 330
    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    move v3, v4

    :goto_2
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setConnectionState(I)V

    .line 331
    return v2

    .line 333
    :cond_8
    invoke-direct {p0, v5}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setConnectionState(I)V

    .line 334
    return v3

    .line 328
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 296
    :cond_9
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Visible background user(u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not permitted to request magnification connection."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resetAllIfNeeded(I)V
    .locals 4
    .param p1, "connectionId"    # I

    .line 388
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 389
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 390
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 391
    .local v2, "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->-$$Nest$fgetmEnabled(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->getIdOfLastServiceToControl()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 394
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->disableWindowMagnificationInternal(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    goto :goto_1

    .line 397
    .end local v1    # "i":I
    .end local v2    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 389
    .restart local v1    # "i":I
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 397
    .end local v1    # "i":I
    monitor-exit v0

    .line 398
    return-void

    .line 397
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setConnection(Landroid/view/accessibility/IMagnificationConnection;)V
    .locals 6
    .param p1, "connection"    # Landroid/view/accessibility/IMagnificationConnection;

    .line 236
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    invoke-virtual {v1, v4}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->setConnectionCallback(Landroid/view/accessibility/IMagnificationConnectionCallback;)Z

    .line 240
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;

    invoke-static {v1, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->-$$Nest$fputmExpiredDeathRecipient(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;Z)V

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 243
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    iget-object v5, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;

    invoke-virtual {v1, v5}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 244
    iput-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 249
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    if-eqz v1, :cond_1

    .line 250
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setConnectionState(I)V

    .line 253
    :cond_1
    if-eqz p1, :cond_2

    .line 254
    new-instance v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    iget-object v5, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    invoke-direct {v1, p1, v5}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;-><init>(Landroid/view/accessibility/IMagnificationConnection;Lcom/android/server/accessibility/AccessibilityTraceManager;)V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 257
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 259
    :try_start_1
    new-instance v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;

    invoke-direct {v1, p0, v4}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;-><init>(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;Lcom/android/server/accessibility/magnification/MagnificationConnectionManager-IA;)V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;

    .line 260
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    iget-object v5, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;

    invoke-virtual {v1, v5}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 261
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    iget-object v5, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;

    invoke-virtual {v1, v5}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->setConnectionCallback(Landroid/view/accessibility/IMagnificationConnectionCallback;)Z

    .line 262
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setConnectionState(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 268
    :try_start_2
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    goto :goto_3

    .line 268
    :catchall_1
    move-exception v1

    goto :goto_2

    .line 263
    :catch_0
    move-exception v1

    nop

    .line 264
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "MagnificationConnectionManager"

    const-string/jumbo v5, "setConnection failed"

    invoke-static {v3, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    iput-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 266
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setConnectionState(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 268
    .end local v1    # "e":Landroid/os/RemoteException;
    :try_start_4
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    goto :goto_1

    :goto_2
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 269
    nop

    .end local p0    # "this":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
    .end local p1    # "connection":Landroid/view/accessibility/IMagnificationConnection;
    throw v1

    .line 271
    .restart local p0    # "this":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
    .restart local p1    # "connection":Landroid/view/accessibility/IMagnificationConnection;
    :cond_3
    :goto_3
    monitor-exit v0

    .line 272
    return-void

    .line 271
    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method setMagnificationFollowTypingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 430
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mMagnificationFollowTypingEnabled:Z

    .line 431
    return-void
.end method

.method public setScale(IF)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "scale"    # F

    .line 540
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 541
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 542
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    if-nez v1, :cond_0

    .line 543
    monitor-exit v0

    return-void

    .line 547
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 545
    .restart local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->setScale(F)V

    .line 546
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLastActivatedScale:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 547
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    monitor-exit v0

    .line 548
    return-void

    .line 547
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setTrackingTypingFocusEnabled(IZ)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "trackingTypingFocusEnabled"    # Z

    .line 467
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 468
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 469
    .local v1, "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    if-nez v1, :cond_0

    .line 470
    monitor-exit v0

    return-void

    .line 473
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 472
    .restart local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->setTrackingTypingFocusEnabled(Z)V

    .line 473
    .end local v1    # "magnifier":Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;
    monitor-exit v0

    .line 474
    return-void

    .line 473
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showMagnificationButton(II)Z
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "magnificationMode"    # I

    .line 826
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 827
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 828
    invoke-virtual {v1, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->showMagnificationButton(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 829
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 828
    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    .line 827
    return v1

    .line 829
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method waitConnectionWithTimeoutIfNeeded()Z
    .locals 5

    .line 1347
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget v2, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->WAIT_CONNECTION_TIMEOUT_MILLIS:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1348
    .local v0, "endMillis":J
    :goto_0
    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 1350
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1353
    :goto_1
    goto :goto_0

    .line 1351
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1355
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isConnected()Z

    move-result v2

    return v2
.end method
