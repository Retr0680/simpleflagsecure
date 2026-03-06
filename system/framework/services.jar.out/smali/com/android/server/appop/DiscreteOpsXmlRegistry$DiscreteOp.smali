.class final Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;
.super Ljava/lang/Object;
.source "DiscreteOpsXmlRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/DiscreteOpsXmlRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DiscreteOp"
.end annotation


# instance fields
.field mDeviceAttributedOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$KIUzMWym-uYkJZD6G7D31bKzWj8(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;)J
    .locals 2

    .line 0
    invoke-static {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->lambda$deserialize$1(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$RBwqZ7tw9wvT2UiW_Baft6zOUaY(Ljava/lang/String;)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->lambda$getOrCreateDiscreteDeviceOp$0(Ljava/lang/String;)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mapplyToHistory(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;ILandroid/util/ArrayMap;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->applyToHistory(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;ILandroid/util/ArrayMap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdump(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfilter(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;JJILjava/lang/String;IILjava/lang/String;ILandroid/util/ArrayMap;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p11}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->filter(JJILjava/lang/String;IILjava/lang/String;ILandroid/util/ArrayMap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$moffsetHistory(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->offsetHistory(J)V

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1014
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    .line 1015
    return-void
.end method

.method private applyToHistory(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;ILandroid/util/ArrayMap;)V
    .locals 7
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

    .line 1071
    .local p5, "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;>;"
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    const-string v1, "default:0"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .end local p1    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "op":I
    .end local p5    # "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;>;"
    .local v2, "result":Landroid/app/AppOpsManager$HistoricalOps;
    .local v3, "uid":I
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "op":I
    .local v6, "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;>;"
    invoke-static/range {v1 .. v6}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->-$$Nest$mapplyToHistory(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;ILandroid/util/ArrayMap;)V

    goto :goto_0

    .line 1071
    .end local v2    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v3    # "uid":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "op":I
    .end local v6    # "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;>;"
    .restart local p1    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local p2    # "uid":I
    .restart local p3    # "packageName":Ljava/lang/String;
    .restart local p4    # "op":I
    .restart local p5    # "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;>;"
    :cond_0
    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .line 1075
    .end local p1    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "op":I
    .end local p5    # "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;>;"
    .restart local v2    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v3    # "uid":I
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "op":I
    .restart local v6    # "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;>;"
    :goto_0
    return-void
.end method

.method private dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p3, "date"    # Ljava/util/Date;
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "nDiscreteOps"    # I

    .line 1079
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1080
    .local v0, "nDevices":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1081
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1082
    const-string v2, "Device: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1083
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1084
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1085
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v8, p5

    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "sdf":Ljava/text/SimpleDateFormat;
    .end local p3    # "date":Ljava/util/Date;
    .end local p5    # "nDiscreteOps":I
    .local v4, "pw":Ljava/io/PrintWriter;
    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    .local v6, "date":Ljava/util/Date;
    .local v8, "nDiscreteOps":I
    invoke-static/range {v3 .. v8}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->-$$Nest$mdump(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V

    .line 1080
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4    # "pw":Ljava/io/PrintWriter;
    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v6    # "date":Ljava/util/Date;
    .end local v8    # "nDiscreteOps":I
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    .restart local p2    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local p3    # "date":Ljava/util/Date;
    .restart local p5    # "nDiscreteOps":I
    :cond_0
    nop

    .line 1088
    .end local v1    # "i":I
    return-void
.end method

.method private filter(JJILjava/lang/String;IILjava/lang/String;ILandroid/util/ArrayMap;)V
    .locals 16
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

    .line 1036
    .local p11, "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1037
    .local v1, "nDevices":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1038
    iget-object v3, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    invoke-static/range {v4 .. v15}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->-$$Nest$mfilter(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;JJILjava/lang/String;IILjava/lang/String;ILandroid/util/ArrayMap;)V

    .line 1041
    iget-object v3, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    invoke-virtual {v3}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1042
    iget-object v3, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1037
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 1045
    .end local v2    # "i":I
    return-void
.end method

.method private getOrCreateDiscreteDeviceOp(Ljava/lang/String;)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 1063
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    return-object v0
.end method

.method private static synthetic lambda$deserialize$1(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;)J
    .locals 2
    .param p0, "a"    # Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    .line 1142
    iget-wide v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    return-wide v0
.end method

.method private static synthetic lambda$getOrCreateDiscreteDeviceOp$0(Ljava/lang/String;)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;
    .locals 1
    .param p0, "k"    # Ljava/lang/String;

    .line 1063
    new-instance v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    invoke-direct {v0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;-><init>()V

    return-object v0
.end method

.method private offsetHistory(J)V
    .locals 3
    .param p1, "offset"    # J

    .line 1048
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1049
    .local v0, "nDevices":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1050
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    invoke-static {v2, p1, p2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->-$$Nest$moffsetHistory(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;J)V

    .line 1049
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1052
    .end local v1    # "i":I
    return-void
.end method


# virtual methods
.method addDiscreteAccess(Ljava/lang/String;Ljava/lang/String;IIJJII)V
    .locals 10
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "attributionTag"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "uidState"    # I
    .param p5, "accessTime"    # J
    .param p7, "accessDuration"    # J
    .param p9, "attributionFlags"    # I
    .param p10, "attributionChainId"    # I

    .line 1058
    invoke-direct/range {p0 .. p1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->getOrCreateDiscreteDeviceOp(Ljava/lang/String;)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    move-result-object v0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-wide v4, p5

    move-wide/from16 v6, p7

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->addDiscreteAccess(Ljava/lang/String;IIJJII)V

    .line 1060
    return-void
.end method

.method deserialize(Lcom/android/modules/utils/TypedXmlPullParser;J)V
    .locals 18
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p2, "beginTimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1099
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 1100
    .local v2, "outerDepth":I
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1101
    const-string v3, "a"

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1102
    const-string v3, "at"

    const/4 v4, 0x0

    invoke-interface {v1, v4, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1104
    .local v3, "attributionTag":Ljava/lang/String;
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    .line 1105
    .local v5, "innerDepth":I
    :goto_1
    invoke-static {v1, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1106
    const-string v6, "e"

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1107
    const-string/jumbo v6, "nt"

    invoke-interface {v1, v4, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 1108
    .local v8, "noteTime":J
    const-string/jumbo v6, "nd"

    const-wide/16 v10, -0x1

    invoke-interface {v1, v4, v6, v10, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v10

    .line 1110
    .local v10, "noteDuration":J
    const-string/jumbo v6, "us"

    invoke-interface {v1, v4, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 1111
    .local v12, "uidState":I
    const-string v6, "f"

    invoke-interface {v1, v4, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 1112
    .local v13, "opFlags":I
    const-string v6, "af"

    const/4 v7, 0x0

    invoke-interface {v1, v4, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v14

    .line 1114
    .local v14, "attributionFlags":I
    const-string v6, "ci"

    const/4 v7, -0x1

    invoke-interface {v1, v4, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v15

    .line 1116
    .local v15, "attributionChainId":I
    const-string v6, "di"

    invoke-interface {v1, v4, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1117
    .local v6, "deviceId":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 1118
    const-string v6, "default:0"

    .line 1120
    :cond_1
    add-long v16, v8, v10

    cmp-long v7, v16, p2

    if-gez v7, :cond_2

    .line 1121
    goto :goto_1

    .line 1124
    :cond_2
    invoke-direct {v0, v6}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->getOrCreateDiscreteDeviceOp(Ljava/lang/String;)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    move-result-object v7

    .line 1125
    .local v7, "deviceOps":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;
    nop

    .line 1126
    invoke-static {v7, v3}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->-$$Nest$mgetOrCreateDiscreteOpEventsList(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1127
    .local v4, "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    move-object/from16 v17, v7

    .end local v7    # "deviceOps":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;
    .local v17, "deviceOps":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;
    new-instance v7, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    invoke-direct/range {v7 .. v15}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;-><init>(JJIIII)V

    .line 1129
    .local v7, "event":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1130
    .end local v4    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    .end local v6    # "deviceId":Ljava/lang/String;
    .end local v7    # "event":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
    .end local v8    # "noteTime":J
    .end local v10    # "noteDuration":J
    .end local v12    # "uidState":I
    .end local v13    # "opFlags":I
    .end local v14    # "attributionFlags":I
    .end local v15    # "attributionChainId":I
    .end local v17    # "deviceOps":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;
    const/4 v4, 0x0

    goto :goto_1

    .line 1106
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 1105
    :cond_4
    nop

    .line 1132
    .end local v3    # "attributionTag":Ljava/lang/String;
    .end local v5    # "innerDepth":I
    goto/16 :goto_0

    .line 1135
    :cond_5
    iget-object v3, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1136
    .local v3, "nDeviceOps":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_7

    .line 1137
    iget-object v5, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    .line 1139
    .local v5, "deviceOp":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;
    iget-object v6, v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1140
    .local v6, "nAttrOps":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    if-ge v7, v6, :cond_6

    .line 1141
    iget-object v8, v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1142
    .local v8, "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    new-instance v9, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp$$ExternalSyntheticLambda1;

    invoke-direct {v9}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v9}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1140
    .end local v8    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;>;"
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    nop

    .line 1136
    .end local v5    # "deviceOp":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;
    .end local v6    # "nAttrOps":I
    .end local v7    # "j":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    nop

    .line 1145
    .end local v4    # "i":I
    return-void
.end method

.method isEmpty()Z
    .locals 1

    .line 1018
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method merge(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;)V
    .locals 5
    .param p1, "other"    # Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;

    .line 1022
    iget-object v0, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1023
    .local v0, "nDevices":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1024
    iget-object v2, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1025
    .local v2, "deviceId":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    .line 1026
    .local v3, "otherDeviceOps":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;
    invoke-direct {p0, v2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->getOrCreateDiscreteDeviceOp(Ljava/lang/String;)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->merge(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;)V

    .line 1023
    .end local v2    # "deviceId":Ljava/lang/String;
    .end local v3    # "otherDeviceOps":Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1028
    .end local v1    # "i":I
    return-void
.end method

.method serialize(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 4
    .param p1, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1091
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1092
    .local v0, "nDevices":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1093
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1094
    .local v2, "deviceId":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOp;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;->serialize(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;)V

    .line 1092
    .end local v2    # "deviceId":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1096
    .end local v1    # "i":I
    return-void
.end method
