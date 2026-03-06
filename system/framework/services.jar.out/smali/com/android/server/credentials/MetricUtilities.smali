.class public Lcom/android/server/credentials/MetricUtilities;
.super Ljava/lang/Object;
.source "MetricUtilities.java"


# static fields
.field public static final DEFAULT_INT_32:I = -0x1

.field public static final DEFAULT_REPEATED_BOOL:[Z

.field public static final DEFAULT_REPEATED_INT_32:[I

.field public static final DEFAULT_REPEATED_STR:[Ljava/lang/String;

.field public static final DEFAULT_STRING:Ljava/lang/String; = ""

.field public static final DELTA_EXCEPTION_CUT:I = 0x1e

.field public static final DELTA_RESPONSES_CUT:I = 0x14

.field private static final LOG_FLAG:Z = true

.field public static final MIN_EMIT_WAIT_TIME_MS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "CredentialManager"

.field public static final UNIT:I = 0x1

.field public static final USER_CANCELED_SUBSTRING:Ljava/lang/String; = "TYPE_USER_CANCELED"

.field public static final ZERO:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/android/server/credentials/MetricUtilities;->DEFAULT_REPEATED_INT_32:[I

    .line 55
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/android/server/credentials/MetricUtilities;->DEFAULT_REPEATED_STR:[Ljava/lang/String;

    .line 56
    new-array v0, v0, [Z

    sput-object v0, Lcom/android/server/credentials/MetricUtilities;->DEFAULT_REPEATED_BOOL:[Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateMetricKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "classtype"    # Ljava/lang/String;
    .param p1, "deltaFromEnd"    # I

    .line 135
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHighlyUniqueInteger()I
    .locals 1

    .line 102
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    return v0
.end method

.method protected static getMetricTimestampDifferenceMicroseconds(JJ)I
    .locals 4
    .param p0, "t2"    # J
    .param p2, "t1"    # J

    .line 114
    sub-long v0, p0, p2

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    const-string v2, "CredentialManager"

    if-lez v0, :cond_0

    .line 115
    const-string v0, "Input timestamps are too far apart and unsupported, falling back to default int"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return v1

    .line 119
    :cond_0
    cmp-long v0, p0, p2

    if-gez v0, :cond_1

    .line 120
    const-string v0, "The timestamps aren\'t in expected order, falling back to default int"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return v1

    .line 123
    :cond_1
    sub-long v0, p0, p2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method protected static getPackageUid(Landroid/content/Context;Landroid/content/ComponentName;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 75
    if-nez p1, :cond_0

    .line 76
    const/4 v0, -0x1

    return v0

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/server/credentials/MetricUtilities;->getPackageUid(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPackageUid(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 84
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 85
    return v0

    .line 88
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 89
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v2

    .line 88
    invoke-virtual {v1, p1, v2, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 90
    :catchall_0
    move-exception v1

    .line 91
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find uid for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CredentialManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return v0
.end method

.method public static logApiCalledAggregateCandidate(Lcom/android/server/credentials/metrics/CandidateAggregateMetric;I)V
    .locals 23
    .param p0, "candidateAggregateMetric"    # Lcom/android/server/credentials/metrics/CandidateAggregateMetric;
    .param p1, "sequenceNum"    # I

    .line 471
    nop

    .line 472
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getSessionIdProvider()I

    move-result v1

    .line 474
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->isQueryReturned()Z

    move-result v3

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getNumProviders()I

    move-result v4

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getMinProviderTimestampNanoseconds()J

    move-result-wide v5

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getServiceBeganTimeNanoseconds()J

    move-result-wide v7

    .line 477
    invoke-static {v5, v6, v7, v8}, Lcom/android/server/credentials/MetricUtilities;->getMetricTimestampDifferenceMicroseconds(JJ)I

    move-result v5

    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getMaxProviderTimestampNanoseconds()J

    move-result-wide v6

    .line 483
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getServiceBeganTimeNanoseconds()J

    move-result-wide v8

    .line 481
    invoke-static {v6, v7, v8, v9}, Lcom/android/server/credentials/MetricUtilities;->getMetricTimestampDifferenceMicroseconds(JJ)I

    move-result v6

    .line 485
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getAggregateCollectiveQuery()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    .line 486
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    move-result-object v7

    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getAggregateCollectiveQuery()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    .line 489
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseCounts()[I

    move-result-object v8

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getAggregateCollectiveQuery()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntries()[I

    move-result-object v9

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getAggregateCollectiveQuery()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    .line 495
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntryCounts()[I

    move-result-object v10

    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getTotalQueryFailures()I

    move-result v11

    .line 499
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getUniqueExceptionStringsQuery()[Ljava/lang/String;

    move-result-object v12

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getUniqueExceptionCountsQuery()[I

    move-result-object v13

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getAggregateCollectiveAuth()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    .line 504
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    move-result-object v14

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getAggregateCollectiveAuth()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    .line 507
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseCounts()[I

    move-result-object v15

    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getAggregateCollectiveAuth()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntries()[I

    move-result-object v16

    .line 512
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getAggregateCollectiveAuth()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    .line 513
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntryCounts()[I

    move-result-object v17

    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getTotalAuthFailures()I

    move-result v18

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getUniqueExceptionStringsAuth()[Ljava/lang/String;

    move-result-object v19

    .line 519
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getUniqueExceptionCountsAuth()[I

    move-result-object v20

    .line 521
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->getNumAuthEntriesTapped()I

    move-result v21

    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->isAuthReturned()Z

    move-result v22

    .line 471
    const/16 v0, 0x29b

    move/from16 v2, p1

    invoke-static/range {v0 .. v22}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIII[Ljava/lang/String;[I[I[II[Ljava/lang/String;[I[Ljava/lang/String;[I[I[II[Ljava/lang/String;[IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    goto :goto_0

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error during total candidate metric logging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CredentialManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static logApiCalledAuthenticationMetric(Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;I)V
    .locals 12
    .param p0, "authenticationMetric"    # Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;
    .param p1, "emitSequenceId"    # I

    .line 225
    nop

    .line 226
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->getSessionIdProvider()I

    move-result v1

    .line 228
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->getProviderUid()I

    move-result v3

    .line 230
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->getAuthEntryCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    move-result-object v4

    .line 232
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->getAuthEntryCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseCounts()[I

    move-result-object v5

    .line 234
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->getAuthEntryCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntries()[I

    move-result-object v6

    .line 236
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->getAuthEntryCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntryCounts()[I

    move-result-object v7

    .line 238
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->getFrameworkException()Ljava/lang/String;

    move-result-object v8

    .line 239
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->isHasException()Z

    move-result v9

    .line 241
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->getProviderStatus()I

    move-result v10

    .line 243
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->isAuthReturned()Z

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 225
    const/16 v0, 0x29e

    move v2, p1

    .end local p1    # "emitSequenceId":I
    .local v2, "emitSequenceId":I
    :try_start_1
    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII[Ljava/lang/String;[I[I[ILjava/lang/String;ZIZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 247
    goto :goto_1

    .line 245
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v2    # "emitSequenceId":I
    .restart local p1    # "emitSequenceId":I
    :catch_1
    move-exception v0

    move v2, p1

    move-object p1, v0

    .line 246
    .restart local v2    # "emitSequenceId":I
    .local p1, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected error during candidate auth metric logging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .end local p1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static logApiCalledCandidateGetMetric(Ljava/util/Map;I)V
    .locals 10
    .param p1, "emitSequenceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/credentials/ProviderSession;",
            ">;I)V"
        }
    .end annotation

    .line 267
    .local p0, "providers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/credentials/ProviderSession;>;"
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 268
    .local v0, "sessions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/credentials/ProviderSession;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/credentials/ProviderSession;

    .line 269
    .local v2, "session":Lcom/android/server/credentials/ProviderSession;
    invoke-virtual {v2}, Lcom/android/server/credentials/ProviderSession;->getProviderSessionMetric()Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    move-result-object v3

    .line 270
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->getCandidatePhasePerProviderMetric()Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    move-result-object v3

    .line 271
    .local v3, "metric":Lcom/android/server/credentials/metrics/CandidatePhaseMetric;
    nop

    .line 273
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getSessionIdProvider()I

    move-result v5

    .line 275
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getCandidateUid()I

    move-result v7

    .line 277
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    move-result-object v8

    .line 279
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseCounts()[I

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 271
    const/16 v4, 0x29d

    move v6, p1

    .end local p1    # "emitSequenceId":I
    .local v6, "emitSequenceId":I
    :try_start_1
    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII[Ljava/lang/String;[I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 281
    .end local v2    # "session":Lcom/android/server/credentials/ProviderSession;
    .end local v3    # "metric":Lcom/android/server/credentials/metrics/CandidatePhaseMetric;
    move p1, v6

    goto :goto_0

    .line 282
    .end local v0    # "sessions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/credentials/ProviderSession;>;"
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .end local v6    # "emitSequenceId":I
    .restart local p1    # "emitSequenceId":I
    :catch_1
    move-exception v0

    move v6, p1

    move-object p1, v0

    .end local p1    # "emitSequenceId":I
    .restart local v6    # "emitSequenceId":I
    goto :goto_1

    .line 268
    .end local v6    # "emitSequenceId":I
    .restart local v0    # "sessions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/credentials/ProviderSession;>;"
    .restart local p1    # "emitSequenceId":I
    :cond_0
    move v6, p1

    .line 284
    .end local v0    # "sessions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/credentials/ProviderSession;>;"
    .end local p1    # "emitSequenceId":I
    .restart local v6    # "emitSequenceId":I
    goto :goto_2

    .line 282
    :goto_1
    nop

    .line 283
    .local p1, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected error during candidate get metric logging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .end local p1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public static logApiCalledCandidatePhase(Ljava/util/Map;ILcom/android/server/credentials/metrics/InitialPhaseMetric;)V
    .locals 29
    .param p1, "emitSequenceId"    # I
    .param p2, "initialPhaseMetric"    # Lcom/android/server/credentials/metrics/InitialPhaseMetric;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/credentials/ProviderSession;",
            ">;I",
            "Lcom/android/server/credentials/metrics/InitialPhaseMetric;",
            ")V"
        }
    .end annotation

    .line 304
    .local p0, "providers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/credentials/ProviderSession;>;"
    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 305
    .local v0, "providerSessions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/credentials/ProviderSession;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 306
    .local v1, "providerSize":I
    const/4 v2, -0x1

    .line 307
    .local v2, "sessionId":I
    const/4 v3, 0x0

    .line 308
    .local v3, "queryReturned":Z
    new-array v4, v1, [I

    move-object v9, v4

    .line 309
    .local v9, "candidateUidList":[I
    new-array v10, v1, [I

    .line 310
    .local v10, "candidateQueryStartTimeStampList":[I
    new-array v11, v1, [I

    .line 311
    .local v11, "candidateQueryEndTimeStampList":[I
    new-array v12, v1, [I

    .line 312
    .local v12, "candidateStatusList":[I
    new-array v13, v1, [Z

    .line 313
    .local v13, "candidateHasExceptionList":[Z
    new-array v14, v1, [I

    .line 314
    .local v14, "candidateTotalEntryCountList":[I
    new-array v4, v1, [I

    move-object/from16 v16, v4

    .line 315
    .local v16, "candidateCredentialEntryCountList":[I
    new-array v4, v1, [I

    move-object/from16 v17, v4

    .line 316
    .local v17, "candidateCredentialTypeCountList":[I
    new-array v15, v1, [I

    .line 317
    .local v15, "candidateActionEntryCountList":[I
    new-array v4, v1, [I

    move-object/from16 v19, v4

    .line 318
    .local v19, "candidateAuthEntryCountList":[I
    new-array v4, v1, [I

    move-object/from16 v18, v4

    .line 319
    .local v18, "candidateRemoteEntryCountList":[I
    new-array v4, v1, [Ljava/lang/String;

    move-object/from16 v20, v4

    .line 320
    .local v20, "frameworkExceptionList":[Ljava/lang/String;
    new-array v4, v1, [Z

    move-object/from16 v25, v4

    .line 321
    .local v25, "candidatePrimaryProviderList":[Z
    const/4 v4, 0x0

    .line 322
    .local v4, "index":I
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v2

    move v8, v3

    .end local v2    # "sessionId":I
    .end local v3    # "queryReturned":Z
    .local v6, "sessionId":I
    .local v8, "queryReturned":Z
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/credentials/ProviderSession;

    .line 323
    .local v2, "session":Lcom/android/server/credentials/ProviderSession;
    iget-object v3, v2, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    .line 324
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->getCandidatePhasePerProviderMetric()Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    move-result-object v3

    .line 325
    .local v3, "metric":Lcom/android/server/credentials/metrics/CandidatePhaseMetric;
    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 326
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getSessionIdProvider()I

    move-result v7

    move v6, v7

    .end local v6    # "sessionId":I
    .local v7, "sessionId":I
    goto :goto_1

    .line 391
    .end local v0    # "providerSessions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/credentials/ProviderSession;>;"
    .end local v1    # "providerSize":I
    .end local v2    # "session":Lcom/android/server/credentials/ProviderSession;
    .end local v3    # "metric":Lcom/android/server/credentials/metrics/CandidatePhaseMetric;
    .end local v4    # "index":I
    .end local v7    # "sessionId":I
    .end local v8    # "queryReturned":Z
    .end local v9    # "candidateUidList":[I
    .end local v10    # "candidateQueryStartTimeStampList":[I
    .end local v11    # "candidateQueryEndTimeStampList":[I
    .end local v12    # "candidateStatusList":[I
    .end local v13    # "candidateHasExceptionList":[Z
    .end local v14    # "candidateTotalEntryCountList":[I
    .end local v15    # "candidateActionEntryCountList":[I
    .end local v16    # "candidateCredentialEntryCountList":[I
    .end local v17    # "candidateCredentialTypeCountList":[I
    .end local v18    # "candidateRemoteEntryCountList":[I
    .end local v19    # "candidateAuthEntryCountList":[I
    .end local v20    # "frameworkExceptionList":[Ljava/lang/String;
    .end local v25    # "candidatePrimaryProviderList":[Z
    :catch_0
    move-exception v0

    goto/16 :goto_2

    .line 328
    .restart local v0    # "providerSessions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/credentials/ProviderSession;>;"
    .restart local v1    # "providerSize":I
    .restart local v2    # "session":Lcom/android/server/credentials/ProviderSession;
    .restart local v3    # "metric":Lcom/android/server/credentials/metrics/CandidatePhaseMetric;
    .restart local v4    # "index":I
    .restart local v6    # "sessionId":I
    .restart local v8    # "queryReturned":Z
    .restart local v9    # "candidateUidList":[I
    .restart local v10    # "candidateQueryStartTimeStampList":[I
    .restart local v11    # "candidateQueryEndTimeStampList":[I
    .restart local v12    # "candidateStatusList":[I
    .restart local v13    # "candidateHasExceptionList":[Z
    .restart local v14    # "candidateTotalEntryCountList":[I
    .restart local v15    # "candidateActionEntryCountList":[I
    .restart local v16    # "candidateCredentialEntryCountList":[I
    .restart local v17    # "candidateCredentialTypeCountList":[I
    .restart local v18    # "candidateRemoteEntryCountList":[I
    .restart local v19    # "candidateAuthEntryCountList":[I
    .restart local v20    # "frameworkExceptionList":[Ljava/lang/String;
    .restart local v25    # "candidatePrimaryProviderList":[Z
    :cond_0
    :goto_1
    if-nez v8, :cond_1

    .line 329
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->isQueryReturned()Z

    move-result v7

    move v8, v7

    .line 331
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getCandidateUid()I

    move-result v7

    aput v7, v9, v4

    .line 332
    nop

    .line 334
    move-object/from16 v27, v0

    move/from16 v28, v1

    .end local v0    # "providerSessions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/credentials/ProviderSession;>;"
    .end local v1    # "providerSize":I
    .local v27, "providerSessions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/credentials/ProviderSession;>;"
    .local v28, "providerSize":I
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getStartQueryTimeNanoseconds()J

    move-result-wide v0

    .line 333
    invoke-virtual {v3, v0, v1}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v0

    aput v0, v10, v4

    .line 335
    nop

    .line 337
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getQueryFinishTimeNanoseconds()J

    move-result-wide v0

    .line 336
    invoke-virtual {v3, v0, v1}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v0

    aput v0, v11, v4

    .line 338
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getProviderQueryStatus()I

    move-result v0

    aput v0, v12, v4

    .line 339
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->isHasException()Z

    move-result v0

    aput-boolean v0, v13, v4

    .line 340
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getNumEntriesTotal()I

    move-result v0

    aput v0, v14, v4

    .line 342
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    sget-object v1, Lcom/android/server/credentials/metrics/EntryEnum;->CREDENTIAL_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 343
    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getCountForEntry(Lcom/android/server/credentials/metrics/EntryEnum;)I

    move-result v0

    aput v0, v16, v4

    .line 344
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    aput v0, v17, v4

    .line 346
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    sget-object v1, Lcom/android/server/credentials/metrics/EntryEnum;->ACTION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 347
    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getCountForEntry(Lcom/android/server/credentials/metrics/EntryEnum;)I

    move-result v0

    aput v0, v15, v4

    .line 348
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    sget-object v1, Lcom/android/server/credentials/metrics/EntryEnum;->AUTHENTICATION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 349
    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getCountForEntry(Lcom/android/server/credentials/metrics/EntryEnum;)I

    move-result v0

    aput v0, v19, v4

    .line 350
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v0

    sget-object v1, Lcom/android/server/credentials/metrics/EntryEnum;->REMOTE_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 351
    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getCountForEntry(Lcom/android/server/credentials/metrics/EntryEnum;)I

    move-result v0

    aput v0, v18, v4

    .line 352
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->getFrameworkException()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v20, v4

    .line 353
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->isPrimary()Z

    move-result v0

    aput-boolean v0, v25, v4

    .line 354
    nop

    .end local v2    # "session":Lcom/android/server/credentials/ProviderSession;
    .end local v3    # "metric":Lcom/android/server/credentials/metrics/CandidatePhaseMetric;
    add-int/lit8 v4, v4, 0x1

    .line 355
    move-object/from16 v0, v27

    move/from16 v1, v28

    goto/16 :goto_0

    .line 356
    .end local v27    # "providerSessions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/credentials/ProviderSession;>;"
    .end local v28    # "providerSize":I
    .restart local v0    # "providerSessions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/credentials/ProviderSession;>;"
    .restart local v1    # "providerSize":I
    :cond_2
    move-object/from16 v27, v0

    move/from16 v28, v1

    .line 379
    .end local v0    # "providerSessions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/credentials/ProviderSession;>;"
    .end local v1    # "providerSize":I
    .restart local v27    # "providerSessions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/credentials/ProviderSession;>;"
    .restart local v28    # "providerSize":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->isOriginSpecified()Z

    move-result v21

    .line 381
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getUniqueRequestStrings()[Ljava/lang/String;

    move-result-object v22

    .line 383
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getUniqueRequestCounts()[I

    move-result-object v23

    .line 385
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getApiName()I

    move-result v24

    .line 389
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->hasApiUsedPrepareFlow()Z

    move-result v26

    .line 356
    const/16 v5, 0x28c

    move/from16 v7, p1

    invoke-static/range {v5 .. v26}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZ[I[I[I[I[Z[I[I[I[I[I[I[Ljava/lang/String;Z[Ljava/lang/String;[II[ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    .end local v4    # "index":I
    .end local v6    # "sessionId":I
    .end local v8    # "queryReturned":Z
    .end local v9    # "candidateUidList":[I
    .end local v10    # "candidateQueryStartTimeStampList":[I
    .end local v11    # "candidateQueryEndTimeStampList":[I
    .end local v12    # "candidateStatusList":[I
    .end local v13    # "candidateHasExceptionList":[Z
    .end local v14    # "candidateTotalEntryCountList":[I
    .end local v15    # "candidateActionEntryCountList":[I
    .end local v16    # "candidateCredentialEntryCountList":[I
    .end local v17    # "candidateCredentialTypeCountList":[I
    .end local v18    # "candidateRemoteEntryCountList":[I
    .end local v19    # "candidateAuthEntryCountList":[I
    .end local v20    # "frameworkExceptionList":[Ljava/lang/String;
    .end local v25    # "candidatePrimaryProviderList":[Z
    .end local v27    # "providerSessions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/credentials/ProviderSession;>;"
    .end local v28    # "providerSize":I
    goto :goto_3

    .line 391
    :goto_2
    nop

    .line 392
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error during candidate provider uid metric emit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CredentialManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public static logApiCalledFinalPhase(Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;Ljava/util/List;II)V
    .locals 31
    .param p0, "finalPhaseMetric"    # Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;
    .param p2, "apiStatus"    # I
    .param p3, "emitSequenceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;",
            "Ljava/util/List<",
            "Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;",
            ">;II)V"
        }
    .end annotation

    .line 154
    .local p1, "browsingPhaseMetrics":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;>;"
    move-object/from16 v1, p0

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    .line 155
    .local v0, "browsedSize":I
    new-array v2, v0, [I

    move-object/from16 v21, v2

    .line 156
    .local v21, "browsedClickedEntries":[I
    new-array v2, v0, [I

    move-object/from16 v22, v2

    .line 157
    .local v22, "browsedProviderUid":[I
    const/4 v2, 0x0

    .line 158
    .local v2, "index":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;

    .line 159
    .local v4, "metric":Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;
    invoke-virtual {v4}, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->getEntryEnum()I

    move-result v5

    aput v5, v21, v2

    .line 160
    invoke-virtual {v4}, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->getProviderUid()I

    move-result v5

    aput v5, v22, v2

    .line 161
    nop

    .end local v4    # "metric":Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;
    add-int/lit8 v2, v2, 0x1

    .line 162
    goto :goto_0

    .line 207
    .end local v0    # "browsedSize":I
    .end local v2    # "index":I
    .end local v21    # "browsedClickedEntries":[I
    .end local v22    # "browsedProviderUid":[I
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 163
    .restart local v0    # "browsedSize":I
    .restart local v2    # "index":I
    .restart local v21    # "browsedClickedEntries":[I
    .restart local v22    # "browsedProviderUid":[I
    :cond_0
    nop

    .line 164
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getSessionIdProvider()I

    move-result v4

    .line 166
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->isUiReturned()Z

    move-result v6

    .line 167
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getChosenUid()I

    move-result v7

    .line 170
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getQueryStartTimeNanoseconds()J

    move-result-wide v8

    .line 169
    invoke-virtual {v1, v8, v9}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v8

    .line 173
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getQueryEndTimeNanoseconds()J

    move-result-wide v9

    .line 172
    invoke-virtual {v1, v9, v10}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v9

    .line 176
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getUiCallStartTimeNanoseconds()J

    move-result-wide v10

    .line 175
    invoke-virtual {v1, v10, v11}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v10

    .line 179
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getUiCallEndTimeNanoseconds()J

    move-result-wide v11

    .line 178
    invoke-virtual {v1, v11, v12}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v11

    .line 182
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getFinalFinishTimeNanoseconds()J

    move-result-wide v12

    .line 181
    invoke-virtual {v1, v12, v13}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v12

    .line 183
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getChosenProviderStatus()I

    move-result v13

    .line 184
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->isHasException()Z

    move-result v14

    sget-object v15, Lcom/android/server/credentials/MetricUtilities;->DEFAULT_REPEATED_INT_32:[I

    .line 195
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntries()[I

    move-result-object v24

    .line 197
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntryCounts()[I

    move-result-object v25

    .line 199
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    move-result-object v26

    .line 201
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseCounts()[I

    move-result-object v27

    .line 203
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getFrameworkException()Ljava/lang/String;

    move-result-object v28

    .line 204
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->isPrimary()Z

    move-result v29

    .line 205
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getChosenClassType()Ljava/lang/String;

    move-result-object v30

    .line 163
    const/16 v3, 0x28d

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    move/from16 v23, p2

    move/from16 v5, p3

    invoke-static/range {v3 .. v30}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIIIIIIZ[IIIIII[I[II[I[I[Ljava/lang/String;[ILjava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v0    # "browsedSize":I
    .end local v2    # "index":I
    .end local v21    # "browsedClickedEntries":[I
    .end local v22    # "browsedProviderUid":[I
    goto :goto_2

    .line 207
    :goto_1
    nop

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error during final provider uid emit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CredentialManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public static logApiCalledInitialPhase(Lcom/android/server/credentials/metrics/InitialPhaseMetric;I)V
    .locals 14
    .param p0, "initialPhaseMetric"    # Lcom/android/server/credentials/metrics/InitialPhaseMetric;
    .param p1, "sequenceNum"    # I

    .line 430
    nop

    .line 431
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getApiName()I

    move-result v1

    .line 432
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getCallerUid()I

    move-result v2

    .line 433
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getSessionIdCaller()I

    move-result v3

    .line 436
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getCredentialServiceStartedTimeNanoseconds()J

    move-result-wide v5

    .line 438
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getCountRequestClassType()I

    move-result v7

    .line 440
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getUniqueRequestStrings()[Ljava/lang/String;

    move-result-object v8

    .line 442
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getUniqueRequestCounts()[I

    move-result-object v9

    .line 444
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->isOriginSpecified()Z

    move-result v10

    .line 446
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getAutofillSessionId()I

    move-result v11

    .line 448
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getAutofillRequestId()I

    move-result v12

    .line 450
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->hasApiUsedPrepareFlow()Z

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 430
    const/16 v0, 0x28b

    move v4, p1

    .end local p1    # "sequenceNum":I
    .local v4, "sequenceNum":I
    :try_start_1
    invoke-static/range {v0 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIJI[Ljava/lang/String;[IZIIZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 454
    goto :goto_1

    .line 452
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v4    # "sequenceNum":I
    .restart local p1    # "sequenceNum":I
    :catch_1
    move-exception v0

    move v4, p1

    move-object p1, v0

    .line 453
    .restart local v4    # "sequenceNum":I
    .local p1, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected error during initial metric emit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    .end local p1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static logApiCalledNoUidFinal(Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;Ljava/util/List;II)V
    .locals 27
    .param p0, "finalPhaseMetric"    # Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;
    .param p2, "apiStatus"    # I
    .param p3, "emitSequenceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;",
            "Ljava/util/List<",
            "Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;",
            ">;II)V"
        }
    .end annotation

    .line 545
    .local p1, "browsingPhaseMetrics":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;>;"
    move-object/from16 v1, p0

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    .line 546
    .local v0, "browsedSize":I
    new-array v2, v0, [I

    move-object/from16 v19, v2

    .line 547
    .local v19, "browsedClickedEntries":[I
    new-array v2, v0, [I

    move-object/from16 v20, v2

    .line 548
    .local v20, "browsedProviderUid":[I
    const/4 v2, 0x0

    .line 549
    .local v2, "index":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;

    .line 550
    .local v4, "metric":Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;
    invoke-virtual {v4}, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->getEntryEnum()I

    move-result v5

    aput v5, v19, v2

    .line 551
    const/4 v5, -0x1

    aput v5, v20, v2

    .line 552
    nop

    .end local v4    # "metric":Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;
    add-int/lit8 v2, v2, 0x1

    .line 553
    goto :goto_0

    .line 594
    .end local v0    # "browsedSize":I
    .end local v2    # "index":I
    .end local v19    # "browsedClickedEntries":[I
    .end local v20    # "browsedProviderUid":[I
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 554
    .restart local v0    # "browsedSize":I
    .restart local v2    # "index":I
    .restart local v19    # "browsedClickedEntries":[I
    .restart local v20    # "browsedProviderUid":[I
    :cond_0
    nop

    .line 555
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getSessionIdCaller()I

    move-result v4

    .line 557
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->isUiReturned()Z

    move-result v6

    .line 560
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getQueryStartTimeNanoseconds()J

    move-result-wide v7

    .line 559
    invoke-virtual {v1, v7, v8}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v7

    .line 563
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getQueryEndTimeNanoseconds()J

    move-result-wide v8

    .line 562
    invoke-virtual {v1, v8, v9}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v8

    .line 566
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getUiCallStartTimeNanoseconds()J

    move-result-wide v9

    .line 565
    invoke-virtual {v1, v9, v10}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v9

    .line 569
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getUiCallEndTimeNanoseconds()J

    move-result-wide v10

    .line 568
    invoke-virtual {v1, v10, v11}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v10

    .line 572
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getFinalFinishTimeNanoseconds()J

    move-result-wide v11

    .line 571
    invoke-virtual {v1, v11, v12}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    move-result v11

    .line 573
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getChosenProviderStatus()I

    move-result v12

    .line 574
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->isHasException()Z

    move-result v13

    .line 576
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntries()[I

    move-result-object v14

    .line 578
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntryCounts()[I

    move-result-object v15

    .line 580
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    move-result-object v16

    .line 582
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getResponseCollective()Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseCounts()[I

    move-result-object v17

    .line 584
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getFrameworkException()Ljava/lang/String;

    move-result-object v18

    .line 588
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->isPrimary()Z

    move-result v22

    .line 589
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getOemUiUid()I

    move-result v23

    .line 590
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getFallbackUiUid()I

    move-result v24

    .line 591
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getOemUiUsageStatus()I

    move-result v25

    .line 592
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getChosenClassType()Ljava/lang/String;

    move-result-object v26

    .line 554
    const/16 v3, 0x29c

    move/from16 v21, p2

    move/from16 v5, p3

    invoke-static/range {v3 .. v26}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIIIIIZ[I[I[Ljava/lang/String;[ILjava/lang/String;[I[IIZIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    .end local v0    # "browsedSize":I
    .end local v2    # "index":I
    .end local v19    # "browsedClickedEntries":[I
    .end local v20    # "browsedProviderUid":[I
    goto :goto_2

    .line 594
    :goto_1
    nop

    .line 595
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error during final no uid metric logging: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CredentialManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public static logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V
    .locals 3
    .param p0, "apiName"    # Lcom/android/server/credentials/metrics/ApiName;
    .param p1, "apiStatus"    # Lcom/android/server/credentials/metrics/ApiStatus;
    .param p2, "callingUid"    # I

    .line 409
    nop

    .line 410
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/ApiName;->getMetricCode()I

    move-result v0

    .line 412
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    move-result v1

    .line 409
    const/16 v2, 0x29f

    invoke-static {v2, v0, p2, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error during simple v2 metric logging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CredentialManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
