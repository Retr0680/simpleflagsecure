.class Lcom/android/server/display/DisplayTopologyXmlStore;
.super Ljava/lang/Object;
.source "DisplayTopologyXmlStore.java"

# interfaces
.implements Lcom/android/server/display/DisplayTopologyStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayTopologyXmlStore$Injector;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DISPLAY_CONFIG_DIR:Ljava/lang/String; = "displayconfig"

.field private static final ETC_DIR:Ljava/lang/String; = "etc"

.field private static final MAX_NUMBER_OF_TOPOLOGIES:I = 0x64

.field private static final MIN_REORDER_WHICH_TRIGGERS_PERSISTENCE:I = 0xa

.field private static final PERSISTENT_TOPOLOGY_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DisplayManager.DisplayTopologyXmlStore"


# instance fields
.field private final mImmutableTopologies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/topology/Topology;",
            ">;"
        }
    .end annotation
.end field

.field private final mInjector:Lcom/android/server/display/DisplayTopologyXmlStore$Injector;

.field private final mTopologies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/display/topology/Topology;",
            ">;"
        }
    .end annotation
.end field

.field private mUserId:I


# direct methods
.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$smgetProductTopologyFile()Ljava/io/File;
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/display/DisplayTopologyXmlStore;->getProductTopologyFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smgetVendorTopologyFile()Ljava/io/File;
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/display/DisplayTopologyXmlStore;->getVendorTopologyFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 70
    const-string v0, "DisplayManager.DisplayTopologyXmlStore"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/display/DisplayTopologyXmlStore$Injector;)V
    .locals 1
    .param p1, "injector"    # Lcom/android/server/display/DisplayTopologyXmlStore$Injector;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mImmutableTopologies:Ljava/util/List;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    .line 133
    iput-object p1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mInjector:Lcom/android/server/display/DisplayTopologyXmlStore$Injector;

    .line 134
    invoke-direct {p0}, Lcom/android/server/display/DisplayTopologyXmlStore;->reloadImmutableTopologies()V

    .line 135
    return-void
.end method

.method private appendTopologies(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/display/topology/Topology;",
            ">;)V"
        }
    .end annotation

    .line 269
    .local p1, "topologyList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/topology/Topology;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/topology/Topology;

    .line 270
    .local v1, "topology":Lcom/android/server/display/topology/Topology;
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayTopologyXmlStore;->appendTopology(Lcom/android/server/display/topology/Topology;)V

    .line 271
    .end local v1    # "topology":Lcom/android/server/display/topology/Topology;
    goto :goto_0

    .line 272
    :cond_0
    return-void
.end method

.method private appendTopology(Lcom/android/server/display/topology/Topology;)V
    .locals 4
    .param p1, "topology"    # Lcom/android/server/display/topology/Topology;

    .line 275
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/display/topology/Topology;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/topology/Topology;

    .line 276
    .local v0, "restoredTopology":Lcom/android/server/display/topology/Topology;
    const-string v1, "DisplayManager.DisplayTopologyXmlStore"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/display/topology/Topology;->getImmutable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTopology: can\'t override immutable topology "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {p1}, Lcom/android/server/display/topology/Topology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void

    .line 284
    :cond_0
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    .line 285
    sget-boolean v2, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appendTopology: MAX_NUMBER_OF_TOPOLOGIES is reached, can\'t append topology"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {p1}, Lcom/android/server/display/topology/Topology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_1
    return-void

    .line 291
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayTopologyXmlStore;->getOrderOrDefault(Lcom/android/server/display/topology/Topology;I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/Topology;->setOrder(I)V

    .line 292
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/display/topology/Topology;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    return-void
.end method

.method private convertPersistentDisplayToTreeNode(Lcom/android/server/display/topology/Display;Landroid/hardware/display/DisplayTopology;Ljava/util/Map;)Landroid/hardware/display/DisplayTopology$TreeNode;
    .locals 10
    .param p1, "persistentDisplay"    # Lcom/android/server/display/topology/Display;
    .param p2, "currentDisplayTopology"    # Landroid/hardware/display/DisplayTopology;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/display/topology/Display;",
            "Landroid/hardware/display/DisplayTopology;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/hardware/display/DisplayTopology$TreeNode;"
        }
    .end annotation

    .line 389
    .local p3, "uniqueIdToDisplayIdMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/android/server/display/topology/Display;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 390
    .local v0, "displayId":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 395
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 396
    invoke-virtual {p2}, Landroid/hardware/display/DisplayTopology;->getRoot()Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v2

    .line 395
    invoke-static {v1, v2}, Landroid/hardware/display/DisplayTopology;->findDisplay(ILandroid/hardware/display/DisplayTopology$TreeNode;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v1

    .line 397
    .local v1, "displayNode":Landroid/hardware/display/DisplayTopology$TreeNode;
    if-eqz v1, :cond_1

    .line 402
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v2

    .line 403
    .local v9, "children":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    invoke-virtual {p1}, Lcom/android/server/display/topology/Display;->getChildren()Lcom/android/server/display/topology/Children;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/topology/Children;->getDisplay()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/topology/Display;

    .line 404
    .local v3, "child":Lcom/android/server/display/topology/Display;
    invoke-direct {p0, v3, p2, p3}, Lcom/android/server/display/DisplayTopologyXmlStore;->convertPersistentDisplayToTreeNode(Lcom/android/server/display/topology/Display;Landroid/hardware/display/DisplayTopology;Ljava/util/Map;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    .end local v3    # "child":Lcom/android/server/display/topology/Display;
    goto :goto_0

    .line 408
    :cond_0
    new-instance v3, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 409
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->getWidth()F

    move-result v5

    invoke-virtual {v1}, Landroid/hardware/display/DisplayTopology$TreeNode;->getHeight()F

    move-result v6

    .line 410
    invoke-virtual {p1}, Lcom/android/server/display/topology/Display;->getPosition()Lcom/android/server/display/topology/Position;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayTopologyXmlStore;->toDisplayTopologyPosition(Lcom/android/server/display/topology/Position;)I

    move-result v7

    .line 411
    invoke-virtual {p1}, Lcom/android/server/display/topology/Display;->getOffset()F

    move-result v8

    invoke-direct/range {v3 .. v9}, Landroid/hardware/display/DisplayTopology$TreeNode;-><init>(IFFIFLjava/util/List;)V

    .line 408
    return-object v3

    .line 398
    .end local v9    # "children":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/DisplayTopology$TreeNode;>;"
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in current topology"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 391
    .end local v1    # "displayNode":Landroid/hardware/display/DisplayTopology$TreeNode;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t map uniqueId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {p1}, Lcom/android/server/display/topology/Display;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to displayId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private convertPersistentTopologyToDisplayTopology(Landroid/hardware/display/DisplayTopology;Lcom/android/server/display/topology/Display;Ljava/util/Map;)Landroid/hardware/display/DisplayTopology;
    .locals 4
    .param p1, "currentDisplayTopology"    # Landroid/hardware/display/DisplayTopology;
    .param p2, "persistentDisplayTopology"    # Lcom/android/server/display/topology/Display;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/display/DisplayTopology;",
            "Lcom/android/server/display/topology/Display;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/hardware/display/DisplayTopology;"
        }
    .end annotation

    .line 373
    .local p3, "uniqueIdToDisplayIdMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/display/DisplayTopologyXmlStore;->convertPersistentDisplayToTreeNode(Lcom/android/server/display/topology/Display;Landroid/hardware/display/DisplayTopology;Ljava/util/Map;)Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v0

    .line 375
    .local v0, "rootNode":Landroid/hardware/display/DisplayTopology$TreeNode;
    invoke-direct {p0, p2, p3}, Lcom/android/server/display/DisplayTopologyXmlStore;->findPrimaryDisplayId(Lcom/android/server/display/topology/Display;Ljava/util/Map;)I

    move-result v1

    .line 377
    .local v1, "primaryDisplayId":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 378
    const-string v2, "DisplayManager.DisplayTopologyXmlStore"

    const-string v3, "Primary display id is not found in persistent topology"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/4 v1, 0x0

    .line 381
    :cond_0
    new-instance v2, Landroid/hardware/display/DisplayTopology;

    invoke-direct {v2, v0, v1}, Landroid/hardware/display/DisplayTopology;-><init>(Landroid/hardware/display/DisplayTopology$TreeNode;I)V

    return-object v2
.end method

.method private convertTopologyForPersistence(Landroid/hardware/display/DisplayTopology;Ljava/lang/String;)Lcom/android/server/display/topology/Topology;
    .locals 3
    .param p1, "topology"    # Landroid/hardware/display/DisplayTopology;
    .param p2, "topologyId"    # Ljava/lang/String;

    .line 435
    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology;->getRoot()Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v0

    .line 436
    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology;->getPrimaryDisplayId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mInjector:Lcom/android/server/display/DisplayTopologyXmlStore$Injector;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayTopologyXmlStore$Injector;->getDisplayIdToUniqueIdMapping()Landroid/util/SparseArray;

    move-result-object v2

    .line 435
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/display/DisplayTopologyXmlStore;->convertTreeNodeForPersistence(Landroid/hardware/display/DisplayTopology$TreeNode;ILandroid/util/SparseArray;)Lcom/android/server/display/topology/Display;

    move-result-object v0

    .line 437
    .local v0, "rootNode":Lcom/android/server/display/topology/Display;
    if-nez v0, :cond_0

    .line 438
    const/4 v1, 0x0

    return-object v1

    .line 441
    :cond_0
    new-instance v1, Lcom/android/server/display/topology/Topology;

    invoke-direct {v1}, Lcom/android/server/display/topology/Topology;-><init>()V

    .line 442
    .local v1, "persistentTopology":Lcom/android/server/display/topology/Topology;
    invoke-virtual {v1, v0}, Lcom/android/server/display/topology/Topology;->setDisplay(Lcom/android/server/display/topology/Display;)V

    .line 443
    invoke-virtual {v1, p2}, Lcom/android/server/display/topology/Topology;->setId(Ljava/lang/String;)V

    .line 444
    return-object v1
.end method

.method private convertTreeNodeForPersistence(Landroid/hardware/display/DisplayTopology$TreeNode;ILandroid/util/SparseArray;)Lcom/android/server/display/topology/Display;
    .locals 7
    .param p1, "node"    # Landroid/hardware/display/DisplayTopology$TreeNode;
    .param p2, "primaryDisplayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            "I",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/display/topology/Display;"
        }
    .end annotation

    .line 452
    .local p3, "idsToUniqueIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v0, "DisplayManager.DisplayTopologyXmlStore"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 453
    const-string v2, "Can\'t convertTreeNodeForPersistence, node == null"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-object v1

    .line 456
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->getDisplayId()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 457
    .local v2, "uniqueId":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 458
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t convertTreeNodeForPersistence, uniqueId is not found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 458
    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    return-object v1

    .line 462
    :cond_1
    new-instance v0, Lcom/android/server/display/topology/Children;

    invoke-direct {v0}, Lcom/android/server/display/topology/Children;-><init>()V

    .line 463
    .local v0, "children":Lcom/android/server/display/topology/Children;
    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 464
    .local v4, "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    invoke-direct {p0, v4, p2, p3}, Lcom/android/server/display/DisplayTopologyXmlStore;->convertTreeNodeForPersistence(Landroid/hardware/display/DisplayTopology$TreeNode;ILandroid/util/SparseArray;)Lcom/android/server/display/topology/Display;

    move-result-object v5

    .line 465
    .local v5, "display":Lcom/android/server/display/topology/Display;
    if-nez v5, :cond_2

    .line 466
    return-object v1

    .line 468
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/display/topology/Children;->getDisplay()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    .end local v4    # "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    .end local v5    # "display":Lcom/android/server/display/topology/Display;
    goto :goto_0

    .line 470
    :cond_3
    new-instance v1, Lcom/android/server/display/topology/Display;

    invoke-direct {v1}, Lcom/android/server/display/topology/Display;-><init>()V

    .line 471
    .local v1, "root":Lcom/android/server/display/topology/Display;
    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->getPosition()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayTopologyXmlStore;->toPersistentPosition(I)Lcom/android/server/display/topology/Position;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/display/topology/Display;->setPosition(Lcom/android/server/display/topology/Position;)V

    .line 472
    invoke-virtual {v1, v2}, Lcom/android/server/display/topology/Display;->setId(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->getOffset()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/display/topology/Display;->setOffset(F)V

    .line 474
    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->getDisplayId()I

    move-result v3

    if-ne v3, p2, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/server/display/topology/Display;->setPrimary(Z)V

    .line 475
    invoke-virtual {v1, v0}, Lcom/android/server/display/topology/Display;->setChildren(Lcom/android/server/display/topology/Children;)V

    .line 476
    return-object v1
.end method

.method private findMaxOrderMutableTopology()Lcom/android/server/display/topology/Topology;
    .locals 5

    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, "res":Lcom/android/server/display/topology/Topology;
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/topology/Topology;

    .line 330
    .local v2, "topology":Lcom/android/server/display/topology/Topology;
    invoke-virtual {v2}, Lcom/android/server/display/topology/Topology;->getImmutable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 331
    goto :goto_0

    .line 333
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/display/topology/Topology;->getOrder()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/server/display/topology/Topology;->getOrder()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 334
    :cond_1
    move-object v0, v2

    .line 336
    .end local v2    # "topology":Lcom/android/server/display/topology/Topology;
    :cond_2
    goto :goto_0

    .line 337
    :cond_3
    return-object v0
.end method

.method private findPrimaryDisplayId(Lcom/android/server/display/topology/Display;Ljava/util/Map;)I
    .locals 4
    .param p1, "persistentDisplay"    # Lcom/android/server/display/topology/Display;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/display/topology/Display;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 416
    .local p2, "uniqueIdToDisplayIdMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/android/server/display/topology/Display;->getPrimary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    invoke-virtual {p1}, Lcom/android/server/display/topology/Display;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 418
    .local v0, "displayId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 419
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t map uniqueId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {p1}, Lcom/android/server/display/topology/Display;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to displayId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 424
    .end local v0    # "displayId":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/display/topology/Display;->getChildren()Lcom/android/server/display/topology/Children;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/topology/Children;->getDisplay()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/topology/Display;

    .line 425
    .local v1, "child":Lcom/android/server/display/topology/Display;
    invoke-direct {p0, v1, p2}, Lcom/android/server/display/DisplayTopologyXmlStore;->findPrimaryDisplayId(Lcom/android/server/display/topology/Display;Ljava/util/Map;)I

    move-result v3

    .line 426
    .local v3, "displayId":I
    if-eq v3, v2, :cond_2

    .line 427
    return v3

    .line 426
    :cond_2
    nop

    .line 429
    .end local v1    # "child":Lcom/android/server/display/topology/Display;
    .end local v3    # "displayId":I
    goto :goto_0

    .line 430
    :cond_3
    return v2
.end method

.method private static getOrderOrDefault(Lcom/android/server/display/topology/Topology;I)I
    .locals 1
    .param p0, "topology"    # Lcom/android/server/display/topology/Topology;
    .param p1, "defaultOrder"    # I

    .line 124
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/topology/Topology;->getOrder()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method private static getProductTopologyFile()Ljava/io/File;
    .locals 4

    .line 93
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "displayconfig"

    const-string v2, "display_topology.xml"

    const-string v3, "etc"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getTopologyId(Landroid/hardware/display/DisplayTopology;)Ljava/lang/String;
    .locals 3
    .param p1, "topology"    # Landroid/hardware/display/DisplayTopology;

    .line 513
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mInjector:Lcom/android/server/display/DisplayTopologyXmlStore$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayTopologyXmlStore$Injector;->getDisplayIdToUniqueIdMapping()Landroid/util/SparseArray;

    move-result-object v0

    .line 514
    .local v0, "mapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology;->getRoot()Landroid/hardware/display/DisplayTopology$TreeNode;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/display/DisplayTopologyXmlStore;->getUniqueIds(Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/util/SparseArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayTopologyXmlStore;->getTopologyId(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getTopologyId(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 519
    .local p1, "uniqueIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    .line 522
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 523
    const-string/jumbo v0, "|"

    invoke-static {v0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 520
    :goto_0
    return-object v1
.end method

.method private getUniqueIds(Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/util/SparseArray;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1, "node"    # Landroid/hardware/display/DisplayTopology$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/display/DisplayTopology$TreeNode;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 501
    .local p2, "mapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local p3, "uniqueIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 502
    return-object p3

    .line 504
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->getDisplayId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    invoke-virtual {p1}, Landroid/hardware/display/DisplayTopology$TreeNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayTopology$TreeNode;

    .line 506
    .local v1, "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/display/DisplayTopologyXmlStore;->getUniqueIds(Landroid/hardware/display/DisplayTopology$TreeNode;Landroid/util/SparseArray;Ljava/util/List;)Ljava/util/List;

    .line 507
    .end local v1    # "child":Landroid/hardware/display/DisplayTopology$TreeNode;
    goto :goto_0

    .line 508
    :cond_1
    return-object p3
.end method

.method static getUserTopologyFile(I)Ljava/io/File;
    .locals 3
    .param p0, "userId"    # I

    .line 84
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "display_topology.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getVendorTopologyFile()Ljava/io/File;
    .locals 4

    .line 88
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "displayconfig"

    const-string v2, "display_topology.xml"

    const-string v3, "etc"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private moveTopologyToHead(Lcom/android/server/display/topology/Topology;)V
    .locals 4
    .param p1, "topology"    # Lcom/android/server/display/topology/Topology;

    .line 228
    invoke-virtual {p1}, Lcom/android/server/display/topology/Topology;->getOrder()I

    move-result v0

    if-nez v0, :cond_0

    .line 229
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/topology/Topology;

    .line 232
    .local v1, "t":Lcom/android/server/display/topology/Topology;
    invoke-virtual {v1}, Lcom/android/server/display/topology/Topology;->getOrder()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/display/topology/Topology;->getOrder()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 233
    invoke-virtual {v1}, Lcom/android/server/display/topology/Topology;->getOrder()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/display/topology/Topology;->setOrder(I)V

    .line 235
    .end local v1    # "t":Lcom/android/server/display/topology/Topology;
    :cond_1
    goto :goto_0

    .line 236
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/display/topology/Topology;->setOrder(I)V

    .line 237
    return-void
.end method

.method private prependTopology(Lcom/android/server/display/topology/Topology;)Z
    .locals 5
    .param p1, "topology"    # Lcom/android/server/display/topology/Topology;

    .line 296
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/display/topology/Topology;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/topology/Topology;

    .line 297
    .local v0, "restoredTopology":Lcom/android/server/display/topology/Topology;
    const/4 v1, 0x0

    const-string v2, "DisplayManager.DisplayTopologyXmlStore"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/display/topology/Topology;->getImmutable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 298
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prependTopology: can\'t override immutable topology "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {p1}, Lcom/android/server/display/topology/Topology;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 298
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return v1

    .line 305
    :cond_0
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_2

    .line 306
    invoke-direct {p0}, Lcom/android/server/display/DisplayTopologyXmlStore;->findMaxOrderMutableTopology()Lcom/android/server/display/topology/Topology;

    move-result-object v3

    .line 307
    .local v3, "topologyToRemove":Lcom/android/server/display/topology/Topology;
    if-nez v3, :cond_1

    .line 308
    const-string/jumbo v4, "prependTopology: can\'t find a topology to remove to free up space"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return v1

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/android/server/display/topology/Topology;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-boolean v1, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prependTopology: remove topology "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/display/topology/Topology;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .end local v3    # "topologyToRemove":Lcom/android/server/display/topology/Topology;
    :cond_2
    const v1, 0x7fffffff

    invoke-virtual {p1, v1}, Lcom/android/server/display/topology/Topology;->setOrder(I)V

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayTopologyXmlStore;->moveTopologyToHead(Lcom/android/server/display/topology/Topology;)V

    .line 319
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/display/topology/Topology;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const/4 v1, 0x1

    return v1
.end method

.method private static readTopologiesFromInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .locals 5
    .param p0, "iStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/display/topology/Topology;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/datatype/DatatypeConfigurationException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    const-string v0, "DisplayManager.DisplayTopologyXmlStore"

    if-nez p0, :cond_1

    .line 101
    sget-boolean v1, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 102
    const-string/jumbo v1, "iStream is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 107
    :cond_1
    invoke-static {p0}, Lcom/android/server/display/topology/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/topology/DisplayTopologyState;

    move-result-object v1

    .line 108
    .local v1, "topologyState":Lcom/android/server/display/topology/DisplayTopologyState;
    invoke-virtual {v1}, Lcom/android/server/display/topology/DisplayTopologyState;->getVersion()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Topology version="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/display/topology/DisplayTopologyState;->getVersion()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is not supported by DisplayTopologyXmlStore version="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 114
    :cond_2
    sget-boolean v2, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 115
    const-string/jumbo v2, "readTopologiesFromInputStream: done"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/display/topology/DisplayTopologyState;->getTopology()Ljava/util/List;

    move-result-object v0

    .line 119
    .local v0, "topologyList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/topology/Topology;>;"
    new-instance v2, Lcom/android/server/display/DisplayTopologyXmlStore$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/display/DisplayTopologyXmlStore$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 120
    return-object v0
.end method

.method private reloadImmutableTopologies()V
    .locals 4

    .line 240
    const-string v0, "DisplayManager.DisplayTopologyXmlStore"

    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mImmutableTopologies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mInjector:Lcom/android/server/display/DisplayTopologyXmlStore$Injector;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayTopologyXmlStore$Injector;->readProductTopologies()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .local v1, "iStream":Ljava/io/InputStream;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mImmutableTopologies:Ljava/util/List;

    invoke-static {v1}, Lcom/android/server/display/DisplayTopologyXmlStore;->readTopologiesFromInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .end local v1    # "iStream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    goto :goto_2

    .line 245
    :cond_0
    :goto_0
    goto :goto_3

    .line 241
    .restart local v1    # "iStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    nop

    .end local p0    # "this":Lcom/android/server/display/DisplayTopologyXmlStore;
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_4 .. :try_end_4} :catch_0

    .line 243
    .end local v1    # "iStream":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/android/server/display/DisplayTopologyXmlStore;
    :goto_2
    nop

    .line 244
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "reloadImmutableTopologies for product topologies failed"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mInjector:Lcom/android/server/display/DisplayTopologyXmlStore$Injector;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayTopologyXmlStore$Injector;->readVendorTopologies()Ljava/io/InputStream;

    move-result-object v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_5 .. :try_end_5} :catch_1

    .line 247
    .local v1, "iStream":Ljava/io/InputStream;
    :try_start_6
    iget-object v2, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mImmutableTopologies:Ljava/util/List;

    invoke-static {v1}, Lcom/android/server/display/DisplayTopologyXmlStore;->readTopologiesFromInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 248
    if-eqz v1, :cond_2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    .end local v1    # "iStream":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    goto :goto_6

    .line 250
    :cond_2
    :goto_4
    goto :goto_7

    .line 246
    .restart local v1    # "iStream":Ljava/io/InputStream;
    :catchall_2
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v3

    :try_start_9
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    nop

    .end local p0    # "this":Lcom/android/server/display/DisplayTopologyXmlStore;
    throw v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_9 .. :try_end_9} :catch_1

    .line 248
    .end local v1    # "iStream":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/android/server/display/DisplayTopologyXmlStore;
    :goto_6
    nop

    .line 249
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "reloadImmutableTopologies for vendor topologies failed"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_7
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mImmutableTopologies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/topology/Topology;

    .line 252
    .local v1, "topology":Lcom/android/server/display/topology/Topology;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/display/topology/Topology;->setImmutable(Z)V

    .line 253
    .end local v1    # "topology":Lcom/android/server/display/topology/Topology;
    goto :goto_8

    .line 254
    :cond_4
    return-void
.end method

.method private reloadTopologies()V
    .locals 4

    .line 257
    iget v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    const-string v1, "DisplayManager.DisplayTopologyXmlStore"

    if-gez v0, :cond_0

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t reload topologies for userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void

    .line 261
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mInjector:Lcom/android/server/display/DisplayTopologyXmlStore$Injector;

    iget v2, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayTopologyXmlStore$Injector;->readUserTopologies(I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .local v0, "iStream":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v0}, Lcom/android/server/display/DisplayTopologyXmlStore;->readTopologiesFromInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayTopologyXmlStore;->appendTopologies(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .end local v0    # "iStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 265
    :cond_1
    :goto_0
    goto :goto_3

    .line 261
    .restart local v0    # "iStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    nop

    .end local p0    # "this":Lcom/android/server/display/DisplayTopologyXmlStore;
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_4 .. :try_end_4} :catch_0

    .line 263
    .end local v0    # "iStream":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/android/server/display/DisplayTopologyXmlStore;
    :goto_2
    nop

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "reloadTopologies failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method private resetTopologies()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 220
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mImmutableTopologies:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayTopologyXmlStore;->appendTopologies(Ljava/util/List;)V

    .line 221
    return-void
.end method

.method private saveTopologiesToFile()V
    .locals 5

    .line 341
    iget v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    const-string v1, "DisplayManager.DisplayTopologyXmlStore"

    if-gez v0, :cond_0

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t save topologies for userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    sget-boolean v0, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No topologies to save for userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_1
    return-void

    .line 351
    :cond_2
    new-instance v0, Lcom/android/server/display/topology/DisplayTopologyState;

    invoke-direct {v0}, Lcom/android/server/display/topology/DisplayTopologyState;-><init>()V

    .line 352
    .local v0, "topologyState":Lcom/android/server/display/topology/DisplayTopologyState;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/display/topology/DisplayTopologyState;->setVersion(I)V

    .line 353
    iget-object v2, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/topology/Topology;

    .line 354
    .local v3, "topology":Lcom/android/server/display/topology/Topology;
    invoke-virtual {v3}, Lcom/android/server/display/topology/Topology;->getImmutable()Z

    move-result v4

    if-nez v4, :cond_3

    .line 355
    invoke-virtual {v0}, Lcom/android/server/display/topology/DisplayTopologyState;->getTopology()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    .end local v3    # "topology":Lcom/android/server/display/topology/Topology;
    :cond_3
    goto :goto_0

    .line 359
    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mInjector:Lcom/android/server/display/DisplayTopologyXmlStore$Injector;

    iget v3, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayTopologyXmlStore$Injector;->getTopologyFilePrintWriter(I)Landroid/util/AtomicFilePrintWriter;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    .local v2, "pw":Landroid/util/AtomicFilePrintWriter;
    :try_start_1
    new-instance v3, Lcom/android/server/display/topology/XmlWriter;

    invoke-direct {v3, v2}, Lcom/android/server/display/topology/XmlWriter;-><init>(Ljava/io/PrintWriter;)V

    invoke-static {v3, v0}, Lcom/android/server/display/topology/XmlWriter;->write(Lcom/android/server/display/topology/XmlWriter;Lcom/android/server/display/topology/DisplayTopologyState;)V

    .line 362
    invoke-virtual {v2}, Landroid/util/AtomicFilePrintWriter;->markSuccess()V

    .line 363
    sget-boolean v3, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveTopologiesToFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 359
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 364
    :cond_5
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Landroid/util/AtomicFilePrintWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 366
    .end local v2    # "pw":Landroid/util/AtomicFilePrintWriter;
    goto :goto_5

    .line 364
    :catch_0
    move-exception v2

    goto :goto_4

    .line 359
    .restart local v2    # "pw":Landroid/util/AtomicFilePrintWriter;
    :goto_2
    if-eqz v2, :cond_6

    :try_start_3
    invoke-virtual {v2}, Landroid/util/AtomicFilePrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    nop

    .end local v0    # "topologyState":Lcom/android/server/display/topology/DisplayTopologyState;
    .end local p0    # "this":Lcom/android/server/display/DisplayTopologyXmlStore;
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 364
    .end local v2    # "pw":Landroid/util/AtomicFilePrintWriter;
    .restart local v0    # "topologyState":Lcom/android/server/display/topology/DisplayTopologyState;
    .restart local p0    # "this":Lcom/android/server/display/DisplayTopologyXmlStore;
    :goto_4
    nop

    .line 365
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v3, "saveTopologiesToFile failed"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    .end local v2    # "e":Ljava/io/IOException;
    :goto_5
    return-void
.end method

.method private toDisplayTopologyPosition(Lcom/android/server/display/topology/Position;)I
    .locals 2
    .param p1, "pos"    # Lcom/android/server/display/topology/Position;

    .line 491
    sget-object v0, Lcom/android/server/display/DisplayTopologyXmlStore$1;->$SwitchMap$com$android$server$display$topology$Position:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 495
    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 494
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 493
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 492
    :pswitch_3
    const/4 v0, 0x0

    .line 491
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private toPersistentPosition(I)Lcom/android/server/display/topology/Position;
    .locals 3
    .param p1, "pos"    # I

    .line 480
    packed-switch p1, :pswitch_data_0

    .line 485
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :pswitch_0
    sget-object v0, Lcom/android/server/display/topology/Position;->bottom:Lcom/android/server/display/topology/Position;

    goto :goto_0

    .line 483
    :pswitch_1
    sget-object v0, Lcom/android/server/display/topology/Position;->right:Lcom/android/server/display/topology/Position;

    goto :goto_0

    .line 482
    :pswitch_2
    sget-object v0, Lcom/android/server/display/topology/Position;->top:Lcom/android/server/display/topology/Position;

    goto :goto_0

    .line 481
    :pswitch_3
    sget-object v0, Lcom/android/server/display/topology/Position;->left:Lcom/android/server/display/topology/Position;

    .line 480
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public reloadTopologies(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 208
    sget-boolean v0, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reloadTopologies mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManager.DisplayTopologyXmlStore"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    if-eq v0, p1, :cond_1

    .line 212
    iput p1, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    .line 213
    invoke-direct {p0}, Lcom/android/server/display/DisplayTopologyXmlStore;->resetTopologies()V

    .line 215
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/DisplayTopologyXmlStore;->reloadTopologies()V

    .line 216
    return-void
.end method

.method public restoreTopology(Landroid/hardware/display/DisplayTopology;)Landroid/hardware/display/DisplayTopology;
    .locals 7
    .param p1, "topology"    # Landroid/hardware/display/DisplayTopology;

    .line 178
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayTopologyXmlStore;->getTopologyId(Landroid/hardware/display/DisplayTopology;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "topologyId":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    const-string v2, ", topologyId="

    const-string/jumbo v3, "restoreTopology userId="

    const-string v4, "DisplayManager.DisplayTopologyXmlStore"

    if-eqz v1, :cond_0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreTopology cancelled: topology id is null for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-object v1

    .line 187
    :cond_1
    iget-object v5, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mTopologies:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/topology/Topology;

    .line 188
    .local v5, "restoredTopology":Lcom/android/server/display/topology/Topology;
    if-nez v5, :cond_3

    .line 190
    sget-boolean v6, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 191
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not found"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_2
    return-object v1

    .line 198
    :cond_3
    invoke-virtual {v5}, Lcom/android/server/display/topology/Topology;->getOrder()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_4

    .line 199
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayTopologyXmlStore;->moveTopologyToHead(Lcom/android/server/display/topology/Topology;)V

    .line 200
    invoke-direct {p0}, Lcom/android/server/display/DisplayTopologyXmlStore;->saveTopologiesToFile()V

    .line 202
    :cond_4
    invoke-virtual {v5}, Lcom/android/server/display/topology/Topology;->getDisplay()Lcom/android/server/display/topology/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mInjector:Lcom/android/server/display/DisplayTopologyXmlStore$Injector;

    .line 203
    invoke-virtual {v2}, Lcom/android/server/display/DisplayTopologyXmlStore$Injector;->getUniqueIdToDisplayIdMapping()Ljava/util/Map;

    move-result-object v2

    .line 202
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/display/DisplayTopologyXmlStore;->convertPersistentTopologyToDisplayTopology(Landroid/hardware/display/DisplayTopology;Lcom/android/server/display/topology/Display;Ljava/util/Map;)Landroid/hardware/display/DisplayTopology;

    move-result-object v1

    return-object v1
.end method

.method public saveTopology(Landroid/hardware/display/DisplayTopology;)Z
    .locals 6
    .param p1, "topology"    # Landroid/hardware/display/DisplayTopology;

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayTopologyXmlStore;->getTopologyId(Landroid/hardware/display/DisplayTopology;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "topologyId":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    const-string v2, "DisplayManager.DisplayTopologyXmlStore"

    if-eqz v1, :cond_0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveTopology userId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/DisplayTopologyXmlStore;->mUserId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", topologyId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveTopology cancelled: topology id is null for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return v1

    .line 153
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayTopologyXmlStore;->convertTopologyForPersistence(Landroid/hardware/display/DisplayTopology;Ljava/lang/String;)Lcom/android/server/display/topology/Topology;

    move-result-object v3

    .line 154
    .local v3, "topologyToPersist":Lcom/android/server/display/topology/Topology;
    if-nez v3, :cond_2

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "saveTopology cancelled: can\'t convert topology "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return v1

    .line 159
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayTopologyXmlStore;->prependTopology(Lcom/android/server/display/topology/Topology;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 160
    const-string/jumbo v4, "saveTopology cancelled: can\'t prependTopology"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return v1

    .line 163
    :cond_3
    invoke-direct {p0}, Lcom/android/server/display/DisplayTopologyXmlStore;->saveTopologiesToFile()V

    .line 164
    const/4 v1, 0x1

    return v1
.end method
