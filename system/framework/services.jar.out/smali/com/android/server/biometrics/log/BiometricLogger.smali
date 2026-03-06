.class public Lcom/android/server/biometrics/log/BiometricLogger;
.super Ljava/lang/Object;
.source "BiometricLogger.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "BiometricLogger"


# instance fields
.field private final mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

.field private final mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

.field private mFirstAcquireTimeMs:J

.field private mShouldLogMetrics:Z

.field private final mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

.field private final mStatsAction:I

.field private final mStatsClient:I

.field private final mStatsModality:I


# direct methods
.method constructor <init>(IIILcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;Lcom/android/server/biometrics/AuthenticationStatsCollector;Landroid/hardware/SensorManager;)V
    .locals 1
    .param p1, "statsModality"    # I
    .param p2, "statsAction"    # I
    .param p3, "statsClient"    # I
    .param p4, "logSink"    # Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;
    .param p5, "statsCollector"    # Lcom/android/server/biometrics/AuthenticationStatsCollector;
    .param p6, "sensorManager"    # Landroid/hardware/SensorManager;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    .line 88
    iput p1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    .line 89
    iput p2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    .line 90
    iput p3, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    .line 91
    iput-object p4, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    .line 92
    iput-object p5, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    .line 93
    new-instance v0, Lcom/android/server/biometrics/log/ALSProbe;

    invoke-direct {v0, p6}, Lcom/android/server/biometrics/log/ALSProbe;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIILcom/android/server/biometrics/AuthenticationStatsCollector;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statsModality"    # I
    .param p3, "statsAction"    # I
    .param p4, "statsClient"    # I
    .param p5, "authenticationStatsCollector"    # Lcom/android/server/biometrics/AuthenticationStatsCollector;

    .line 76
    nop

    .line 77
    invoke-static {}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->getInstance()Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    move-result-object v4

    const-class v0, Landroid/hardware/SensorManager;

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/hardware/SensorManager;

    .line 76
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v5, p5

    .end local p2    # "statsModality":I
    .end local p3    # "statsAction":I
    .end local p4    # "statsClient":I
    .end local p5    # "authenticationStatsCollector":Lcom/android/server/biometrics/AuthenticationStatsCollector;
    .local v1, "statsModality":I
    .local v2, "statsAction":I
    .local v3, "statsClient":I
    .local v5, "authenticationStatsCollector":Lcom/android/server/biometrics/AuthenticationStatsCollector;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(IIILcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;Lcom/android/server/biometrics/AuthenticationStatsCollector;Landroid/hardware/SensorManager;)V

    .line 80
    return-void
.end method

.method public static ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 57
    new-instance v0, Lcom/android/server/biometrics/log/BiometricLogger;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    .end local p0    # "context":Landroid/content/Context;
    .local v1, "context":Landroid/content/Context;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;IIILcom/android/server/biometrics/AuthenticationStatsCollector;)V

    return-object v0
.end method

.method private shouldSkipLogging()Z
    .locals 3

    .line 114
    iget v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    .line 117
    .local v0, "shouldSkipLogging":Z
    :goto_1
    iget v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    const-string v2, "BiometricLogger"

    if-nez v1, :cond_2

    .line 118
    const-string v1, "Unknown field detected: MODALITY_UNKNOWN, will not report metric"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_2
    iget v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    if-nez v1, :cond_3

    .line 122
    const-string v1, "Unknown field detected: ACTION_UNKNOWN, will not report metric"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_3
    iget v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    if-nez v1, :cond_4

    .line 126
    const-string v1, "Unknown field detected: CLIENT_UNKNOWN"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_4
    return v0
.end method


# virtual methods
.method public disableMetrics()V
    .locals 1

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    .line 105
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

    invoke-virtual {v0}, Lcom/android/server/biometrics/log/ALSProbe;->destroy()V

    .line 106
    return-void
.end method

.method public getAmbientLightProbe(Z)Lcom/android/server/biometrics/log/CallbackWithProbe;
    .locals 2
    .param p1, "startWithClient"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/android/server/biometrics/log/CallbackWithProbe<",
            "Lcom/android/server/biometrics/log/Probe;",
            ">;"
        }
    .end annotation

    .line 367
    new-instance v0, Lcom/android/server/biometrics/log/CallbackWithProbe;

    iget-object v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

    invoke-direct {v0, v1, p1}, Lcom/android/server/biometrics/log/CallbackWithProbe;-><init>(Lcom/android/server/biometrics/log/Probe;Z)V

    return-object v0
.end method

.method public getStatsClient()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    return v0
.end method

.method public logFingerprintsLoe()V
    .locals 2

    .line 348
    invoke-direct {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->reportFingerprintsLoe(I)V

    .line 353
    return-void
.end method

.method public logOnAcquired(Landroid/content/Context;Lcom/android/server/biometrics/log/OperationContextExt;III)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "operationContext"    # Lcom/android/server/biometrics/log/OperationContextExt;
    .param p3, "acquiredInfo"    # I
    .param p4, "vendorCode"    # I
    .param p5, "targetUserId"    # I

    .line 135
    move v6, p3

    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v0, :cond_0

    .line 136
    return-void

    .line 139
    :cond_0
    iget v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    move v9, v0

    .line 140
    .local v9, "isFace":Z
    iget v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    if-ne v0, v3, :cond_2

    move v2, v3

    :cond_2
    move v10, v2

    .line 141
    .local v10, "isFingerprint":Z
    if-nez v9, :cond_3

    if-eqz v10, :cond_4

    :cond_3
    goto :goto_1

    .line 146
    :cond_4
    if-nez v6, :cond_7

    .line 147
    iget-wide v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    goto :goto_2

    .line 142
    :goto_1
    if-eqz v10, :cond_5

    const/4 v0, 0x7

    if-eq v6, v0, :cond_6

    :cond_5
    if-eqz v9, :cond_7

    const/16 v0, 0x14

    if-ne v6, v0, :cond_7

    .line 144
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    .line 161
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 162
    return-void

    .line 165
    :cond_8
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v3, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    iget v4, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    .line 167
    move/from16 v8, p5

    invoke-static {p1, v8}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v5

    .line 165
    move-object v1, p2

    move v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->acquired(Lcom/android/server/biometrics/log/OperationContextExt;IIIZIII)V

    .line 169
    return-void
.end method

.method public logOnAuthenticated(Landroid/content/Context;Lcom/android/server/biometrics/log/OperationContextExt;ZZIZ)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "operationContext"    # Lcom/android/server/biometrics/log/OperationContextExt;
    .param p3, "authenticated"    # Z
    .param p4, "requireConfirmation"    # Z
    .param p5, "targetUserId"    # I
    .param p6, "isBiometricPrompt"    # Z

    .line 209
    move/from16 v0, p3

    move/from16 v11, p5

    iget-boolean v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v1, :cond_0

    .line 210
    return-void

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    if-eqz v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    invoke-virtual {v1, v11, v0}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->authenticate(IZ)V

    .line 217
    :cond_1
    const/4 v1, 0x0

    .line 218
    .local v1, "authState":I
    if-nez v0, :cond_2

    .line 219
    const/4 v1, 0x1

    move v9, v1

    goto :goto_0

    .line 222
    :cond_2
    if-eqz p6, :cond_3

    if-eqz p4, :cond_3

    .line 223
    const/4 v1, 0x2

    move v9, v1

    goto :goto_0

    .line 225
    :cond_3
    const/4 v1, 0x3

    move v9, v1

    .line 230
    .end local v1    # "authState":I
    .local v9, "authState":I
    :goto_0
    iget-wide v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    sub-long/2addr v1, v3

    move-wide v7, v1

    goto :goto_1

    .line 232
    :cond_4
    const-wide/16 v1, -0x1

    move-wide v7, v1

    :goto_1
    nop

    .line 244
    .local v7, "latency":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Authentication latency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricLogger"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 248
    return-void

    .line 251
    :cond_5
    iget-object v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v3, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v4, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    iget v5, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    .line 253
    invoke-static {p1, v11}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v6

    iget-object v12, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

    .line 251
    move-object v2, p2

    move/from16 v10, p4

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->authenticate(Lcom/android/server/biometrics/log/OperationContextExt;IIIZJIZILcom/android/server/biometrics/log/ALSProbe;)V

    .line 255
    return-void
.end method

.method public logOnEnrolled(IJZII)V
    .locals 13
    .param p1, "targetUserId"    # I
    .param p2, "latency"    # J
    .param p4, "enrollSuccessful"    # Z
    .param p5, "source"    # I
    .param p6, "templateId"    # I

    .line 260
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v0, :cond_0

    .line 261
    return-void

    .line 273
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enroll latency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v7, p2

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricLogger"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-direct {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    return-void

    .line 280
    :cond_1
    iget-object v2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v3, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v4, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    iget v5, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

    .line 281
    invoke-virtual {v0}, Lcom/android/server/biometrics/log/ALSProbe;->getMostRecentLux()F

    move-result v10

    .line 280
    move v6, p1

    move/from16 v9, p4

    move/from16 v11, p5

    move/from16 v12, p6

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->enroll(IIIIJZFII)V

    .line 283
    return-void
.end method

.method public logOnEnumerated(II[I[I)V
    .locals 7
    .param p1, "targetUserId"    # I
    .param p2, "result"    # I
    .param p3, "templateIdsHal"    # [I
    .param p4, "templateIdsFramework"    # [I

    .line 308
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v0, :cond_0

    .line 309
    return-void

    .line 320
    :cond_0
    invoke-direct {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    return-void

    .line 324
    :cond_1
    iget-object v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "targetUserId":I
    .end local p2    # "result":I
    .end local p3    # "templateIdsHal":[I
    .end local p4    # "templateIdsFramework":[I
    .local v3, "targetUserId":I
    .local v4, "result":I
    .local v5, "templateIdsHal":[I
    .local v6, "templateIdsFramework":[I
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->enumerated(III[I[I)V

    .line 326
    return-void
.end method

.method public logOnError(Landroid/content/Context;Lcom/android/server/biometrics/log/OperationContextExt;III)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "operationContext"    # Lcom/android/server/biometrics/log/OperationContextExt;
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I
    .param p5, "targetUserId"    # I

    .line 174
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v0, :cond_0

    .line 175
    return-void

    .line 178
    :cond_0
    iget-wide v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    :goto_0
    move-wide v8, v0

    .line 191
    .local v8, "latency":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error latency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricLogger"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-direct {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    return-void

    .line 198
    :cond_2
    iget-object v2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v4, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v5, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    iget v6, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    .line 200
    move/from16 v12, p5

    invoke-static {p1, v12}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v7

    .line 198
    move-object v3, p2

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->error(Lcom/android/server/biometrics/log/OperationContextExt;IIIZJIII)V

    .line 202
    return-void
.end method

.method public logOnUnEnrolled(III)V
    .locals 2
    .param p1, "targetUserId"    # I
    .param p2, "reason"    # I
    .param p3, "templateId"    # I

    .line 287
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v0, :cond_0

    .line 288
    return-void

    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->unenrolled(IIII)V

    .line 303
    return-void
.end method

.method public logUnknownEnrollmentInFramework()V
    .locals 2

    .line 339
    invoke-direct {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->reportUnknownTemplateEnrolledFramework(I)V

    .line 344
    return-void
.end method

.method public logUnknownEnrollmentInHal()V
    .locals 2

    .line 330
    invoke-direct {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->reportUnknownTemplateEnrolledHal(I)V

    .line 335
    return-void
.end method

.method public swapAction(Landroid/content/Context;I)Lcom/android/server/biometrics/log/BiometricLogger;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statsAction"    # I

    .line 98
    new-instance v0, Lcom/android/server/biometrics/log/BiometricLogger;

    iget v2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v4, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    const/4 v5, 0x0

    move-object v1, p1

    move v3, p2

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "statsAction":I
    .local v1, "context":Landroid/content/Context;
    .local v3, "statsAction":I
    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;IIILcom/android/server/biometrics/AuthenticationStatsCollector;)V

    return-object v0
.end method
