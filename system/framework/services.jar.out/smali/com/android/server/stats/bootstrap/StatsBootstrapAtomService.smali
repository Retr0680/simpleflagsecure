.class public Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService;
.super Landroid/os/IStatsBootstrapAtomService$Stub;
.source "StatsBootstrapAtomService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService$Lifecycle;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "StatsBootstrapAtomService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/os/IStatsBootstrapAtomService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public reportBootstrapAtom(Landroid/os/StatsBootstrapAtom;)V
    .locals 16
    .param p1, "atom"    # Landroid/os/StatsBootstrapAtom;

    .line 40
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/StatsBootstrapAtom;->atomId:I

    const-string v2, "StatsBootstrapAtomService"

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    iget v1, v0, Landroid/os/StatsBootstrapAtom;->atomId:I

    const/16 v4, 0x2710

    if-lt v1, v4, :cond_1

    :cond_0
    goto/16 :goto_3

    .line 44
    :cond_1
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    iget v4, v0, Landroid/os/StatsBootstrapAtom;->atomId:I

    invoke-virtual {v1, v4}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 45
    .local v1, "builder":Landroid/util/StatsEvent$Builder;
    iget-object v4, v0, Landroid/os/StatsBootstrapAtom;->values:[Landroid/os/StatsBootstrapAtomValue;

    array-length v5, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_4

    aget-object v8, v4, v7

    .line 46
    .local v8, "atomValue":Landroid/os/StatsBootstrapAtomValue;
    iget-object v9, v8, Landroid/os/StatsBootstrapAtomValue;->value:Landroid/os/StatsBootstrapAtomValue$Primitive;

    .line 47
    .local v9, "value":Landroid/os/StatsBootstrapAtomValue$Primitive;
    invoke-virtual {v9}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getTag()I

    move-result v10

    const-string v11, "Unexpected value type "

    packed-switch v10, :pswitch_data_0

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getTag()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " when logging atom "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/os/StatsBootstrapAtom;->atomId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void

    .line 67
    :pswitch_0
    invoke-virtual {v9}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getStringArrayValue()[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/util/StatsEvent$Builder;->writeStringArray([Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 68
    goto :goto_1

    .line 64
    :pswitch_1
    invoke-virtual {v9}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getBytesValue()[B

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    .line 65
    goto :goto_1

    .line 61
    :pswitch_2
    invoke-virtual {v9}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getStringValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 62
    goto :goto_1

    .line 58
    :pswitch_3
    invoke-virtual {v9}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getFloatValue()F

    move-result v10

    invoke-virtual {v1, v10}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    .line 59
    goto :goto_1

    .line 55
    :pswitch_4
    invoke-virtual {v9}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getLongValue()J

    move-result-wide v12

    invoke-virtual {v1, v12, v13}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 56
    goto :goto_1

    .line 52
    :pswitch_5
    invoke-virtual {v9}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getIntValue()I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 53
    goto :goto_1

    .line 49
    :pswitch_6
    invoke-virtual {v9}, Landroid/os/StatsBootstrapAtomValue$Primitive;->getBoolValue()Z

    move-result v10

    invoke-virtual {v1, v10}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 50
    nop

    .line 75
    :goto_1
    iget-object v10, v8, Landroid/os/StatsBootstrapAtomValue;->annotations:[Landroid/os/StatsBootstrapAtomValue$Annotation;

    .line 76
    .local v10, "annotations":[Landroid/os/StatsBootstrapAtomValue$Annotation;
    iget-object v12, v8, Landroid/os/StatsBootstrapAtomValue;->annotations:[Landroid/os/StatsBootstrapAtomValue$Annotation;

    array-length v13, v12

    const/4 v14, 0x0

    :goto_2
    nop

    if-ge v14, v13, :cond_3

    aget-object v15, v12, v14

    .line 77
    .local v15, "annotation":Landroid/os/StatsBootstrapAtomValue$Annotation;
    iget-byte v6, v15, Landroid/os/StatsBootstrapAtomValue$Annotation;->id:B

    if-eq v6, v3, :cond_2

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected annotation ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v4, v15, Landroid/os/StatsBootstrapAtomValue$Annotation;->id:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", for atom "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/os/StatsBootstrapAtom;->atomId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": only UIDs are supported!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void

    .line 83
    :cond_2
    iget-object v6, v15, Landroid/os/StatsBootstrapAtomValue$Annotation;->value:Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;

    invoke-virtual {v6}, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->getTag()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Landroid/os/StatsBootstrapAtomValue$Annotation;->value:Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;

    invoke-virtual {v4}, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->getTag()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " when logging UID for atom "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/os/StatsBootstrapAtom;->atomId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void

    .line 85
    :pswitch_7
    iget-byte v6, v15, Landroid/os/StatsBootstrapAtomValue$Annotation;->id:B

    iget-object v3, v15, Landroid/os/StatsBootstrapAtomValue$Annotation;->value:Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;

    .line 86
    invoke-virtual {v3}, Landroid/os/StatsBootstrapAtomValue$Annotation$Primitive;->getBoolValue()Z

    move-result v3

    .line 85
    invoke-virtual {v1, v6, v3}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 87
    nop

    .line 76
    .end local v15    # "annotation":Landroid/os/StatsBootstrapAtomValue$Annotation;
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x1

    goto :goto_2

    .line 45
    .end local v8    # "atomValue":Landroid/os/StatsBootstrapAtomValue;
    .end local v9    # "value":Landroid/os/StatsBootstrapAtomValue$Primitive;
    .end local v10    # "annotations":[Landroid/os/StatsBootstrapAtomValue$Annotation;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x1

    goto/16 :goto_0

    .line 95
    :cond_4
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v2

    invoke-static {v2}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 96
    return-void

    .line 41
    .end local v1    # "builder":Landroid/util/StatsEvent$Builder;
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Atom ID "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/StatsBootstrapAtom;->atomId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not a valid atom ID"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method
