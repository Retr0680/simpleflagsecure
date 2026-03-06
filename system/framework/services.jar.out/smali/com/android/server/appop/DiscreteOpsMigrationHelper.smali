.class public Lcom/android/server/appop/DiscreteOpsMigrationHelper;
.super Ljava/lang/Object;
.source "DiscreteOpsMigrationHelper.java"


# direct methods
.method public static synthetic $r8$lambda$19tSOZDLMLzIL5IqAUQI2hUj4lI(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/appop/DiscreteOpsMigrationHelper;->lambda$getSqlDiscreteOps$1(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RDOCngC1y_PoXkxyzmIO0-OO97w(Ljava/util/List;Ljava/lang/Integer;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/appop/DiscreteOpsMigrationHelper;->lambda$getSqlDiscreteOps$4(Ljava/util/List;Ljava/lang/Integer;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X2z3KoEf2FtHQFrKHbHiBpbkK7w(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/appop/DiscreteOpsMigrationHelper;->lambda$getSqlDiscreteOps$2(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZfpeygonAq8KDE2KwS-9vHEvN8c(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/android/server/appop/DiscreteOpsMigrationHelper;->lambda$getSqlDiscreteOps$0(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y8jVtD60r1BH-ULLfLoyYubJERU(Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/appop/DiscreteOpsMigrationHelper;->lambda$getSqlDiscreteOps$3(Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSqlDiscreteOps(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)Ljava/util/List;
    .locals 3
    .param p0, "discreteOps"    # Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "opEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    return-object v0

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 113
    return-object v0
.end method

.method private static getXmlDiscreteOps(Ljava/util/List;)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;",
            ">;)",
            "Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;"
        }
    .end annotation

    .line 62
    .local p0, "discreteOps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    new-instance v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;-><init>(I)V

    move-object v2, v0

    .line 64
    .local v2, "xmlOps":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    return-object v2

    .line 68
    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 69
    .local v1, "discreteOp":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    invoke-virtual {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getOpCode()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getUid()I

    move-result v4

    .line 70
    invoke-virtual {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    .line 71
    invoke-virtual {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getOpFlags()I

    move-result v8

    .line 72
    invoke-virtual {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getUidState()I

    move-result v9

    .line 73
    invoke-virtual {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getAccessTime()J

    move-result-wide v10

    invoke-virtual {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getDuration()J

    move-result-wide v12

    .line 74
    invoke-virtual {v1}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getAttributionFlags()I

    move-result v14

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .end local v1    # "discreteOp":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    .local v17, "discreteOp":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getChainId()J

    move-result-wide v0

    long-to-int v15, v0

    .line 69
    invoke-virtual/range {v2 .. v15}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->addDiscreteAccess(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJII)V

    .line 75
    .end local v17    # "discreteOp":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    move-object/from16 v0, v16

    goto :goto_0

    .line 76
    :cond_1
    return-object v2
.end method

.method private static synthetic lambda$getSqlDiscreteOps$0(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 17
    .param p0, "uid"    # Ljava/lang/Integer;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "opcode"    # Ljava/lang/Integer;
    .param p4, "opEvents"    # Ljava/util/List;
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "attributedOps"    # Ljava/util/List;

    .line 96
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    .line 98
    .local v1, "attributedOp":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    new-instance v2, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 100
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget v8, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mOpFlag:I

    iget v9, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    iget v10, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mUidState:I

    iget v4, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    int-to-long v11, v4

    iget-wide v13, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    iget-wide v4, v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteDuration:J

    move-object/from16 v6, p2

    move-wide v15, v4

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    invoke-direct/range {v2 .. v16}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIJJJ)V

    .line 105
    .local v2, "opModel":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    move-object/from16 v3, p4

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .end local v1    # "attributedOp":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    .end local v2    # "opModel":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    goto :goto_0

    .line 107
    :cond_0
    move-object/from16 v3, p4

    return-void
.end method

.method private static synthetic lambda$getSqlDiscreteOps$1(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;)V
    .locals 7
    .param p0, "uid"    # Ljava/lang/Integer;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "opcode"    # Ljava/lang/Integer;
    .param p3, "opEvents"    # Ljava/util/List;
    .param p4, "deviceId"    # Ljava/lang/String;
    .param p5, "deviceOps"    # Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    .line 94
    iget-object v0, p5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v4, p4

    .end local p0    # "uid":Ljava/lang/Integer;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "opcode":Ljava/lang/Integer;
    .end local p3    # "opEvents":Ljava/util/List;
    .end local p4    # "deviceId":Ljava/lang/String;
    .local v2, "uid":Ljava/lang/Integer;
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "deviceId":Ljava/lang/String;
    .local v5, "opcode":Ljava/lang/Integer;
    .local v6, "opEvents":Ljava/util/List;
    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 108
    return-void
.end method

.method private static synthetic lambda$getSqlDiscreteOps$2(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;)V
    .locals 2
    .param p0, "uid"    # Ljava/lang/Integer;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "opEvents"    # Ljava/util/List;
    .param p3, "opcode"    # Ljava/lang/Integer;
    .param p4, "ops"    # Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;

    .line 93
    iget-object v0, p4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 109
    return-void
.end method

.method private static synthetic lambda$getSqlDiscreteOps$3(Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;)V
    .locals 2
    .param p0, "uid"    # Ljava/lang/Integer;
    .param p1, "opEvents"    # Ljava/util/List;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "packageOps"    # Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    .line 92
    iget-object v0, p3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 110
    return-void
.end method

.method private static synthetic lambda$getSqlDiscreteOps$4(Ljava/util/List;Ljava/lang/Integer;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;)V
    .locals 2
    .param p0, "opEvents"    # Ljava/util/List;
    .param p1, "uid"    # Ljava/lang/Integer;
    .param p2, "discreteUidOps"    # Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;

    .line 91
    iget-object v0, p2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p0}, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Integer;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 111
    return-void
.end method

.method static migrateDiscreteOpsToSqlite(Lcom/android/server/appop/DiscreteOpsXmlRegistry;Lcom/android/server/appop/DiscreteOpsSqlRegistry;)V
    .locals 3
    .param p0, "xmlRegistry"    # Lcom/android/server/appop/DiscreteOpsXmlRegistry;
    .param p1, "sqlRegistry"    # Lcom/android/server/appop/DiscreteOpsSqlRegistry;

    .line 31
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->getAllDiscreteOps()Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    move-result-object v0

    .line 32
    .local v0, "xmlOps":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;
    invoke-static {v0}, Lcom/android/server/appop/DiscreteOpsMigrationHelper;->getSqlDiscreteOps(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)Ljava/util/List;

    move-result-object v1

    .line 33
    .local v1, "discreteOps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    iget v2, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;->mChainIdOffset:I

    invoke-virtual {p1, v1, v2}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->migrateXmlData(Ljava/util/List;I)V

    .line 34
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->deleteDiscreteOpsDir()V

    .line 35
    return-void
.end method

.method static migrateDiscreteOpsToXml(Lcom/android/server/appop/DiscreteOpsSqlRegistry;Lcom/android/server/appop/DiscreteOpsXmlRegistry;)V
    .locals 6
    .param p0, "sqlRegistry"    # Lcom/android/server/appop/DiscreteOpsSqlRegistry;
    .param p1, "xmlRegistry"    # Lcom/android/server/appop/DiscreteOpsXmlRegistry;

    .line 42
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->getAllDiscreteOps()Ljava/util/List;

    move-result-object v0

    .line 45
    .local v0, "sqlOps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v1, "filteredList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    .line 47
    .local v3, "opEvent":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    invoke-virtual {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getOpCode()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getOpFlags()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/appop/DiscreteOpsRegistry;->isDiscreteOp(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 48
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .end local v3    # "opEvent":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    :cond_0
    goto :goto_0

    .line 52
    :cond_1
    invoke-static {v1}, Lcom/android/server/appop/DiscreteOpsMigrationHelper;->getXmlDiscreteOps(Ljava/util/List;)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;

    move-result-object v2

    .line 53
    .local v2, "xmlOps":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;
    invoke-virtual {p1, v2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->migrateSqliteData(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOps;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsSqlRegistry;->deleteDatabase()V

    .line 55
    return-void
.end method
