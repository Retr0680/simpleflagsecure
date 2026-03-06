.class Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;
.super Lcom/android/server/display/DisplayTopologyXmlStore$Injector;
.source "DisplayTopologyCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayTopologyCoordinator$Injector;->createTopologyStore(Landroid/util/SparseArray;Ljava/util/Map;)Lcom/android/server/display/DisplayTopologyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$displayIdToUniqueIdMapping:Landroid/util/SparseArray;

.field final synthetic val$uniqueIdToDisplayIdMapping:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayTopologyCoordinator$Injector;Landroid/util/SparseArray;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayTopologyCoordinator$Injector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 313
    iput-object p2, p0, Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;->val$displayIdToUniqueIdMapping:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;->val$uniqueIdToDisplayIdMapping:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/server/display/DisplayTopologyXmlStore$Injector;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayIdToUniqueIdMapping()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;->val$displayIdToUniqueIdMapping:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getUniqueIdToDisplayIdMapping()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator$Injector$1;->val$uniqueIdToDisplayIdMapping:Ljava/util/Map;

    return-object v0
.end method
