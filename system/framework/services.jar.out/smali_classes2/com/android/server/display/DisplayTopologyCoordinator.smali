.class Lcom/android/server/display/DisplayTopologyCoordinator;
.super Ljava/lang/Object;
.source "DisplayTopologyCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayTopologyCoordinator$Injector;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayTopologyCoordinator"


# instance fields
.field private final mDensities:Landroid/util/SparseIntArray;

.field private final mDisplayIdToUniqueIdMapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsExtendedDisplayAllowed:Ljava/util/function/BooleanSupplier;

.field private final mOnTopologyChangedCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/util/Pair<",
            "Landroid/hardware/display/DisplayTopology;",
            "Landroid/hardware/display/DisplayTopologyGraph;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

.field private mTopology:Landroid/hardware/display/DisplayTopology;

.field private final mTopologyChangeExecutor:Ljava/util/concurrent/Executor;

.field private final mTopologySavedCallback:Ljava/lang/Runnable;

.field private final mTopologyStore:Lcom/android/server/display/DisplayTopologyStore;

.field private final mUniqueIdToDisplayIdMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$FLGZO3IsBzi_ExNQa2xMif3tj-E(Lcom/android/server/display/DisplayTopologyCoordinator;Landroid/hardware/display/DisplayTopology;Landroid/util/SparseIntArray;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayTopologyCoordinator;->lambda$sendTopologyUpdateLocked$0(Landroid/hardware/display/DisplayTopology;Landroid/util/SparseIntArray;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/display/DisplayTopologyCoordinator$Injector;Ljava/util/function/BooleanSupplier;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Lcom/android/server/display/DisplayManagerService$SyncRoot;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "injector"    # Lcom/android/server/display/DisplayTopologyCoordinator$Injector;
    .param p2, "isExtendedDisplayAllowed"    # Ljava/util/function/BooleanSupplier;
    .param p4, "topologyChangeExecutor"    # Ljava/util/concurrent/Executor;
    .param p5, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p6, "topologySavedCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/display/DisplayTopologyCoordinator$Injector;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/Consumer<",
            "Landroid/util/Pair<",
            "Landroid/hardware/display/DisplayTopology;",
            "Landroid/hardware/display/DisplayTopologyGraph;",
            ">;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/server/display/DisplayManagerService$SyncRoot;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 98
    .local p3, "onTopologyChangedCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/util/Pair<Landroid/hardware/display/DisplayTopology;Landroid/hardware/display/DisplayTopologyGraph;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDensities:Landroid/util/SparseIntArray;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mUniqueIdToDisplayIdMapping:Ljava/util/Map;

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDisplayIdToUniqueIdMapping:Landroid/util/SparseArray;

    .line 99
    invoke-virtual {p1}, Lcom/android/server/display/DisplayTopologyCoordinator$Injector;->getTopology()Landroid/hardware/display/DisplayTopology;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    .line 100
    iput-object p2, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mIsExtendedDisplayAllowed:Ljava/util/function/BooleanSupplier;

    .line 101
    iput-object p3, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mOnTopologyChangedCallback:Ljava/util/function/Consumer;

    .line 102
    iput-object p4, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologyChangeExecutor:Ljava/util/concurrent/Executor;

    .line 103
    iput-object p5, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 104
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDisplayIdToUniqueIdMapping:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mUniqueIdToDisplayIdMapping:Ljava/util/Map;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/display/DisplayTopologyCoordinator$Injector;->createTopologyStore(Landroid/util/SparseArray;Ljava/util/Map;)Lcom/android/server/display/DisplayTopologyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologyStore:Lcom/android/server/display/DisplayTopologyStore;

    .line 106
    iput-object p6, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologySavedCallback:Ljava/lang/Runnable;

    .line 107
    return-void
.end method

.method constructor <init>(Ljava/util/function/BooleanSupplier;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Lcom/android/server/display/DisplayManagerService$SyncRoot;Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "isExtendedDisplayAllowed"    # Ljava/util/function/BooleanSupplier;
    .param p3, "topologyChangeExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p5, "topologySavedCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/Consumer<",
            "Landroid/util/Pair<",
            "Landroid/hardware/display/DisplayTopology;",
            "Landroid/hardware/display/DisplayTopologyGraph;",
            ">;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/server/display/DisplayManagerService$SyncRoot;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 90
    .local p2, "onTopologyChangedCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/util/Pair<Landroid/hardware/display/DisplayTopology;Landroid/hardware/display/DisplayTopologyGraph;>;>;"
    new-instance v1, Lcom/android/server/display/DisplayTopologyCoordinator$Injector;

    invoke-direct {v1}, Lcom/android/server/display/DisplayTopologyCoordinator$Injector;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "isExtendedDisplayAllowed":Ljava/util/function/BooleanSupplier;
    .end local p2    # "onTopologyChangedCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/util/Pair<Landroid/hardware/display/DisplayTopology;Landroid/hardware/display/DisplayTopologyGraph;>;>;"
    .end local p3    # "topologyChangeExecutor":Ljava/util/concurrent/Executor;
    .end local p4    # "syncRoot":Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .end local p5    # "topologySavedCallback":Ljava/lang/Runnable;
    .local v2, "isExtendedDisplayAllowed":Ljava/util/function/BooleanSupplier;
    .local v3, "onTopologyChangedCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/util/Pair<Landroid/hardware/display/DisplayTopology;Landroid/hardware/display/DisplayTopologyGraph;>;>;"
    .local v4, "topologyChangeExecutor":Ljava/util/concurrent/Executor;
    .local v5, "syncRoot":Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .local v6, "topologySavedCallback":Ljava/lang/Runnable;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/DisplayTopologyCoordinator;-><init>(Lcom/android/server/display/DisplayTopologyCoordinator$Injector;Ljava/util/function/BooleanSupplier;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Lcom/android/server/display/DisplayManagerService$SyncRoot;Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method private addDisplayIdMappingLocked(Landroid/view/DisplayInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/DisplayInfo;

    .line 233
    invoke-static {p1}, Lcom/android/server/display/DisplayTopologyCoordinator;->getUniqueId(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "uniqueId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mUniqueIdToDisplayIdMapping:Ljava/util/Map;

    iget v2, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDisplayIdToUniqueIdMapping:Landroid/util/SparseArray;

    iget v2, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 236
    return-void
.end method

.method private getHeight(Landroid/view/DisplayInfo;)F
    .locals 2
    .param p1, "info"    # Landroid/view/DisplayInfo;

    .line 251
    iget v0, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v0, v0

    iget v1, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-static {v0, v1}, Landroid/hardware/display/DisplayTopology;->pxToDp(FI)F

    move-result v0

    return v0
.end method

.method private static getUniqueId(Landroid/view/DisplayInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "info"    # Landroid/view/DisplayInfo;

    .line 48
    iget v0, p0, Landroid/view/DisplayInfo;->displayId:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 49
    const-string/jumbo v0, "internal"

    return-object v0

    .line 51
    :cond_0
    iget-object v0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method private getWidth(Landroid/view/DisplayInfo;)F
    .locals 2
    .param p1, "info"    # Landroid/view/DisplayInfo;

    .line 243
    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v0, v0

    iget v1, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-static {v0, v1}, Landroid/hardware/display/DisplayTopology;->pxToDp(FI)F

    move-result v0

    return v0
.end method

.method private isDisplayAllowedInTopology(Landroid/view/DisplayInfo;Z)Z
    .locals 7
    .param p1, "info"    # Landroid/view/DisplayInfo;
    .param p2, "shouldLog"    # Z

    .line 255
    iget v0, p1, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "Display "

    const-string v5, "DisplayTopologyCoordinator"

    const/4 v6, 0x1

    if-eq v0, v6, :cond_1

    iget v0, p1, Landroid/view/DisplayInfo;->type:I

    if-eq v0, v2, :cond_1

    iget v0, p1, Landroid/view/DisplayInfo;->type:I

    if-eq v0, v1, :cond_1

    .line 257
    if-eqz p2, :cond_0

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not allowed in topology because type is not INTERNAL, EXTERNAL or OVERLAY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    return v3

    .line 263
    :cond_1
    iget v0, p1, Landroid/view/DisplayInfo;->type:I

    if-ne v0, v6, :cond_3

    iget v0, p1, Landroid/view/DisplayInfo;->displayId:I

    if-eqz v0, :cond_3

    .line 264
    if-eqz p2, :cond_2

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not allowed in topology because it is a non-default internal display"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_2
    return v3

    .line 270
    :cond_3
    iget v0, p1, Landroid/view/DisplayInfo;->type:I

    if-eq v0, v2, :cond_4

    iget v0, p1, Landroid/view/DisplayInfo;->type:I

    if-ne v0, v1, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mIsExtendedDisplayAllowed:Ljava/util/function/BooleanSupplier;

    .line 271
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-nez v0, :cond_6

    .line 272
    if-eqz p2, :cond_5

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not allowed in topology because type is EXTERNAL or OVERLAY and !mIsExtendedDisplayAllowed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_5
    return v3

    .line 278
    :cond_6
    return v6
.end method

.method private synthetic lambda$sendTopologyUpdateLocked$0(Landroid/hardware/display/DisplayTopology;Landroid/util/SparseIntArray;)V
    .locals 3
    .param p1, "copy"    # Landroid/hardware/display/DisplayTopology;
    .param p2, "densities"    # Landroid/util/SparseIntArray;

    .line 300
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mOnTopologyChangedCallback:Ljava/util/function/Consumer;

    new-instance v1, Landroid/util/Pair;

    .line 301
    invoke-virtual {p1, p2}, Landroid/hardware/display/DisplayTopology;->getGraph(Landroid/util/SparseIntArray;)Landroid/hardware/display/DisplayTopologyGraph;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 300
    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private removeDisplayIdMappingLocked(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 222
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDisplayIdToUniqueIdMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 223
    .local v0, "uniqueId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find uniqueId for displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayTopologyCoordinator"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDisplayIdToUniqueIdMapping:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 228
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mUniqueIdToDisplayIdMapping:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    return-void
.end method

.method private restoreTopologyLocked()Z
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologyStore:Lcom/android/server/display/DisplayTopologyStore;

    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-interface {v0, v1}, Lcom/android/server/display/DisplayTopologyStore;->restoreTopology(Landroid/hardware/display/DisplayTopology;)Landroid/hardware/display/DisplayTopology;

    move-result-object v0

    .line 288
    .local v0, "restoredTopology":Landroid/hardware/display/DisplayTopology;
    if-nez v0, :cond_0

    .line 289
    const/4 v1, 0x0

    return v1

    .line 291
    :cond_0
    iput-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    .line 292
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayTopology;->normalize()V

    .line 293
    const/4 v1, 0x1

    return v1
.end method

.method private sendTopologyUpdateLocked()V
    .locals 4

    .line 298
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayTopology;->copy()Landroid/hardware/display/DisplayTopology;

    move-result-object v0

    .line 299
    .local v0, "copy":Landroid/hardware/display/DisplayTopology;
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDensities:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v1

    .line 300
    .local v1, "densities":Landroid/util/SparseIntArray;
    iget-object v2, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologyChangeExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/display/DisplayTopologyCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/display/DisplayTopologyCoordinator$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayTopologyCoordinator;Landroid/hardware/display/DisplayTopology;Landroid/util/SparseIntArray;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 302
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 215
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayTopology;->dump(Ljava/io/PrintWriter;)V

    .line 217
    monitor-exit v0

    .line 218
    return-void

    .line 217
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getTopology()Landroid/hardware/display/DisplayTopology;
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayTopology;->copy()Landroid/hardware/display/DisplayTopology;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 193
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onDisplayAdded(Landroid/view/DisplayInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/DisplayInfo;

    .line 114
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayTopologyCoordinator;->isDisplayAllowedInTopology(Landroid/view/DisplayInfo;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 118
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayTopologyCoordinator;->addDisplayIdMappingLocked(Landroid/view/DisplayInfo;)V

    .line 119
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDensities:Landroid/util/SparseIntArray;

    iget v2, p1, Landroid/view/DisplayInfo;->displayId:I

    iget v3, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 120
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    iget v2, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayTopologyCoordinator;->getWidth(Landroid/view/DisplayInfo;)F

    move-result v3

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayTopologyCoordinator;->getHeight(Landroid/view/DisplayInfo;)F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/display/DisplayTopology;->addDisplay(IFF)V

    .line 121
    const-string v1, "DisplayTopologyCoordinator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " added, new topology: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-direct {p0}, Lcom/android/server/display/DisplayTopologyCoordinator;->restoreTopologyLocked()Z

    .line 123
    invoke-direct {p0}, Lcom/android/server/display/DisplayTopologyCoordinator;->sendTopologyUpdateLocked()V

    .line 124
    monitor-exit v0

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onDisplayChanged(Landroid/view/DisplayInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/DisplayInfo;

    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayTopologyCoordinator;->isDisplayAllowedInTopology(Landroid/view/DisplayInfo;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDensities:Landroid/util/SparseIntArray;

    iget v2, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDensities:Landroid/util/SparseIntArray;

    iget v2, p1, Landroid/view/DisplayInfo;->displayId:I

    iget v3, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 139
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    iget v2, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayTopologyCoordinator;->getWidth(Landroid/view/DisplayInfo;)F

    move-result v3

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayTopologyCoordinator;->getHeight(Landroid/view/DisplayInfo;)F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/display/DisplayTopology;->updateDisplay(IFF)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    invoke-direct {p0}, Lcom/android/server/display/DisplayTopologyCoordinator;->sendTopologyUpdateLocked()V

    .line 142
    :cond_2
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onDisplayRemoved(I)V
    .locals 4
    .param p1, "displayId"    # I

    .line 150
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDensities:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 152
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayTopology;->removeDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const-string v1, "DisplayTopologyCoordinator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " removed, new topology: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayTopologyCoordinator;->removeDisplayIdMappingLocked(I)V

    .line 155
    invoke-direct {p0}, Lcom/android/server/display/DisplayTopologyCoordinator;->restoreTopologyLocked()Z

    .line 156
    invoke-direct {p0}, Lcom/android/server/display/DisplayTopologyCoordinator;->sendTopologyUpdateLocked()V

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 159
    return-void

    .line 158
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method reloadTopologies(IZ)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "isUserSwitching"    # Z

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "isTopologySaved":Z
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologyStore:Lcom/android/server/display/DisplayTopologyStore;

    invoke-interface {v2, p1}, Lcom/android/server/display/DisplayTopologyStore;->reloadTopologies(I)V

    .line 171
    invoke-direct {p0}, Lcom/android/server/display/DisplayTopologyCoordinator;->restoreTopologyLocked()Z

    move-result v2

    .line 172
    .local v2, "isTopologyRestored":Z
    if-eqz v2, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/android/server/display/DisplayTopologyCoordinator;->sendTopologyUpdateLocked()V

    goto :goto_0

    .line 180
    .end local v2    # "isTopologyRestored":Z
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 175
    .restart local v2    # "isTopologyRestored":Z
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    if-nez v2, :cond_1

    .line 178
    iget-object v3, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologyStore:Lcom/android/server/display/DisplayTopologyStore;

    iget-object v4, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-interface {v3, v4}, Lcom/android/server/display/DisplayTopologyStore;->saveTopology(Landroid/hardware/display/DisplayTopology;)Z

    move-result v3

    move v0, v3

    .line 180
    .end local v2    # "isTopologyRestored":Z
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    if-eqz v0, :cond_2

    .line 183
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologySavedCallback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 185
    :cond_2
    return-void

    .line 180
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method setTopology(Landroid/hardware/display/DisplayTopology;)V
    .locals 2
    .param p1, "topology"    # Landroid/hardware/display/DisplayTopology;

    .line 198
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 199
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology;->normalize()V

    .line 200
    iput-object p1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    .line 201
    invoke-direct {p0}, Lcom/android/server/display/DisplayTopologyCoordinator;->sendTopologyUpdateLocked()V

    .line 202
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologyStore:Lcom/android/server/display/DisplayTopologyStore;

    invoke-interface {v1, p1}, Lcom/android/server/display/DisplayTopologyStore;->saveTopology(Landroid/hardware/display/DisplayTopology;)Z

    move-result v1

    .line 203
    .local v1, "isTopologySaved":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    if-eqz v1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopologySavedCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 208
    :cond_0
    return-void

    .line 203
    .end local v1    # "isTopologySaved":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
