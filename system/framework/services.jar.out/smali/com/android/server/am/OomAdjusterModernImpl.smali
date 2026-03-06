.class public Lcom/android/server/am/OomAdjusterModernImpl;
.super Lcom/android/server/am/OomAdjuster;
.source "OomAdjusterModernImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;,
        Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;,
        Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;,
        Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;,
        Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;,
        Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;,
        Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;,
        Lcom/android/server/am/OomAdjusterModernImpl$Connection;,
        Lcom/android/server/am/OomAdjusterModernImpl$AdjSlot;
    }
.end annotation


# static fields
.field static final ADJ_SLOT_BACKUP_APP:I = 0xa

.field static final ADJ_SLOT_CACHED_APP:I = 0x10

.field static final ADJ_SLOT_FOREGROUND_APP:I = 0x4

.field static final ADJ_SLOT_HEAVY_WEIGHT_APP:I = 0xb

.field static final ADJ_SLOT_HOME_APP:I = 0xd

.field static final ADJ_SLOT_INVALID:I = -0x1

.field static final ADJ_SLOT_NATIVE:I = 0x0

.field static final ADJ_SLOT_PERCEPTIBLE_APP:I = 0x7

.field static final ADJ_SLOT_PERCEPTIBLE_LOW_APP:I = 0x9

.field static final ADJ_SLOT_PERCEPTIBLE_MEDIUM_APP:I = 0x8

.field static final ADJ_SLOT_PERCEPTIBLE_RECENT_FOREGROUND_APP:I = 0x5

.field static final ADJ_SLOT_PERSISTENT_PROC:I = 0x2

.field static final ADJ_SLOT_PERSISTENT_SERVICE:I = 0x3

.field static final ADJ_SLOT_PREVIOUS_APP:I = 0xe

.field static final ADJ_SLOT_SERVICE:I = 0xc

.field static final ADJ_SLOT_SERVICE_B:I = 0xf

.field static final ADJ_SLOT_SYSTEM:I = 0x1

.field static final ADJ_SLOT_UNKNOWN:I = 0x11

.field static final ADJ_SLOT_VALUES:[I

.field static final ADJ_SLOT_VISIBLE_APP:I = 0x6

.field static final PROC_STATE_SLOTS:[I

.field static final TAG:Ljava/lang/String; = "OomAdjusterModernImpl"


# instance fields
.field private final mComputeConnectionIgnoringReachableClientsConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;

.field private final mComputeConnectionsConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;

.field private final mComputeHostConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;

.field private final mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

.field private final mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

.field private final mReachableCollectingConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;

.field private final mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;


# direct methods
.method static bridge synthetic -$$Nest$fgetmComputeHostConsumer(Lcom/android/server/am/OomAdjusterModernImpl;)Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mComputeHostConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTmpOomAdjusterArgs(Lcom/android/server/am/OomAdjusterModernImpl;)Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateAdjSlotIfNecessary(Lcom/android/server/am/OomAdjusterModernImpl;Lcom/android/server/am/ProcessRecord;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OomAdjusterModernImpl;->updateAdjSlotIfNecessary(Lcom/android/server/am/ProcessRecord;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateProcStateSlotIfNecessary(Lcom/android/server/am/OomAdjusterModernImpl;Lcom/android/server/am/ProcessRecord;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OomAdjusterModernImpl;->updateProcStateSlotIfNecessary(Lcom/android/server/am/ProcessRecord;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smforEachConnectionLSP(Lcom/android/server/am/ProcessRecord;Ljava/util/function/BiConsumer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/OomAdjusterModernImpl;->forEachConnectionLSP(Lcom/android/server/am/ProcessRecord;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smunimportantConnectionLSP(Lcom/android/server/am/OomAdjusterModernImpl$Connection;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/am/OomAdjusterModernImpl;->unimportantConnectionLSP(Lcom/android/server/am/OomAdjusterModernImpl$Connection;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 140
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/OomAdjusterModernImpl;->ADJ_SLOT_VALUES:[I

    .line 178
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/am/OomAdjusterModernImpl;->PROC_STATE_SLOTS:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x3e8
        -0x384
        -0x320
        -0x2bc
        0x0
        0x32
        0x64
        0xc8
        0xe1
        0xfa
        0x12c
        0x190
        0x1f4
        0x258
        0x2bc
        0x320
        0x384
        0x3e9
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        -0x1
    .end array-data
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;Lcom/android/server/am/OomAdjuster$GlobalState;Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/OomAdjuster$Injector;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "processList"    # Lcom/android/server/am/ProcessList;
    .param p3, "activeUids"    # Lcom/android/server/am/ActiveUids;
    .param p4, "adjusterThread"    # Lcom/android/server/ServiceThread;
    .param p5, "globalState"    # Lcom/android/server/am/OomAdjuster$GlobalState;
    .param p6, "cachedAppOptimizer"    # Lcom/android/server/am/CachedAppOptimizer;
    .param p7, "injector"    # Lcom/android/server/am/OomAdjuster$Injector;

    .line 771
    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/OomAdjuster;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;Lcom/android/server/am/OomAdjuster$GlobalState;Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/OomAdjuster$Injector;)V

    .line 670
    move-object v0, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "service":Lcom/android/server/am/ActivityManagerService;
    .local v0, "injector":Lcom/android/server/am/OomAdjuster$Injector;
    .local p2, "service":Lcom/android/server/am/ActivityManagerService;
    .local p3, "processList":Lcom/android/server/am/ProcessList;
    .local p4, "activeUids":Lcom/android/server/am/ActiveUids;
    .local p5, "adjusterThread":Lcom/android/server/ServiceThread;
    .local p6, "globalState":Lcom/android/server/am/OomAdjuster$GlobalState;
    .local p7, "cachedAppOptimizer":Lcom/android/server/am/CachedAppOptimizer;
    new-instance v1, Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;-><init>(Lcom/android/server/am/OomAdjusterModernImpl-IA;)V

    iput-object v1, p1, Lcom/android/server/am/OomAdjusterModernImpl;->mReachableCollectingConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;

    .line 708
    new-instance v1, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;-><init>(Lcom/android/server/am/OomAdjusterModernImpl;Lcom/android/server/am/OomAdjusterModernImpl-IA;)V

    iput-object v1, p1, Lcom/android/server/am/OomAdjusterModernImpl;->mComputeConnectionIgnoringReachableClientsConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;

    .line 741
    new-instance v1, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;-><init>(Lcom/android/server/am/OomAdjusterModernImpl;Lcom/android/server/am/OomAdjusterModernImpl-IA;)V

    iput-object v1, p1, Lcom/android/server/am/OomAdjusterModernImpl;->mComputeHostConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;

    .line 765
    new-instance v1, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;-><init>(Lcom/android/server/am/OomAdjusterModernImpl;Lcom/android/server/am/OomAdjusterModernImpl-IA;)V

    iput-object v1, p1, Lcom/android/server/am/OomAdjusterModernImpl;->mComputeConnectionsConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;

    .line 775
    new-instance v1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    sget-object v3, Lcom/android/server/am/OomAdjusterModernImpl;->PROC_STATE_SLOTS:[I

    array-length v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4, v3}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;-><init>(Lcom/android/server/am/OomAdjusterModernImpl;II)V

    iput-object v1, p1, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    .line 777
    new-instance v1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    sget-object v3, Lcom/android/server/am/OomAdjusterModernImpl;->ADJ_SLOT_VALUES:[I

    array-length v3, v3

    const/4 v4, 0x1

    invoke-direct {v1, p0, v4, v3}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;-><init>(Lcom/android/server/am/OomAdjusterModernImpl;II)V

    iput-object v1, p1, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    .line 779
    new-instance v1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;-><init>(Lcom/android/server/am/OomAdjusterModernImpl;Lcom/android/server/am/OomAdjusterModernImpl-IA;)V

    iput-object v1, p1, Lcom/android/server/am/OomAdjusterModernImpl;->mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    .line 773
    return-void
.end method

.method static adjToSlot(I)I
    .locals 2
    .param p0, "adj"    # I

    .line 165
    sget-object v0, Lcom/android/server/am/OomAdjusterModernImpl;->ADJ_SLOT_VALUES:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-lt p0, v0, :cond_1

    sget-object v0, Lcom/android/server/am/OomAdjusterModernImpl;->ADJ_SLOT_VALUES:[I

    sget-object v1, Lcom/android/server/am/OomAdjusterModernImpl;->ADJ_SLOT_VALUES:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-gt p0, v0, :cond_1

    .line 167
    sget-object v0, Lcom/android/server/am/OomAdjusterModernImpl;->ADJ_SLOT_VALUES:[I

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 168
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 169
    return v0

    .line 173
    :cond_0
    add-int/lit8 v1, v0, 0x1

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 175
    .end local v0    # "index":I
    :cond_1
    sget-object v0, Lcom/android/server/am/OomAdjusterModernImpl;->ADJ_SLOT_VALUES:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private collectAndMarkReachableProcessesLSP(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 1102
    .local p1, "reachables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mReachableCollectingConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;->init(Ljava/util/ArrayList;)V

    .line 1103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1104
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1105
    .local v1, "pr":Lcom/android/server/am/ProcessRecord;
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mReachableCollectingConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;

    invoke-static {v1, v2}, Lcom/android/server/am/OomAdjusterModernImpl;->forEachConnectionLSP(Lcom/android/server/am/ProcessRecord;Ljava/util/function/BiConsumer;)V

    .line 1103
    .end local v1    # "pr":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1107
    .end local v0    # "i":I
    return-void
.end method

.method private computeConnectionsLSP()V
    .locals 3

    .line 991
    nop

    .line 993
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->poll()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 994
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    :goto_0
    if-eqz v0, :cond_0

    .line 995
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    iput-object v0, v1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 996
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mComputeConnectionsConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;

    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    invoke-virtual {v1, v2}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;->accept(Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;)V

    .line 997
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->poll()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    goto :goto_0

    .line 1001
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->poll()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 1002
    :goto_1
    if-eqz v0, :cond_1

    .line 1003
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    iput-object v0, v1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1004
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mComputeConnectionsConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;

    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    invoke-virtual {v1, v2}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;->accept(Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;)V

    .line 1005
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->poll()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    goto :goto_1

    .line 1002
    :cond_1
    nop

    .line 1007
    .end local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    nop

    .line 1018
    return-void
.end method

.method private computeOomAdjIgnoringReachablesLSP(Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;)Z
    .locals 11
    .param p1, "args"    # Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    .line 1169
    iget-object v1, p1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1170
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v3, p1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mTopApp:Lcom/android/server/am/ProcessRecord;

    .line 1171
    .local v3, "topApp":Lcom/android/server/am/ProcessRecord;
    iget-wide v5, p1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mNow:J

    .line 1172
    .local v5, "now":J
    iget v9, p1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mOomAdjReason:I

    .line 1174
    .local v9, "oomAdjReason":I
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v2, 0x3e9

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z

    .line 1176
    iget-object v2, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mComputeConnectionIgnoringReachableClientsConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;

    invoke-virtual {v2, p1}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;->init(Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;)V

    .line 1177
    iget-object v2, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mComputeConnectionIgnoringReachableClientsConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;

    invoke-static {v1, v2}, Lcom/android/server/am/OomAdjusterModernImpl;->forEachClientConnectionLSP(Lcom/android/server/am/ProcessRecord;Ljava/util/function/BiConsumer;)V

    .line 1178
    iget-object v2, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mComputeConnectionIgnoringReachableClientsConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;

    iget-boolean v2, v2, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;->hasReachableClient:Z

    return v2
.end method

.method private static forEachClientConnectionLSP(Lcom/android/server/am/ProcessRecord;Ljava/util/function/BiConsumer;)V
    .locals 9
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/util/function/BiConsumer<",
            "Lcom/android/server/am/OomAdjusterModernImpl$Connection;",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 1242
    .local p1, "connectionConsumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Lcom/android/server/am/OomAdjusterModernImpl$Connection;Lcom/android/server/am/ProcessRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 1244
    .local v0, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_5

    .line 1245
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v2

    .line 1246
    .local v2, "s":Lcom/android/server/am/ServiceRecord;
    nop

    .line 1247
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v3

    .line 1248
    .local v3, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_1
    if-ltz v4, :cond_4

    .line 1249
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1250
    .local v5, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "k":I
    :goto_2
    if-ltz v6, :cond_3

    .line 1251
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ConnectionRecord;

    .line 1253
    .local v7, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-boolean v8, p0, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v8, :cond_0

    iget-object v8, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_0

    .line 1254
    iget-object v8, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    .local v8, "client":Lcom/android/server/am/ProcessRecord;
    goto :goto_3

    .line 1256
    .end local v8    # "client":Lcom/android/server/am/ProcessRecord;
    :cond_0
    iget-object v8, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 1258
    .restart local v8    # "client":Lcom/android/server/am/ProcessRecord;
    :goto_3
    if-eqz v8, :cond_1

    if-ne v8, p0, :cond_2

    :cond_1
    goto :goto_4

    .line 1259
    :cond_2
    invoke-interface {p1, v7, v8}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1250
    .end local v7    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v8    # "client":Lcom/android/server/am/ProcessRecord;
    :goto_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_3
    nop

    .line 1248
    .end local v5    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v6    # "k":I
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_4
    nop

    .line 1244
    .end local v2    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v3    # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v4    # "j":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    nop

    .line 1264
    .end local v1    # "i":I
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 1265
    .local v1, "ppr":Lcom/android/server/am/ProcessProviderRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviders()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_5
    if-ltz v2, :cond_7

    .line 1266
    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessProviderRecord;->getProviderAt(I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v3

    .line 1267
    .local v3, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .restart local v4    # "j":I
    :goto_6
    if-ltz v4, :cond_6

    .line 1268
    iget-object v5, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ContentProviderConnection;

    .line 1269
    .local v5, "conn":Lcom/android/server/am/ContentProviderConnection;
    iget-object v6, v5, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    invoke-interface {p1, v5, v6}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1267
    .end local v5    # "conn":Lcom/android/server/am/ContentProviderConnection;
    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    :cond_6
    nop

    .line 1265
    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v4    # "j":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_7
    nop

    .line 1272
    .end local v2    # "i":I
    return-void
.end method

.method private static forEachConnectionLSP(Lcom/android/server/am/ProcessRecord;Ljava/util/function/BiConsumer;)V
    .locals 8
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/util/function/BiConsumer<",
            "Lcom/android/server/am/OomAdjusterModernImpl$Connection;",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 1188
    .local p1, "connectionConsumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Lcom/android/server/am/OomAdjusterModernImpl$Connection;Lcom/android/server/am/ProcessRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 1189
    .local v0, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfConnections()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    const/16 v2, -0x384

    const/4 v3, 0x2

    if-ltz v1, :cond_5

    .line 1190
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v4

    .line 1191
    .local v4, "cr":Lcom/android/server/am/ConnectionRecord;
    invoke-virtual {v4, v3}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1192
    iget-object v5, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    goto :goto_1

    :cond_0
    iget-object v5, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1193
    .local v5, "service":Lcom/android/server/am/ProcessRecord;
    :goto_1
    if-eqz v5, :cond_4

    if-eq v5, p0, :cond_4

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1194
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v6

    nop

    if-lt v6, v2, :cond_1

    iget-object v2, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1195
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v2

    if-ltz v2, :cond_4

    :cond_1
    iget-object v2, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1196
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    nop

    if-gtz v2, :cond_2

    iget-object v2, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1197
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v2

    nop

    if-lez v2, :cond_2

    iget-object v2, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1198
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    if-le v2, v3, :cond_4

    :cond_2
    iget-boolean v2, v5, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v2, :cond_3

    iget-object v2, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_3

    .line 1200
    goto :goto_2

    .line 1202
    :cond_3
    invoke-interface {p1, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1189
    .end local v4    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v5    # "service":Lcom/android/server/am/ProcessRecord;
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    nop

    .line 1205
    .end local v1    # "i":I
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfSdkSandboxConnections()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_9

    .line 1206
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessServiceRecord;->getSdkSandboxConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v4

    .line 1207
    .restart local v4    # "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v5, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1208
    .restart local v5    # "service":Lcom/android/server/am/ProcessRecord;
    if-eqz v5, :cond_8

    if-eq v5, p0, :cond_8

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1209
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v6

    nop

    if-lt v6, v2, :cond_6

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1210
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v6

    if-ltz v6, :cond_8

    :cond_6
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1211
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v6

    nop

    if-gtz v6, :cond_7

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1212
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v6

    nop

    if-lez v6, :cond_7

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1213
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v6

    if-gt v6, v3, :cond_7

    .line 1214
    goto :goto_4

    .line 1216
    :cond_7
    invoke-interface {p1, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1205
    .end local v4    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v5    # "service":Lcom/android/server/am/ProcessRecord;
    :cond_8
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_9
    nop

    .line 1219
    .end local v1    # "i":I
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 1220
    .local v1, "ppr":Lcom/android/server/am/ProcessProviderRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviderConnections()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_5
    if-ltz v4, :cond_d

    .line 1221
    invoke-virtual {v1, v4}, Lcom/android/server/am/ProcessProviderRecord;->getProviderConnectionAt(I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v5

    .line 1222
    .local v5, "cpc":Lcom/android/server/am/ContentProviderConnection;
    iget-object v6, v5, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v6, v6, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 1223
    .local v6, "provider":Lcom/android/server/am/ProcessRecord;
    if-eqz v6, :cond_c

    if-eq v6, p0, :cond_c

    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1224
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v7

    nop

    if-lt v7, v2, :cond_a

    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1225
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v7

    if-ltz v7, :cond_c

    :cond_a
    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1226
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v7

    nop

    if-gtz v7, :cond_b

    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1227
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v7

    nop

    if-lez v7, :cond_b

    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1228
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v7

    if-gt v7, v3, :cond_b

    .line 1229
    goto :goto_6

    .line 1231
    :cond_b
    invoke-interface {p1, v5, v6}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1220
    .end local v5    # "cpc":Lcom/android/server/am/ContentProviderConnection;
    .end local v6    # "provider":Lcom/android/server/am/ProcessRecord;
    :cond_c
    :goto_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_d
    nop

    .line 1233
    .end local v4    # "i":I
    return-void
.end method

.method private fullUpdateLSP(I)V
    .locals 20
    .param p1, "oomAdjReason"    # I

    .line 934
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 935
    .local v3, "topApp":Lcom/android/server/am/ProcessRecord;
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjuster$Injector;->getUptimeMillis()J

    move-result-wide v4

    .line 936
    .local v4, "now":J
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjuster$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v11

    .line 937
    .local v11, "nowElapsed":J
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    sub-long v13, v4, v1

    .line 939
    .local v13, "oldTime":J
    iget v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 941
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 942
    iput v1, v0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    .line 945
    iget-object v1, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->reset()V

    .line 946
    iget-object v1, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->reset()V

    .line 948
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v15

    .line 949
    .local v15, "lru":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 950
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 951
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v16

    .line 952
    .local v16, "prevProcState":I
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v17

    .line 953
    .local v17, "prevAdj":I
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    .line 954
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v6

    .line 955
    .local v6, "uidRec":Lcom/android/server/am/UidRecord;
    if-eqz v6, :cond_1

    .line 956
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v7, :cond_0

    .line 957
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Starting update of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ActivityManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_0
    invoke-virtual {v6}, Lcom/android/server/am/UidRecord;->reset()V

    .line 963
    :cond_1
    const/4 v8, 0x0

    const/4 v10, 0x0

    move v7, v1

    move-object v1, v2

    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    .local v7, "i":I
    const/16 v2, 0x3e9

    move-object v9, v6

    move-wide v5, v4

    .end local v4    # "now":J
    .end local v6    # "uidRec":Lcom/android/server/am/UidRecord;
    .local v5, "now":J
    .local v9, "uidRec":Lcom/android/server/am/UidRecord;
    const/4 v4, 0x1

    move/from16 v18, v7

    .end local v7    # "i":I
    .local v18, "i":I
    const/4 v7, 0x0

    move-object/from16 v19, v9

    move/from16 v9, p1

    .end local v9    # "uidRec":Lcom/android/server/am/UidRecord;
    .local v19, "uidRec":Lcom/android/server/am/UidRecord;
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZIZ)Z

    .line 966
    nop

    .line 969
    iget-object v2, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v2, v1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->offer(Lcom/android/server/am/ProcessRecord;)V

    .line 949
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v16    # "prevProcState":I
    .end local v17    # "prevAdj":I
    .end local v19    # "uidRec":Lcom/android/server/am/UidRecord;
    add-int/lit8 v1, v18, -0x1

    move-wide v4, v5

    .end local v18    # "i":I
    .local v1, "i":I
    goto :goto_0

    .end local v5    # "now":J
    .restart local v4    # "now":J
    :cond_2
    move/from16 v18, v1

    move-wide v5, v4

    .line 978
    .end local v1    # "i":I
    .end local v4    # "now":J
    .restart local v5    # "now":J
    iget-object v1, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->resetLastNodes()V

    .line 979
    iget-object v2, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-wide v4, v5

    .end local v5    # "now":J
    .restart local v4    # "now":J
    const/16 v6, 0x3e9

    move/from16 v7, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->update(Lcom/android/server/am/ProcessRecord;JIILcom/android/server/am/ActiveUids;Z)V

    .line 980
    move-object v10, v3

    move-wide v5, v4

    .end local v3    # "topApp":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "now":J
    .restart local v5    # "now":J
    .local v10, "topApp":Lcom/android/server/am/ProcessRecord;
    invoke-direct {v0}, Lcom/android/server/am/OomAdjusterModernImpl;->computeConnectionsLSP()V

    .line 982
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OomAdjuster;->applyLruAdjust(Ljava/util/ArrayList;)V

    .line 983
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    move/from16 v1, p1

    move-wide v3, v5

    move-wide v5, v11

    move-wide v7, v13

    .end local v11    # "nowElapsed":J
    .end local v13    # "oldTime":J
    .local v3, "now":J
    .local v5, "nowElapsed":J
    .local v7, "oldTime":J
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/OomAdjuster;->postUpdateOomAdjInnerLSP(ILcom/android/server/am/ActiveUids;JJJZ)V

    .line 984
    move-wide v0, v5

    move-wide v5, v3

    .end local v3    # "now":J
    .local v0, "nowElapsed":J
    .local v5, "now":J
    return-void
.end method

.method private initReachableStatesLSP(Ljava/util/ArrayList;ILcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;)V
    .locals 8
    .param p2, "targetCount"    # I
    .param p3, "args"    # Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;I",
            "Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;",
            ")V"
        }
    .end annotation

    .line 1115
    .local p1, "reachables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v0, 0x0

    .line 1116
    .local v0, "i":I
    const/4 v1, 0x1

    .line 1117
    .local v1, "initReachables":Z
    :goto_0
    if-ge v0, p2, :cond_0

    if-nez v1, :cond_0

    .line 1118
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 1119
    .local v2, "target":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    .line 1120
    .local v3, "prevProcState":I
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v4

    .line 1121
    .local v4, "prevAdj":I
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v5

    .line 1122
    .local v5, "prevCapability":I
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v6

    .line 1124
    .local v6, "prevShouldNotFreeze":Z
    iput-object v2, p3, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1127
    invoke-direct {p0, p3}, Lcom/android/server/am/OomAdjusterModernImpl;->computeOomAdjIgnoringReachablesLSP(Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;)Z

    move-result v7

    or-int/2addr v1, v7

    .line 1130
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/am/OomAdjusterModernImpl;->selfImportanceLoweredLSP(Lcom/android/server/am/ProcessRecord;IIIZ)Z

    move-result v7

    or-int/2addr v1, v7

    .line 1133
    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OomAdjusterModernImpl;->updateProcStateSlot(Lcom/android/server/am/ProcessRecord;I)V

    .line 1134
    invoke-direct {p0, v2, v4}, Lcom/android/server/am/OomAdjusterModernImpl;->updateAdjSlot(Lcom/android/server/am/ProcessRecord;I)V

    .line 1117
    .end local v2    # "target":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "prevProcState":I
    .end local v4    # "prevAdj":I
    .end local v5    # "prevCapability":I
    .end local v6    # "prevShouldNotFreeze":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1137
    :cond_0
    if-nez v1, :cond_1

    .line 1138
    return-void

    .line 1141
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "size":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 1142
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 1143
    .local v3, "reachable":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    .line 1144
    .local v4, "prevProcState":I
    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v5

    .line 1146
    .local v5, "prevAdj":I
    iput-object v3, p3, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1147
    invoke-direct {p0, p3}, Lcom/android/server/am/OomAdjusterModernImpl;->computeOomAdjIgnoringReachablesLSP(Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;)Z

    .line 1149
    nop

    .line 1152
    iget-object v6, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v6, v3}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->offer(Lcom/android/server/am/ProcessRecord;)V

    .line 1141
    .end local v3    # "reachable":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "prevProcState":I
    .end local v5    # "prevAdj":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 1158
    .end local v2    # "size":I
    return-void
.end method

.method private partialUpdateLSP(ILandroid/util/ArraySet;)V
    .locals 19
    .param p1, "oomAdjReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 1025
    .local p2, "targets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/ProcessRecord;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 1026
    .local v3, "topApp":Lcom/android/server/am/ProcessRecord;
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjuster$Injector;->getUptimeMillis()J

    move-result-wide v4

    .line 1027
    .local v4, "now":J
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mInjector:Lcom/android/server/am/OomAdjuster$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjuster$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v10

    .line 1028
    .local v10, "nowElapsed":J
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    sub-long v12, v4, v1

    .line 1030
    .local v12, "oldTime":J
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 1031
    .local v2, "activeUids":Lcom/android/server/am/ActiveUids;
    invoke-virtual {v2}, Lcom/android/server/am/ActiveUids;->clear()V

    .line 1032
    move-object v8, v2

    .end local v2    # "activeUids":Lcom/android/server/am/ActiveUids;
    .local v8, "activeUids":Lcom/android/server/am/ActiveUids;
    iget-object v2, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    const/16 v6, 0x3e9

    const/4 v9, 0x0

    move/from16 v7, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->update(Lcom/android/server/am/ProcessRecord;JIILcom/android/server/am/ActiveUids;Z)V

    .line 1034
    move-object v14, v3

    move-wide v3, v4

    .end local v4    # "now":J
    .local v3, "now":J
    .local v14, "topApp":Lcom/android/server/am/ProcessRecord;
    iget v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 1036
    iget-object v15, v0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 1037
    .local v15, "reachables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 1039
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->size()I

    move-result v5

    .local v5, "size":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 1040
    move-object/from16 v6, p2

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 1041
    .local v7, "target":Lcom/android/server/am/ProcessRecord;
    iget-object v9, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    .line 1042
    iget-object v9, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v9, v2}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 1043
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1039
    .end local v7    # "target":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v6, p2

    .line 1048
    .end local v1    # "i":I
    .end local v5    # "size":I
    invoke-direct {v0, v15}, Lcom/android/server/am/OomAdjusterModernImpl;->collectAndMarkReachableProcessesLSP(Ljava/util/ArrayList;)V

    .line 1054
    iget-object v1, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->resetLastNodes()V

    .line 1055
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v1

    iget-object v5, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mTmpOomAdjusterArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    invoke-direct {v0, v15, v1, v5}, Lcom/android/server/am/OomAdjusterModernImpl;->initReachableStatesLSP(Ljava/util/ArrayList;ILcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;)V

    .line 1059
    iget-object v1, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->resetLastNodes()V

    .line 1061
    invoke-direct {v0}, Lcom/android/server/am/OomAdjusterModernImpl;->computeConnectionsLSP()V

    .line 1063
    const/4 v1, 0x0

    .line 1064
    .local v1, "needLruAdjust":Z
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v7

    move/from16 v16, v1

    .end local v1    # "needLruAdjust":Z
    .local v7, "size":I
    .local v16, "needLruAdjust":Z
    :goto_1
    if-ge v5, v7, :cond_3

    .line 1065
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1066
    .local v1, "state":Lcom/android/server/am/ProcessStateRecord;
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 1067
    move/from16 v17, v2

    iget v2, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    .line 1068
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    .line 1071
    .local v2, "curAdj":I
    const/16 v9, 0x2bc

    if-gt v9, v2, :cond_1

    sget v9, Lcom/android/server/am/ProcessList;->PREVIOUS_APP_MAX_ADJ:I

    if-gt v2, v9, :cond_1

    move/from16 v9, v17

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    .line 1072
    .local v9, "isPrevApp":Z
    :goto_2
    move-object/from16 v18, v1

    .end local v1    # "state":Lcom/android/server/am/ProcessStateRecord;
    .local v18, "state":Lcom/android/server/am/ProcessStateRecord;
    const/16 v1, 0x3e9

    nop

    if-ge v2, v1, :cond_2

    goto :goto_3

    .line 1073
    :cond_2
    const/4 v1, 0x1

    move/from16 v16, v1

    .line 1064
    .end local v2    # "curAdj":I
    .end local v9    # "isPrevApp":Z
    .end local v18    # "state":Lcom/android/server/am/ProcessStateRecord;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v17

    goto :goto_1

    :cond_3
    move/from16 v17, v2

    .line 1078
    .end local v5    # "i":I
    .end local v7    # "size":I
    if-eqz v16, :cond_4

    .line 1080
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OomAdjuster;->applyLruAdjust(Ljava/util/ArrayList;)V

    .line 1084
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v8}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v2

    .local v2, "size":I
    :goto_4
    if-ge v1, v2, :cond_6

    .line 1085
    invoke-virtual {v8, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v5

    .line 1086
    .local v5, "ur":Lcom/android/server/am/UidRecord;
    invoke-virtual {v5}, Lcom/android/server/am/UidRecord;->reset()V

    .line 1087
    invoke-virtual {v5}, Lcom/android/server/am/UidRecord;->getNumOfProcs()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "j":I
    :goto_5
    if-ltz v7, :cond_5

    .line 1088
    invoke-virtual {v5, v7}, Lcom/android/server/am/UidRecord;->getProcessRecordByIndex(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v9

    .line 1089
    .local v9, "proc":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v0, v9}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecIfNecessaryLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 1087
    .end local v9    # "proc":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    :cond_5
    nop

    .line 1084
    .end local v5    # "ur":Lcom/android/server/am/UidRecord;
    .end local v7    # "j":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    nop

    .line 1093
    .end local v1    # "i":I
    .end local v2    # "size":I
    const/4 v9, 0x0

    move/from16 v1, p1

    move-object v2, v8

    move-wide v5, v10

    move-wide v7, v12

    .end local v8    # "activeUids":Lcom/android/server/am/ActiveUids;
    .end local v10    # "nowElapsed":J
    .end local v12    # "oldTime":J
    .local v2, "activeUids":Lcom/android/server/am/ActiveUids;
    .local v5, "nowElapsed":J
    .local v7, "oldTime":J
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/OomAdjuster;->postUpdateOomAdjInnerLSP(ILcom/android/server/am/ActiveUids;JJJZ)V

    .line 1094
    return-void
.end method

.method static processStateToSlot(I)I
    .locals 1
    .param p0, "state"    # I

    .line 203
    if-ltz p0, :cond_0

    const/16 v0, 0x13

    if-gt p0, v0, :cond_0

    .line 204
    return p0

    .line 206
    :cond_0
    sget-object v0, Lcom/android/server/am/OomAdjusterModernImpl;->PROC_STATE_SLOTS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private static selfImportanceLoweredLSP(Lcom/android/server/am/ProcessRecord;IIIZ)Z
    .locals 2
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "prevProcState"    # I
    .param p2, "prevAdj"    # I
    .param p3, "prevCapability"    # I
    .param p4, "prevShouldNotFreeze"    # Z

    .line 1280
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, p1, :cond_0

    .line 1281
    return v1

    .line 1283
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v0

    if-le v0, p2, :cond_1

    .line 1284
    return v1

    .line 1286
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    and-int/2addr v0, p3

    if-eq v0, p3, :cond_2

    .line 1287
    return v1

    .line 1289
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p4, :cond_3

    .line 1291
    return v1

    .line 1293
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private static unimportantConnectionLSP(Lcom/android/server/am/OomAdjusterModernImpl$Connection;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p0, "conn"    # Lcom/android/server/am/OomAdjusterModernImpl$Connection;
    .param p1, "host"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "client"    # Lcom/android/server/am/ProcessRecord;

    .line 1304
    nop

    .line 1306
    const/4 v0, 0x0

    return v0
.end method

.method private updateAdjSlot(Lcom/android/server/am/ProcessRecord;I)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "prevRawAdj"    # I

    .line 857
    nop

    .line 858
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->offer(Lcom/android/server/am/ProcessRecord;)V

    .line 864
    return-void
.end method

.method private updateAdjSlotIfNecessary(Lcom/android/server/am/ProcessRecord;I)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "prevRawAdj"    # I

    .line 843
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 844
    nop

    .line 845
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->offer(Lcom/android/server/am/ProcessRecord;)V

    .line 854
    :cond_0
    return-void
.end method

.method private updateProcStateSlot(Lcom/android/server/am/ProcessRecord;I)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "prevProcState"    # I

    .line 881
    nop

    .line 882
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->offer(Lcom/android/server/am/ProcessRecord;)V

    .line 888
    return-void
.end method

.method private updateProcStateSlotIfNecessary(Lcom/android/server/am/ProcessRecord;I)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "prevProcState"    # I

    .line 867
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 868
    nop

    .line 869
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->offer(Lcom/android/server/am/ProcessRecord;)V

    .line 878
    :cond_0
    return-void
.end method


# virtual methods
.method protected getInitialAdj(Lcom/android/server/am/ProcessRecord;)I
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 821
    const/16 v0, 0x3e9

    return v0
.end method

.method protected getInitialCapability(Lcom/android/server/am/ProcessRecord;)I
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 833
    const/4 v0, 0x0

    return v0
.end method

.method protected getInitialIsCurBoundByNonBgRestrictedApp(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 839
    const/4 v0, 0x0

    return v0
.end method

.method protected getInitialProcState(Lcom/android/server/am/ProcessRecord;)I
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 827
    const/4 v0, -0x1

    return v0
.end method

.method linkProcessRecordToList(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 782
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->append(Lcom/android/server/am/ProcessRecord;)V

    .line 783
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->append(Lcom/android/server/am/ProcessRecord;)V

    .line 784
    return-void
.end method

.method onProcessEndLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 801
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mLinkedNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    nop

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mLinkedNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    aget-object v0, v0, v1

    .line 802
    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->isLinked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjusterModernImpl;->unlinkProcessRecordFromList(Lcom/android/server/am/ProcessRecord;)V

    .line 805
    :cond_0
    return-void
.end method

.method onProcessOomAdjChanged(Lcom/android/server/am/ProcessRecord;I)V
    .locals 0
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "prevAdj"    # I

    .line 815
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OomAdjusterModernImpl;->updateAdjSlotIfNecessary(Lcom/android/server/am/ProcessRecord;I)V

    .line 816
    return-void
.end method

.method onProcessStateChanged(Lcom/android/server/am/ProcessRecord;I)V
    .locals 0
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "prevProcState"    # I

    .line 810
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OomAdjusterModernImpl;->updateProcStateSlotIfNecessary(Lcom/android/server/am/ProcessRecord;I)V

    .line 811
    return-void
.end method

.method protected performUpdateOomAdjLSP(I)V
    .locals 4
    .param p1, "oomAdjReason"    # I

    .line 892
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 893
    .local v0, "topApp":Lcom/android/server/am/ProcessRecord;
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    move-result v1

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    .line 895
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 896
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/AppProfiler;->mHasHomeProcess:Z

    iput-boolean v3, v1, Lcom/android/server/am/AppProfiler;->mHasPreviousProcess:Z

    .line 898
    iput p1, p0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 899
    invoke-static {p1}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 901
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjusterModernImpl;->fullUpdateLSP(I)V

    .line 903
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 904
    return-void
.end method

.method protected performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "oomAdjReason"    # I

    .line 909
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 910
    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjusterModernImpl;->performUpdateOomAdjPendingTargetsLocked(I)V

    .line 911
    const/4 v0, 0x1

    return v0
.end method

.method protected performUpdateOomAdjPendingTargetsLocked(I)V
    .locals 4
    .param p1, "oomAdjReason"    # I

    .line 917
    iput p1, p0, Lcom/android/server/am/OomAdjuster;->mLastReason:I

    .line 918
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjuster;->enqueuePendingTopAppIfNecessaryLSP()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessStateCurTop:I

    .line 919
    invoke-static {p1}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 921
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 922
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/OomAdjusterModernImpl;->partialUpdateLSP(ILandroid/util/ArraySet;)V

    .line 923
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 924
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 926
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 927
    return-void

    .line 923
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method resetInternal()V
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->reset()V

    .line 795
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->reset()V

    .line 796
    return-void
.end method

.method unlinkProcessRecordFromList(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 787
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->unlink(Lcom/android/server/am/ProcessRecord;)V

    .line 788
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->unlink(Lcom/android/server/am/ProcessRecord;)V

    .line 789
    return-void
.end method
