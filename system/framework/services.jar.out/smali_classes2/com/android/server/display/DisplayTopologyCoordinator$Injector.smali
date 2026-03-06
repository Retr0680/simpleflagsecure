.class Lcom/android/server/display/DisplayTopologyCoordinator$Injector;
.super Ljava/lang/Object;
.source "DisplayTopologyCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayTopologyCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method createTopologyStore(Landroid/util/SparseArray;Ljava/util/Map;)Lcom/android/server/display/DisplayTopologyStore;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/server/display/DisplayTopologyStore;"
        }
    .end annotation

    .line 313
    .local p1, "displayIdToUniqueIdMapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local p2, "uniqueIdToDisplayIdMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Lcom/android/server/display/DisplayTopologyXmlStore;

    new-instance v1, Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;-><init>(Lcom/android/server/display/DisplayTopologyCoordinator$Injector;Landroid/util/SparseArray;Ljava/util/Map;)V

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayTopologyXmlStore;-><init>(Lcom/android/server/display/DisplayTopologyXmlStore$Injector;)V

    return-object v0
.end method

.method getTopology()Landroid/hardware/display/DisplayTopology;
    .locals 1

    .line 307
    new-instance v0, Landroid/hardware/display/DisplayTopology;

    invoke-direct {v0}, Landroid/hardware/display/DisplayTopology;-><init>()V

    return-object v0
.end method
