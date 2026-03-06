.class final Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;
.super Ljava/lang/Object;
.source "LegacyHistoricalRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/LegacyHistoricalRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Persistence"
.end annotation


# static fields
.field private static final ATTR_ACCESS_COUNT:Ljava/lang/String; = "ac"

.field private static final ATTR_ACCESS_DURATION:Ljava/lang/String; = "du"

.field private static final ATTR_BEGIN_TIME:Ljava/lang/String; = "beg"

.field private static final ATTR_END_TIME:Ljava/lang/String; = "end"

.field private static final ATTR_NAME:Ljava/lang/String; = "na"

.field private static final ATTR_OVERFLOW:Ljava/lang/String; = "ov"

.field private static final ATTR_REJECT_COUNT:Ljava/lang/String; = "rc"

.field private static final ATTR_VERSION:Ljava/lang/String; = "ver"

.field private static final CURRENT_VERSION:I = 0x2

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG_ATTRIBUTION:Ljava/lang/String; = "ftr"

.field private static final TAG_HISTORY:Ljava/lang/String; = "history"

.field private static final TAG_OP:Ljava/lang/String; = "op"

.field private static final TAG_OPS:Ljava/lang/String; = "ops"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "pkg"

.field private static final TAG_STATE:Ljava/lang/String; = "st"

.field private static final TAG_UID:Ljava/lang/String; = "uid"

.field private static final sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;


# instance fields
.field private final mBaseSnapshotInterval:J

.field private final mIntervalCompressionMultiplier:J


# direct methods
.method static bridge synthetic -$$Nest$mcollectHistoricalOpsDLocked(Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p11}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->collectHistoricalOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smspliceFromBeginning(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->spliceFromBeginning(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 840
    const-class v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->LOG_TAG:Ljava/lang/String;

    .line 869
    new-instance v0, Lcom/android/internal/os/AtomicDirectory;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    .line 870
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "appops"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "history"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/os/AtomicDirectory;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 869
    return-void
.end method

.method constructor <init>(JJ)V
    .locals 0
    .param p1, "baseSnapshotInterval"    # J
    .param p3, "intervalCompressionMultiplier"    # J

    .line 864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 865
    iput-wide p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    .line 866
    iput-wide p3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    .line 867
    return-void
.end method

.method static clearHistoryDLocked()V
    .locals 1

    .line 894
    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->delete()V

    .line 895
    return-void
.end method

.method private collectHistoricalOpsBaseDLocked(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)Ljava/util/LinkedList;
    .locals 18
    .param p1, "filterUid"    # I
    .param p2, "filterPackageName"    # Ljava/lang/String;
    .param p3, "filterAttributionTag"    # Ljava/lang/String;
    .param p4, "filterOpNames"    # [Ljava/lang/String;
    .param p5, "filter"    # I
    .param p6, "filterBeginTimeMillis"    # J
    .param p8, "filterEndTimeMillis"    # J
    .param p10, "filterFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "IJJI)",
            "Ljava/util/LinkedList<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .line 993
    const/4 v1, 0x0

    .line 995
    .local v1, "baseDir":Ljava/io/File;
    :try_start_0
    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->startRead()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, v0

    .line 1001
    .end local v1    # "baseDir":Ljava/io/File;
    .local v3, "baseDir":Ljava/io/File;
    :try_start_1
    invoke-static {v3}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->getHistoricalFileNames(Ljava/io/File;)Ljava/util/Set;

    move-result-object v17

    .line 1002
    .local v17, "historyFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v14, v0, [J

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    aput-wide v0, v14, v2

    .line 1003
    .local v14, "globalContentOffsetMillis":[J
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    move/from16 v13, p10

    invoke-direct/range {v2 .. v17}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->collectHistoricalOpsRecursiveDLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JLjava/util/LinkedList;ILjava/util/Set;)Ljava/util/LinkedList;

    move-result-object v0

    .line 1010
    .local v0, "ops":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/AppOpsManager$HistoricalOps;>;"
    sget-object v1, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v1}, Lcom/android/internal/os/AtomicDirectory;->finishRead()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1011
    return-object v0

    .line 1012
    .end local v0    # "ops":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v14    # "globalContentOffsetMillis":[J
    .end local v17    # "historyFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    move-object v1, v3

    goto :goto_0

    .end local v3    # "baseDir":Ljava/io/File;
    .restart local v1    # "baseDir":Ljava/io/File;
    :catchall_1
    move-exception v0

    .line 1013
    .local v0, "t":Ljava/lang/Throwable;
    :goto_0
    const-string v2, "Error reading historical app ops. Deleting history."

    invoke-static {v2, v0, v1}, Lcom/android/server/appop/LegacyHistoricalRegistry;->-$$Nest$smwtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 1014
    sget-object v2, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicDirectory;->delete()V

    .line 1016
    .end local v0    # "t":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method private collectHistoricalOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)V
    .locals 12
    .param p1, "currentOps"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "filterUid"    # I
    .param p3, "filterPackageName"    # Ljava/lang/String;
    .param p4, "filterAttributionTag"    # Ljava/lang/String;
    .param p5, "filterOpNames"    # [Ljava/lang/String;
    .param p6, "filter"    # I
    .param p7, "filterBeingMillis"    # J
    .param p9, "filterEndMillis"    # J
    .param p11, "filterFlags"    # I

    .line 977
    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->collectHistoricalOpsBaseDLocked(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)Ljava/util/LinkedList;

    move-result-object v11

    .line 980
    .local v11, "readOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-eqz v11, :cond_0

    .line 981
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    .line 982
    .local v0, "readCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 983
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOps;

    .line 984
    .local v2, "readOp":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {p1, v2}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 982
    .end local v2    # "readOp":Landroid/app/AppOpsManager$HistoricalOps;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 987
    .end local v0    # "readCount":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private collectHistoricalOpsRecursiveDLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JLjava/util/LinkedList;ILjava/util/Set;)Ljava/util/LinkedList;
    .locals 22
    .param p1, "baseDir"    # Ljava/io/File;
    .param p2, "filterUid"    # I
    .param p3, "filterPackageName"    # Ljava/lang/String;
    .param p4, "filterAttributionTag"    # Ljava/lang/String;
    .param p5, "filterOpNames"    # [Ljava/lang/String;
    .param p6, "filter"    # I
    .param p7, "filterBeginTimeMillis"    # J
    .param p9, "filterEndTimeMillis"    # J
    .param p11, "filterFlags"    # I
    .param p12, "globalContentOffsetMillis"    # [J
    .param p14, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "IJJI[J",
            "Ljava/util/LinkedList<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedList<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1028
    .local p13, "outOps":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local p15, "historyFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move/from16 v0, p14

    iget-wide v2, v1, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v2, v2

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    iget-wide v4, v1, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long v3, v2, v4

    .line 1030
    .local v3, "previousIntervalEndMillis":J
    iget-wide v5, v1, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v5, v5

    add-int/lit8 v2, v0, 0x1

    int-to-double v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-long v5, v5

    iget-wide v7, v1, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long/2addr v5, v7

    .line 1033
    .local v5, "currentIntervalEndMillis":J
    sub-long v7, p7, v3

    const-wide/16 v9, 0x0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 1034
    .end local p7    # "filterBeginTimeMillis":J
    .local v8, "filterBeginTimeMillis":J
    sub-long v10, p9, v3

    .line 1037
    .end local p9    # "filterEndTimeMillis":J
    .local v10, "filterEndTimeMillis":J
    move-object/from16 v2, p1

    move/from16 v7, p2

    move/from16 v16, p11

    move-object/from16 v17, p12

    move-object/from16 v19, p15

    move/from16 v18, v0

    move-wide v12, v8

    move-wide v14, v10

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    .end local v8    # "filterBeginTimeMillis":J
    .end local v10    # "filterEndTimeMillis":J
    .local v12, "filterBeginTimeMillis":J
    .local v14, "filterEndTimeMillis":J
    invoke-direct/range {v1 .. v19}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readHistoricalOpsLocked(Ljava/io/File;JJILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/List;

    move-result-object v0

    .line 1043
    move-wide/from16 v17, v3

    move-wide v8, v12

    move-wide v10, v14

    .end local v3    # "previousIntervalEndMillis":J
    .end local v12    # "filterBeginTimeMillis":J
    .end local v14    # "filterEndTimeMillis":J
    .local v0, "readOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v8    # "filterBeginTimeMillis":J
    .restart local v10    # "filterEndTimeMillis":J
    .local v17, "previousIntervalEndMillis":J
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1044
    return-object p13

    .line 1048
    :cond_0
    add-int/lit8 v15, p14, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v7, p6

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v16, p15

    move-wide/from16 v20, v5

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .end local v5    # "currentIntervalEndMillis":J
    .local v20, "currentIntervalEndMillis":J
    invoke-direct/range {v1 .. v16}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->collectHistoricalOpsRecursiveDLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JLjava/util/LinkedList;ILjava/util/Set;)Ljava/util/LinkedList;

    move-result-object v14

    .line 1054
    .end local p13    # "outOps":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v14, "outOps":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-eqz v14, :cond_2

    .line 1055
    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 1056
    .local v1, "opCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1057
    invoke-virtual {v14, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1058
    .local v3, "collectedOp":Landroid/app/AppOpsManager$HistoricalOps;
    move-wide/from16 v5, v20

    .end local v20    # "currentIntervalEndMillis":J
    .restart local v5    # "currentIntervalEndMillis":J
    invoke-virtual {v3, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 1056
    .end local v3    # "collectedOp":Landroid/app/AppOpsManager$HistoricalOps;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v5    # "currentIntervalEndMillis":J
    .restart local v20    # "currentIntervalEndMillis":J
    :cond_1
    move-wide/from16 v5, v20

    .end local v20    # "currentIntervalEndMillis":J
    .restart local v5    # "currentIntervalEndMillis":J
    goto :goto_1

    .line 1054
    .end local v1    # "opCount":I
    .end local v2    # "i":I
    .end local v5    # "currentIntervalEndMillis":J
    .restart local v20    # "currentIntervalEndMillis":J
    :cond_2
    move-wide/from16 v5, v20

    .line 1062
    .end local v20    # "currentIntervalEndMillis":J
    .restart local v5    # "currentIntervalEndMillis":J
    :goto_1
    if-eqz v0, :cond_4

    .line 1063
    if-nez v14, :cond_3

    .line 1064
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    move-object v14, v1

    .line 1067
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1068
    .restart local v1    # "opCount":I
    add-int/lit8 v2, v1, -0x1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_4

    .line 1069
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v14, v3}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    .line 1068
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1073
    .end local v1    # "opCount":I
    .end local v2    # "i":I
    :cond_4
    return-object v14
.end method

.method private computeGlobalIntervalBeginMillis(I)J
    .locals 9
    .param p1, "depth"    # I

    .line 1674
    const-wide/16 v0, 0x0

    .line 1675
    .local v0, "beginTimeMillis":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, p1, 0x1

    if-ge v2, v3, :cond_0

    .line 1676
    long-to-double v3, v0

    iget-wide v5, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v5, v5

    int-to-double v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-long v0, v3

    .line 1675
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1678
    .end local v2    # "i":I
    iget-wide v2, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method private static enforceOpsWellFormed(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .line 1643
    .local p0, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-nez p0, :cond_0

    .line 1644
    return-void

    .line 1647
    :cond_0
    const/4 v0, 0x0

    .line 1648
    .local v0, "current":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1649
    .local v1, "opsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_6

    .line 1650
    move-object v3, v0

    .line 1651
    .local v3, "previous":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1652
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1656
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_4

    .line 1660
    if-eqz v3, :cond_3

    .line 1661
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    .line 1665
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    goto :goto_1

    .line 1666
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Non increasing ops:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1667
    invoke-static {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->opsToDebugString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1662
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intersecting ops:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1663
    invoke-static {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->opsToDebugString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1649
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1657
    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Begin after end:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1658
    invoke-static {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->opsToDebugString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1653
    :cond_5
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Empty ops:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    invoke-static {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->opsToDebugString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1649
    .end local v3    # "previous":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_6
    nop

    .line 1671
    .end local v2    # "i":I
    return-void
.end method

.method private generateFile(Ljava/io/File;I)Ljava/io/File;
    .locals 5
    .param p1, "baseDir"    # Ljava/io/File;
    .param p2, "depth"    # I

    .line 873
    invoke-direct {p0, p2}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->computeGlobalIntervalBeginMillis(I)J

    move-result-wide v0

    .line 874
    .local v0, "globalBeginMillis":J
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private static getHistoricalFileNames(Ljava/io/File;)Ljava/util/Set;
    .locals 6
    .param p0, "historyDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1766
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1767
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 1768
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 1770
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 1771
    .local v1, "fileNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 1772
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1771
    .end local v4    # "file":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1775
    :cond_1
    return-object v1
.end method

.method private handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V
    .locals 25
    .param p1, "newBaseDir"    # Ljava/io/File;
    .param p2, "oldBaseDir"    # Ljava/io/File;
    .param p5, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1080
    .local p3, "passedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local p4, "oldFileNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    iget-wide v3, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v3, v3

    int-to-double v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-long v3, v3

    iget-wide v5, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long/2addr v3, v5

    .line 1082
    .local v3, "previousIntervalEndMillis":J
    iget-wide v5, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v5, v5

    add-int/lit8 v7, v2, 0x1

    int-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-long v5, v5

    iget-wide v7, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long/2addr v5, v7

    .line 1085
    .local v5, "currentIntervalEndMillis":J
    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object/from16 v1, p1

    move-wide/from16 v21, v3

    move-wide v10, v5

    move-object/from16 v4, p4

    move v6, v2

    goto/16 :goto_6

    .line 1104
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .line 1105
    .local v7, "passedOpCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_1

    .line 1106
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1107
    .local v9, "passedOp":Landroid/app/AppOpsManager$HistoricalOps;
    neg-long v10, v3

    invoke-virtual {v9, v10, v11}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 1105
    .end local v9    # "passedOp":Landroid/app/AppOpsManager$HistoricalOps;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1115
    .end local v8    # "i":I
    const/16 v17, 0x0

    const/16 v19, 0x0

    move v8, v7

    .end local v7    # "passedOpCount":I
    .local v8, "passedOpCount":I
    const/4 v7, -0x1

    move v9, v8

    .end local v8    # "passedOpCount":I
    .local v9, "passedOpCount":I
    const/4 v8, 0x0

    move v10, v9

    .end local v9    # "passedOpCount":I
    .local v10, "passedOpCount":I
    const/4 v9, 0x0

    move v11, v10

    .end local v10    # "passedOpCount":I
    .local v11, "passedOpCount":I
    const/4 v10, 0x0

    move v12, v11

    .end local v11    # "passedOpCount":I
    .local v12, "passedOpCount":I
    const/4 v11, 0x0

    move v14, v12

    .end local v12    # "passedOpCount":I
    .local v14, "passedOpCount":I
    const-wide/high16 v12, -0x8000000000000000L

    move/from16 v16, v14

    .end local v14    # "passedOpCount":I
    .local v16, "passedOpCount":I
    const-wide v14, 0x7fffffffffffffffL

    move/from16 v18, v16

    .end local v16    # "passedOpCount":I
    .local v18, "passedOpCount":I
    const/16 v16, 0x1f

    move-object/from16 v20, v1

    move-object v1, v0

    move-object/from16 v0, v20

    move/from16 v20, v18

    move/from16 v18, v2

    move-object/from16 v2, p2

    .end local v18    # "passedOpCount":I
    .local v20, "passedOpCount":I
    invoke-direct/range {v1 .. v19}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readHistoricalOpsLocked(Ljava/io/File;JJILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/List;

    move-result-object v7

    .line 1127
    move-wide v8, v3

    move-wide v10, v5

    move/from16 v6, v18

    .end local v3    # "previousIntervalEndMillis":J
    .end local v5    # "currentIntervalEndMillis":J
    .local v7, "existingOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v8, "previousIntervalEndMillis":J
    .local v10, "currentIntervalEndMillis":J
    if-eqz v7, :cond_2

    .line 1128
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .line 1129
    .local v2, "existingOpCount":I
    if-lez v2, :cond_2

    .line 1131
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1132
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v3

    .line 1133
    .local v3, "elapsedTimeMillis":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_2

    .line 1134
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1135
    .local v12, "existingOp":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v12, v3, v4}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 1133
    .end local v12    # "existingOp":Landroid/app/AppOpsManager$HistoricalOps;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1144
    .end local v2    # "existingOpCount":I
    .end local v3    # "elapsedTimeMillis":J
    .end local v5    # "i":I
    :cond_2
    move-wide v12, v8

    .line 1149
    .local v12, "slotDurationMillis":J
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    move-object v14, v2

    .line 1150
    .local v14, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-eqz v7, :cond_3

    .line 1151
    invoke-interface {v14, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1159
    :cond_3
    const/4 v2, 0x0

    .line 1160
    .local v2, "persistedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    const/4 v3, 0x0

    .line 1170
    .local v3, "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    const-wide/16 v4, 0x0

    .line 1171
    .local v4, "intervalOverflowMillis":J
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    .line 1172
    .local v15, "opCount":I
    const/16 v16, 0x0

    move/from16 v0, v16

    .local v0, "i":I
    :goto_2
    if-ge v0, v15, :cond_b

    .line 1173
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v0

    .end local v0    # "i":I
    .local v17, "i":I
    move-object/from16 v0, v16

    check-cast v0, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1176
    .local v0, "op":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v18

    cmp-long v16, v18, v10

    if-gtz v16, :cond_4

    .line 1177
    move-object/from16 v16, v0

    .line 1178
    .local v16, "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    const/16 v18, 0x0

    move-object/from16 v21, v18

    move-object/from16 v18, v7

    move-object/from16 v7, v21

    move-wide/from16 v21, v8

    move-object v9, v3

    move-object/from16 v3, v16

    .local v18, "overflowedOp":Landroid/app/AppOpsManager$HistoricalOps;
    goto :goto_3

    .line 1179
    .end local v16    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v18    # "overflowedOp":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_4
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v18

    cmp-long v16, v18, v10

    if-gez v16, :cond_6

    .line 1180
    move-object/from16 v16, v0

    .line 1181
    .restart local v16    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v18

    sub-long v4, v18, v10

    .line 1182
    cmp-long v18, v4, v8

    if-lez v18, :cond_5

    .line 1183
    move-object/from16 v18, v7

    move-wide/from16 v21, v8

    .end local v7    # "existingOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v8    # "previousIntervalEndMillis":J
    .local v18, "existingOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v21, "previousIntervalEndMillis":J
    long-to-double v7, v4

    .line 1184
    move-object v9, v3

    move-wide/from16 v23, v4

    .end local v3    # "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v4    # "intervalOverflowMillis":J
    .local v9, "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v23, "intervalOverflowMillis":J
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v7, v3

    .line 1185
    .local v7, "splitScale":D
    invoke-static {v0, v7, v8}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->spliceFromEnd(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v3

    .line 1186
    .local v3, "overflowedOp":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    .line 1187
    .end local v7    # "splitScale":D
    .end local v23    # "intervalOverflowMillis":J
    .restart local v4    # "intervalOverflowMillis":J
    move-object v7, v3

    move-object/from16 v3, v16

    goto :goto_3

    .line 1188
    .end local v9    # "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v18    # "existingOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v21    # "previousIntervalEndMillis":J
    .local v3, "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v7, "existingOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v8    # "previousIntervalEndMillis":J
    :cond_5
    move-wide/from16 v23, v4

    move-object/from16 v18, v7

    move-wide/from16 v21, v8

    move-object v9, v3

    .end local v3    # "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v4    # "intervalOverflowMillis":J
    .end local v7    # "existingOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v8    # "previousIntervalEndMillis":J
    .restart local v9    # "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v18    # "existingOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v21    # "previousIntervalEndMillis":J
    .restart local v23    # "intervalOverflowMillis":J
    const/4 v3, 0x0

    move-object v7, v3

    move-object/from16 v3, v16

    .local v3, "overflowedOp":Landroid/app/AppOpsManager$HistoricalOps;
    goto :goto_3

    .line 1191
    .end local v9    # "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v16    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v18    # "existingOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v21    # "previousIntervalEndMillis":J
    .end local v23    # "intervalOverflowMillis":J
    .local v3, "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v4    # "intervalOverflowMillis":J
    .restart local v7    # "existingOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v8    # "previousIntervalEndMillis":J
    :cond_6
    move-object/from16 v18, v7

    move-wide/from16 v21, v8

    move-object v9, v3

    .end local v3    # "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v7    # "existingOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v8    # "previousIntervalEndMillis":J
    .restart local v9    # "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v18    # "existingOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v21    # "previousIntervalEndMillis":J
    const/16 v16, 0x0

    .line 1192
    .restart local v16    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    move-object v3, v0

    move-object v7, v3

    move-object/from16 v3, v16

    .line 1194
    .end local v16    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .local v3, "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .local v7, "overflowedOp":Landroid/app/AppOpsManager$HistoricalOps;
    :goto_3
    if-eqz v3, :cond_8

    .line 1195
    if-nez v2, :cond_7

    .line 1196
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v8

    .line 1198
    :cond_7
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1200
    :cond_8
    if-eqz v7, :cond_a

    .line 1201
    if-nez v9, :cond_9

    .line 1202
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .end local v9    # "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v8, "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    goto :goto_4

    .line 1201
    .end local v8    # "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v9    # "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :cond_9
    move-object v8, v9

    .line 1204
    .end local v9    # "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v8    # "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :goto_4
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v8

    goto :goto_5

    .line 1200
    .end local v8    # "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v9    # "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :cond_a
    move-object v3, v9

    .line 1172
    .end local v0    # "op":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v7    # "overflowedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v9    # "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v3, "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :goto_5
    add-int/lit8 v0, v17, 0x1

    move-object/from16 v7, v18

    move-wide/from16 v8, v21

    .end local v17    # "i":I
    .local v0, "i":I
    goto/16 :goto_2

    .end local v18    # "existingOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v21    # "previousIntervalEndMillis":J
    .local v7, "existingOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v8, "previousIntervalEndMillis":J
    :cond_b
    move/from16 v17, v0

    move-object/from16 v18, v7

    move-wide/from16 v21, v8

    move-object v9, v3

    .line 1213
    .end local v0    # "i":I
    .end local v3    # "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v7    # "existingOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v8    # "previousIntervalEndMillis":J
    .restart local v9    # "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v18    # "existingOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v21    # "previousIntervalEndMillis":J
    move-object/from16 v0, p1

    invoke-direct {v1, v0, v6}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v7

    .line 1214
    .local v7, "newFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v8, p4

    invoke-interface {v8, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1216
    if-eqz v2, :cond_c

    .line 1217
    invoke-static {v2, v12, v13}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->normalizeSnapshotForSlotDuration(Ljava/util/List;J)V

    .line 1218
    invoke-direct {v1, v2, v4, v5, v7}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->writeHistoricalOpsDLocked(Ljava/util/List;JLjava/io/File;)V

    .line 1226
    :cond_c
    move-wide v3, v4

    .end local v4    # "intervalOverflowMillis":J
    .local v3, "intervalOverflowMillis":J
    add-int/lit8 v5, v6, 0x1

    move-object/from16 v16, v1

    move-object v1, v0

    move-object/from16 v0, v16

    move-wide/from16 v16, v3

    move-object v4, v8

    move-object v3, v9

    move-object v8, v2

    move-object/from16 v2, p2

    .end local v2    # "persistedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v9    # "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v3, "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v8, "persistedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v16, "intervalOverflowMillis":J
    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V

    .line 1228
    return-void

    .line 1085
    .end local v7    # "newFile":Ljava/io/File;
    .end local v8    # "persistedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v10    # "currentIntervalEndMillis":J
    .end local v12    # "slotDurationMillis":J
    .end local v14    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v15    # "opCount":I
    .end local v16    # "intervalOverflowMillis":J
    .end local v18    # "existingOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v20    # "passedOpCount":I
    .end local v21    # "previousIntervalEndMillis":J
    .local v3, "previousIntervalEndMillis":J
    .local v5, "currentIntervalEndMillis":J
    :cond_d
    move-object/from16 v1, p1

    move-wide/from16 v21, v3

    move-wide v10, v5

    move-object/from16 v4, p4

    move v6, v2

    .line 1086
    .end local v3    # "previousIntervalEndMillis":J
    .end local v5    # "currentIntervalEndMillis":J
    .restart local v10    # "currentIntervalEndMillis":J
    .restart local v21    # "previousIntervalEndMillis":J
    :goto_6
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1088
    move-object/from16 v2, p2

    invoke-direct {v0, v2, v6}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v7

    .line 1089
    .local v7, "oldFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1090
    invoke-direct {v0, v1, v6}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v3

    .line 1091
    .local v3, "newFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-virtual {v7}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v8

    invoke-static {v5, v8}, Ljava/nio/file/Files;->createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 1093
    .end local v3    # "newFile":Ljava/io/File;
    :cond_e
    add-int/lit8 v5, v6, 0x1

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V

    .line 1096
    .end local v7    # "oldFile":Ljava/io/File;
    :cond_f
    return-void
.end method

.method private static normalizeSnapshotForSlotDuration(Ljava/util/List;J)V
    .locals 14
    .param p1, "slotDurationMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;J)V"
        }
    .end annotation

    .line 1714
    .local p0, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1715
    .local v0, "opCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "processedIdx":I
    :goto_0
    if-ltz v1, :cond_5

    .line 1716
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1717
    .local v2, "processedOp":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p1

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 1719
    .local v3, "slotBeginTimeMillis":J
    add-int/lit8 v7, v1, -0x1

    .local v7, "candidateIdx":I
    :goto_1
    if-ltz v7, :cond_4

    .line 1720
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1721
    .local v8, "candidateOp":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v8}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v9

    .line 1722
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    sub-long/2addr v9, v11

    .line 1723
    .local v9, "candidateSlotIntersectionMillis":J
    cmp-long v11, v9, v5

    if-gtz v11, :cond_0

    .line 1724
    goto :goto_3

    .line 1726
    :cond_0
    long-to-float v11, v9

    .line 1727
    invoke-virtual {v8}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    move-result-wide v12

    long-to-float v12, v12

    div-float/2addr v11, v12

    .line 1728
    .local v11, "candidateSplitRatio":F
    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v11, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-ltz v12, :cond_1

    .line 1729
    invoke-interface {p0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1730
    add-int/lit8 v1, v1, -0x1

    .line 1731
    invoke-virtual {v2, v8}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    goto :goto_2

    .line 1733
    :cond_1
    float-to-double v12, v11

    invoke-static {v8, v12, v13}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->spliceFromEnd(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v12

    .line 1735
    .local v12, "endSplice":Landroid/app/AppOpsManager$HistoricalOps;
    if-eqz v12, :cond_2

    .line 1736
    invoke-virtual {v2, v12}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 1738
    :cond_2
    invoke-virtual {v8}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1739
    invoke-interface {p0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1740
    add-int/lit8 v1, v1, -0x1

    .line 1719
    .end local v8    # "candidateOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v9    # "candidateSlotIntersectionMillis":J
    .end local v11    # "candidateSplitRatio":F
    .end local v12    # "endSplice":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 1715
    .end local v2    # "processedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v7    # "candidateIdx":I
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v3    # "slotBeginTimeMillis":J
    :cond_5
    nop

    .line 1750
    .end local v1    # "processedIdx":I
    return-void
.end method

.method private static opsToDebugString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1753
    .local p0, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1754
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1755
    .local v1, "opCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1756
    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1757
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1758
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_0

    .line 1759
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1755
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1762
    .end local v2    # "i":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private readHistoricalAttributionOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 13
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p5, "filterAttributionTag"    # Ljava/lang/String;
    .param p6, "filterOpNames"    # [Ljava/lang/String;
    .param p7, "filter"    # I
    .param p8, "filterFlags"    # I
    .param p9, "filterScale"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1427
    move-object/from16 v5, p4

    const-string/jumbo v0, "na"

    invoke-static {v5, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1428
    .local v4, "attributionTag":Ljava/lang/String;
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_0

    move-object/from16 v11, p5

    invoke-static {v11, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1430
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1431
    const/4 v0, 0x0

    return-object v0

    .line 1428
    :cond_0
    move-object/from16 v11, p5

    .line 1433
    :cond_1
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v12

    move-object v1, p1

    .line 1434
    .end local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v1, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v12, "depth":I
    :goto_0
    invoke-static {v5, v12}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1435
    const-string/jumbo p1, "op"

    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1436
    move-object v0, p0

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object p1

    .line 1439
    .local p1, "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    if-nez v1, :cond_2

    .line 1440
    move-object v0, p1

    move-object v1, v0

    .line 1442
    .end local p1    # "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_2
    move-object/from16 v5, p4

    goto :goto_0

    .line 1435
    :cond_3
    move-object/from16 v5, p4

    goto :goto_0

    .line 1444
    :cond_4
    return-object v1
.end method

.method private readHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 12
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p6, "filterOpNames"    # [Ljava/lang/String;
    .param p7, "filter"    # I
    .param p8, "filterFlags"    # I
    .param p9, "filterScale"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1453
    move-object/from16 v6, p5

    const-string/jumbo v0, "na"

    const/4 v1, 0x0

    invoke-interface {v6, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1454
    .local v5, "op":I
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_0

    .line 1455
    invoke-static {v5}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v0

    .line 1454
    move-object/from16 v10, p6

    invoke-static {v10, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1456
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1457
    return-object v1

    .line 1454
    :cond_0
    move-object/from16 v10, p6

    .line 1459
    :cond_1
    invoke-interface {v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v11

    move-object v1, p1

    .line 1460
    .end local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v1, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v11, "depth":I
    :goto_0
    invoke-static {v6, v11}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1461
    const-string/jumbo p1, "st"

    invoke-interface {v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1462
    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v7, p8

    move-wide/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readStateDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;ILcom/android/modules/utils/TypedXmlPullParser;ID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object p1

    .line 1464
    .local p1, "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    if-nez v1, :cond_2

    .line 1465
    move-object v0, p1

    move-object v1, v0

    .line 1467
    .end local p1    # "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_2
    move-object/from16 v6, p5

    goto :goto_0

    .line 1461
    :cond_3
    move-object/from16 v6, p5

    goto :goto_0

    .line 1469
    :cond_4
    return-object v1
.end method

.method private readHistoricalOpsLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[J)Ljava/util/List;
    .locals 21
    .param p1, "file"    # Ljava/io/File;
    .param p2, "filterUid"    # I
    .param p3, "filterPackageName"    # Ljava/lang/String;
    .param p4, "filterAttributionTag"    # Ljava/lang/String;
    .param p5, "filterOpNames"    # [Ljava/lang/String;
    .param p6, "filter"    # I
    .param p7, "filterBeginTimeMillis"    # J
    .param p9, "filterEndTimeMillis"    # J
    .param p11, "filterFlags"    # I
    .param p12, "cumulativeOverflowMillis"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "IJJI[J)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1274
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1275
    .local v2, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 1276
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v3}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    move-object v5, v0

    .line 1277
    .local v5, "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    const-string/jumbo v0, "history"

    invoke-static {v5, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1281
    const-string/jumbo v0, "ver"

    const/4 v4, 0x0

    invoke-interface {v5, v4, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1282
    .local v0, "version":I
    const/4 v6, 0x2

    if-lt v0, v6, :cond_6

    .line 1287
    const-string/jumbo v6, "ov"

    const-wide/16 v7, 0x0

    invoke-interface {v5, v4, v6, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    move-wide/from16 v17, v6

    .line 1288
    .local v17, "overflowMillis":J
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    .line 1289
    .local v4, "depth":I
    :goto_0
    invoke-static {v5, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1290
    const-string/jumbo v6, "ops"

    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1291
    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-wide/from16 v11, p7

    move-wide/from16 v13, p9

    move/from16 v15, p11

    move-object/from16 v16, p12

    move/from16 v19, v4

    move-object/from16 v4, p0

    .end local v4    # "depth":I
    .local v19, "depth":I
    invoke-direct/range {v4 .. v16}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readeHistoricalOpsDLocked(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v20

    move-object/from16 v4, v20

    .line 1295
    .local v4, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    if-nez v4, :cond_0

    .line 1296
    goto :goto_1

    .line 1298
    :cond_0
    invoke-virtual {v4}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1299
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1300
    goto :goto_1

    .line 1275
    .end local v0    # "version":I
    .end local v4    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v5    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v17    # "overflowMillis":J
    .end local v19    # "depth":I
    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, v0

    goto :goto_2

    .line 1302
    .restart local v0    # "version":I
    .restart local v4    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v5    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .restart local v17    # "overflowMillis":J
    .restart local v19    # "depth":I
    :cond_1
    if-nez v2, :cond_2

    .line 1303
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v6

    .line 1305
    :cond_2
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1306
    move/from16 v4, v19

    .end local v4    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    goto :goto_0

    .line 1290
    .end local v19    # "depth":I
    .local v4, "depth":I
    :cond_3
    move/from16 v19, v4

    .line 1289
    .end local v4    # "depth":I
    .restart local v19    # "depth":I
    :goto_1
    move/from16 v4, v19

    goto :goto_0

    .line 1308
    .end local v19    # "depth":I
    .restart local v4    # "depth":I
    :cond_4
    move/from16 v19, v4

    .end local v4    # "depth":I
    .restart local v19    # "depth":I
    if-eqz p12, :cond_5

    .line 1309
    const/4 v4, 0x0

    aget-wide v6, p12, v4

    add-long v6, v6, v17

    aput-wide v6, p12, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1311
    .end local v0    # "version":I
    .end local v5    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v17    # "overflowMillis":J
    .end local v19    # "depth":I
    :cond_5
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1314
    .end local v3    # "stream":Ljava/io/FileInputStream;
    nop

    .line 1322
    return-object v2

    .line 1311
    :catch_0
    move-exception v0

    goto :goto_4

    .line 1283
    .restart local v0    # "version":I
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    :cond_6
    :try_start_3
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dropping unsupported history version 1 for file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;
    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "filterUid":I
    .end local p3    # "filterPackageName":Ljava/lang/String;
    .end local p4    # "filterAttributionTag":Ljava/lang/String;
    .end local p5    # "filterOpNames":[Ljava/lang/String;
    .end local p6    # "filter":I
    .end local p7    # "filterBeginTimeMillis":J
    .end local p9    # "filterEndTimeMillis":J
    .end local p11    # "filterFlags":I
    .end local p12    # "cumulativeOverflowMillis":[J
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1275
    .end local v0    # "version":I
    .end local v5    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    .local v4, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local p0    # "this":Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "filterUid":I
    .restart local p3    # "filterPackageName":Ljava/lang/String;
    .restart local p4    # "filterAttributionTag":Ljava/lang/String;
    .restart local p5    # "filterOpNames":[Ljava/lang/String;
    .restart local p6    # "filter":I
    .restart local p7    # "filterBeginTimeMillis":J
    .restart local p9    # "filterEndTimeMillis":J
    .restart local p11    # "filterFlags":I
    .restart local p12    # "cumulativeOverflowMillis":[J
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local p0    # "this":Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;
    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "filterUid":I
    .end local p3    # "filterPackageName":Ljava/lang/String;
    .end local p4    # "filterAttributionTag":Ljava/lang/String;
    .end local p5    # "filterOpNames":[Ljava/lang/String;
    .end local p6    # "filter":I
    .end local p7    # "filterBeginTimeMillis":J
    .end local p9    # "filterEndTimeMillis":J
    .end local p11    # "filterFlags":I
    .end local p12    # "cumulativeOverflowMillis":[J
    :goto_3
    throw v2
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1311
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local p0    # "this":Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "filterUid":I
    .restart local p3    # "filterPackageName":Ljava/lang/String;
    .restart local p4    # "filterAttributionTag":Ljava/lang/String;
    .restart local p5    # "filterOpNames":[Ljava/lang/String;
    .restart local p6    # "filter":I
    .restart local p7    # "filterBeginTimeMillis":J
    .restart local p9    # "filterEndTimeMillis":J
    .restart local p11    # "filterFlags":I
    .restart local p12    # "cumulativeOverflowMillis":[J
    :catch_1
    move-exception v0

    move-object v2, v4

    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v2    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :goto_4
    nop

    .line 1312
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No history file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private readHistoricalOpsLocked(Ljava/io/File;JJILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/List;
    .locals 17
    .param p1, "baseDir"    # Ljava/io/File;
    .param p2, "intervalBeginMillis"    # J
    .param p4, "intervalEndMillis"    # J
    .param p6, "filterUid"    # I
    .param p7, "filterPackageName"    # Ljava/lang/String;
    .param p8, "filterAttributionTag"    # Ljava/lang/String;
    .param p9, "filterOpNames"    # [Ljava/lang/String;
    .param p10, "filter"    # I
    .param p11, "filterBeginTimeMillis"    # J
    .param p13, "filterEndTimeMillis"    # J
    .param p15, "filterFlags"    # I
    .param p16, "cumulativeOverflowMillis"    # [J
    .param p17, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "JJI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "IJJI[JI",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1238
    .local p18, "historyFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v13, p18

    move-object/from16 v14, p1

    move/from16 v15, p17

    invoke-direct {v0, v14, v15}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v1

    .line 1239
    .local v1, "file":Ljava/io/File;
    if-eqz v13, :cond_0

    .line 1240
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1242
    :cond_0
    cmp-long v2, p11, p13

    if-gez v2, :cond_1

    cmp-long v2, p13, p2

    if-gez v2, :cond_2

    :cond_1
    goto :goto_3

    .line 1247
    :cond_2
    sub-long v2, p4, p2

    iget-wide v4, v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    div-long/2addr v2, v4

    add-long v2, p4, v2

    .line 1249
    if-eqz p16, :cond_3

    const/4 v4, 0x0

    aget-wide v4, p16, v4

    goto :goto_0

    :cond_3
    const-wide/16 v4, 0x0

    :goto_0
    add-long/2addr v2, v4

    cmp-long v2, p11, v2

    if-gez v2, :cond_5

    .line 1250
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 1259
    :cond_4
    move/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move/from16 v6, p10

    move-wide/from16 v7, p11

    move-wide/from16 v9, p13

    move/from16 v11, p15

    move-object/from16 v12, p16

    invoke-direct/range {v0 .. v12}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readHistoricalOpsLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[J)Ljava/util/List;

    move-result-object v16

    return-object v16

    .line 1251
    :cond_5
    :goto_1
    if-eqz v13, :cond_6

    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    goto :goto_2

    .line 1256
    :cond_7
    const/4 v0, 0x0

    return-object v0

    .line 1253
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1245
    :goto_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private readHistoricalPackageOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 13
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "uid"    # I
    .param p3, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p4, "filterPackageName"    # Ljava/lang/String;
    .param p5, "filterAttributionTag"    # Ljava/lang/String;
    .param p6, "filterOpNames"    # [Ljava/lang/String;
    .param p7, "filter"    # I
    .param p8, "filterFlags"    # I
    .param p9, "filterScale"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1402
    move-object/from16 v4, p3

    const-string/jumbo v0, "na"

    invoke-static {v4, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1403
    .local v3, "packageName":Ljava/lang/String;
    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_0

    move-object/from16 v11, p4

    invoke-virtual {v11, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1404
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1405
    const/4 v0, 0x0

    return-object v0

    .line 1403
    :cond_0
    move-object/from16 v11, p4

    .line 1407
    :cond_1
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v12

    move-object v1, p1

    .line 1408
    .end local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v1, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v12, "depth":I
    :goto_0
    invoke-static {v4, v12}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1409
    const-string/jumbo p1, "ftr"

    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1410
    move-object v0, p0

    move v2, p2

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readHistoricalAttributionOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object p1

    .line 1413
    .local p1, "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    if-nez v1, :cond_2

    .line 1414
    move-object v0, p1

    move-object v1, v0

    .line 1416
    .end local p1    # "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_2
    move-object/from16 v4, p3

    goto :goto_0

    .line 1409
    :cond_3
    move-object/from16 v4, p3

    goto :goto_0

    .line 1418
    :cond_4
    return-object v1
.end method

.method private readHistoricalUidOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 13
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p3, "filterUid"    # I
    .param p4, "filterPackageName"    # Ljava/lang/String;
    .param p5, "filterAttributionTag"    # Ljava/lang/String;
    .param p6, "filterOpNames"    # [Ljava/lang/String;
    .param p7, "filter"    # I
    .param p8, "filterFlags"    # I
    .param p9, "filterScale"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1377
    const-string/jumbo v0, "na"

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1378
    .local v2, "uid":I
    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_0

    move/from16 v11, p3

    if-eq v11, v2, :cond_1

    .line 1379
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1380
    return-object v1

    .line 1378
    :cond_0
    move/from16 v11, p3

    .line 1382
    :cond_1
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v12

    move-object v1, p1

    .line 1383
    .end local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v1, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v12, "depth":I
    :cond_2
    :goto_0
    invoke-static {p2, v12}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1384
    const-string/jumbo p1, "pkg"

    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1385
    move-object v0, p0

    move-object v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readHistoricalPackageOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object p1

    .line 1388
    .local p1, "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    if-nez v1, :cond_3

    .line 1389
    move-object v0, p1

    move-object v1, v0

    .line 1391
    .end local p1    # "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_3
    goto :goto_0

    .line 1393
    :cond_4
    return-object v1
.end method

.method private readStateDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;ILcom/android/modules/utils/TypedXmlPullParser;ID)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 20
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "op"    # I
    .param p6, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p7, "filterFlags"    # I
    .param p8, "filterScale"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1476
    move-object/from16 v0, p6

    const-string/jumbo v1, "na"

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    .line 1477
    .local v3, "key":J
    invoke-static {v3, v4}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v1

    and-int v11, v1, p7

    .line 1478
    .local v11, "flags":I
    if-nez v11, :cond_0

    .line 1479
    return-object v2

    .line 1481
    :cond_0
    invoke-static {v3, v4}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v10

    .line 1482
    .local v10, "uidState":I
    const-string v1, "ac"

    const-wide/16 v14, 0x0

    invoke-interface {v0, v2, v1, v14, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    .line 1483
    .local v5, "accessCount":J
    cmp-long v1, v5, v14

    if-lez v1, :cond_3

    .line 1484
    invoke-static/range {p8 .. p9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1485
    long-to-double v7, v5

    mul-double v7, v7, p8

    invoke-static {v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    move-result-wide v7

    double-to-long v5, v7

    move-wide v12, v5

    goto :goto_0

    .line 1484
    :cond_1
    move-wide v12, v5

    .line 1488
    .end local v5    # "accessCount":J
    .local v12, "accessCount":J
    :goto_0
    if-nez p1, :cond_2

    .line 1489
    new-instance v1, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v1, v14, v15, v14, v15}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    move-object v5, v1

    .end local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v1, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    goto :goto_1

    .line 1488
    .end local v1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_2
    move-object/from16 v5, p1

    .line 1491
    .end local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v5, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :goto_1
    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v6, p5

    invoke-virtual/range {v5 .. v13}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    move-wide/from16 v16, v12

    goto :goto_2

    .line 1483
    .end local v12    # "accessCount":J
    .local v5, "accessCount":J
    .restart local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_3
    move-wide/from16 v16, v5

    move-object/from16 v5, p1

    .line 1494
    .end local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v5, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v16, "accessCount":J
    :goto_2
    const-string/jumbo v1, "rc"

    invoke-interface {v0, v2, v1, v14, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    .line 1495
    .local v6, "rejectCount":J
    cmp-long v1, v6, v14

    if-lez v1, :cond_6

    .line 1496
    invoke-static/range {p8 .. p9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1497
    long-to-double v8, v6

    mul-double v8, v8, p8

    invoke-static {v8, v9}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    move-result-wide v8

    double-to-long v6, v8

    move-wide v12, v6

    goto :goto_3

    .line 1496
    :cond_4
    move-wide v12, v6

    .line 1500
    .end local v6    # "rejectCount":J
    .local v12, "rejectCount":J
    :goto_3
    if-nez v5, :cond_5

    .line 1501
    new-instance v1, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v1, v14, v15, v14, v15}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    move-object v5, v1

    .line 1503
    :cond_5
    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v6, p5

    invoke-virtual/range {v5 .. v13}, Landroid/app/AppOpsManager$HistoricalOps;->increaseRejectCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    move-wide/from16 v18, v12

    goto :goto_4

    .line 1495
    .end local v12    # "rejectCount":J
    .restart local v6    # "rejectCount":J
    :cond_6
    move-wide/from16 v18, v6

    .line 1506
    .end local v6    # "rejectCount":J
    .local v18, "rejectCount":J
    :goto_4
    const-string v1, "du"

    invoke-interface {v0, v2, v1, v14, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    .line 1507
    .local v1, "accessDuration":J
    cmp-long v6, v1, v14

    if-lez v6, :cond_9

    .line 1508
    invoke-static/range {p8 .. p9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1509
    long-to-double v6, v1

    mul-double v6, v6, p8

    invoke-static {v6, v7}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    move-result-wide v6

    double-to-long v1, v6

    move-wide v12, v1

    goto :goto_5

    .line 1508
    :cond_7
    move-wide v12, v1

    .line 1512
    .end local v1    # "accessDuration":J
    .local v12, "accessDuration":J
    :goto_5
    if-nez v5, :cond_8

    .line 1513
    new-instance v1, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v1, v14, v15, v14, v15}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    move-object v5, v1

    .line 1515
    :cond_8
    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v6, p5

    invoke-virtual/range {v5 .. v13}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessDuration(IILjava/lang/String;Ljava/lang/String;IIJ)V

    move-wide v1, v12

    .line 1518
    .end local v12    # "accessDuration":J
    .restart local v1    # "accessDuration":J
    :cond_9
    return-object v5
.end method

.method private readeHistoricalOpsDLocked(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[J)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 21
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p2, "filterUid"    # I
    .param p3, "filterPackageName"    # Ljava/lang/String;
    .param p4, "filterAttributionTag"    # Ljava/lang/String;
    .param p5, "filterOpNames"    # [Ljava/lang/String;
    .param p6, "filter"    # I
    .param p7, "filterBeginTimeMillis"    # J
    .param p9, "filterEndTimeMillis"    # J
    .param p11, "filterFlags"    # I
    .param p12, "cumulativeOverflowMillis"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1333
    move-object/from16 v2, p1

    move-wide/from16 v11, p7

    move-wide/from16 v13, p9

    const/4 v0, 0x0

    const-string v1, "beg"

    const-wide/16 v3, 0x0

    invoke-interface {v2, v0, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    .line 1334
    const/4 v1, 0x0

    if-eqz p12, :cond_0

    aget-wide v7, p12, v1

    goto :goto_0

    :cond_0
    move-wide v7, v3

    :goto_0
    add-long/2addr v5, v7

    .line 1335
    .local v5, "beginTimeMillis":J
    const-string v7, "end"

    invoke-interface {v2, v0, v7, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v7

    .line 1336
    if-eqz p12, :cond_1

    aget-wide v9, p12, v1

    goto :goto_1

    :cond_1
    move-wide v9, v3

    :goto_1
    add-long/2addr v7, v9

    .line 1338
    .local v7, "endTimeMillis":J
    cmp-long v1, v13, v5

    if-gez v1, :cond_2

    .line 1339
    return-object v0

    .line 1342
    :cond_2
    cmp-long v0, v11, v7

    if-lez v0, :cond_3

    .line 1343
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v0, v3, v4, v3, v4}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    return-object v0

    .line 1345
    :cond_3
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1346
    .local v0, "filteredBeginTimeMillis":J
    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 1351
    .local v3, "filteredEndTimeMillis":J
    sub-long v9, v3, v0

    long-to-double v9, v9

    move-wide v15, v0

    .end local v0    # "filteredBeginTimeMillis":J
    .local v15, "filteredBeginTimeMillis":J
    sub-long v0, v7, v5

    long-to-double v0, v0

    div-double/2addr v9, v0

    .line 1353
    .local v9, "filterScale":D
    const/4 v0, 0x0

    .line 1354
    .local v0, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 1355
    .local v1, "depth":I
    :goto_2
    invoke-static {v2, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1356
    move-object/from16 v17, v0

    .end local v0    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v17, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    const-string/jumbo v0, "uid"

    move/from16 v18, v1

    .end local v1    # "depth":I
    .local v18, "depth":I
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1357
    move-object/from16 v0, p0

    move-wide v13, v3

    move-wide v11, v15

    move-object/from16 v1, v17

    move/from16 v19, v18

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-wide v15, v5

    move-wide/from16 v17, v7

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p11

    .end local v3    # "filteredEndTimeMillis":J
    .end local v5    # "beginTimeMillis":J
    .end local v7    # "endTimeMillis":J
    .end local v18    # "depth":I
    .local v1, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v11, "filteredBeginTimeMillis":J
    .local v13, "filteredEndTimeMillis":J
    .local v15, "beginTimeMillis":J
    .local v17, "endTimeMillis":J
    .local v19, "depth":I
    invoke-direct/range {v0 .. v10}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readHistoricalUidOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v20

    .line 1360
    .local v20, "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    if-nez v1, :cond_4

    .line 1361
    move-object/from16 v0, v20

    .end local v1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v0    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    goto :goto_3

    .line 1360
    .end local v0    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_4
    move-object v0, v1

    .line 1363
    .end local v1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v20    # "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v0    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :goto_3
    move-object/from16 v2, p1

    move-wide v3, v13

    move-wide v5, v15

    move-wide/from16 v7, v17

    move/from16 v1, v19

    move-wide/from16 v13, p9

    move-wide v15, v11

    move-wide/from16 v11, p7

    goto :goto_2

    .line 1356
    .end local v0    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v11    # "filteredBeginTimeMillis":J
    .end local v13    # "filteredEndTimeMillis":J
    .end local v19    # "depth":I
    .restart local v3    # "filteredEndTimeMillis":J
    .restart local v5    # "beginTimeMillis":J
    .restart local v7    # "endTimeMillis":J
    .local v15, "filteredBeginTimeMillis":J
    .local v17, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v18    # "depth":I
    :cond_5
    move-wide v13, v3

    move-wide v11, v15

    move-object/from16 v1, v17

    move/from16 v19, v18

    move-wide v15, v5

    move-wide/from16 v17, v7

    .end local v3    # "filteredEndTimeMillis":J
    .end local v5    # "beginTimeMillis":J
    .end local v7    # "endTimeMillis":J
    .end local v18    # "depth":I
    .restart local v1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v11    # "filteredBeginTimeMillis":J
    .restart local v13    # "filteredEndTimeMillis":J
    .local v15, "beginTimeMillis":J
    .local v17, "endTimeMillis":J
    .restart local v19    # "depth":I
    move-object/from16 v2, p1

    move-object v0, v1

    move/from16 v1, v19

    move-wide/from16 v13, p9

    move-wide v15, v11

    move-wide/from16 v11, p7

    goto :goto_2

    .line 1365
    .end local v11    # "filteredBeginTimeMillis":J
    .end local v13    # "filteredEndTimeMillis":J
    .end local v17    # "endTimeMillis":J
    .end local v19    # "depth":I
    .restart local v0    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v1, "depth":I
    .restart local v3    # "filteredEndTimeMillis":J
    .restart local v5    # "beginTimeMillis":J
    .restart local v7    # "endTimeMillis":J
    .local v15, "filteredBeginTimeMillis":J
    :cond_6
    move/from16 v19, v1

    move-wide v13, v3

    move-wide/from16 v17, v7

    move-wide v11, v15

    move-object v1, v0

    move-wide v15, v5

    .end local v0    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v3    # "filteredEndTimeMillis":J
    .end local v5    # "beginTimeMillis":J
    .end local v7    # "endTimeMillis":J
    .local v1, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v11    # "filteredBeginTimeMillis":J
    .restart local v13    # "filteredEndTimeMillis":J
    .local v15, "beginTimeMillis":J
    .restart local v17    # "endTimeMillis":J
    .restart local v19    # "depth":I
    if-eqz v1, :cond_7

    .line 1366
    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    .line 1368
    :cond_7
    return-object v1
.end method

.method private static spliceFromBeginning(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 1
    .param p0, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p1, "spliceRatio"    # D

    .line 1699
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->spliceFromBeginning(D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 1703
    .local v0, "splice":Landroid/app/AppOpsManager$HistoricalOps;
    return-object v0
.end method

.method private static spliceFromEnd(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 1
    .param p0, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p1, "spliceRatio"    # D

    .line 1686
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->spliceFromEnd(D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 1690
    .local v0, "splice":Landroid/app/AppOpsManager$HistoricalOps;
    return-object v0
.end method

.method private writeHistoricalAttributionOpsDLocked(Landroid/app/AppOpsManager$AttributedHistoricalOps;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 5
    .param p1, "attributionOps"    # Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .param p2, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1590
    const/4 v0, 0x0

    const-string/jumbo v1, "ftr"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1591
    invoke-virtual {p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "na"

    invoke-static {p2, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1592
    invoke-virtual {p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v2

    .line 1593
    .local v2, "opCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1594
    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v4

    .line 1595
    .local v4, "op":Landroid/app/AppOpsManager$HistoricalOp;
    invoke-direct {p0, v4, p2}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOp;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1593
    .end local v4    # "op":Landroid/app/AppOpsManager$HistoricalOp;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1597
    .end local v3    # "i":I
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1598
    return-void
.end method

.method private writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOp;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 7
    .param p1, "op"    # Landroid/app/AppOpsManager$HistoricalOp;
    .param p2, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1602
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOp;->collectKeys()Landroid/util/LongSparseArray;

    move-result-object v0

    .line 1603
    .local v0, "keys":Landroid/util/LongSparseArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    goto :goto_1

    .line 1606
    :cond_1
    const/4 v1, 0x0

    const-string/jumbo v2, "op"

    invoke-interface {p2, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1607
    const-string/jumbo v3, "na"

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v4

    invoke-interface {p2, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1608
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    .line 1609
    .local v3, "keyCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 1610
    invoke-virtual {v0, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    invoke-direct {p0, p1, v5, v6, p2}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->writeStateOnLocked(Landroid/app/AppOpsManager$HistoricalOp;JLcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1609
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 1612
    .end local v4    # "i":I
    invoke-interface {p2, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1613
    return-void

    .line 1604
    .end local v3    # "keyCount":I
    :goto_1
    return-void
.end method

.method private writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 5
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1552
    const/4 v0, 0x0

    const-string/jumbo v1, "ops"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1553
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v2

    const-string v4, "beg"

    invoke-interface {p2, v0, v4, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1554
    const-string v2, "end"

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v3

    invoke-interface {p2, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1555
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v2

    .line 1556
    .local v2, "uidCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1557
    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v4

    .line 1558
    .local v4, "uidOp":Landroid/app/AppOpsManager$HistoricalUidOps;
    invoke-direct {p0, v4, p2}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->writeHistoricalUidOpsDLocked(Landroid/app/AppOpsManager$HistoricalUidOps;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1556
    .end local v4    # "uidOp":Landroid/app/AppOpsManager$HistoricalUidOps;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1560
    .end local v3    # "i":I
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1561
    return-void
.end method

.method private writeHistoricalOpsDLocked(Ljava/util/List;JLjava/io/File;)V
    .locals 7
    .param p2, "intervalOverflowMillis"    # J
    .param p4, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;J",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1523
    .local p1, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    const-string/jumbo v0, "history"

    sget-object v1, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v1, p4}, Lcom/android/internal/os/AtomicDirectory;->openWrite(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1525
    .local v1, "output":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v2

    .line 1526
    .local v2, "serializer":Lcom/android/modules/utils/TypedXmlSerializer;
    const-string/jumbo v3, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1528
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1529
    invoke-interface {v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1530
    const-string/jumbo v3, "ver"

    const/4 v5, 0x2

    invoke-interface {v2, v4, v3, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1531
    const-wide/16 v5, 0x0

    cmp-long v3, p2, v5

    if-eqz v3, :cond_0

    .line 1532
    const-string/jumbo v3, "ov"

    invoke-interface {v2, v4, v3, p2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 1544
    .end local v2    # "serializer":Lcom/android/modules/utils/TypedXmlSerializer;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1534
    .restart local v2    # "serializer":Lcom/android/modules/utils/TypedXmlSerializer;
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 1535
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1536
    .local v3, "opsCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_1

    .line 1537
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1538
    .local v6, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-direct {p0, v6, v2}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1536
    .end local v6    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1541
    .end local v3    # "opsCount":I
    .end local v5    # "i":I
    :cond_1
    invoke-interface {v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1542
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 1543
    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/AtomicDirectory;->closeWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1547
    .end local v2    # "serializer":Lcom/android/modules/utils/TypedXmlSerializer;
    nop

    .line 1548
    return-void

    .line 1544
    :goto_2
    nop

    .line 1545
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v2, v1}, Lcom/android/internal/os/AtomicDirectory;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1546
    throw v0
.end method

.method private writeHistoricalPackageOpsDLocked(Landroid/app/AppOpsManager$HistoricalPackageOps;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 5
    .param p1, "packageOps"    # Landroid/app/AppOpsManager$HistoricalPackageOps;
    .param p2, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1577
    const/4 v0, 0x0

    const-string/jumbo v1, "pkg"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1578
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "na"

    invoke-interface {p2, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1579
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v2

    .line 1580
    .local v2, "numAttributions":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1581
    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v4

    .line 1582
    .local v4, "op":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    invoke-direct {p0, v4, p2}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->writeHistoricalAttributionOpsDLocked(Landroid/app/AppOpsManager$AttributedHistoricalOps;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1580
    .end local v4    # "op":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1584
    .end local v3    # "i":I
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1585
    return-void
.end method

.method private writeHistoricalUidOpsDLocked(Landroid/app/AppOpsManager$HistoricalUidOps;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 5
    .param p1, "uidOps"    # Landroid/app/AppOpsManager$HistoricalUidOps;
    .param p2, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1565
    const/4 v0, 0x0

    const-string/jumbo v1, "uid"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1566
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v2

    const-string/jumbo v3, "na"

    invoke-interface {p2, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1567
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v2

    .line 1568
    .local v2, "packageCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1569
    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v4

    .line 1570
    .local v4, "packageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    invoke-direct {p0, v4, p2}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->writeHistoricalPackageOpsDLocked(Landroid/app/AppOpsManager$HistoricalPackageOps;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1568
    .end local v4    # "packageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1572
    .end local v3    # "i":I
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1573
    return-void
.end method

.method private writeStateOnLocked(Landroid/app/AppOpsManager$HistoricalOp;JLcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 17
    .param p1, "op"    # Landroid/app/AppOpsManager$HistoricalOp;
    .param p2, "key"    # J
    .param p4, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1617
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static/range {p2 .. p3}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v2

    .line 1618
    .local v2, "uidState":I
    invoke-static/range {p2 .. p3}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v3

    .line 1620
    .local v3, "flags":I
    invoke-virtual {v0, v2, v2, v3}, Landroid/app/AppOpsManager$HistoricalOp;->getAccessCount(III)J

    move-result-wide v4

    .line 1621
    .local v4, "accessCount":J
    invoke-virtual {v0, v2, v2, v3}, Landroid/app/AppOpsManager$HistoricalOp;->getRejectCount(III)J

    move-result-wide v6

    .line 1622
    .local v6, "rejectCount":J
    invoke-virtual {v0, v2, v2, v3}, Landroid/app/AppOpsManager$HistoricalOp;->getAccessDuration(III)J

    move-result-wide v8

    .line 1624
    .local v8, "accessDuration":J
    const-wide/16 v10, 0x0

    cmp-long v12, v4, v10

    if-gtz v12, :cond_0

    cmp-long v12, v6, v10

    if-gtz v12, :cond_0

    cmp-long v12, v8, v10

    if-gtz v12, :cond_0

    .line 1625
    return-void

    .line 1628
    :cond_0
    const/4 v12, 0x0

    const-string/jumbo v13, "st"

    invoke-interface {v1, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1629
    const-string/jumbo v14, "na"

    move-wide v15, v10

    move-wide/from16 v10, p2

    invoke-interface {v1, v12, v14, v10, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1630
    cmp-long v14, v4, v15

    if-lez v14, :cond_1

    .line 1631
    const-string v14, "ac"

    invoke-interface {v1, v12, v14, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1633
    :cond_1
    cmp-long v14, v6, v15

    if-lez v14, :cond_2

    .line 1634
    const-string/jumbo v14, "rc"

    invoke-interface {v1, v12, v14, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1636
    :cond_2
    cmp-long v14, v8, v15

    if-lez v14, :cond_3

    .line 1637
    const-string v14, "du"

    invoke-interface {v1, v12, v14, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1639
    :cond_3
    invoke-interface {v1, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1640
    return-void
.end method


# virtual methods
.method clearHistoryDLocked(ILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 878
    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readHistoryDLocked()Ljava/util/List;

    move-result-object v0

    .line 880
    .local v0, "historicalOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-nez v0, :cond_0

    .line 881
    return-void

    .line 884
    :cond_0
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 885
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v2, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->clearHistory(ILjava/lang/String;)V

    .line 884
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 888
    .end local v1    # "index":I
    invoke-static {}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->clearHistoryDLocked()V

    .line 890
    invoke-virtual {p0, v0}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->persistHistoricalOpsDLocked(Ljava/util/List;)V

    .line 891
    return-void
.end method

.method getLastPersistTimeMillisDLocked()J
    .locals 11

    .line 943
    const/4 v0, 0x0

    .line 945
    .local v0, "baseDir":Ljava/io/File;
    const-wide/16 v1, 0x0

    :try_start_0
    sget-object v3, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v3}, Lcom/android/internal/os/AtomicDirectory;->startRead()Ljava/io/File;

    move-result-object v3

    move-object v0, v3

    .line 946
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 947
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_5

    array-length v4, v3

    if-lez v4, :cond_5

    .line 948
    const/4 v4, 0x0

    .line 949
    .local v4, "shortestFile":Ljava/io/File;
    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v3, v6

    .line 950
    .local v7, "candidate":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 951
    .local v8, "candidateName":Ljava/lang/String;
    const-string v9, ".xml"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 952
    goto :goto_1

    .line 954
    :cond_0
    if-nez v4, :cond_1

    .line 955
    move-object v4, v7

    goto :goto_1

    .line 956
    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 957
    move-object v4, v7

    .line 949
    .end local v7    # "candidate":Ljava/io/File;
    .end local v8    # "candidateName":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 966
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "shortestFile":Ljava/io/File;
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 960
    .restart local v3    # "files":[Ljava/io/File;
    .restart local v4    # "shortestFile":Ljava/io/File;
    :cond_3
    if-nez v4, :cond_4

    .line 961
    return-wide v1

    .line 963
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    return-wide v1

    .line 965
    .end local v4    # "shortestFile":Ljava/io/File;
    :cond_5
    sget-object v4, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v4}, Lcom/android/internal/os/AtomicDirectory;->finishRead()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    .end local v3    # "files":[Ljava/io/File;
    goto :goto_3

    .line 966
    :goto_2
    nop

    .line 967
    .local v3, "e":Ljava/lang/Throwable;
    const-string v4, "Error reading historical app ops. Deleting history."

    invoke-static {v4, v3, v0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->-$$Nest$smwtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 968
    sget-object v4, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v4}, Lcom/android/internal/os/AtomicDirectory;->delete()V

    .line 970
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_3
    return-wide v1
.end method

.method persistHistoricalOpsDLocked(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .line 903
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :try_start_0
    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->startWrite()Ljava/io/File;

    move-result-object v0

    move-object v2, v0

    .line 904
    .local v2, "newBaseDir":Ljava/io/File;
    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->getBackupDirectory()Ljava/io/File;

    move-result-object v3

    .line 910
    .local v3, "oldBaseDir":Ljava/io/File;
    invoke-static {v3}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->getHistoricalFileNames(Ljava/io/File;)Ljava/util/Set;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 911
    .local v5, "oldFileNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    .end local p1    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v4, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V

    .line 916
    sget-object p1, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {p1}, Lcom/android/internal/os/AtomicDirectory;->finishWrite()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 920
    .end local v2    # "newBaseDir":Ljava/io/File;
    .end local v3    # "oldBaseDir":Ljava/io/File;
    .end local v5    # "oldFileNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_1

    .line 917
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v4    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local p1    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :catchall_1
    move-exception v0

    move-object v4, p1

    move-object p1, v0

    .line 918
    .restart local v4    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local p1, "t":Ljava/lang/Throwable;
    :goto_0
    const-string v0, "Failed to write historical app ops, restoring backup"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/server/appop/LegacyHistoricalRegistry;->-$$Nest$smwtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 919
    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->failWrite()V

    .line 921
    .end local p1    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method readHistoryDLocked()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .line 931
    invoke-virtual {p0}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->readHistoryRawDLocked()Ljava/util/List;

    move-result-object v0

    .line 933
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-eqz v0, :cond_0

    .line 934
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 935
    .local v1, "opCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 936
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    iget-wide v4, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    invoke-virtual {v3, v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 935
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 939
    .end local v1    # "opCount":I
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method readHistoryRawDLocked()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .line 924
    const-wide v8, 0x7fffffffffffffffL

    const/16 v10, 0x1f

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->collectHistoricalOpsBaseDLocked(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)Ljava/util/LinkedList;

    move-result-object v1

    return-object v1
.end method
