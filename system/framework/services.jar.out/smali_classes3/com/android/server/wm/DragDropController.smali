.class Lcom/android/server/wm/DragDropController;
.super Ljava/lang/Object;
.source "DragDropController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DragDropController$DragHandler;
    }
.end annotation


# static fields
.field private static final A11Y_DRAG_TIMEOUT_DEFAULT_MS:I = 0xea60

.field private static final DRAG_SHADOW_ALPHA_TRANSPARENT:F = 0.7071f

.field static final DRAG_TIMEOUT_MS:J = 0x1388L

.field static final MSG_ANIMATION_END:I = 0x2

.field static final MSG_DRAG_END_TIMEOUT:I = 0x0

.field static final MSG_REMOVE_DRAG_SURFACE_TIMEOUT:I = 0x3

.field static final MSG_TEAR_DOWN_DRAG_AND_DROP_INPUT:I = 0x1

.field static final MSG_UNHANDLED_DROP_LISTENER_TIMEOUT:I = 0x4


# instance fields
.field private mCallback:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayTopologyListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/display/DisplayTopology;",
            ">;"
        }
    .end annotation
.end field

.field private mDragState:Lcom/android/server/wm/DragState;

.field private mGlobalDragListener:Landroid/window/IGlobalDragListener;

.field private final mGlobalDragListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mHandler:Landroid/os/Handler;

.field private mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDragState(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/WindowManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lcom/android/server/wm/DragDropController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DragDropController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DragDropController;)V

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mDisplayTopologyListener:Ljava/util/function/Consumer;

    .line 95
    new-instance v0, Lcom/android/server/wm/DragDropController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DragDropController$1;-><init>(Lcom/android/server/wm/DragDropController;)V

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 111
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/android/server/wm/DragDropController$2;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DragDropController$2;-><init>(Lcom/android/server/wm/DragDropController;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 115
    iput-object p1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 116
    new-instance v0, Lcom/android/server/wm/DragDropController$DragHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/DragDropController$DragHandler;-><init>(Lcom/android/server/wm/DragDropController;Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    .line 117
    nop

    .line 121
    return-void
.end method

.method private shouldMoveCallingTaskToBack(Lcom/android/server/wm/WindowState;I)I
    .locals 3
    .param p1, "callingWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "flags"    # I

    .line 388
    and-int/lit16 v0, p2, 0x4000

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 390
    return v1

    .line 392
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 393
    .local v0, "callingActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    goto :goto_0

    .line 397
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    return v1

    .line 395
    :goto_0
    return v1
.end method


# virtual methods
.method cancelDragAndDrop(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "dragToken"    # Landroid/os/IBinder;
    .param p2, "skipAnimation"    # Z

    .line 467
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_0

    .line 468
    const-string v0, "WindowManager"

    const-string v1, "cancelDragAndDrop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0, p1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->preCancelDragAndDrop(Landroid/os/IBinder;)V

    .line 473
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v1, :cond_2

    .line 479
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v1, v1, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    if-ne v1, p1, :cond_1

    .line 486
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 487
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DragState;->cancelDragLocked(Z)V

    .line 488
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 490
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postCancelDragAndDrop()V

    .line 491
    nop

    .line 492
    return-void

    .line 490
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 488
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 480
    :cond_1
    :try_start_3
    const-string v1, "WindowManager"

    const-string v2, "cancelDragAndDrop() does not match prepareDrag()"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cancelDragAndDrop() does not match prepareDrag()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "dragToken":Landroid/os/IBinder;
    .end local p2    # "skipAnimation":Z
    throw v1

    .line 475
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "dragToken":Landroid/os/IBinder;
    .restart local p2    # "skipAnimation":Z
    :cond_2
    const-string v1, "WindowManager"

    const-string v2, "cancelDragAndDrop() without prepareDrag()"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cancelDragAndDrop() without prepareDrag()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "dragToken":Landroid/os/IBinder;
    .end local p2    # "skipAnimation":Z
    throw v1

    .line 488
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "dragToken":Landroid/os/IBinder;
    .restart local p2    # "skipAnimation":Z
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "dragToken":Landroid/os/IBinder;
    .end local p2    # "skipAnimation":Z
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 490
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "dragToken":Landroid/os/IBinder;
    .restart local p2    # "skipAnimation":Z
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postCancelDragAndDrop()V

    .line 491
    throw v0
.end method

.method dragDropActiveLocked()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isClosing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method dragRecipientEntered(Landroid/view/IWindow;)V
    .locals 2
    .param p1, "window"    # Landroid/view/IWindow;

    .line 529
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_0

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drag into new candidate view @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0, p1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->dragRecipientEntered(Landroid/view/IWindow;)V

    .line 533
    return-void
.end method

.method dragRecipientExited(Landroid/view/IWindow;)V
    .locals 2
    .param p1, "window"    # Landroid/view/IWindow;

    .line 536
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_0

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drag from old candidate view @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0, p1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 540
    return-void
.end method

.method dragSurfaceRelinquishedToDropTarget()Z
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-boolean v0, v0, Lcom/android/server/wm/DragState;->mRelinquishDragSurfaceToDropTarget:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method dropForAccessibility(Landroid/view/IWindow;FF)Z
    .locals 5
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 595
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 596
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/DragDropController;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    .line 597
    .local v1, "isA11yEnabled":Z
    invoke-virtual {p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 598
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 610
    .end local v1    # "isA11yEnabled":Z
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 600
    .restart local v1    # "isA11yEnabled":Z
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->isAccessibilityDragDrop()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 601
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, p1, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 603
    .local v2, "winState":Lcom/android/server/wm/WindowState;
    iget-object v4, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 604
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 606
    :cond_1
    :try_start_2
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 607
    .local v3, "token":Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v4, v3, p2, p3}, Lcom/android/server/wm/DragState;->reportDropWindowLock(Landroid/os/IBinder;FF)Z

    move-result v4

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 609
    .end local v2    # "winState":Lcom/android/server/wm/WindowState;
    .end local v3    # "token":Landroid/os/IBinder;
    :cond_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 610
    .end local v1    # "isA11yEnabled":Z
    :goto_0
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method handleDisplayTopologyChange(Landroid/hardware/display/DisplayTopology;)V
    .locals 3
    .param p1, "unused"    # Landroid/hardware/display/DisplayTopology;

    .line 496
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 497
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v1, :cond_0

    .line 498
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 504
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 500
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v1, :cond_1

    .line 501
    const-string v1, "WindowManager"

    const-string v2, "DisplayTopology changed, cancelling DragAndDrop"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v1, v1, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DragDropController;->cancelDragAndDrop(Landroid/os/IBinder;Z)V

    .line 504
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 505
    return-void

    .line 504
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method handleMotionEvent(ZIFF)V
    .locals 2
    .param p1, "keepHandling"    # Z
    .param p2, "displayId"    # I
    .param p3, "newX"    # F
    .param p4, "newY"    # F

    .line 516
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 517
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 521
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 525
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 524
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/DragState;->updateDragSurfaceLocked(ZIFF)V

    .line 525
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 526
    return-void

    .line 525
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method hasPendingUnhandledDropCallback()Z
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method notifyUnhandledDrop(Landroid/view/DragEvent;Ljava/lang/String;)Z
    .locals 10
    .param p1, "dropEvent"    # Landroid/view/DragEvent;
    .param p2, "reason"    # Ljava/lang/String;

    .line 406
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget v0, v0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v0, v0, 0x1100

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 408
    .local v0, "isLocalDrag":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget v3, v3, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 410
    .local v3, "shouldDelegateUnhandledDrag":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    const-string v5, ")"

    const-string v6, "WindowManager"

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    goto :goto_2

    .line 420
    :cond_3
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    .line 421
    .local v4, "traceCookie":I
    const-wide/16 v7, 0x20

    const-string v9, "DragDropController#notifyUnhandledDrop"

    invoke-static {v7, v8, v9, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 423
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending DROP to unhandled listener ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_4
    const/4 v5, 0x0

    const-wide/16 v7, 0x1388

    const/4 v9, 0x4

    :try_start_0
    invoke-virtual {p0, v9, v5, v7, v8}, Lcom/android/server/wm/DragDropController;->sendTimeoutMessage(ILjava/lang/Object;J)V

    .line 427
    iget-object v5, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    new-instance v7, Lcom/android/server/wm/DragDropController$3;

    invoke-direct {v7, p0, v4}, Lcom/android/server/wm/DragDropController$3;-><init>(Lcom/android/server/wm/DragDropController;I)V

    invoke-interface {v5, p1, v7}, Landroid/window/IGlobalDragListener;->onUnhandledDrop(Landroid/view/DragEvent;Landroid/window/IUnhandledDragCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    return v1

    .line 439
    :catch_0
    move-exception v1

    .line 440
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "Failed to call global drag listener for unhandled drop"

    invoke-static {v6, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 441
    return v2

    .line 416
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v4    # "traceCookie":I
    :goto_2
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping unhandled listener (listener="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", flags="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget v4, v4, Lcom/android/server/wm/DragState;->mFlags:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_5
    return v2
.end method

.method onDragStateClosedLocked(Lcom/android/server/wm/DragState;)V
    .locals 2
    .param p1, "dragState"    # Lcom/android/server/wm/DragState;

    .line 562
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eq v0, p1, :cond_0

    .line 563
    const-string v0, "WindowManager"

    const-string v1, "Unknown drag state is closed"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return-void

    .line 566
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 567
    return-void
.end method

.method onUnhandledDropCallback(Z)V
    .locals 3
    .param p1, "consumedByListener"    # Z

    .line 451
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 453
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-boolean p1, v0, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 454
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-boolean p1, v0, Lcom/android/server/wm/DragState;->mRelinquishDragSurfaceToDropTarget:Z

    .line 455
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 456
    return-void
.end method

.method performDrag(IILandroid/view/IWindow;ILandroid/view/SurfaceControl;IIIFFFFLandroid/content/ClipData;)Landroid/os/IBinder;
    .locals 27
    .param p1, "callerPid"    # I
    .param p2, "callerUid"    # I
    .param p3, "window"    # Landroid/view/IWindow;
    .param p4, "flags"    # I
    .param p5, "surface"    # Landroid/view/SurfaceControl;
    .param p6, "touchSource"    # I
    .param p7, "touchDeviceId"    # I
    .param p8, "touchPointerId"    # I
    .param p9, "touchX"    # F
    .param p10, "touchY"    # F
    .param p11, "thumbCenterX"    # F
    .param p12, "thumbCenterY"    # F
    .param p13, "data"    # Landroid/content/ClipData;

    .line 168
    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move/from16 v1, p4

    move-object/from16 v12, p5

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    move/from16 v10, p12

    move-object/from16 v11, p13

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_0

    .line 169
    const-string v0, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "perform drag: win="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " surface="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " flags=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " data="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " touch("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ") thumb center("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    .line 175
    .local v5, "dragToken":Landroid/os/IBinder;
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    move/from16 v6, p6

    invoke-interface/range {v3 .. v11}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->prePerformDrag(Landroid/view/IWindow;Landroid/os/IBinder;IFFFFLandroid/content/ClipData;)Z

    move-result v13

    move-object v15, v5

    move-object v14, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move-object v7, v4

    .line 178
    .end local v5    # "dragToken":Landroid/os/IBinder;
    .local v13, "callbackResult":Z
    .local v15, "dragToken":Landroid/os/IBinder;
    const/4 v3, 0x0

    .line 179
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/16 v16, 0x0

    .line 180
    .local v16, "touchFocusTransferredFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_21

    .line 182
    const/4 v5, 0x0

    if-nez v13, :cond_3

    .line 183
    :try_start_1
    const-string v0, "WindowManager"

    const-string v6, "IDragDropCallback rejects the performDrag request"

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 184
    nop

    .line 255
    if-eqz v12, :cond_2

    .line 256
    :try_start_2
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 257
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v6, v0

    .line 258
    .local v6, "transaction":Landroid/view/SurfaceControl$Transaction;
    :try_start_3
    invoke-virtual {v6, v12}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 259
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 260
    :try_start_4
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 263
    .end local v6    # "transaction":Landroid/view/SurfaceControl$Transaction;
    :catchall_0
    move-exception v0

    move/from16 v6, p6

    move-object v1, v12

    move/from16 v20, v13

    move-object v12, v4

    goto/16 :goto_17

    .line 256
    .restart local v6    # "transaction":Landroid/view/SurfaceControl$Transaction;
    :catchall_1
    move-exception v0

    move-object v5, v0

    if-eqz v6, :cond_1

    :try_start_5
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    nop

    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v13    # "callbackResult":Z
    .end local v15    # "dragToken":Landroid/os/IBinder;
    .end local v16    # "touchFocusTransferredFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "callerPid":I
    .end local p2    # "callerUid":I
    .end local p3    # "window":Landroid/view/IWindow;
    .end local p4    # "flags":I
    .end local p5    # "surface":Landroid/view/SurfaceControl;
    .end local p6    # "touchSource":I
    .end local p7    # "touchDeviceId":I
    .end local p8    # "touchPointerId":I
    .end local p9    # "touchX":F
    .end local p10    # "touchY":F
    .end local p11    # "thumbCenterX":F
    .end local p12    # "thumbCenterY":F
    .end local p13    # "data":Landroid/content/ClipData;
    throw v5

    .end local v6    # "transaction":Landroid/view/SurfaceControl$Transaction;
    .restart local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v13    # "callbackResult":Z
    .restart local v15    # "dragToken":Landroid/os/IBinder;
    .restart local v16    # "touchFocusTransferredFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "callerPid":I
    .restart local p2    # "callerUid":I
    .restart local p3    # "window":Landroid/view/IWindow;
    .restart local p4    # "flags":I
    .restart local p5    # "surface":Landroid/view/SurfaceControl;
    .restart local p6    # "touchSource":I
    .restart local p7    # "touchDeviceId":I
    .restart local p8    # "touchPointerId":I
    .restart local p9    # "touchX":F
    .restart local p10    # "touchY":F
    .restart local p11    # "thumbCenterX":F
    .restart local p12    # "thumbCenterY":F
    .restart local p13    # "data":Landroid/content/ClipData;
    :cond_2
    :goto_1
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 311
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 184
    return-object v5

    .line 255
    :catchall_3
    move-exception v0

    move/from16 v6, p6

    move-object v1, v12

    move/from16 v20, v13

    move-object v12, v4

    goto/16 :goto_14

    .line 187
    :cond_3
    :try_start_7
    invoke-virtual {v2}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_19

    if-eqz v0, :cond_5

    .line 188
    :try_start_8
    const-string v0, "WindowManager"

    const-string v6, "Drag already in progress"

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 189
    nop

    .line 255
    if-eqz v12, :cond_4

    .line 256
    :try_start_9
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 257
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v6, v0

    .line 258
    .restart local v6    # "transaction":Landroid/view/SurfaceControl$Transaction;
    :try_start_a
    invoke-virtual {v6, v12}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 259
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 260
    :try_start_b
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    .line 256
    :catchall_4
    move-exception v0

    move-object v5, v0

    if-eqz v6, :cond_1

    :try_start_c
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_0

    :catchall_5
    move-exception v0

    :try_start_d
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v6    # "transaction":Landroid/view/SurfaceControl$Transaction;
    :cond_4
    :goto_2
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 311
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 189
    return-object v5

    .line 192
    :cond_5
    :try_start_e
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v7, v6}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    move-object/from16 v17, v0

    .line 194
    .local v17, "callingWin":Lcom/android/server/wm/WindowState;
    if-eqz v17, :cond_15

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->canReceiveTouchInput()Z

    move-result v0

    if-nez v0, :cond_6

    move-object v1, v12

    move-object v12, v4

    move-object v4, v1

    move/from16 v6, p6

    move-object v1, v3

    move-object/from16 v19, v5

    move/from16 v20, v13

    move-object/from16 v3, v17

    goto/16 :goto_11

    .line 211
    :cond_6
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_19

    move-object v3, v0

    .line 212
    if-nez v3, :cond_9

    .line 213
    :try_start_f
    const-string v0, "WindowManager"

    const-string v6, "display content is null"

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 214
    nop

    .line 255
    if-eqz v12, :cond_8

    .line 256
    :try_start_10
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 257
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-object v6, v0

    .line 258
    .restart local v6    # "transaction":Landroid/view/SurfaceControl$Transaction;
    :try_start_11
    invoke-virtual {v6, v12}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 259
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 260
    :try_start_12
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_4

    .line 256
    :catchall_6
    move-exception v0

    move-object v5, v0

    if-eqz v6, :cond_7

    :try_start_13
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    goto :goto_3

    :catchall_7
    move-exception v0

    :try_start_14
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    nop

    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v13    # "callbackResult":Z
    .end local v15    # "dragToken":Landroid/os/IBinder;
    .end local v16    # "touchFocusTransferredFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "callerPid":I
    .end local p2    # "callerUid":I
    .end local p3    # "window":Landroid/view/IWindow;
    .end local p4    # "flags":I
    .end local p5    # "surface":Landroid/view/SurfaceControl;
    .end local p6    # "touchSource":I
    .end local p7    # "touchDeviceId":I
    .end local p8    # "touchPointerId":I
    .end local p9    # "touchX":F
    .end local p10    # "touchY":F
    .end local p11    # "thumbCenterX":F
    .end local p12    # "thumbCenterY":F
    .end local p13    # "data":Landroid/content/ClipData;
    throw v5

    .end local v6    # "transaction":Landroid/view/SurfaceControl$Transaction;
    .restart local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v13    # "callbackResult":Z
    .restart local v15    # "dragToken":Landroid/os/IBinder;
    .restart local v16    # "touchFocusTransferredFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "callerPid":I
    .restart local p2    # "callerUid":I
    .restart local p3    # "window":Landroid/view/IWindow;
    .restart local p4    # "flags":I
    .restart local p5    # "surface":Landroid/view/SurfaceControl;
    .restart local p6    # "touchSource":I
    .restart local p7    # "touchDeviceId":I
    .restart local p8    # "touchPointerId":I
    .restart local p9    # "touchX":F
    .restart local p10    # "touchY":F
    .restart local p11    # "thumbCenterX":F
    .restart local p12    # "thumbCenterY":F
    .restart local p13    # "data":Landroid/content/ClipData;
    :cond_8
    :goto_4
    monitor-exit v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 311
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 214
    return-object v5

    .line 217
    :cond_9
    and-int/lit16 v0, v1, 0x200

    if-nez v0, :cond_a

    .line 218
    const v0, 0x3f350481    # 0.7071f

    goto :goto_5

    :cond_a
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_5
    move/from16 v18, v0

    .line 219
    .local v18, "alpha":F
    :try_start_15
    invoke-interface {v7}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object/from16 v19, v0

    .line 220
    .local v19, "winBinder":Landroid/os/IBinder;
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    move-object/from16 v20, v0

    .line 221
    .local v20, "token":Landroid/os/IBinder;
    new-instance v0, Lcom/android/server/wm/DragState;

    iget-object v1, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_18

    move v6, v13

    move-object v13, v3

    move-object/from16 v3, v20

    move/from16 v20, v6

    move-object v6, v12

    move-object v12, v4

    move-object v4, v6

    move-object/from16 v6, v19

    move-object/from16 v19, v5

    move/from16 v5, p4

    .end local v19    # "winBinder":Landroid/os/IBinder;
    .local v3, "token":Landroid/os/IBinder;
    .local v6, "winBinder":Landroid/os/IBinder;
    .local v13, "displayContent":Lcom/android/server/wm/DisplayContent;
    .local v20, "callbackResult":Z
    :try_start_16
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DragState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DragDropController;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V

    iput-object v0, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_17

    .line 222
    const/4 v1, 0x0

    .line 223
    .end local p5    # "surface":Landroid/view/SurfaceControl;
    .local v1, "surface":Landroid/view/SurfaceControl;
    :try_start_17
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v4, p1

    iput v4, v0, Lcom/android/server/wm/DragState;->mPid:I

    .line 224
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v22, v3

    move/from16 v3, p2

    .end local v3    # "token":Landroid/os/IBinder;
    .local v22, "token":Landroid/os/IBinder;
    iput v3, v0, Lcom/android/server/wm/DragState;->mUid:I

    .line 225
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v3, v18

    .end local v18    # "alpha":F
    .local v3, "alpha":F
    iput v3, v0, Lcom/android/server/wm/DragState;->mStartDragAlpha:F

    .line 226
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v18, v3

    move-object/from16 v3, v17

    .end local v17    # "callingWin":Lcom/android/server/wm/WindowState;
    .local v3, "callingWin":Lcom/android/server/wm/WindowState;
    .restart local v18    # "alpha":F
    iget v4, v3, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    iput v4, v0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    .line 227
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-object v15, v0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 228
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-object v13, v0, Lcom/android/server/wm/DragState;->mStartDragDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 229
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-object v13, v0, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 230
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-object v14, v0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 231
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-direct {v2, v3, v5}, Lcom/android/server/wm/DragDropController;->shouldMoveCallingTaskToBack(Lcom/android/server/wm/WindowState;I)I

    move-result v4

    iput v4, v0, Lcom/android/server/wm/DragState;->mCallingTaskIdToHide:I

    .line 233
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_b

    .line 234
    const-string v0, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v6

    .end local v6    # "winBinder":Landroid/os/IBinder;
    .local v17, "winBinder":Landroid/os/IBinder;
    const-string v6, "Calling task to hide="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget v6, v6, Lcom/android/server/wm/DragState;->mCallingTaskIdToHide:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 255
    .end local v3    # "callingWin":Lcom/android/server/wm/WindowState;
    .end local v17    # "winBinder":Landroid/os/IBinder;
    .end local v18    # "alpha":F
    .end local v22    # "token":Landroid/os/IBinder;
    :catchall_8
    move-exception v0

    move/from16 v6, p6

    move-object v3, v13

    goto/16 :goto_14

    .line 233
    .restart local v3    # "callingWin":Lcom/android/server/wm/WindowState;
    .restart local v6    # "winBinder":Landroid/os/IBinder;
    .restart local v18    # "alpha":F
    .restart local v22    # "token":Landroid/os/IBinder;
    :cond_b
    move-object/from16 v17, v6

    .line 237
    .end local v6    # "winBinder":Landroid/os/IBinder;
    .restart local v17    # "winBinder":Landroid/os/IBinder;
    :goto_6
    and-int/lit16 v0, v5, 0x400

    if-nez v0, :cond_12

    .line 238
    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 239
    .local v0, "display":Landroid/view/Display;
    iget-object v4, v2, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    iget-object v6, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v5, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v14, v3, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    invoke-interface {v4, v6, v0, v5, v14}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->registerInputChannel(Lcom/android/server/wm/DragState;Landroid/view/Display;Lcom/android/server/input/InputManagerService;Landroid/os/IBinder;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    .line 242
    .end local v0    # "display":Landroid/view/Display;
    .end local v16    # "touchFocusTransferredFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    .local v4, "touchFocusTransferredFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    nop

    .line 255
    .end local v3    # "callingWin":Lcom/android/server/wm/WindowState;
    .end local v17    # "winBinder":Landroid/os/IBinder;
    .end local v18    # "alpha":F
    .end local v22    # "token":Landroid/os/IBinder;
    if-eqz v1, :cond_d

    .line 256
    :try_start_18
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 257
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    move-object v3, v0

    .line 258
    .local v3, "transaction":Landroid/view/SurfaceControl$Transaction;
    :try_start_19
    invoke-virtual {v3, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 259
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    .line 260
    :try_start_1a
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    .line 256
    .end local v3    # "transaction":Landroid/view/SurfaceControl$Transaction;
    goto :goto_8

    .line 263
    :catchall_9
    move-exception v0

    move/from16 v6, p6

    move-object/from16 v16, v4

    move-object v3, v13

    goto/16 :goto_17

    .line 256
    .restart local v3    # "transaction":Landroid/view/SurfaceControl$Transaction;
    :catchall_a
    move-exception v0

    move-object v5, v0

    if-eqz v3, :cond_c

    :try_start_1b
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    goto :goto_7

    :catchall_b
    move-exception v0

    :try_start_1c
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_7
    nop

    .end local v1    # "surface":Landroid/view/SurfaceControl;
    .end local v4    # "touchFocusTransferredFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    .end local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v15    # "dragToken":Landroid/os/IBinder;
    .end local v20    # "callbackResult":Z
    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "callerPid":I
    .end local p2    # "callerUid":I
    .end local p3    # "window":Landroid/view/IWindow;
    .end local p4    # "flags":I
    .end local p6    # "touchSource":I
    .end local p7    # "touchDeviceId":I
    .end local p8    # "touchPointerId":I
    .end local p9    # "touchX":F
    .end local p10    # "touchY":F
    .end local p11    # "thumbCenterX":F
    .end local p12    # "thumbCenterY":F
    .end local p13    # "data":Landroid/content/ClipData;
    throw v5

    .line 263
    .end local v3    # "transaction":Landroid/view/SurfaceControl$Transaction;
    .restart local v1    # "surface":Landroid/view/SurfaceControl;
    .restart local v4    # "touchFocusTransferredFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    .restart local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v15    # "dragToken":Landroid/os/IBinder;
    .restart local v20    # "callbackResult":Z
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "callerPid":I
    .restart local p2    # "callerUid":I
    .restart local p3    # "window":Landroid/view/IWindow;
    .restart local p4    # "flags":I
    .restart local p6    # "touchSource":I
    .restart local p7    # "touchDeviceId":I
    .restart local p8    # "touchPointerId":I
    .restart local p9    # "touchX":F
    .restart local p10    # "touchY":F
    .restart local p11    # "thumbCenterX":F
    .restart local p12    # "thumbCenterY":F
    .restart local p13    # "data":Landroid/content/ClipData;
    :cond_d
    :goto_8
    monitor-exit v12
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    :try_start_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    .line 265
    const/4 v3, 0x0

    .line 267
    .local v3, "touchFocusTransferred":Z
    :try_start_1e
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_0
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    move v3, v0

    .line 272
    goto :goto_9

    .line 311
    .end local v3    # "touchFocusTransferred":Z
    .end local v4    # "touchFocusTransferredFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    .end local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_c
    move-exception v0

    move/from16 v6, p6

    goto/16 :goto_18

    .line 269
    .restart local v3    # "touchFocusTransferred":Z
    .restart local v4    # "touchFocusTransferredFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    .restart local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catch_0
    move-exception v0

    nop

    .line 270
    .local v0, "exception":Ljava/lang/Exception;
    :try_start_1f
    const-string v5, "WindowManager"

    const-string v6, "Exception thrown while waiting for touch focus transfer"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_9
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v5
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    .line 275
    if-nez v3, :cond_e

    .line 276
    :try_start_20
    const-string v0, "WindowManager"

    const-string v6, "Unable to transfer touch focus"

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 278
    monitor-exit v5
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_d

    .line 311
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 278
    return-object v19

    .line 308
    :catchall_d
    move-exception v0

    move/from16 v6, p6

    :goto_a
    move/from16 v16, v3

    goto/16 :goto_e

    .line 281
    :cond_e
    :try_start_21
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 282
    .local v0, "surfaceControl":Landroid/view/SurfaceControl;
    iget-object v6, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v6, v8, v9}, Lcom/android/server/wm/DragState;->broadcastDragStartedLocked(FF)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_12

    .line 283
    move/from16 v6, p6

    and-int/lit16 v12, v6, 0x2002

    const/16 v14, 0x2002

    if-ne v12, v14, :cond_f

    .line 284
    :try_start_22
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v21

    iget-object v12, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 285
    const/16 v14, 0x3fd

    invoke-static {v12, v14}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v22

    iget-object v12, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v12, v12, Lcom/android/server/wm/DragState;->mCurrentDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 287
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v23

    iget-object v12, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 288
    invoke-virtual {v12}, Lcom/android/server/wm/DragState;->getInputToken()Landroid/os/IBinder;

    move-result-object v26

    .line 284
    move/from16 v24, p7

    move/from16 v25, p8

    invoke-virtual/range {v21 .. v26}, Landroid/hardware/input/InputManagerGlobal;->setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_e

    goto :goto_b

    .line 308
    .end local v0    # "surfaceControl":Landroid/view/SurfaceControl;
    :catchall_e
    move-exception v0

    goto :goto_a

    .line 291
    .restart local v0    # "surfaceControl":Landroid/view/SurfaceControl;
    :cond_f
    :goto_b
    :try_start_23
    iget-object v12, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput v10, v12, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 292
    iget-object v12, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput v11, v12, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 295
    sget-boolean v12, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_11

    if-eqz v12, :cond_10

    .line 296
    :try_start_24
    const-string v12, "WindowManager"

    const-string v14, ">>> OPEN TRANSACTION performDrag"

    invoke-static {v12, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_e

    .line 299
    :cond_10
    :try_start_25
    iget-object v12, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v12, v12, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 300
    .local v12, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v14, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget v14, v14, Lcom/android/server/wm/DragState;->mStartDragAlpha:F

    invoke-virtual {v12, v0, v14}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 301
    invoke-virtual {v12, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 302
    invoke-virtual {v13, v12, v0}, Lcom/android/server/wm/DisplayContent;->reparentToOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 303
    iget-object v14, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 304
    move-object/from16 p5, v0

    .end local v0    # "surfaceControl":Landroid/view/SurfaceControl;
    .local p5, "surfaceControl":Landroid/view/SurfaceControl;
    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_11

    .line 303
    move/from16 v16, v3

    .end local v3    # "touchFocusTransferred":Z
    .local v16, "touchFocusTransferred":Z
    const/4 v3, 0x1

    :try_start_26
    invoke-virtual {v14, v3, v0, v8, v9}, Lcom/android/server/wm/DragState;->updateDragSurfaceLocked(ZIFF)V

    .line 305
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_11

    .line 306
    const-string v0, "WindowManager"

    const-string v3, "<<< CLOSE TRANSACTION performDrag"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 308
    .end local v12    # "transaction":Landroid/view/SurfaceControl$Transaction;
    .end local p5    # "surfaceControl":Landroid/view/SurfaceControl;
    :catchall_f
    move-exception v0

    goto :goto_e

    :cond_11
    :goto_c
    monitor-exit v5
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_f

    :try_start_27
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_10

    .line 309
    nop

    .line 311
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 309
    return-object v15

    .line 311
    .end local v4    # "touchFocusTransferredFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    .end local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v16    # "touchFocusTransferred":Z
    :catchall_10
    move-exception v0

    goto/16 :goto_18

    .line 308
    .restart local v3    # "touchFocusTransferred":Z
    .restart local v4    # "touchFocusTransferredFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    .restart local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_11
    move-exception v0

    :goto_d
    move/from16 v16, v3

    .end local v3    # "touchFocusTransferred":Z
    .restart local v16    # "touchFocusTransferred":Z
    goto :goto_e

    .end local v16    # "touchFocusTransferred":Z
    .restart local v3    # "touchFocusTransferred":Z
    :catchall_12
    move-exception v0

    move/from16 v6, p6

    goto :goto_d

    .end local v3    # "touchFocusTransferred":Z
    .restart local v16    # "touchFocusTransferred":Z
    :goto_e
    :try_start_28
    monitor-exit v5
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_f

    :try_start_29
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v1    # "surface":Landroid/view/SurfaceControl;
    .end local v15    # "dragToken":Landroid/os/IBinder;
    .end local v20    # "callbackResult":Z
    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "callerPid":I
    .end local p2    # "callerUid":I
    .end local p3    # "window":Landroid/view/IWindow;
    .end local p4    # "flags":I
    .end local p6    # "touchSource":I
    .end local p7    # "touchDeviceId":I
    .end local p8    # "touchPointerId":I
    .end local p9    # "touchX":F
    .end local p10    # "touchY":F
    .end local p11    # "thumbCenterX":F
    .end local p12    # "thumbCenterY":F
    .end local p13    # "data":Landroid/content/ClipData;
    throw v0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_10

    .line 244
    .end local v4    # "touchFocusTransferredFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    .restart local v1    # "surface":Landroid/view/SurfaceControl;
    .local v3, "callingWin":Lcom/android/server/wm/WindowState;
    .restart local v15    # "dragToken":Landroid/os/IBinder;
    .local v16, "touchFocusTransferredFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    .restart local v17    # "winBinder":Landroid/os/IBinder;
    .restart local v18    # "alpha":F
    .restart local v20    # "callbackResult":Z
    .restart local v22    # "token":Landroid/os/IBinder;
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "callerPid":I
    .restart local p2    # "callerUid":I
    .restart local p3    # "window":Landroid/view/IWindow;
    .restart local p4    # "flags":I
    .restart local p6    # "touchSource":I
    .restart local p7    # "touchDeviceId":I
    .restart local p8    # "touchPointerId":I
    .restart local p9    # "touchX":F
    .restart local p10    # "touchY":F
    .restart local p11    # "thumbCenterX":F
    .restart local p12    # "thumbCenterY":F
    .restart local p13    # "data":Landroid/content/ClipData;
    :cond_12
    move/from16 v6, p6

    :try_start_2a
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0, v8, v9}, Lcom/android/server/wm/DragState;->broadcastDragStartedLocked(FF)V

    .line 247
    iget-object v0, v3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 248
    invoke-virtual {v2}, Lcom/android/server/wm/DragDropController;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    const v5, 0xea60

    const/4 v14, 0x4

    invoke-virtual {v4, v5, v14}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v4

    int-to-long v4, v4

    .line 247
    const/4 v14, 0x0

    invoke-virtual {v2, v14, v0, v4, v5}, Lcom/android/server/wm/DragDropController;->sendTimeoutMessage(ILjava/lang/Object;J)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_16

    .line 252
    nop

    .line 255
    if-eqz v1, :cond_14

    .line 256
    :try_start_2b
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 257
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_13

    move-object v4, v0

    .line 258
    .local v4, "transaction":Landroid/view/SurfaceControl$Transaction;
    :try_start_2c
    invoke-virtual {v4, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 259
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_14

    .line 260
    :try_start_2d
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_13

    goto :goto_10

    .line 263
    .end local v3    # "callingWin":Lcom/android/server/wm/WindowState;
    .end local v4    # "transaction":Landroid/view/SurfaceControl$Transaction;
    .end local v17    # "winBinder":Landroid/os/IBinder;
    .end local v18    # "alpha":F
    .end local v22    # "token":Landroid/os/IBinder;
    :catchall_13
    move-exception v0

    move-object v3, v13

    goto/16 :goto_17

    .line 256
    .restart local v3    # "callingWin":Lcom/android/server/wm/WindowState;
    .restart local v4    # "transaction":Landroid/view/SurfaceControl$Transaction;
    .restart local v17    # "winBinder":Landroid/os/IBinder;
    .restart local v18    # "alpha":F
    .restart local v22    # "token":Landroid/os/IBinder;
    :catchall_14
    move-exception v0

    move-object v5, v0

    if-eqz v4, :cond_13

    :try_start_2e
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_15

    goto :goto_f

    :catchall_15
    move-exception v0

    :try_start_2f
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_13
    :goto_f
    nop

    .end local v1    # "surface":Landroid/view/SurfaceControl;
    .end local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v15    # "dragToken":Landroid/os/IBinder;
    .end local v16    # "touchFocusTransferredFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    .end local v20    # "callbackResult":Z
    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "callerPid":I
    .end local p2    # "callerUid":I
    .end local p3    # "window":Landroid/view/IWindow;
    .end local p4    # "flags":I
    .end local p6    # "touchSource":I
    .end local p7    # "touchDeviceId":I
    .end local p8    # "touchPointerId":I
    .end local p9    # "touchX":F
    .end local p10    # "touchY":F
    .end local p11    # "thumbCenterX":F
    .end local p12    # "thumbCenterY":F
    .end local p13    # "data":Landroid/content/ClipData;
    throw v5

    .end local v4    # "transaction":Landroid/view/SurfaceControl$Transaction;
    .restart local v1    # "surface":Landroid/view/SurfaceControl;
    .restart local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v15    # "dragToken":Landroid/os/IBinder;
    .restart local v16    # "touchFocusTransferredFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    .restart local v20    # "callbackResult":Z
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "callerPid":I
    .restart local p2    # "callerUid":I
    .restart local p3    # "window":Landroid/view/IWindow;
    .restart local p4    # "flags":I
    .restart local p6    # "touchSource":I
    .restart local p7    # "touchDeviceId":I
    .restart local p8    # "touchPointerId":I
    .restart local p9    # "touchX":F
    .restart local p10    # "touchY":F
    .restart local p11    # "thumbCenterX":F
    .restart local p12    # "thumbCenterY":F
    .restart local p13    # "data":Landroid/content/ClipData;
    :cond_14
    :goto_10
    monitor-exit v12
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_13

    .line 311
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 252
    return-object v15

    .line 255
    .end local v3    # "callingWin":Lcom/android/server/wm/WindowState;
    .end local v17    # "winBinder":Landroid/os/IBinder;
    .end local v18    # "alpha":F
    .end local v22    # "token":Landroid/os/IBinder;
    :catchall_16
    move-exception v0

    move-object v3, v13

    goto/16 :goto_14

    .end local v1    # "surface":Landroid/view/SurfaceControl;
    .local p5, "surface":Landroid/view/SurfaceControl;
    :catchall_17
    move-exception v0

    move/from16 v6, p6

    move-object v1, v4

    move-object v3, v13

    goto/16 :goto_14

    .end local v20    # "callbackResult":Z
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    .local v13, "callbackResult":Z
    :catchall_18
    move-exception v0

    move-object v6, v12

    move-object v12, v4

    move-object v4, v6

    move/from16 v6, p6

    move/from16 v20, v13

    move-object v13, v3

    move-object v1, v4

    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .local v13, "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v20    # "callbackResult":Z
    goto/16 :goto_14

    .end local v20    # "callbackResult":Z
    .restart local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .local v13, "callbackResult":Z
    :catchall_19
    move-exception v0

    move-object v1, v12

    move-object v12, v4

    move-object v4, v1

    move/from16 v6, p6

    move-object v1, v3

    move/from16 v20, v13

    move-object v1, v4

    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v13    # "callbackResult":Z
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v20    # "callbackResult":Z
    goto/16 :goto_14

    .line 194
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v20    # "callbackResult":Z
    .restart local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v13    # "callbackResult":Z
    .local v17, "callingWin":Lcom/android/server/wm/WindowState;
    :cond_15
    move-object v1, v12

    move-object v12, v4

    move-object v4, v1

    move/from16 v6, p6

    move-object v1, v3

    move-object/from16 v19, v5

    move/from16 v20, v13

    move-object/from16 v3, v17

    .line 195
    .end local v13    # "callbackResult":Z
    .end local v17    # "callingWin":Lcom/android/server/wm/WindowState;
    .restart local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .local v3, "callingWin":Lcom/android/server/wm/WindowState;
    .restart local v20    # "callbackResult":Z
    :goto_11
    :try_start_30
    const-string v0, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bad requesting window "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_1d

    .line 196
    nop

    .line 255
    if-eqz v4, :cond_17

    .line 256
    :try_start_31
    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 257
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_1a

    move-object v5, v0

    .line 258
    .local v5, "transaction":Landroid/view/SurfaceControl$Transaction;
    :try_start_32
    invoke-virtual {v5, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 259
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_1b

    .line 260
    :try_start_33
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_1a

    goto :goto_13

    .line 263
    .end local v3    # "callingWin":Lcom/android/server/wm/WindowState;
    .end local v5    # "transaction":Landroid/view/SurfaceControl$Transaction;
    :catchall_1a
    move-exception v0

    move-object v3, v1

    move-object v1, v4

    goto :goto_17

    .line 256
    .restart local v3    # "callingWin":Lcom/android/server/wm/WindowState;
    .restart local v5    # "transaction":Landroid/view/SurfaceControl$Transaction;
    :catchall_1b
    move-exception v0

    move-object v13, v0

    if-eqz v5, :cond_16

    :try_start_34
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1c

    goto :goto_12

    :catchall_1c
    move-exception v0

    :try_start_35
    invoke-virtual {v13, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_16
    :goto_12
    nop

    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v15    # "dragToken":Landroid/os/IBinder;
    .end local v16    # "touchFocusTransferredFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    .end local v20    # "callbackResult":Z
    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "callerPid":I
    .end local p2    # "callerUid":I
    .end local p3    # "window":Landroid/view/IWindow;
    .end local p4    # "flags":I
    .end local p5    # "surface":Landroid/view/SurfaceControl;
    .end local p6    # "touchSource":I
    .end local p7    # "touchDeviceId":I
    .end local p8    # "touchPointerId":I
    .end local p9    # "touchX":F
    .end local p10    # "touchY":F
    .end local p11    # "thumbCenterX":F
    .end local p12    # "thumbCenterY":F
    .end local p13    # "data":Landroid/content/ClipData;
    throw v13

    .end local v5    # "transaction":Landroid/view/SurfaceControl$Transaction;
    .restart local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v15    # "dragToken":Landroid/os/IBinder;
    .restart local v16    # "touchFocusTransferredFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    .restart local v20    # "callbackResult":Z
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "callerPid":I
    .restart local p2    # "callerUid":I
    .restart local p3    # "window":Landroid/view/IWindow;
    .restart local p4    # "flags":I
    .restart local p5    # "surface":Landroid/view/SurfaceControl;
    .restart local p6    # "touchSource":I
    .restart local p7    # "touchDeviceId":I
    .restart local p8    # "touchPointerId":I
    .restart local p9    # "touchX":F
    .restart local p10    # "touchY":F
    .restart local p11    # "thumbCenterX":F
    .restart local p12    # "thumbCenterY":F
    .restart local p13    # "data":Landroid/content/ClipData;
    :cond_17
    :goto_13
    monitor-exit v12
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1a

    .line 311
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v2, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 196
    return-object v19

    .line 255
    .end local v3    # "callingWin":Lcom/android/server/wm/WindowState;
    :catchall_1d
    move-exception v0

    move-object v3, v1

    move-object v1, v4

    .end local p5    # "surface":Landroid/view/SurfaceControl;
    .local v1, "surface":Landroid/view/SurfaceControl;
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    :goto_14
    if-eqz v1, :cond_19

    .line 256
    :try_start_36
    iget-object v4, v2, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 257
    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl$Transaction;
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1e

    .line 258
    .restart local v4    # "transaction":Landroid/view/SurfaceControl$Transaction;
    :try_start_37
    invoke-virtual {v4, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 259
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1f

    .line 260
    :try_start_38
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1e

    goto :goto_16

    .line 263
    .end local v4    # "transaction":Landroid/view/SurfaceControl$Transaction;
    :catchall_1e
    move-exception v0

    goto :goto_17

    .line 256
    .restart local v4    # "transaction":Landroid/view/SurfaceControl$Transaction;
    :catchall_1f
    move-exception v0

    move-object v5, v0

    if-eqz v4, :cond_18

    :try_start_39
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_20

    goto :goto_15

    :catchall_20
    move-exception v0

    :try_start_3a
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_18
    :goto_15
    nop

    .end local v1    # "surface":Landroid/view/SurfaceControl;
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v15    # "dragToken":Landroid/os/IBinder;
    .end local v16    # "touchFocusTransferredFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    .end local v20    # "callbackResult":Z
    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "callerPid":I
    .end local p2    # "callerUid":I
    .end local p3    # "window":Landroid/view/IWindow;
    .end local p4    # "flags":I
    .end local p6    # "touchSource":I
    .end local p7    # "touchDeviceId":I
    .end local p8    # "touchPointerId":I
    .end local p9    # "touchX":F
    .end local p10    # "touchY":F
    .end local p11    # "thumbCenterX":F
    .end local p12    # "thumbCenterY":F
    .end local p13    # "data":Landroid/content/ClipData;
    throw v5

    .line 262
    .end local v4    # "transaction":Landroid/view/SurfaceControl$Transaction;
    .restart local v1    # "surface":Landroid/view/SurfaceControl;
    .restart local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v15    # "dragToken":Landroid/os/IBinder;
    .restart local v16    # "touchFocusTransferredFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    .restart local v20    # "callbackResult":Z
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "callerPid":I
    .restart local p2    # "callerUid":I
    .restart local p3    # "window":Landroid/view/IWindow;
    .restart local p4    # "flags":I
    .restart local p6    # "touchSource":I
    .restart local p7    # "touchDeviceId":I
    .restart local p8    # "touchPointerId":I
    .restart local p9    # "touchX":F
    .restart local p10    # "touchY":F
    .restart local p11    # "thumbCenterX":F
    .restart local p12    # "thumbCenterY":F
    .restart local p13    # "data":Landroid/content/ClipData;
    :cond_19
    :goto_16
    nop

    .end local v1    # "surface":Landroid/view/SurfaceControl;
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v15    # "dragToken":Landroid/os/IBinder;
    .end local v16    # "touchFocusTransferredFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    .end local v20    # "callbackResult":Z
    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "callerPid":I
    .end local p2    # "callerUid":I
    .end local p3    # "window":Landroid/view/IWindow;
    .end local p4    # "flags":I
    .end local p6    # "touchSource":I
    .end local p7    # "touchDeviceId":I
    .end local p8    # "touchPointerId":I
    .end local p9    # "touchX":F
    .end local p10    # "touchY":F
    .end local p11    # "thumbCenterX":F
    .end local p12    # "thumbCenterY":F
    .end local p13    # "data":Landroid/content/ClipData;
    throw v0

    .line 263
    .restart local v1    # "surface":Landroid/view/SurfaceControl;
    .restart local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v15    # "dragToken":Landroid/os/IBinder;
    .restart local v16    # "touchFocusTransferredFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    .restart local v20    # "callbackResult":Z
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "callerPid":I
    .restart local p2    # "callerUid":I
    .restart local p3    # "window":Landroid/view/IWindow;
    .restart local p4    # "flags":I
    .restart local p6    # "touchSource":I
    .restart local p7    # "touchDeviceId":I
    .restart local p8    # "touchPointerId":I
    .restart local p9    # "touchX":F
    .restart local p10    # "touchY":F
    .restart local p11    # "thumbCenterX":F
    .restart local p12    # "thumbCenterY":F
    .restart local p13    # "data":Landroid/content/ClipData;
    :goto_17
    monitor-exit v12
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_1e

    :try_start_3b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v1    # "surface":Landroid/view/SurfaceControl;
    .end local v15    # "dragToken":Landroid/os/IBinder;
    .end local v20    # "callbackResult":Z
    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "callerPid":I
    .end local p2    # "callerUid":I
    .end local p3    # "window":Landroid/view/IWindow;
    .end local p4    # "flags":I
    .end local p6    # "touchSource":I
    .end local p7    # "touchDeviceId":I
    .end local p8    # "touchPointerId":I
    .end local p9    # "touchX":F
    .end local p10    # "touchY":F
    .end local p11    # "thumbCenterX":F
    .end local p12    # "thumbCenterY":F
    .end local p13    # "data":Landroid/content/ClipData;
    throw v0
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_10

    .line 311
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v16    # "touchFocusTransferredFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    .restart local v13    # "callbackResult":Z
    .restart local v15    # "dragToken":Landroid/os/IBinder;
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "callerPid":I
    .restart local p2    # "callerUid":I
    .restart local p3    # "window":Landroid/view/IWindow;
    .restart local p4    # "flags":I
    .restart local p5    # "surface":Landroid/view/SurfaceControl;
    .restart local p6    # "touchSource":I
    .restart local p7    # "touchDeviceId":I
    .restart local p8    # "touchPointerId":I
    .restart local p9    # "touchX":F
    .restart local p10    # "touchY":F
    .restart local p11    # "thumbCenterX":F
    .restart local p12    # "thumbCenterY":F
    .restart local p13    # "data":Landroid/content/ClipData;
    :catchall_21
    move-exception v0

    move/from16 v6, p6

    move-object v4, v12

    move/from16 v20, v13

    move-object v1, v4

    .end local v13    # "callbackResult":Z
    .end local p5    # "surface":Landroid/view/SurfaceControl;
    .restart local v1    # "surface":Landroid/view/SurfaceControl;
    .restart local v20    # "callbackResult":Z
    :goto_18
    iget-object v3, v2, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v3}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 312
    throw v0
.end method

.method registerCallback(Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method reportDropResult(Landroid/view/IWindow;Z)V
    .locals 9
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "consumed"    # Z

    .line 320
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 321
    .local v0, "token":Landroid/os/IBinder;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v1, :cond_0

    .line 322
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drop result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " reported by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1, p1, p2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->preReportDropResult(Landroid/view/IWindow;Z)V

    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 328
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v2, :cond_1

    .line 331
    const-string v2, "WindowManager"

    const-string v3, "Drop result given but no drag in progress"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    .line 332
    return-void

    .line 377
    :catchall_0
    move-exception v2

    goto/16 :goto_2

    .line 335
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v2, v2, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    if-ne v2, v0, :cond_7

    .line 344
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 346
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 347
    .local v2, "callingWin":Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_2

    .line 348
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad result-reporting window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 379
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    .line 349
    return-void

    .line 354
    :cond_2
    if-nez p2, :cond_3

    :try_start_3
    iget-object v3, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v3, v3, Lcom/android/server/wm/DragState;->mUnhandledDropEvent:Landroid/view/DragEvent;

    const-string v5, "window-drop"

    invoke-virtual {p0, v3, v5}, Lcom/android/server/wm/DragDropController;->notifyUnhandledDrop(Landroid/view/DragEvent;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 358
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 379
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    .line 358
    return-void

    .line 361
    :cond_3
    const/4 v3, 0x1

    if-eqz p2, :cond_4

    :try_start_4
    iget-object v5, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 362
    invoke-virtual {v5, v2}, Lcom/android/server/wm/DragState;->targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v3

    goto :goto_0

    :cond_4
    move v5, v4

    :goto_0
    nop

    .line 363
    .local v5, "relinquishDragSurfaceToDropTarget":Z
    iget-object v6, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v6, v6, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    invoke-interface {v6, v0}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    move v4, v3

    .line 364
    .local v4, "isCrossWindowDrag":Z
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v3, p2, v5}, Lcom/android/server/wm/DragState;->endDragLocked(ZZ)V

    .line 366
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 367
    .local v3, "droppedWindowTask":Lcom/android/server/wm/Task;
    iget-object v6, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_6

    if-eqz v3, :cond_6

    if-eqz p2, :cond_6

    if-eqz v4, :cond_6

    .line 371
    :try_start_5
    iget-object v6, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/window/IGlobalDragListener;->onCrossWindowDrop(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 375
    goto :goto_1

    .line 372
    :catch_0
    move-exception v6

    nop

    .line 373
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string v7, "WindowManager"

    const-string v8, "Failed to call global drag listener for cross-window drop"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    .end local v2    # "callingWin":Lcom/android/server/wm/WindowState;
    .end local v3    # "droppedWindowTask":Lcom/android/server/wm/Task;
    .end local v4    # "isCrossWindowDrag":Z
    .end local v5    # "relinquishDragSurfaceToDropTarget":Z
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_6
    :goto_1
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 379
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    .line 380
    nop

    .line 381
    return-void

    .line 379
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 337
    :cond_7
    :try_start_8
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid drop-result claim by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "reportDropResult() by non-recipient"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":Landroid/os/IBinder;
    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "window":Landroid/view/IWindow;
    .end local p2    # "consumed":Z
    throw v2

    .line 377
    .restart local v0    # "token":Landroid/os/IBinder;
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "window":Landroid/view/IWindow;
    .restart local p2    # "consumed":Z
    :goto_2
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "token":Landroid/os/IBinder;
    .end local p0    # "this":Lcom/android/server/wm/DragDropController;
    .end local p1    # "window":Landroid/view/IWindow;
    .end local p2    # "consumed":Z
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 379
    .restart local v0    # "token":Landroid/os/IBinder;
    .restart local p0    # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1    # "window":Landroid/view/IWindow;
    .restart local p2    # "consumed":Z
    :goto_3
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    .line 380
    throw v1
.end method

.method reportDropWindow(Landroid/os/IBinder;FF)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 570
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v0, :cond_0

    .line 571
    const-string v0, "WindowManager"

    const-string v1, "Drag state is closed."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    return-void

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 576
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/DragState;->reportDropWindowLock(Landroid/os/IBinder;FF)Z

    .line 577
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 578
    return-void

    .line 577
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method reportDropWindowWhenPowerOff(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 583
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v0, :cond_0

    .line 584
    const-string v0, "WindowManager"

    const-string v1, "Drag state is closed when power off."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    return-void

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 589
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v2, v2, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/wm/DragState;->reportDropWindowLock(Landroid/os/IBinder;FF)Z

    .line 590
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 591
    return-void

    .line 590
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p1, "window"    # Lcom/android/server/wm/WindowState;

    .line 162
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 163
    return-void
.end method

.method sendHandlerMessage(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg"    # Ljava/lang/Object;

    .line 546
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 547
    return-void
.end method

.method sendTimeoutMessage(ILjava/lang/Object;J)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg"    # Ljava/lang/Object;
    .param p3, "timeoutMs"    # J

    .line 553
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 554
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 555
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 556
    return-void
.end method

.method public setGlobalDragListener(Landroid/window/IGlobalDragListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/window/IGlobalDragListener;

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    invoke-interface {v0}, Landroid/window/IGlobalDragListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    invoke-interface {v0}, Landroid/window/IGlobalDragListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 150
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    .line 151
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/window/IGlobalDragListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    invoke-interface {v0}, Landroid/window/IGlobalDragListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DragDropController;->mGlobalDragListener:Landroid/window/IGlobalDragListener;

    .line 159
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method
