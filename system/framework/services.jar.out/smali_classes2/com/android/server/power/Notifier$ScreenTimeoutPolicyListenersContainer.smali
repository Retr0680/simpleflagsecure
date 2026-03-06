.class final Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;
.super Ljava/lang/Object;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/Notifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenTimeoutPolicyListenersContainer"
.end annotation


# instance fields
.field private final mLastReportedState:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IScreenTimeoutPolicyListener;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IScreenTimeoutPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mScreenTimeoutPolicy:I

.field final synthetic this$0:Lcom/android/server/power/Notifier;


# direct methods
.method public static synthetic $r8$lambda$rVPCw0atz6GsfCstOkR4CMvZP-A(Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->lambda$updateScreenTimeoutPolicyAndNotifyIfNeeded$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$rfRzDRR-XAxLfrN45gYO9-58W6U(Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;Landroid/os/IScreenTimeoutPolicyListener;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->lambda$addListener$1(Landroid/os/IScreenTimeoutPolicyListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmLastReportedState(Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mLastReportedState:Landroid/util/ArrayMap;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/power/Notifier;I)V
    .locals 1
    .param p2, "screenTimeoutPolicy"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1456
    iput-object p1, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->this$0:Lcom/android/server/power/Notifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1450
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mLastReportedState:Landroid/util/ArrayMap;

    .line 1457
    iput p2, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mScreenTimeoutPolicy:I

    .line 1458
    new-instance v0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;-><init>(Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;Lcom/android/server/power/Notifier;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mListeners:Landroid/os/RemoteCallbackList;

    .line 1464
    return-void
.end method

.method private synthetic lambda$addListener$1(Landroid/os/IScreenTimeoutPolicyListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/os/IScreenTimeoutPolicyListener;

    .line 1481
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->notifyListenerIfNeeded(Landroid/os/IScreenTimeoutPolicyListener;)V

    return-void
.end method

.method private synthetic lambda$updateScreenTimeoutPolicyAndNotifyIfNeeded$0()V
    .locals 2

    .line 1471
    iget-object v0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1472
    iget-object v1, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/os/IScreenTimeoutPolicyListener;

    .line 1473
    .local v1, "listener":Landroid/os/IScreenTimeoutPolicyListener;
    invoke-direct {p0, v1}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->notifyListenerIfNeeded(Landroid/os/IScreenTimeoutPolicyListener;)V

    .line 1471
    .end local v1    # "listener":Landroid/os/IScreenTimeoutPolicyListener;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 1475
    .end local v0    # "i":I
    iget-object v0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1476
    return-void
.end method

.method private notifyListenerIfNeeded(Landroid/os/IScreenTimeoutPolicyListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/os/IScreenTimeoutPolicyListener;

    .line 1494
    const-string v0, "PowerManagerNotifier"

    iget v1, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mScreenTimeoutPolicy:I

    .line 1495
    .local v1, "currentScreenTimeoutPolicy":I
    iget-object v2, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mLastReportedState:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1496
    .local v2, "reportedScreenTimeoutPolicy":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 1497
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    nop

    .line 1499
    .local v3, "needsReporting":Z
    if-nez v3, :cond_2

    return-void

    .line 1502
    :cond_2
    :try_start_0
    invoke-interface {p1, v1}, Landroid/os/IScreenTimeoutPolicyListener;->onScreenTimeoutPolicyChanged(I)V

    .line 1503
    iget-object v4, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mLastReportedState:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1511
    :goto_2
    goto :goto_5

    .line 1508
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 1504
    :catch_0
    move-exception v4

    goto :goto_4

    .line 1508
    :goto_3
    nop

    .line 1509
    .local v4, "e":Ljava/lang/Throwable;
    const-string v5, "Exception when notifying screen timeout policy change"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1510
    invoke-virtual {p0, p1}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->removeListener(Landroid/os/IScreenTimeoutPolicyListener;)V

    goto :goto_5

    .line 1504
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_4
    nop

    .line 1507
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Remote exception when notifying screen timeout policy change"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 1512
    :goto_5
    return-void
.end method


# virtual methods
.method addListener(Landroid/os/IScreenTimeoutPolicyListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/os/IScreenTimeoutPolicyListener;

    .line 1480
    iget-object v0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1481
    iget-object v0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {v0}, Lcom/android/server/power/Notifier;->-$$Nest$fgetmHandler(Lcom/android/server/power/Notifier;)Lcom/android/server/power/Notifier$NotifierHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;Landroid/os/IScreenTimeoutPolicyListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1482
    return-void
.end method

.method isEmpty()Z
    .locals 1

    .line 1490
    iget-object v0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method removeListener(Landroid/os/IScreenTimeoutPolicyListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/IScreenTimeoutPolicyListener;

    .line 1485
    iget-object v0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1486
    iget-object v0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mLastReportedState:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1487
    return-void
.end method

.method updateScreenTimeoutPolicyAndNotifyIfNeeded(I)V
    .locals 2
    .param p1, "screenTimeoutPolicy"    # I

    .line 1468
    iput p1, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mScreenTimeoutPolicy:I

    .line 1470
    iget-object v0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {v0}, Lcom/android/server/power/Notifier;->-$$Nest$fgetmHandler(Lcom/android/server/power/Notifier;)Lcom/android/server/power/Notifier$NotifierHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1477
    return-void
.end method
