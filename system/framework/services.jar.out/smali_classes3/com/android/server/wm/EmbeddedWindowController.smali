.class Lcom/android/server/wm/EmbeddedWindowController;
.super Ljava/lang/Object;
.source "EmbeddedWindowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mGlobalLock:Ljava/lang/Object;

.field private final mInputManagerService:Lcom/android/server/input/InputManagerService;

.field private mWindows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowsByInputTransferToken:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/window/InputTransferToken;",
            "Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowsByWindowToken:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$nOjrKQdiMN48oJpwo2nubdS8wU0(Lcom/android/server/wm/EmbeddedWindowController;Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;Landroid/os/IBinder;Landroid/window/InputTransferToken;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/EmbeddedWindowController;->lambda$add$0(Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;Landroid/os/IBinder;Landroid/window/InputTransferToken;Landroid/os/IBinder;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/input/InputManagerService;)V
    .locals 1
    .param p1, "atmService"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "inputManagerService"    # Lcom/android/server/input/InputManagerService;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    .line 62
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByInputTransferToken:Landroid/util/ArrayMap;

    .line 64
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByWindowToken:Landroid/util/ArrayMap;

    .line 73
    iput-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 74
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mGlobalLock:Ljava/lang/Object;

    .line 75
    iput-object p2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 76
    return-void
.end method

.method private isValidTouchGestureParams(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;)Z
    .locals 6
    .param p1, "hostWindowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "embeddedWindow"    # Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    .line 226
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-nez p2, :cond_1

    .line 227
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_EMBEDDED_WINDOWS_enabled:[Z

    aget-boolean v1, v3, v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x18f294284d81c31cL    # -2.5602865557940637E188

    invoke-static {v1, v3, v4, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 229
    :cond_0
    return v2

    .line 231
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 232
    .local v3, "wsAssociatedWithEmbedded":Lcom/android/server/wm/WindowState;
    if-nez v3, :cond_3

    .line 233
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_EMBEDDED_WINDOWS_enabled:[Z

    aget-boolean v1, v4, v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0xce7e638d4a03bf1L

    invoke-static {v1, v4, v5, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 236
    :cond_2
    return v2

    .line 238
    :cond_3
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v5}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-eq v4, v5, :cond_5

    .line 239
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_EMBEDDED_WINDOWS_enabled:[Z

    aget-boolean v1, v4, v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x96251081c1431a2L

    invoke-static {v1, v4, v5, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 242
    :cond_4
    return v2

    .line 245
    :cond_5
    invoke-virtual {p2}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getInputChannelToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_7

    .line 246
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_EMBEDDED_WINDOWS_enabled:[Z

    aget-boolean v1, v4, v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x7ad897a35fe3389L

    invoke-static {v1, v4, v5, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 249
    :cond_6
    return v2

    .line 251
    :cond_7
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    if-nez v4, :cond_9

    .line 252
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_EMBEDDED_WINDOWS_enabled:[Z

    aget-boolean v1, v4, v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x7871a9458b81c6baL    # -2.80409086366314E-272

    invoke-static {v1, v4, v5, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 254
    :cond_8
    return v2

    .line 256
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic lambda$add$0(Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;Landroid/os/IBinder;Landroid/window/InputTransferToken;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "window"    # Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .param p2, "inputToken"    # Landroid/os/IBinder;
    .param p3, "inputTransferToken"    # Landroid/window/InputTransferToken;
    .param p4, "windowToken"    # Landroid/os/IBinder;

    .line 94
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    sget-boolean v1, Landroid/os/Build;->DEBUG_AGING:Z

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/os/Build;->DEBUG_MONKEY:Z

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_0

    .line 110
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 97
    :goto_0
    iget-boolean v1, p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mIsGrantFocused:Z

    if-eqz v1, :cond_1

    .line 98
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->-$$Nest$mhandleTap(Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;Z)V

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByInputTransferToken:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByWindowToken:Landroid/util/ArrayMap;

    invoke-virtual {v1, p4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-boolean v1, Landroid/os/Build;->DEBUG_NOTHING:Z

    if-eqz v1, :cond_2

    .line 107
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove embedded window (binder death): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_2
    monitor-exit v0

    .line 111
    return-void

    .line 110
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateProcessController(Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;)V
    .locals 3
    .param p1, "window"    # Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    .line 130
    iget-object v0, p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_0

    .line 131
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    iget v2, p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    .line 134
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 135
    .local v0, "processController":Lcom/android/server/wm/WindowProcessController;
    if-nez v0, :cond_1

    .line 136
    const-string v1, "WindowManager"

    const-string v2, "Could not find the embedding process."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->addHostActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 140
    :goto_0
    return-void
.end method


# virtual methods
.method add(Landroid/os/IBinder;Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;)V
    .locals 7
    .param p1, "inputToken"    # Landroid/os/IBinder;
    .param p2, "window"    # Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {p2}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getInputTransferToken()Landroid/window/InputTransferToken;

    move-result-object v0

    move-object v5, v0

    .line 89
    .local v5, "inputTransferToken":Landroid/window/InputTransferToken;
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByInputTransferToken:Landroid/util/ArrayMap;

    invoke-virtual {v0, v5, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {p2}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    .line 91
    .local v6, "windowToken":Landroid/os/IBinder;
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByWindowToken:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-direct {p0, p2}, Lcom/android/server/wm/EmbeddedWindowController;->updateProcessController(Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;)V

    .line 93
    iget-object v0, p2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/os/IBinder;

    new-instance v1, Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    .end local p1    # "inputToken":Landroid/os/IBinder;
    .end local p2    # "window":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .local v3, "window":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .local v4, "inputToken":Landroid/os/IBinder;
    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/EmbeddedWindowController;Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;Landroid/os/IBinder;Landroid/window/InputTransferToken;Landroid/os/IBinder;)V

    const/4 p1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 114
    sget-boolean p1, Landroid/os/Build;->DEBUG_NOTHING:Z

    if-eqz p1, :cond_0

    .line 115
    const-string p1, "WindowManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "add embedded window: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", callers="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 115
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 119
    .end local v5    # "inputTransferToken":Landroid/window/InputTransferToken;
    .end local v6    # "windowToken":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 122
    :cond_0
    :goto_0
    goto :goto_2

    .line 119
    .end local v3    # "window":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .end local v4    # "inputToken":Landroid/os/IBinder;
    .restart local p1    # "inputToken":Landroid/os/IBinder;
    .restart local p2    # "window":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    :catch_1
    move-exception v0

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    move-object p1, v0

    .end local p1    # "inputToken":Landroid/os/IBinder;
    .end local p2    # "window":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .restart local v3    # "window":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .restart local v4    # "inputToken":Landroid/os/IBinder;
    :goto_1
    nop

    .line 121
    .local p1, "e":Landroid/os/RemoteException;
    iget-object p2, v2, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {p2, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 302
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 303
    return-void

    .line 306
    :cond_0
    const-string v0, "-- EmbeddedWindows --"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 309
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    .line 310
    .local v1, "ew":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->dump(Ljava/io/PrintWriter;)V

    .line 311
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 308
    .end local v1    # "ew":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 313
    .end local v0    # "i":I
    return-void
.end method

.method get(Landroid/os/IBinder;)Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .locals 1
    .param p1, "inputToken"    # Landroid/os/IBinder;

    .line 185
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    return-object v0
.end method

.method getByHostWindow(Lcom/android/server/wm/WindowState;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "host"    # Lcom/android/server/wm/WindowState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;",
            ">;"
        }
    .end annotation

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;>;"
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 213
    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    .line 214
    .local v2, "ew":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    iget-object v3, v2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    if-ne v3, p1, :cond_1

    .line 215
    if-nez v0, :cond_0

    .line 216
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 218
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .end local v2    # "ew":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 221
    .end local v1    # "i":I
    return-object v0
.end method

.method getByInputTransferToken(Landroid/window/InputTransferToken;)Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .locals 1
    .param p1, "inputTransferToken"    # Landroid/window/InputTransferToken;

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByInputTransferToken:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    return-object v0
.end method

.method getByWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .locals 1
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 193
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByWindowToken:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    return-object v0
.end method

.method getWindowByName(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 200
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    .line 201
    .local v1, "ew":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    iget-object v2, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v2, :cond_0

    .line 203
    iget-object v2, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v2

    return-object v2

    .line 199
    .end local v1    # "ew":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 206
    .end local v0    # "i":I
    const/4 v0, 0x0

    return-object v0
.end method

.method onWindowRemoved(Lcom/android/server/wm/WindowState;)V
    .locals 4
    .param p1, "host"    # Lcom/android/server/wm/WindowState;

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 168
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    .line 169
    .local v1, "ew":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    iget-object v2, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    if-ne v2, p1, :cond_0

    .line 170
    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    invoke-virtual {v2}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->onRemoved()V

    .line 171
    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByInputTransferToken:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getInputTransferToken()Landroid/window/InputTransferToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByWindowToken:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-boolean v2, Landroid/os/Build;->DEBUG_NOTHING:Z

    if-eqz v2, :cond_0

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on window remove for embedded window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 176
    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v1    # "ew":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 182
    .end local v0    # "i":I
    return-void
.end method

.method remove(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "client"    # Landroid/os/IBinder;

    .line 143
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 144
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    .line 145
    .local v1, "ew":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    iget-object v2, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/os/IBinder;

    if-ne v2, p1, :cond_3

    .line 148
    sget-boolean v2, Landroid/os/Build;->DEBUG_AGING:Z

    if-nez v2, :cond_0

    sget-boolean v2, Landroid/os/Build;->DEBUG_MONKEY:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-boolean v2, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mIsGrantFocused:Z

    if-eqz v2, :cond_1

    .line 149
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->-$$Nest$mhandleTap(Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;Z)V

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    invoke-virtual {v2}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->onRemoved()V

    .line 153
    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByInputTransferToken:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getInputTransferToken()Landroid/window/InputTransferToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByWindowToken:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-boolean v2, Landroid/os/Build;->DEBUG_NOTHING:Z

    if-eqz v2, :cond_2

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove embedded window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_2
    return-void

    .line 145
    :cond_3
    nop

    .line 143
    .end local v1    # "ew":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    nop

    .line 164
    .end local v0    # "i":I
    return-void
.end method

.method transferToEmbedded(ILcom/android/server/wm/WindowState;Landroid/window/InputTransferToken;)Z
    .locals 5
    .param p1, "callingUid"    # I
    .param p2, "hostWindowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "transferToToken"    # Landroid/window/InputTransferToken;

    .line 280
    invoke-virtual {p0, p3}, Lcom/android/server/wm/EmbeddedWindowController;->getByInputTransferToken(Landroid/window/InputTransferToken;)Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    move-result-object v0

    .line 281
    .local v0, "ew":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/EmbeddedWindowController;->isValidTouchGestureParams(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    const/4 v1, 0x0

    return v1

    .line 284
    :cond_0
    iget v1, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne p1, v1, :cond_2

    .line 288
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 290
    invoke-virtual {v0}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getInputChannelToken()Landroid/os/IBinder;

    move-result-object v3

    .line 288
    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/input/InputManagerService;->transferTouchGesture(Landroid/os/IBinder;Landroid/os/IBinder;Z)Z

    move-result v1

    .line 291
    .local v1, "didTransfer":Z
    if-eqz v1, :cond_1

    .line 292
    iput-boolean v4, v0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mGestureToEmbedded:Z

    .line 293
    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/BackNavigationController;->onEmbeddedWindowGestureTransferred(Lcom/android/server/wm/WindowState;)V

    .line 296
    :cond_1
    return v1

    .line 285
    .end local v1    # "didTransfer":Z
    :cond_2
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Transfer request must originate from owner of transferFromToken"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method transferToHost(ILandroid/window/InputTransferToken;Lcom/android/server/wm/WindowState;)Z
    .locals 6
    .param p1, "callingUid"    # I
    .param p2, "embeddedWindowToken"    # Landroid/window/InputTransferToken;
    .param p3, "transferToHostWindowState"    # Lcom/android/server/wm/WindowState;

    .line 261
    invoke-virtual {p0, p2}, Lcom/android/server/wm/EmbeddedWindowController;->getByInputTransferToken(Landroid/window/InputTransferToken;)Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    move-result-object v0

    .line 262
    .local v0, "ew":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    invoke-direct {p0, p3, v0}, Lcom/android/server/wm/EmbeddedWindowController;->isValidTouchGestureParams(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 263
    return v2

    .line 265
    :cond_0
    iget v1, v0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    if-ne p1, v1, :cond_2

    .line 269
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 270
    invoke-virtual {v0}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getInputChannelToken()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p3, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 269
    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/input/InputManagerService;->transferTouchGesture(Landroid/os/IBinder;Landroid/os/IBinder;Z)Z

    move-result v1

    .line 272
    .local v1, "didTransfer":Z
    if-eqz v1, :cond_1

    .line 273
    iput-boolean v2, v0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mGestureToEmbedded:Z

    .line 275
    :cond_1
    return v1

    .line 266
    .end local v1    # "didTransfer":Z
    :cond_2
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Transfer request must originate from owner of transferFromToken"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
