.class final Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;
.super Ljava/lang/Object;
.source "DiscreteOpsXmlRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/DiscreteOpsXmlRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DiscreteDeviceOp"
.end annotation


# instance fields
.field mAttributedOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$82ZxdHWtqc58qAvslomzoHk9Yz8(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->lambda$getOrCreateDiscreteOpEventsList$0(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mapplyToHistory(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;ILandroid/util/ArrayMap;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->applyToHistory(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;ILandroid/util/ArrayMap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdump(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfilter(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;JJILjava/lang/String;IILjava/lang/String;ILandroid/util/ArrayMap;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p11}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->filter(JJILjava/lang/String;IILjava/lang/String;ILandroid/util/ArrayMap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetOrCreateDiscreteOpEventsList(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$moffsetHistory(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->offsetHistory(J)V

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1152
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 1153
    return-void
.end method

.method private applyToHistory(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;ILandroid/util/ArrayMap;)V
    .locals 19
    .param p1, "result"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "op"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;",
            ">;)V"
        }
    .end annotation

    .line 1246
    .local p5, "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1247
    .local v1, "nOps":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 1248
    iget-object v3, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    .line 1249
    .local v7, "tag":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1250
    .local v3, "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    .line 1251
    .local v10, "nEvents":I
    const/4 v4, 0x0

    move v11, v4

    .local v11, "j":I
    :goto_1
    if-ge v11, v10, :cond_3

    .line 1252
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    .line 1253
    .local v9, "event":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    const/4 v12, 0x0

    .line 1254
    .local v12, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    iget v4, v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 1255
    iget v4, v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v13, p5

    invoke-virtual {v13, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;

    .line 1256
    .local v4, "chain":Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1257
    move/from16 v6, p2

    move-object/from16 v5, p3

    move/from16 v8, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->isStart(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;)Z

    move-result v14

    move-object v5, v4

    move-object v4, v9

    .end local v9    # "event":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    .local v4, "event":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    .local v5, "chain":Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;
    if-eqz v14, :cond_2

    iget-object v6, v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    if-eqz v6, :cond_2

    .line 1259
    iget-object v6, v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    .line 1260
    .local v6, "proxyEvent":Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;
    new-instance v8, Landroid/app/AppOpsManager$OpEventProxyInfo;

    iget v9, v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mUid:I

    iget-object v14, v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mPkgName:Ljava/lang/String;

    iget-object v15, v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mAttributionTag:Ljava/lang/String;

    invoke-direct {v8, v9, v14, v15}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v12, v8

    move-object v15, v12

    goto :goto_3

    .line 1256
    .end local v5    # "chain":Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;
    .end local v6    # "proxyEvent":Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;
    .local v4, "chain":Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;
    .restart local v9    # "event":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    :cond_0
    move-object v5, v4

    move-object v4, v9

    .end local v9    # "event":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    .local v4, "event":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    .restart local v5    # "chain":Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;
    goto :goto_2

    .line 1254
    .end local v4    # "event":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    .end local v5    # "chain":Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;
    .restart local v9    # "event":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    :cond_1
    move-object/from16 v13, p5

    move-object v4, v9

    .line 1264
    .end local v9    # "event":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    .restart local v4    # "event":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    :cond_2
    :goto_2
    move-object v15, v12

    .end local v12    # "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    .local v15, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    :goto_3
    iget v9, v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mUidState:I

    move v5, v10

    .end local v10    # "nEvents":I
    .local v5, "nEvents":I
    iget v10, v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mOpFlag:I

    move/from16 v16, v1

    .end local v1    # "nOps":I
    .local v16, "nOps":I
    iget-wide v0, v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    .line 1265
    invoke-static {v0, v1}, Lcom/android/server/appop/DiscreteOpsRegistry;->discretizeTimeStamp(J)J

    move-result-wide v0

    move-wide/from16 v17, v0

    iget-wide v0, v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteDuration:J

    .line 1266
    invoke-static {v0, v1}, Lcom/android/server/appop/DiscreteOpsRegistry;->discretizeDuration(J)J

    move-result-wide v0

    .line 1264
    move/from16 v6, p2

    move-wide v13, v0

    move v0, v5

    move-object v8, v7

    move v1, v11

    move-wide/from16 v11, v17

    move-object/from16 v7, p3

    move/from16 v5, p4

    move-object/from16 v17, v4

    move-object/from16 v4, p1

    .end local v4    # "event":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    .end local v5    # "nEvents":I
    .end local v7    # "tag":Ljava/lang/String;
    .end local v11    # "j":I
    .local v0, "nEvents":I
    .local v1, "j":I
    .local v8, "tag":Ljava/lang/String;
    .local v17, "event":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    invoke-virtual/range {v4 .. v15}, Landroid/app/AppOpsManager$HistoricalOps;->addDiscreteAccess(IILjava/lang/String;Ljava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 1251
    move-object v7, v8

    .end local v8    # "tag":Ljava/lang/String;
    .end local v15    # "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    .end local v17    # "event":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    .restart local v7    # "tag":Ljava/lang/String;
    add-int/lit8 v11, v1, 0x1

    move v10, v0

    move/from16 v1, v16

    move-object/from16 v0, p0

    .end local v1    # "j":I
    .restart local v11    # "j":I
    goto :goto_1

    .end local v0    # "nEvents":I
    .end local v16    # "nOps":I
    .local v1, "nOps":I
    .restart local v10    # "nEvents":I
    :cond_3
    move/from16 v16, v1

    move v0, v10

    move v1, v11

    .line 1247
    .end local v1    # "nOps":I
    .end local v3    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    .end local v7    # "tag":Ljava/lang/String;
    .end local v10    # "nEvents":I
    .end local v11    # "j":I
    .restart local v16    # "nOps":I
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    goto/16 :goto_0

    .end local v16    # "nOps":I
    .restart local v1    # "nOps":I
    :cond_4
    nop

    .line 1269
    .end local v2    # "i":I
    return-void
.end method

.method private dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p3, "date"    # Ljava/util/Date;
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "nDiscreteOps"    # I

    .line 1273
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1274
    .local v0, "nAttributions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1275
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1276
    const-string v2, "Attribution: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1277
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1278
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1279
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1280
    .local v2, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1281
    .local v3, "nOps":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge p5, v5, :cond_0

    goto :goto_1

    :cond_0
    sub-int v5, v3, p5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1282
    .local v4, "first":I
    :goto_1
    move v5, v4

    .local v5, "j":I
    :goto_2
    if-ge v5, v3, :cond_1

    .line 1283
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, p1, p2, p3, v7}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->-$$Nest$mdump(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V

    .line 1282
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    nop

    .line 1274
    .end local v2    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    .end local v3    # "nOps":I
    .end local v4    # "first":I
    .end local v5    # "j":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 1286
    .end local v1    # "i":I
    return-void
.end method

.method private filter(JJILjava/lang/String;IILjava/lang/String;ILandroid/util/ArrayMap;)V
    .locals 17
    .param p1, "beginTimeMillis"    # J
    .param p3, "endTimeMillis"    # J
    .param p5, "filter"    # I
    .param p6, "attributionTagFilter"    # Ljava/lang/String;
    .param p7, "flagsFilter"    # I
    .param p8, "currentUid"    # I
    .param p9, "currentPkgName"    # Ljava/lang/String;
    .param p10, "currentOp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;",
            ">;)V"
        }
    .end annotation

    .line 1174
    .local p11, "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    and-int/lit8 v2, p5, 0x4

    if-eqz v2, :cond_0

    .line 1175
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1176
    .local v2, "attributedOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;>;"
    nop

    .line 1177
    invoke-direct {v0, v1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1176
    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    iput-object v2, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 1181
    .end local v2    # "attributedOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;>;"
    :cond_0
    iget-object v2, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1182
    .local v2, "nTags":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 1183
    iget-object v4, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1184
    .local v4, "tag":Ljava/lang/String;
    iget-object v5, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/util/List;

    .line 1185
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    iget-object v5, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 1186
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Ljava/lang/String;

    .line 1185
    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v16, p11

    invoke-static/range {v6 .. v16}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->-$$Nest$smfilterEventsList(Ljava/util/List;JJIILjava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;

    move-result-object v5

    .line 1188
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    iget-object v6, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1190
    iget-object v6, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1182
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 1193
    .end local v3    # "i":I
    return-void
.end method

.method private getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;",
            ">;"
        }
    .end annotation

    .line 1239
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static synthetic lambda$getOrCreateDiscreteOpEventsList$0(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "k"    # Ljava/lang/String;

    .line 1240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private offsetHistory(J)V
    .locals 16
    .param p1, "offset"    # J

    .line 1196
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1197
    .local v1, "nTags":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1198
    iget-object v3, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1200
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 1201
    .local v4, "n":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v4, :cond_0

    .line 1202
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    .line 1203
    .local v6, "event":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    new-instance v7, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget-wide v8, v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    sub-long v8, v8, p1

    iget-wide v10, v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteDuration:J

    iget v12, v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mUidState:I

    iget v13, v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mOpFlag:I

    iget v14, v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    iget v15, v6, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    invoke-direct/range {v7 .. v15}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;-><init>(JJIIII)V

    invoke-interface {v3, v5, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1201
    .end local v6    # "event":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    nop

    .line 1197
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    .end local v4    # "n":I
    .end local v5    # "j":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1208
    .end local v2    # "i":I
    return-void
.end method


# virtual methods
.method addDiscreteAccess(Ljava/lang/String;IIJJII)V
    .locals 13
    .param p1, "attributionTag"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "uidState"    # I
    .param p4, "accessTime"    # J
    .param p6, "accessDuration"    # J
    .param p8, "attributionFlags"    # I
    .param p9, "attributionChainId"    # I

    .line 1214
    invoke-direct/range {p0 .. p1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1217
    .local v0, "attributedOps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1218
    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_6

    .line 1219
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    .line 1220
    .local v2, "previousOp":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    iget-wide v3, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    invoke-static {v3, v4}, Lcom/android/server/appop/DiscreteOpsRegistry;->discretizeTimeStamp(J)J

    move-result-wide v3

    invoke-static/range {p4 .. p5}, Lcom/android/server/appop/DiscreteOpsRegistry;->discretizeTimeStamp(J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 1221
    move/from16 v9, p3

    move/from16 v11, p8

    move/from16 v12, p9

    goto :goto_4

    .line 1223
    :cond_0
    iget v3, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mOpFlag:I

    if-ne v3, p2, :cond_4

    iget v3, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mUidState:I

    move/from16 v9, p3

    if-ne v3, v9, :cond_3

    iget v3, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    move/from16 v11, p8

    if-ne v3, v11, :cond_2

    iget v3, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    move/from16 v12, p9

    if-ne v3, v12, :cond_5

    .line 1226
    invoke-static/range {p6 .. p7}, Lcom/android/server/appop/DiscreteOpsRegistry;->discretizeDuration(J)J

    move-result-wide v3

    iget-wide v5, v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteDuration:J

    invoke-static {v5, v6}, Lcom/android/server/appop/DiscreteOpsRegistry;->discretizeDuration(J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 1228
    goto :goto_4

    .line 1230
    :cond_1
    return-void

    .line 1223
    :cond_2
    :goto_1
    move/from16 v12, p9

    goto :goto_3

    :cond_3
    :goto_2
    move/from16 v11, p8

    goto :goto_1

    :cond_4
    move/from16 v9, p3

    goto :goto_2

    .line 1218
    .end local v2    # "previousOp":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_6
    move/from16 v9, p3

    move/from16 v11, p8

    move/from16 v12, p9

    .line 1234
    :goto_4
    new-instance v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    move v10, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    invoke-direct/range {v4 .. v12}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;-><init>(JJIIII)V

    invoke-interface {v0, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1236
    return-void
.end method

.method isEmpty()Z
    .locals 1

    .line 1156
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method merge(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;)V
    .locals 7
    .param p1, "other"    # Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    .line 1160
    iget-object v0, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1161
    .local v0, "nTags":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1162
    iget-object v2, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1163
    .local v2, "tag":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1164
    .local v3, "otherEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    invoke-direct {p0, v2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1165
    .local v4, "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    iget-object v5, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-static {v4, v3}, Lcom/android/server/appop/DiscreteOpsXmlRegistry;->-$$Nest$smstableListMerge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    .end local v2    # "tag":Ljava/lang/String;
    .end local v3    # "otherEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    .end local v4    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1167
    .end local v1    # "i":I
    return-void
.end method

.method serialize(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;)V
    .locals 10
    .param p1, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p2, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1289
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1290
    .local v0, "nAttributions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1291
    const/4 v2, 0x0

    const-string v3, "a"

    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1292
    iget-object v4, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1293
    .local v4, "tag":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1294
    const-string v5, "at"

    invoke-interface {p1, v2, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1296
    :cond_0
    iget-object v5, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1297
    .local v5, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 1298
    .local v6, "nOps":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v6, :cond_1

    .line 1299
    const-string v8, "e"

    invoke-interface {p1, v2, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1300
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    invoke-static {v9, p1, p2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->-$$Nest$mserialize(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;)V

    .line 1301
    invoke-interface {p1, v2, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1298
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 1303
    .end local v7    # "j":I
    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1290
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    .end local v6    # "nOps":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 1305
    .end local v1    # "i":I
    return-void
.end method
