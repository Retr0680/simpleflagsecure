.class Lcom/android/server/appop/DiscreteOpsTestingShim;
.super Lcom/android/server/appop/DiscreteOpsRegistry;
.source "DiscreteOpsTestingShim.java"


# static fields
.field private static final FLAGS_MASK:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "DiscreteOpsTestingShim"


# instance fields
.field private final mSqlRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

.field private final mXmlRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/appop/DiscreteOpsRegistry;Lcom/android/server/appop/DiscreteOpsRegistry;)V
    .locals 0
    .param p1, "xmlRegistry"    # Lcom/android/server/appop/DiscreteOpsRegistry;
    .param p2, "sqlRegistry"    # Lcom/android/server/appop/DiscreteOpsRegistry;

    .line 43
    invoke-direct {p0}, Lcom/android/server/appop/DiscreteOpsRegistry;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsTestingShim;->mXmlRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    .line 45
    iput-object p2, p0, Lcom/android/server/appop/DiscreteOpsTestingShim;->mSqlRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    .line 46
    return-void
.end method

.method private assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "actual"    # Ljava/lang/Object;
    .param p2, "expected"    # Ljava/lang/Object;

    .line 200
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    return-void

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Actual ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") is not equal to expected ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static extractFlagsFromKey(J)I
    .locals 2
    .param p0, "key"    # J

    .line 196
    const-wide/16 v0, -0x1

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method addFilteredDiscreteOpsToHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V
    .locals 21
    .param p1, "result"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "beginTimeMillis"    # J
    .param p4, "endTimeMillis"    # J
    .param p6, "filter"    # I
    .param p7, "uidFilter"    # I
    .param p8, "packageNameFilter"    # Ljava/lang/String;
    .param p9, "opNamesFilter"    # [Ljava/lang/String;
    .param p10, "attributionTagFilter"    # Ljava/lang/String;
    .param p11, "flagsFilter"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            "JJII",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 97
    .local p12, "attributionExemptPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    const-string v2, "DiscreteOpsTestingShim"

    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps;

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    move-object v4, v0

    .line 100
    .local v4, "result2":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 101
    .local v16, "start":J
    iget-object v3, v1, Lcom/android/server/appop/DiscreteOpsTestingShim;->mXmlRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    move-object/from16 v15, p12

    invoke-virtual/range {v3 .. v15}, Lcom/android/server/appop/DiscreteOpsRegistry;->addFilteredDiscreteOpsToHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 105
    .local v18, "start2":J
    iget-object v3, v1, Lcom/android/server/appop/DiscreteOpsTestingShim;->mSqlRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    move-object/from16 v20, v2

    move-object v2, v4

    move-object/from16 v4, p1

    .end local v4    # "result2":Landroid/app/AppOpsManager$HistoricalOps;
    .local v2, "result2":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual/range {v3 .. v15}, Lcom/android/server/appop/DiscreteOpsRegistry;->addFilteredDiscreteOpsToHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 109
    .local v3, "end":J
    sub-long v5, v18, v16

    .line 110
    .local v5, "xmlTimeTaken":J
    sub-long v7, v3, v18

    .line 112
    .local v7, "sqlTimeTaken":J
    move-object/from16 v9, p1

    :try_start_0
    invoke-virtual {v1, v9, v2}, Lcom/android/server/appop/DiscreteOpsTestingShim;->assertHistoricalOpsAreEquals(Landroid/app/AppOpsManager$HistoricalOps;Landroid/app/AppOpsManager$HistoricalOps;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    move-object/from16 v11, v20

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "ex":Ljava/lang/Exception;
    const-string v10, "different output when reading discrete ops"

    move-object/from16 v11, v20

    invoke-static {v11, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Read: XML time taken : "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", SQL time taken : "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", diff (sql - xml): "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v12, v7, v5

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method assertHistoricalOpsAreEquals(Landroid/app/AppOpsManager$HistoricalOps;Landroid/app/AppOpsManager$HistoricalOps;)V
    .locals 32
    .param p1, "sqlResult"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "xmlResult"    # Landroid/app/AppOpsManager$HistoricalOps;

    .line 122
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/appop/DiscreteOpsTestingShim;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    invoke-virtual/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v1

    .line 125
    .local v1, "uidCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 126
    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v4

    .line 127
    .local v4, "sqlUidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    move-object/from16 v5, p2

    invoke-virtual {v5, v2}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v6

    .line 128
    .local v6, "xmlUidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sql uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", xml uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DiscreteOpsTestingShim"

    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {v4}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v0, v7, v9}, Lcom/android/server/appop/DiscreteOpsTestingShim;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    invoke-virtual {v4}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v0, v7, v9}, Lcom/android/server/appop/DiscreteOpsTestingShim;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    invoke-virtual {v4}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v7

    .line 133
    .local v7, "packageCount":I
    const/4 v9, 0x0

    .local v9, "p":I
    :goto_1
    if-ge v9, v7, :cond_4

    .line 134
    invoke-virtual {v4, v9}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v10

    .line 135
    .local v10, "sqlPackageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    invoke-virtual {v6, v9}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v11

    .line 136
    .local v11, "xmlPackageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "sql package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", xml package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v11}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 136
    invoke-static {v8, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {v10}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v12, v13}, Lcom/android/server/appop/DiscreteOpsTestingShim;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    invoke-virtual {v10}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 140
    invoke-virtual {v11}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 139
    invoke-direct {v0, v12, v13}, Lcom/android/server/appop/DiscreteOpsTestingShim;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    invoke-virtual {v10}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v12

    .line 143
    .local v12, "attrCount":I
    const/4 v13, 0x0

    .local v13, "a":I
    :goto_2
    if-ge v13, v12, :cond_3

    .line 144
    nop

    .line 145
    invoke-virtual {v10, v13}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v14

    .line 146
    .local v14, "sqlAttrOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    nop

    .line 147
    invoke-virtual {v11, v13}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v15

    .line 148
    .local v15, "xmlAttrOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    move/from16 v16, v1

    .end local v1    # "uidCount":I
    .local v16, "uidCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v2

    .end local v2    # "i":I
    .local v17, "i":I
    const-string/jumbo v2, "sql tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", xml tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v15}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-static {v8, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v14}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/appop/DiscreteOpsTestingShim;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    invoke-virtual {v14}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/appop/DiscreteOpsTestingShim;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    invoke-virtual {v14}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v1

    .line 154
    .local v1, "opCount":I
    const/4 v2, 0x0

    .local v2, "o":I
    :goto_3
    if-ge v2, v1, :cond_2

    .line 155
    move/from16 v18, v1

    .end local v1    # "opCount":I
    .local v18, "opCount":I
    invoke-virtual {v14, v2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v1

    .line 156
    .local v1, "sqlHistoricalOp":Landroid/app/AppOpsManager$HistoricalOp;
    invoke-virtual {v15, v2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v3

    .line 157
    .local v3, "xmlHistoricalOp":Landroid/app/AppOpsManager$HistoricalOp;
    move/from16 v19, v2

    .end local v2    # "o":I
    .local v19, "o":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v4

    .end local v4    # "sqlUidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    .local v20, "sqlUidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    const-string/jumbo v4, "sql op: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOp;->getOpName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", xml op: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOp;->getOpName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOp;->getOpName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOp;->getOpName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lcom/android/server/appop/DiscreteOpsTestingShim;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOp;->getDiscreteAccessCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 161
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOp;->getDiscreteAccessCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 160
    invoke-direct {v0, v2, v4}, Lcom/android/server/appop/DiscreteOpsTestingShim;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOp;->getDiscreteAccessCount()I

    move-result v2

    .line 164
    .local v2, "accessCount":I
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_4
    if-ge v4, v2, :cond_1

    .line 165
    nop

    .line 166
    move/from16 v21, v2

    .end local v2    # "accessCount":I
    .local v21, "accessCount":I
    invoke-virtual {v1, v4}, Landroid/app/AppOpsManager$HistoricalOp;->getDiscreteAccessAt(I)Landroid/app/AppOpsManager$AttributedOpEntry;

    move-result-object v2

    .line 167
    .local v2, "sqlOpEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    nop

    .line 168
    move-object/from16 v22, v1

    .end local v1    # "sqlHistoricalOp":Landroid/app/AppOpsManager$HistoricalOp;
    .local v22, "sqlHistoricalOp":Landroid/app/AppOpsManager$HistoricalOp;
    invoke-virtual {v3, v4}, Landroid/app/AppOpsManager$HistoricalOp;->getDiscreteAccessAt(I)Landroid/app/AppOpsManager$AttributedOpEntry;

    move-result-object v1

    .line 169
    .local v1, "xmlOpEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    move-object/from16 v23, v3

    .end local v3    # "xmlHistoricalOp":Landroid/app/AppOpsManager$HistoricalOp;
    .local v23, "xmlHistoricalOp":Landroid/app/AppOpsManager$HistoricalOp;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v4

    .end local v4    # "x":I
    .local v24, "x":I
    const-string/jumbo v4, "sql keys: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$AttributedOpEntry;->collectKeys()Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", xml keys: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v1}, Landroid/app/AppOpsManager$AttributedOpEntry;->collectKeys()Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-static {v8, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {v2}, Landroid/app/AppOpsManager$AttributedOpEntry;->collectKeys()Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/AppOpsManager$AttributedOpEntry;->collectKeys()Landroid/util/ArraySet;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/android/server/appop/DiscreteOpsTestingShim;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    invoke-virtual {v2}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/android/server/appop/DiscreteOpsTestingShim;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    invoke-virtual {v2}, Landroid/app/AppOpsManager$AttributedOpEntry;->collectKeys()Landroid/util/ArraySet;

    move-result-object v3

    .line 174
    .local v3, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    .line 175
    .local v4, "keyCount":I
    const/16 v25, 0x0

    move/from16 v5, v25

    .local v5, "k":I
    :goto_5
    if-ge v5, v4, :cond_0

    .line 176
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    .line 177
    .local v25, "key":J
    move-object/from16 v27, v3

    .end local v3    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v27, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-static/range {v25 .. v26}, Lcom/android/server/appop/DiscreteOpsTestingShim;->extractFlagsFromKey(J)I

    move-result v3

    .line 178
    .local v3, "flags":I
    invoke-virtual {v2, v3}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(I)J

    move-result-wide v28

    move/from16 v30, v4

    .end local v4    # "keyCount":I
    .local v30, "keyCount":I
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 179
    invoke-virtual {v1, v3}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(I)J

    move-result-wide v28

    move/from16 v31, v5

    .end local v5    # "k":I
    .local v31, "k":I
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 178
    invoke-direct {v0, v4, v5}, Lcom/android/server/appop/DiscreteOpsTestingShim;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    invoke-virtual {v2, v3}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v4

    .line 181
    invoke-virtual {v1, v3}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v5

    .line 180
    invoke-direct {v0, v4, v5}, Lcom/android/server/appop/DiscreteOpsTestingShim;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    invoke-virtual {v2, v3}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 183
    invoke-virtual {v1, v3}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 182
    invoke-direct {v0, v4, v5}, Lcom/android/server/appop/DiscreteOpsTestingShim;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    .end local v3    # "flags":I
    .end local v25    # "key":J
    add-int/lit8 v5, v31, 0x1

    move-object/from16 v3, v27

    move/from16 v4, v30

    .end local v31    # "k":I
    .restart local v5    # "k":I
    goto :goto_5

    .end local v27    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v30    # "keyCount":I
    .local v3, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v4    # "keyCount":I
    :cond_0
    move-object/from16 v27, v3

    move/from16 v30, v4

    move/from16 v31, v5

    .line 164
    .end local v1    # "xmlOpEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    .end local v2    # "sqlOpEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    .end local v3    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v4    # "keyCount":I
    .end local v5    # "k":I
    add-int/lit8 v4, v24, 0x1

    move-object/from16 v5, p2

    move/from16 v2, v21

    move-object/from16 v1, v22

    move-object/from16 v3, v23

    .end local v24    # "x":I
    .local v4, "x":I
    goto/16 :goto_4

    .end local v21    # "accessCount":I
    .end local v22    # "sqlHistoricalOp":Landroid/app/AppOpsManager$HistoricalOp;
    .end local v23    # "xmlHistoricalOp":Landroid/app/AppOpsManager$HistoricalOp;
    .local v1, "sqlHistoricalOp":Landroid/app/AppOpsManager$HistoricalOp;
    .local v2, "accessCount":I
    .local v3, "xmlHistoricalOp":Landroid/app/AppOpsManager$HistoricalOp;
    :cond_1
    move-object/from16 v22, v1

    move/from16 v21, v2

    move-object/from16 v23, v3

    move/from16 v24, v4

    .line 154
    .end local v1    # "sqlHistoricalOp":Landroid/app/AppOpsManager$HistoricalOp;
    .end local v2    # "accessCount":I
    .end local v3    # "xmlHistoricalOp":Landroid/app/AppOpsManager$HistoricalOp;
    .end local v4    # "x":I
    add-int/lit8 v2, v19, 0x1

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move/from16 v1, v18

    move-object/from16 v4, v20

    .end local v19    # "o":I
    .local v2, "o":I
    goto/16 :goto_3

    .end local v18    # "opCount":I
    .end local v20    # "sqlUidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    .local v1, "opCount":I
    .local v4, "sqlUidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    :cond_2
    move/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v20, v4

    .line 143
    .end local v1    # "opCount":I
    .end local v2    # "o":I
    .end local v4    # "sqlUidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    .end local v14    # "sqlAttrOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .end local v15    # "xmlAttrOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .restart local v20    # "sqlUidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_2

    .end local v16    # "uidCount":I
    .end local v17    # "i":I
    .end local v20    # "sqlUidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    .local v1, "uidCount":I
    .local v2, "i":I
    .restart local v4    # "sqlUidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    :cond_3
    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v20, v4

    .line 133
    .end local v1    # "uidCount":I
    .end local v2    # "i":I
    .end local v4    # "sqlUidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    .end local v10    # "sqlPackageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    .end local v11    # "xmlPackageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    .end local v12    # "attrCount":I
    .end local v13    # "a":I
    .restart local v16    # "uidCount":I
    .restart local v17    # "i":I
    .restart local v20    # "sqlUidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    goto/16 :goto_1

    .end local v16    # "uidCount":I
    .end local v17    # "i":I
    .end local v20    # "sqlUidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    .restart local v1    # "uidCount":I
    .restart local v2    # "i":I
    .restart local v4    # "sqlUidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    :cond_4
    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v20, v4

    .line 125
    .end local v1    # "uidCount":I
    .end local v2    # "i":I
    .end local v4    # "sqlUidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    .end local v6    # "xmlUidOps":Landroid/app/AppOpsManager$HistoricalUidOps;
    .end local v7    # "packageCount":I
    .end local v9    # "p":I
    .restart local v16    # "uidCount":I
    .restart local v17    # "i":I
    add-int/lit8 v2, v17, 0x1

    .end local v17    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_0

    .end local v16    # "uidCount":I
    .restart local v1    # "uidCount":I
    :cond_5
    nop

    .line 190
    .end local v2    # "i":I
    return-void
.end method

.method clearHistory()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsTestingShim;->mXmlRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/DiscreteOpsRegistry;->clearHistory()V

    .line 76
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsTestingShim;->mSqlRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/DiscreteOpsRegistry;->clearHistory()V

    .line 77
    return-void
.end method

.method clearHistory(ILjava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsTestingShim;->mXmlRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/appop/DiscreteOpsRegistry;->clearHistory(ILjava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsTestingShim;->mSqlRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/appop/DiscreteOpsRegistry;->clearHistory(ILjava/lang/String;)V

    .line 83
    return-void
.end method

.method dump(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;IILjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "uidFilter"    # I
    .param p3, "packageNameFilter"    # Ljava/lang/String;
    .param p4, "attributionTagFilter"    # Ljava/lang/String;
    .param p5, "filter"    # I
    .param p6, "dumpOp"    # I
    .param p7, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p8, "date"    # Ljava/util/Date;
    .param p9, "prefix"    # Ljava/lang/String;
    .param p10, "nDiscreteOps"    # I

    .line 211
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsTestingShim;->mXmlRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/DiscreteOpsRegistry;->dump(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;IILjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V

    .line 213
    const-string v0, "--------------------------------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsTestingShim;->mSqlRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/DiscreteOpsRegistry;->dump(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;IILjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V

    .line 217
    return-void
.end method

.method offsetHistory(J)V
    .locals 1
    .param p1, "offset"    # J

    .line 87
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsTestingShim;->mXmlRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/appop/DiscreteOpsRegistry;->offsetHistory(J)V

    .line 88
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsTestingShim;->mSqlRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/appop/DiscreteOpsRegistry;->offsetHistory(J)V

    .line 89
    return-void
.end method

.method recordDiscreteAccess(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJJII)V
    .locals 20
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "op"    # I
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "flags"    # I
    .param p7, "uidState"    # I
    .param p8, "accessTime"    # J
    .param p10, "accessDuration"    # J
    .param p12, "attributionFlags"    # I
    .param p13, "attributionChainId"    # I

    .line 52
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 53
    .local v1, "start":J
    iget-object v3, v0, Lcom/android/server/appop/DiscreteOpsTestingShim;->mXmlRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-wide/from16 v11, p8

    move-wide/from16 v13, p10

    move/from16 v15, p12

    move/from16 v16, p13

    invoke-virtual/range {v3 .. v16}, Lcom/android/server/appop/DiscreteOpsRegistry;->recordDiscreteAccess(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJJII)V

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 56
    .local v18, "start2":J
    iget-object v4, v0, Lcom/android/server/appop/DiscreteOpsTestingShim;->mSqlRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move/from16 v16, p12

    move/from16 v17, p13

    invoke-virtual/range {v4 .. v17}, Lcom/android/server/appop/DiscreteOpsRegistry;->recordDiscreteAccess(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJJII)V

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 59
    .local v3, "end":J
    sub-long v5, v18, v1

    .line 60
    .local v5, "xmlTimeTaken":J
    sub-long v7, v3, v18

    .line 61
    .local v7, "sqlTimeTaken":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "recordDiscreteAccess: XML time taken : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", SQL time taken : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", diff (sql - xml): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v10, v7, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "DiscreteOpsTestingShim"

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method writeAndClearOldAccessHistory()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsTestingShim;->mXmlRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/DiscreteOpsRegistry;->writeAndClearOldAccessHistory()V

    .line 70
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsTestingShim;->mSqlRegistry:Lcom/android/server/appop/DiscreteOpsRegistry;

    invoke-virtual {v0}, Lcom/android/server/appop/DiscreteOpsRegistry;->writeAndClearOldAccessHistory()V

    .line 71
    return-void
.end method
