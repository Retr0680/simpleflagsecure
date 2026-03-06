.class public Lcom/android/server/security/intrusiondetection/DataAggregator;
.super Ljava/lang/Object;
.source "DataAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;
    }
.end annotation


# static fields
.field private static final MSG_BATCH_DATA:I = 0x1

.field private static final MSG_DISABLE:I = 0x2

.field private static final MSG_SINGLE_DATA:I = 0x0

.field private static final STORED_EVENTS_SIZE_LIMIT:I = 0x400

.field private static final TAG:Ljava/lang/String; = "IntrusionDetection DataAggregator"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDataSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/security/intrusiondetection/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Lcom/android/server/ServiceThread;

.field private final mIntrusionDetectionService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

.field private final mIsLoggingInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mStoredEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/security/intrusiondetection/IntrusionDetectionEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$monDisable(Lcom/android/server/security/intrusiondetection/DataAggregator;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/security/intrusiondetection/DataAggregator;->onDisable()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monNewBatchData(Lcom/android/server/security/intrusiondetection/DataAggregator;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/security/intrusiondetection/DataAggregator;->onNewBatchData(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monNewSingleData(Lcom/android/server/security/intrusiondetection/DataAggregator;Landroid/security/intrusiondetection/IntrusionDetectionEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/security/intrusiondetection/DataAggregator;->onNewSingleData(Landroid/security/intrusiondetection/IntrusionDetectionEvent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intrusionDetectionService"    # Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mIsLoggingInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mStoredEvents:Ljava/util/List;

    .line 51
    iput-object p2, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mIntrusionDetectionService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    .line 52
    iput-object p1, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mDataSources:Ljava/util/ArrayList;

    .line 54
    return-void
.end method

.method private initialize()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mDataSources:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/security/intrusiondetection/SecurityLogSource;

    iget-object v2, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/server/security/intrusiondetection/SecurityLogSource;-><init>(Landroid/content/Context;Lcom/android/server/security/intrusiondetection/DataAggregator;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mDataSources:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/security/intrusiondetection/NetworkLogSource;

    invoke-direct {v1, p0}, Lcom/android/server/security/intrusiondetection/NetworkLogSource;-><init>(Lcom/android/server/security/intrusiondetection/DataAggregator;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method private onDisable()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mDataSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/security/intrusiondetection/DataSource;

    .line 121
    .local v1, "ds":Lcom/android/server/security/intrusiondetection/DataSource;
    invoke-interface {v1}, Lcom/android/server/security/intrusiondetection/DataSource;->disable()V

    .line 122
    .end local v1    # "ds":Lcom/android/server/security/intrusiondetection/DataSource;
    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->quitSafely()Z

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 125
    return-void
.end method

.method private onNewBatchData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/security/intrusiondetection/IntrusionDetectionEvent;",
            ">;)V"
        }
    .end annotation

    .line 116
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/security/intrusiondetection/IntrusionDetectionEvent;>;"
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mIntrusionDetectionService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    invoke-virtual {v0, p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->addNewData(Ljava/util/List;)V

    .line 117
    return-void
.end method

.method private onNewSingleData(Landroid/security/intrusiondetection/IntrusionDetectionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/security/intrusiondetection/IntrusionDetectionEvent;

    .line 107
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mStoredEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x400

    if-ge v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mStoredEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mIntrusionDetectionService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    iget-object v1, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mStoredEvents:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->addNewData(Ljava/util/List;)V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mStoredEvents:Ljava/util/List;

    .line 113
    :goto_0
    return-void
.end method


# virtual methods
.method public addBatchData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/security/intrusiondetection/IntrusionDetectionEvent;",
            ">;)V"
        }
    .end annotation

    .line 96
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/security/intrusiondetection/IntrusionDetectionEvent;>;"
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 97
    return-void
.end method

.method public addSingleData(Landroid/security/intrusiondetection/IntrusionDetectionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/security/intrusiondetection/IntrusionDetectionEvent;

    .line 89
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 90
    return-void
.end method

.method public disable()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 104
    return-void
.end method

.method public enable()V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mIsLoggingInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/android/server/security/intrusiondetection/DataAggregator;->initialize()V

    .line 74
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mIsLoggingInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 76
    :cond_0
    new-instance v0, Lcom/android/server/ServiceThread;

    const/16 v1, 0xa

    const/4 v2, 0x0

    const-string v3, "IntrusionDetection DataAggregator"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 78
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 79
    new-instance v0, Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;

    iget-object v1, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;-><init>(Landroid/os/Looper;Lcom/android/server/security/intrusiondetection/DataAggregator;)V

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandler:Landroid/os/Handler;

    .line 80
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mDataSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/security/intrusiondetection/DataSource;

    .line 81
    .local v1, "ds":Lcom/android/server/security/intrusiondetection/DataSource;
    invoke-interface {v1}, Lcom/android/server/security/intrusiondetection/DataSource;->enable()V

    .line 82
    .end local v1    # "ds":Lcom/android/server/security/intrusiondetection/DataSource;
    goto :goto_0

    .line 83
    :cond_1
    return-void
.end method

.method setHandler(Landroid/os/Looper;Lcom/android/server/ServiceThread;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "serviceThread"    # Lcom/android/server/ServiceThread;

    .line 58
    iput-object p2, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 59
    new-instance v0, Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;

    invoke-direct {v0, p1, p0}, Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;-><init>(Landroid/os/Looper;Lcom/android/server/security/intrusiondetection/DataAggregator;)V

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method
