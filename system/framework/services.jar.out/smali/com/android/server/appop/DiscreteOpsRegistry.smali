.class abstract Lcom/android/server/appop/DiscreteOpsRegistry;
.super Ljava/lang/Object;
.source "DiscreteOpsRegistry.java"


# static fields
.field static final ADDITIONAL_DISCRETE_OPS:[I

.field static final DEBUG_LOG:Z = false

.field static final DEFAULT_DISCRETE_HISTORY_CUTOFF:J

.field static final DEFAULT_DISCRETE_HISTORY_QUANTIZATION:J

.field static final IMPORTANT_OPS_FOR_SECURITY:[I

.field private static final LEGACY_OPS:Ljava/lang/String; = "1,0,147,26,27,100,101,120,136,149,152,150,141"

.field static final MAXIMUM_DISCRETE_HISTORY_CUTOFF:J

.field static final OP_FLAGS_DISCRETE:I = 0xb

.field static final PROPERTY_DISCRETE_FLAGS:Ljava/lang/String; = "discrete_history_op_flags"

.field static final PROPERTY_DISCRETE_HISTORY_CUTOFF:Ljava/lang/String; = "discrete_history_cutoff_millis"

.field static final PROPERTY_DISCRETE_HISTORY_QUANTIZATION:Ljava/lang/String; = "discrete_history_quantization_millis"

.field static final PROPERTY_DISCRETE_OPS_LIST:Ljava/lang/String; = "discrete_history_ops_cslist"

.field private static final TAG:Ljava/lang/String;

.field static sDiscreteFlags:I

.field static sDiscreteHistoryCutoff:J

.field static sDiscreteHistoryQuantization:J

.field static sDiscreteOps:[I


# instance fields
.field mDebugMode:Z


# direct methods
.method public static synthetic $r8$lambda$-POzhrtzjSSLkwb74LtsON-5_4M(Lcom/android/server/appop/DiscreteOpsRegistry;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/appop/DiscreteOpsRegistry;->lambda$systemReady$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 89
    const-class v0, Lcom/android/server/appop/DiscreteOpsRegistry;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appop/DiscreteOpsRegistry;->TAG:Ljava/lang/String;

    .line 99
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/appop/DiscreteOpsRegistry;->IMPORTANT_OPS_FOR_SECURITY:[I

    .line 111
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/appop/DiscreteOpsRegistry;->ADDITIONAL_DISCRETE_OPS:[I

    .line 128
    const-wide/16 v0, 0x7

    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->DEFAULT_DISCRETE_HISTORY_CUTOFF:J

    .line 129
    const-wide/16 v0, 0x1e

    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->MAXIMUM_DISCRETE_HISTORY_CUTOFF:J

    .line 133
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->DEFAULT_DISCRETE_HISTORY_QUANTIZATION:J

    .line 138
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteOps:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x19
        0x3f
        0x49
        0x58
        0x59
        0x2a
        0x29
    .end array-data

    :array_1
    .array-data 4
        0x64
        0x78
        0x88
        0x65
        0x93
        0x8d
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/appop/DiscreteOpsRegistry;->mDebugMode:Z

    return-void
.end method

.method static discretizeDuration(J)J
    .locals 4
    .param p0, "duration"    # J

    .line 203
    const-wide/16 v0, -0x1

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    sget-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryQuantization:J

    add-long/2addr v0, p0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryQuantization:J

    div-long/2addr v0, v2

    sget-wide v2, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryQuantization:J

    mul-long/2addr v0, v2

    .line 203
    :goto_0
    return-wide v0
.end method

.method static discretizeTimeStamp(J)J
    .locals 4
    .param p0, "timeStamp"    # J

    .line 198
    sget-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryQuantization:J

    div-long v0, p0, v0

    sget-wide v2, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryQuantization:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private static getDefaultLegacyOps()[I
    .locals 1

    .line 273
    const-string v0, "1,0,147,26,27,100,101,120,136,149,152,150,141"

    invoke-static {v0}, Lcom/android/server/appop/DiscreteOpsRegistry;->parseOpsList(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultOpsList()[I
    .locals 1

    .line 261
    nop

    .line 262
    invoke-static {}, Lcom/android/server/appop/DiscreteOpsRegistry;->getDefaultLegacyOps()[I

    move-result-object v0

    return-object v0
.end method

.method private static getRuntimePermissionOps()Landroid/util/IntArray;
    .locals 3

    .line 248
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 249
    .local v0, "runtimeOps":Landroid/util/IntArray;
    const/4 v1, 0x0

    .local v1, "op":I
    :goto_0
    const/16 v2, 0xa3

    if-ge v1, v2, :cond_1

    .line 250
    invoke-static {v1}, Landroid/app/AppOpsManager;->opIsRuntimePermission(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 249
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 254
    .end local v1    # "op":I
    return-object v0
.end method

.method static isDiscreteOp(II)Z
    .locals 2
    .param p0, "op"    # I
    .param p1, "flags"    # I

    .line 208
    sget-object v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteOps:[I

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 209
    return v1

    .line 211
    :cond_0
    sget v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteFlags:I

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    .line 212
    return v1

    .line 214
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic lambda$systemReady$0(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0
    .param p1, "p"    # Landroid/provider/DeviceConfig$Properties;

    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/appop/DiscreteOpsRegistry;->setDiscreteHistoryParameters(Landroid/provider/DeviceConfig$Properties;)V

    .line 150
    return-void
.end method

.method private static parseOpsList(Ljava/lang/String;)[I
    .locals 7
    .param p0, "opsList"    # Ljava/lang/String;

    .line 278
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .local v0, "strArr":[Ljava/lang/String;
    goto :goto_0

    .line 281
    .end local v0    # "strArr":[Ljava/lang/String;
    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 283
    .restart local v0    # "strArr":[Ljava/lang/String;
    :goto_0
    array-length v1, v0

    .line 284
    .local v1, "nOps":I
    new-array v2, v1, [I

    .line 286
    .local v2, "result":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 287
    :try_start_0
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 289
    .end local v3    # "i":I
    :catch_0
    move-exception v3

    .line 290
    .local v3, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/android/server/appop/DiscreteOpsRegistry;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse Discrete ops list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-static {}, Lcom/android/server/appop/DiscreteOpsRegistry;->getDefaultOpsList()[I

    move-result-object v4

    return-object v4

    .line 286
    .local v3, "i":I
    :cond_1
    nop

    .line 292
    .end local v3    # "i":I
    nop

    .line 293
    return-object v2
.end method

.method private setDiscreteHistoryParameters(Landroid/provider/DeviceConfig$Properties;)V
    .locals 4
    .param p1, "p"    # Landroid/provider/DeviceConfig$Properties;

    .line 218
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "discrete_history_cutoff_millis"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    sget-wide v2, Lcom/android/server/appop/DiscreteOpsRegistry;->DEFAULT_DISCRETE_HISTORY_CUTOFF:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryCutoff:J

    .line 221
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/appop/DiscreteOpsRegistry;->mDebugMode:Z

    if-nez v0, :cond_1

    .line 222
    sget-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->MAXIMUM_DISCRETE_HISTORY_CUTOFF:J

    sget-wide v2, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryCutoff:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->min(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryCutoff:J

    goto :goto_0

    .line 226
    :cond_0
    sget-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->DEFAULT_DISCRETE_HISTORY_CUTOFF:J

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryCutoff:J

    .line 228
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "discrete_history_quantization_millis"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    sget-wide v2, Lcom/android/server/appop/DiscreteOpsRegistry;->DEFAULT_DISCRETE_HISTORY_QUANTIZATION:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryQuantization:J

    .line 231
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/appop/DiscreteOpsRegistry;->mDebugMode:Z

    if-nez v0, :cond_3

    .line 232
    sget-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->DEFAULT_DISCRETE_HISTORY_QUANTIZATION:J

    sget-wide v2, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryQuantization:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryQuantization:J

    goto :goto_1

    .line 236
    :cond_2
    sget-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->DEFAULT_DISCRETE_HISTORY_QUANTIZATION:J

    sput-wide v0, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryQuantization:J

    .line 238
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "discrete_history_op_flags"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0xb

    if-eqz v0, :cond_4

    .line 239
    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_2

    :cond_4
    nop

    :goto_2
    sput v2, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteFlags:I

    .line 240
    const-string v0, "discrete_history_ops_cslist"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "opsListConfig":Ljava/lang/String;
    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/server/appop/DiscreteOpsRegistry;->getDefaultOpsList()[I

    move-result-object v1

    goto :goto_3

    :cond_5
    invoke-static {v0}, Lcom/android/server/appop/DiscreteOpsRegistry;->parseOpsList(Ljava/lang/String;)[I

    move-result-object v1

    :goto_3
    sput-object v1, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteOps:[I

    .line 243
    sget-object v1, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteOps:[I

    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 244
    return-void
.end method


# virtual methods
.method abstract addFilteredDiscreteOpsToHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V
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
.end method

.method abstract clearHistory()V
.end method

.method abstract clearHistory(ILjava/lang/String;)V
.end method

.method abstract dump(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;IILjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
.end method

.method abstract offsetHistory(J)V
.end method

.method abstract recordDiscreteAccess(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJJII)V
.end method

.method setDebugMode(Z)V
    .locals 0
    .param p1, "debugMode"    # Z

    .line 194
    iput-boolean p1, p0, Lcom/android/server/appop/DiscreteOpsRegistry;->mDebugMode:Z

    .line 195
    return-void
.end method

.method shutdown()V
    .locals 0

    .line 167
    return-void
.end method

.method systemReady()V
    .locals 3

    .line 147
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/appop/DiscreteOpsRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/appop/DiscreteOpsRegistry$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appop/DiscreteOpsRegistry;)V

    const-string/jumbo v2, "privacy"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 151
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/appop/DiscreteOpsRegistry;->setDiscreteHistoryParameters(Landroid/provider/DeviceConfig$Properties;)V

    .line 152
    return-void
.end method

.method abstract writeAndClearOldAccessHistory()V
.end method
