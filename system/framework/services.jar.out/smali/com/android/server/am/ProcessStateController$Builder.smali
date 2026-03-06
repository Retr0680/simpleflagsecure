.class public Lcom/android/server/am/ProcessStateController$Builder;
.super Ljava/lang/Object;
.source "ProcessStateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mActiveUids:Lcom/android/server/am/ActiveUids;

.field private final mAms:Lcom/android/server/am/ActivityManagerService;

.field private mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

.field private mHandlerThread:Lcom/android/server/ServiceThread;

.field private mOomAdjInjector:Lcom/android/server/am/OomAdjuster$Injector;

.field private final mProcessList:Lcom/android/server/am/ProcessList;

.field private mUseOomAdjusterModernImpl:Z


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;)V
    .locals 1
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "processList"    # Lcom/android/server/am/ProcessList;
    .param p3, "activeUids"    # Lcom/android/server/am/ActiveUids;

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessStateController$Builder;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 626
    iput-object v0, p0, Lcom/android/server/am/ProcessStateController$Builder;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 627
    iput-object v0, p0, Lcom/android/server/am/ProcessStateController$Builder;->mOomAdjInjector:Lcom/android/server/am/OomAdjuster$Injector;

    .line 628
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessStateController$Builder;->mUseOomAdjusterModernImpl:Z

    .line 631
    iput-object p1, p0, Lcom/android/server/am/ProcessStateController$Builder;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 632
    iput-object p2, p0, Lcom/android/server/am/ProcessStateController$Builder;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 633
    iput-object p3, p0, Lcom/android/server/am/ProcessStateController$Builder;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 634
    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/am/ProcessStateController;
    .locals 10

    .line 640
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController$Builder;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-nez v0, :cond_0

    .line 641
    invoke-static {}, Lcom/android/server/am/OomAdjuster;->createAdjusterThread()Lcom/android/server/ServiceThread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ProcessStateController$Builder;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController$Builder;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    if-nez v0, :cond_1

    .line 644
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer;

    iget-object v1, p0, Lcom/android/server/am/ProcessStateController$Builder;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/am/CachedAppOptimizer;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessStateController$Builder;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 646
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController$Builder;->mOomAdjInjector:Lcom/android/server/am/OomAdjuster$Injector;

    if-nez v0, :cond_2

    .line 647
    new-instance v0, Lcom/android/server/am/OomAdjuster$Injector;

    invoke-direct {v0}, Lcom/android/server/am/OomAdjuster$Injector;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStateController$Builder;->mOomAdjInjector:Lcom/android/server/am/OomAdjuster$Injector;

    .line 649
    :cond_2
    new-instance v1, Lcom/android/server/am/ProcessStateController;

    iget-object v2, p0, Lcom/android/server/am/ProcessStateController$Builder;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/am/ProcessStateController$Builder;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v4, p0, Lcom/android/server/am/ProcessStateController$Builder;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget-object v5, p0, Lcom/android/server/am/ProcessStateController$Builder;->mHandlerThread:Lcom/android/server/ServiceThread;

    iget-object v6, p0, Lcom/android/server/am/ProcessStateController$Builder;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v7, p0, Lcom/android/server/am/ProcessStateController$Builder;->mOomAdjInjector:Lcom/android/server/am/OomAdjuster$Injector;

    iget-boolean v8, p0, Lcom/android/server/am/ProcessStateController$Builder;->mUseOomAdjusterModernImpl:Z

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/ProcessStateController;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/OomAdjuster$Injector;ZLcom/android/server/am/ProcessStateController-IA;)V

    return-object v1
.end method

.method public setCachedAppOptimizer(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ProcessStateController$Builder;
    .locals 0
    .param p1, "cachedAppOptimizer"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 667
    iput-object p1, p0, Lcom/android/server/am/ProcessStateController$Builder;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 668
    return-object p0
.end method

.method public setHandlerThread(Lcom/android/server/ServiceThread;)Lcom/android/server/am/ProcessStateController$Builder;
    .locals 0
    .param p1, "handlerThread"    # Lcom/android/server/ServiceThread;

    .line 658
    iput-object p1, p0, Lcom/android/server/am/ProcessStateController$Builder;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 659
    return-object p0
.end method

.method public setOomAdjusterInjector(Lcom/android/server/am/OomAdjuster$Injector;)Lcom/android/server/am/ProcessStateController$Builder;
    .locals 0
    .param p1, "injector"    # Lcom/android/server/am/OomAdjuster$Injector;

    .line 676
    iput-object p1, p0, Lcom/android/server/am/ProcessStateController$Builder;->mOomAdjInjector:Lcom/android/server/am/OomAdjuster$Injector;

    .line 677
    return-object p0
.end method

.method public useModernOomAdjuster(Z)Lcom/android/server/am/ProcessStateController$Builder;
    .locals 0
    .param p1, "use"    # Z

    .line 684
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateController$Builder;->mUseOomAdjusterModernImpl:Z

    .line 685
    return-object p0
.end method
