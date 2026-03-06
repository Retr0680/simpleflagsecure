.class Lcom/android/server/sensorprivacy/PersistedState$PVersion2;
.super Ljava/lang/Object;
.source "PersistedState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sensorprivacy/PersistedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PVersion2"
.end annotation


# instance fields
.field private mStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;",
            "Lcom/android/server/sensorprivacy/SensorState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmStates(Lcom/android/server/sensorprivacy/PersistedState$PVersion2;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;->mStates:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddState(Lcom/android/server/sensorprivacy/PersistedState$PVersion2;IIIIJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;->addState(IIIIJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smfromPVersion1(Lcom/android/server/sensorprivacy/PersistedState$PVersion1;)Lcom/android/server/sensorprivacy/PersistedState$PVersion2;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;->fromPVersion1(Lcom/android/server/sensorprivacy/PersistedState$PVersion1;)Lcom/android/server/sensorprivacy/PersistedState$PVersion2;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(I)V
    .locals 2
    .param p1, "version"    # I

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;->mStates:Landroid/util/ArrayMap;

    .line 461
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 464
    return-void

    .line 462
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only version 2 supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(ILcom/android/server/sensorprivacy/PersistedState-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;-><init>(I)V

    return-void
.end method

.method private addState(IIIIJ)V
    .locals 3
    .param p1, "toggleType"    # I
    .param p2, "userId"    # I
    .param p3, "sensor"    # I
    .param p4, "state"    # I
    .param p5, "lastChange"    # J

    .line 491
    iget-object v0, p0, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;->mStates:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;-><init>(III)V

    new-instance v2, Lcom/android/server/sensorprivacy/SensorState;

    invoke-direct {v2, p4, p5, p6}, Lcom/android/server/sensorprivacy/SensorState;-><init>(IJ)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    return-void
.end method

.method private static fromPVersion1(Lcom/android/server/sensorprivacy/PersistedState$PVersion1;)Lcom/android/server/sensorprivacy/PersistedState$PVersion2;
    .locals 14
    .param p0, "version1"    # Lcom/android/server/sensorprivacy/PersistedState$PVersion1;

    .line 467
    invoke-static {p0}, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;->-$$Nest$mupgrade(Lcom/android/server/sensorprivacy/PersistedState$PVersion1;)V

    .line 469
    new-instance v0, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;-><init>(I)V

    move-object v2, v0

    .line 471
    .local v2, "result":Lcom/android/server/sensorprivacy/PersistedState$PVersion2;
    invoke-static {p0}, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;->-$$Nest$fgetmIndividualEnabled(Lcom/android/server/sensorprivacy/PersistedState$PVersion1;)Landroid/util/SparseArray;

    move-result-object v0

    .line 473
    .local v0, "individualEnabled":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/server/sensorprivacy/SensorState;>;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 474
    .local v1, "numUsers":I
    const/4 v3, 0x0

    move v9, v3

    .local v9, "i":I
    :goto_0
    if-ge v9, v1, :cond_1

    .line 475
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 476
    .local v4, "userId":I
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/util/SparseArray;

    .line 477
    .local v10, "userIndividualEnabled":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/sensorprivacy/SensorState;>;"
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 478
    .local v11, "numSensors":I
    const/4 v3, 0x0

    move v12, v3

    .local v12, "j":I
    :goto_1
    if-ge v12, v11, :cond_0

    .line 479
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 480
    .local v5, "sensor":I
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/android/server/sensorprivacy/SensorState;

    .line 481
    .local v13, "sensorState":Lcom/android/server/sensorprivacy/SensorState;
    nop

    .line 482
    invoke-virtual {v13}, Lcom/android/server/sensorprivacy/SensorState;->getState()I

    move-result v6

    invoke-virtual {v13}, Lcom/android/server/sensorprivacy/SensorState;->getLastChange()J

    move-result-wide v7

    .line 481
    const/4 v3, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;->addState(IIIIJ)V

    .line 478
    .end local v5    # "sensor":I
    .end local v13    # "sensorState":Lcom/android/server/sensorprivacy/SensorState;
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_0
    nop

    .line 474
    .end local v4    # "userId":I
    .end local v10    # "userIndividualEnabled":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/sensorprivacy/SensorState;>;"
    .end local v11    # "numSensors":I
    .end local v12    # "j":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 486
    .end local v9    # "i":I
    return-object v2
.end method
