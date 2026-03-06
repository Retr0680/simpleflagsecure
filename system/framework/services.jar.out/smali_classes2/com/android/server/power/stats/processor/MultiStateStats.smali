.class Lcom/android/server/power/stats/processor/MultiStateStats;
.super Ljava/lang/Object;
.source "MultiStateStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/processor/MultiStateStats$Factory;,
        Lcom/android/server/power/stats/processor/MultiStateStats$States;
    }
.end annotation


# static fields
.field public static final STATE_DOES_NOT_EXIST:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MultiStateStats"

.field private static final XML_TAG_STATS:Ljava/lang/String; = "stats"


# instance fields
.field private mCompositeState:I

.field private final mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

.field private final mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

.field private mTracking:Z


# direct methods
.method public static synthetic $r8$lambda$ezqcON2RlS29qz6G0aLoYDQdE4w(Lcom/android/server/power/stats/processor/MultiStateStats;[JLjava/lang/StringBuilder;[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/MultiStateStats;->lambda$toString$1([JLjava/lang/StringBuilder;[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gWef6G71JOA5KJFbpTLqAAxSIc4(Lcom/android/server/power/stats/processor/MultiStateStats;Lcom/android/modules/utils/TypedXmlSerializer;[J[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/MultiStateStats;->lambda$writeXml$0(Lcom/android/modules/utils/TypedXmlSerializer;[J[I)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/power/stats/processor/MultiStateStats$Factory;I)V
    .locals 2
    .param p1, "factory"    # Lcom/android/server/power/stats/processor/MultiStateStats$Factory;
    .param p2, "dimensionCount"    # I

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p1, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    .line 300
    new-instance v0, Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget v1, p1, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mSerialStateCount:I

    invoke-direct {v0, v1, p2}, Lcom/android/internal/os/LongArrayMultiStateCounter;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 301
    return-void
.end method

.method private synthetic lambda$toString$1([JLjava/lang/StringBuilder;[I)V
    .locals 4
    .param p1, "values"    # [J
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "states"    # [I

    .line 468
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    invoke-virtual {v1, p3}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->getSerialState([I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getCounts([JI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    return-void

    .line 472
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 473
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    :cond_1
    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    const/4 v0, 0x1

    .line 478
    .local v0, "first":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_4

    .line 479
    iget-object v2, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    if-eqz v2, :cond_3

    .line 480
    if-nez v0, :cond_2

    .line 481
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    :cond_2
    const/4 v0, 0x0

    .line 484
    iget-object v2, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    aget v3, p3, v1

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 487
    .end local v1    # "i":I
    const-string v1, ") "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    return-void
.end method

.method private synthetic lambda$writeXml$0(Lcom/android/modules/utils/TypedXmlSerializer;[J[I)V
    .locals 2
    .param p1, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p2, "tmpArray"    # [J
    .param p3, "states"    # [I

    .line 379
    :try_start_0
    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/power/stats/processor/MultiStateStats;->writeXmlForStates(Lcom/android/modules/utils/TypedXmlSerializer;[I[J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    nop

    .line 383
    return-void

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private writeXmlForStates(Lcom/android/modules/utils/TypedXmlSerializer;[I[J)V
    .locals 7
    .param p1, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p2, "states"    # [I
    .param p3, "values"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    invoke-virtual {v1, p2}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->getSerialState([I)I

    move-result v1

    invoke-virtual {v0, p3, v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getCounts([JI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    return-void

    .line 399
    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v1, "stats"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 401
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_2

    .line 402
    iget-object v3, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget-object v3, v3, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    if-eqz v3, :cond_1

    aget v3, p2, v2

    if-eqz v3, :cond_1

    .line 403
    iget-object v3, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget-object v3, v3, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget-object v4, v4, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    aget v5, p2, v2

    aget-object v4, v4, v5

    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 401
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 407
    .end local v2    # "i":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v3, p3

    if-ge v2, v3, :cond_4

    .line 408
    aget-wide v3, p3, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-wide v4, p3, v2

    invoke-interface {p1, v0, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 407
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    nop

    .line 412
    .end local v2    # "i":I
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 413
    return-void
.end method


# virtual methods
.method copyStatesFrom(Lcom/android/server/power/stats/processor/MultiStateStats;)V
    .locals 2
    .param p1, "otherStats"    # Lcom/android/server/power/stats/processor/MultiStateStats;

    .line 316
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget-object v1, p1, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->copyStatesFrom(Lcom/android/internal/os/LongArrayMultiStateCounter;)V

    .line 317
    return-void
.end method

.method getDimensionCount()I
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget v0, v0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mDimensionCount:I

    return v0
.end method

.method getStates()[Lcom/android/server/power/stats/processor/MultiStateStats$States;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    return-object v0
.end method

.method getStats([J[I)Z
    .locals 2
    .param p1, "outValues"    # [J
    .param p2, "states"    # [I

    .line 351
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    invoke-virtual {v1, p2}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->getSerialState([I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getCounts([JI)Z

    move-result v0

    return v0
.end method

.method increment([JJ)V
    .locals 1
    .param p1, "values"    # [J
    .param p2, "timestampMs"    # J

    .line 341
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->incrementValues([JJ)V

    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mTracking:Z

    .line 343
    return-void
.end method

.method readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Z
    .locals 11
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "outerTag":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getArrayLength()I

    move-result v1

    new-array v1, v1, [J

    .line 422
    .local v1, "tmpArray":[J
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v2

    .line 423
    .local v2, "eventType":I
    :goto_0
    const/4 v3, 0x1

    nop

    if-eq v2, v3, :cond_7

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 424
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 425
    :cond_0
    const/4 v4, 0x2

    if-ne v2, v4, :cond_6

    .line 426
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "stats"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 427
    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    .line 428
    const/4 v4, 0x0

    .line 429
    .local v4, "compositeState":I
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeCount()I

    move-result v5

    .line 430
    .local v5, "attributeCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_5

    .line 431
    invoke-interface {p1, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    .line 432
    .local v7, "attributeName":Ljava/lang/String;
    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    .line 435
    :try_start_0
    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    .local v8, "index":I
    nop

    .line 440
    if-ltz v8, :cond_1

    array-length v10, v1

    if-lt v8, v10, :cond_2

    :cond_1
    goto :goto_2

    .line 445
    :cond_2
    invoke-interface {p1, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(I)J

    move-result-wide v9

    aput-wide v9, v1, v8

    .line 446
    .end local v8    # "index":I
    goto :goto_3

    .line 441
    .restart local v8    # "index":I
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "State index out of bounds: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " length: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v1

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v10, "MultiStateStats"

    invoke-static {v10, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return v9

    .line 436
    .end local v8    # "index":I
    :catch_0
    move-exception v3

    .line 437
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected index syntax: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, p1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v8

    .line 447
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    invoke-interface {p1, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 448
    .local v8, "attributeValue":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    invoke-virtual {v10, v4, v7, v8}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->setStateInComposite(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 450
    const/4 v10, -0x1

    if-ne v4, v10, :cond_4

    .line 451
    return v9

    .line 430
    .end local v7    # "attributeName":Ljava/lang/String;
    .end local v8    # "attributeValue":Ljava/lang/String;
    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    nop

    .line 455
    .end local v6    # "i":I
    iget-object v3, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget-object v6, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    invoke-virtual {v6, v4}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->getSerialState(I)I

    move-result v6

    invoke-virtual {v3, v6, v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setValues(I[J)V

    .line 458
    .end local v4    # "compositeState":I
    .end local v5    # "attributeCount":I
    :cond_6
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    goto/16 :goto_0

    .line 460
    :cond_7
    return v3
.end method

.method reset()V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->reset()V

    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mTracking:Z

    .line 367
    return-void
.end method

.method setState(IIJ)V
    .locals 3
    .param p1, "stateIndex"    # I
    .param p2, "state"    # I
    .param p3, "timestampMs"    # J

    .line 328
    iget-boolean v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mTracking:Z

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getArrayLength()I

    move-result v1

    new-array v1, v1, [J

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/internal/os/LongArrayMultiStateCounter;->updateValues([JJ)V

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mTracking:Z

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCompositeState:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->setStateInComposite(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCompositeState:I

    .line 333
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mCompositeToSerialState:[I

    iget v2, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCompositeState:I

    aget v1, v1, v2

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setState(IJ)V

    .line 334
    return-void
.end method

.method setStats([I[J)V
    .locals 2
    .param p1, "states"    # [I
    .param p2, "values"    # [J

    .line 358
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->getSerialState([I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setValues(I[J)V

    .line 359
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getArrayLength()I

    move-result v1

    new-array v1, v1, [J

    .line 467
    .local v1, "values":[J
    iget-object v2, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    new-instance v3, Lcom/android/server/power/stats/processor/MultiStateStats$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/server/power/stats/processor/MultiStateStats$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/processor/MultiStateStats;[JLjava/lang/StringBuilder;)V

    invoke-static {v2, v3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->forEachTrackedStateCombination([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/util/function/Consumer;)V

    .line 490
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 3
    .param p1, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getArrayLength()I

    move-result v0

    new-array v0, v0, [J

    .line 376
    .local v0, "tmpArray":[J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    new-instance v2, Lcom/android/server/power/stats/processor/MultiStateStats$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/power/stats/processor/MultiStateStats$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/processor/MultiStateStats;Lcom/android/modules/utils/TypedXmlSerializer;[J)V

    invoke-static {v1, v2}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->forEachTrackedStateCombination([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    nop

    .line 391
    return-void

    .line 384
    :catch_0
    move-exception v1

    .line 385
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/IOException;

    if-eqz v2, :cond_0

    .line 386
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    throw v2

    .line 388
    :cond_0
    throw v1
.end method
