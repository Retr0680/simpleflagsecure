.class public Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;
.super Ljava/lang/Object;
.source "AggregateSummaryStatistics.java"

# interfaces
.implements Lorg/apache/commons/math/stat/descriptive/StatisticalSummary;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics$AggregatingSummaryStatistics;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x71e58548e148e35aL


# instance fields
.field private final statistics:Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

.field private final statisticsPrototype:Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    new-instance v0, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    invoke-direct {v0}, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;-><init>(Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;)V
    .locals 1
    .param p1, "prototypeStatistics"    # Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    .line 96
    nop

    .line 97
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    invoke-direct {v0, p1}, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;-><init>(Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;)V

    .line 96
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;-><init>(Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;)V
    .locals 1
    .param p1, "prototypeStatistics"    # Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;
    .param p2, "initialStatistics"    # Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    nop

    .line 123
    if-nez p1, :cond_0

    new-instance v0, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    invoke-direct {v0}, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->statisticsPrototype:Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    .line 124
    nop

    .line 125
    if-nez p2, :cond_1

    new-instance v0, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    invoke-direct {v0}, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;-><init>()V

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    iput-object v0, p0, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    .line 126
    return-void
.end method

.method public static aggregate(Ljava/util/Collection;)Lorg/apache/commons/math/stat/descriptive/StatisticalSummaryValues;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;",
            ">;)",
            "Lorg/apache/commons/math/stat/descriptive/StatisticalSummaryValues;"
        }
    .end annotation

    .line 302
    .local p0, "statistics":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 303
    return-object v0

    .line 305
    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 306
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 307
    return-object v0

    .line 309
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    .line 310
    .local v0, "current":Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;
    invoke-virtual {v0}, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v2

    .line 311
    .local v2, "n":J
    invoke-virtual {v0}, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;->getMin()D

    move-result-wide v4

    .line 312
    .local v4, "min":D
    invoke-virtual {v0}, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;->getSum()D

    move-result-wide v6

    .line 313
    .local v6, "sum":D
    invoke-virtual {v0}, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;->getMax()D

    move-result-wide v8

    .line 314
    .local v8, "max":D
    invoke-virtual {v0}, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;->getSecondMoment()D

    move-result-wide v10

    .line 315
    .local v10, "m2":D
    invoke-virtual {v0}, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;->getMean()D

    move-result-wide v12

    move-wide v15, v10

    move-wide v9, v8

    move-wide/from16 v26, v6

    move-wide v7, v2

    move-wide/from16 v28, v12

    move-wide v11, v4

    move-wide/from16 v13, v26

    move-wide/from16 v3, v28

    .line 316
    .end local v2    # "n":J
    .end local v4    # "min":D
    .end local v6    # "sum":D
    .end local v8    # "max":D
    .end local v10    # "m2":D
    .local v3, "mean":D
    .local v7, "n":J
    .local v9, "max":D
    .local v11, "min":D
    .local v13, "sum":D
    .local v15, "m2":D
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 317
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    .line 318
    invoke-virtual {v0}, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;->getMin()D

    move-result-wide v5

    cmpg-double v2, v5, v11

    if-ltz v2, :cond_2

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 319
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;->getMin()D

    move-result-wide v5

    move-wide v11, v5

    .line 321
    :cond_3
    invoke-virtual {v0}, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;->getMax()D

    move-result-wide v5

    cmpl-double v2, v5, v9

    if-gtz v2, :cond_4

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 322
    :cond_4
    invoke-virtual {v0}, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;->getMax()D

    move-result-wide v5

    move-wide v9, v5

    .line 324
    :cond_5
    invoke-virtual {v0}, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;->getSum()D

    move-result-wide v5

    add-double/2addr v13, v5

    .line 325
    long-to-double v5, v7

    .line 326
    .local v5, "oldN":D
    move-object v2, v0

    move-object/from16 v17, v1

    .end local v0    # "current":Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;>;"
    .local v2, "current":Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;
    .local v17, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;>;"
    invoke-virtual {v2}, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v0

    long-to-double v0, v0

    .line 327
    .local v0, "curN":D
    move-wide/from16 v18, v0

    .end local v0    # "curN":D
    .local v18, "curN":D
    long-to-double v0, v7

    add-double v0, v0, v18

    double-to-long v7, v0

    .line 328
    invoke-virtual {v2}, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;->getMean()D

    move-result-wide v0

    sub-double/2addr v0, v3

    .line 329
    .local v0, "meanDiff":D
    move-wide/from16 v20, v0

    .end local v0    # "meanDiff":D
    .local v20, "meanDiff":D
    long-to-double v0, v7

    div-double v3, v13, v0

    .line 330
    invoke-virtual {v2}, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;->getSecondMoment()D

    move-result-wide v0

    add-double/2addr v0, v15

    mul-double v22, v20, v20

    mul-double v22, v22, v5

    mul-double v22, v22, v18

    move-wide/from16 v24, v0

    long-to-double v0, v7

    div-double v22, v22, v0

    add-double v15, v24, v22

    .line 331
    .end local v5    # "oldN":D
    .end local v18    # "curN":D
    .end local v20    # "meanDiff":D
    move-object v0, v2

    move-object/from16 v1, v17

    goto :goto_0

    .line 333
    .end local v2    # "current":Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;
    .end local v17    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;>;"
    .local v0, "current":Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;>;"
    :cond_6
    move-object/from16 v17, v1

    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;>;"
    .restart local v17    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;>;"
    const-wide/16 v1, 0x0

    cmp-long v1, v7, v1

    if-nez v1, :cond_7

    .line 334
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    move-wide v5, v1

    .local v1, "variance":D
    goto :goto_1

    .line 335
    .end local v1    # "variance":D
    :cond_7
    const-wide/16 v1, 0x1

    cmp-long v5, v7, v1

    if-nez v5, :cond_8

    .line 336
    const-wide/16 v1, 0x0

    move-wide v5, v1

    .restart local v1    # "variance":D
    goto :goto_1

    .line 338
    .end local v1    # "variance":D
    :cond_8
    sub-long v1, v7, v1

    long-to-double v1, v1

    div-double v1, v15, v1

    move-wide v5, v1

    .line 340
    .local v5, "variance":D
    :goto_1
    new-instance v2, Lorg/apache/commons/math/stat/descriptive/StatisticalSummaryValues;

    invoke-direct/range {v2 .. v14}, Lorg/apache/commons/math/stat/descriptive/StatisticalSummaryValues;-><init>(DDJDDD)V

    return-object v2
.end method


# virtual methods
.method public createContributingStatistics()Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;
    .locals 2

    .line 281
    new-instance v0, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics$AggregatingSummaryStatistics;

    iget-object v1, p0, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    invoke-direct {v0, v1}, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics$AggregatingSummaryStatistics;-><init>(Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;)V

    .line 284
    .local v0, "contributingStatistics":Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;
    iget-object v1, p0, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->statisticsPrototype:Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    invoke-static {v1, v0}, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;->copy(Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;)V

    .line 286
    return-object v0
.end method

.method public getGeometricMean()D
    .locals 3

    .line 228
    iget-object v0, p0, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    .line 229
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    invoke-virtual {v1}, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;->getGeometricMean()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 230
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMax()D
    .locals 3

    .line 135
    iget-object v0, p0, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    invoke-virtual {v1}, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;->getMax()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMean()D
    .locals 3

    .line 146
    iget-object v0, p0, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    invoke-virtual {v1}, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;->getMean()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 148
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMin()D
    .locals 3

    .line 158
    iget-object v0, p0, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    invoke-virtual {v1}, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;->getMin()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getN()J
    .locals 3

    .line 169
    iget-object v0, p0, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    .line 170
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    invoke-virtual {v1}, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 171
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSecondMoment()D
    .locals 3

    .line 254
    iget-object v0, p0, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    .line 255
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    invoke-virtual {v1}, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;->getSecondMoment()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 256
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStandardDeviation()D
    .locals 3

    .line 181
    iget-object v0, p0, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    .line 182
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    invoke-virtual {v1}, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;->getStandardDeviation()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 183
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSum()D
    .locals 3

    .line 192
    iget-object v0, p0, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    .line 193
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    invoke-virtual {v1}, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;->getSum()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 194
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSumOfLogs()D
    .locals 3

    .line 216
    iget-object v0, p0, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    .line 217
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    invoke-virtual {v1}, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;->getSumOfLogs()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 218
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSummary()Lorg/apache/commons/math/stat/descriptive/StatisticalSummary;
    .locals 15

    .line 266
    iget-object v1, p0, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    monitor-enter v1

    .line 267
    :try_start_0
    new-instance v2, Lorg/apache/commons/math/stat/descriptive/StatisticalSummaryValues;

    invoke-virtual {p0}, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->getMean()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->getVariance()D

    move-result-wide v5

    invoke-virtual {p0}, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->getN()J

    move-result-wide v7

    .line 268
    invoke-virtual {p0}, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->getMax()D

    move-result-wide v9

    invoke-virtual {p0}, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->getMin()D

    move-result-wide v11

    invoke-virtual {p0}, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->getSum()D

    move-result-wide v13

    invoke-direct/range {v2 .. v14}, Lorg/apache/commons/math/stat/descriptive/StatisticalSummaryValues;-><init>(DDJDDD)V

    monitor-exit v1

    .line 267
    return-object v2

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSumsq()D
    .locals 3

    .line 240
    iget-object v0, p0, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    .line 241
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    invoke-virtual {v1}, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;->getSumsq()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 242
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getVariance()D
    .locals 3

    .line 204
    iget-object v0, p0, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    .line 205
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;

    invoke-virtual {v1}, Lorg/apache/commons/math/stat/descriptive/SummaryStatistics;->getVariance()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 206
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
