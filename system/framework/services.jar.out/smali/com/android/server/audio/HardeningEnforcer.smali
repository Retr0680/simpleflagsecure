.class public Lcom/android/server/audio/HardeningEnforcer;
.super Ljava/lang/Object;
.source "HardeningEnforcer.java"


# static fields
.field private static final ALLOWED:I = 0x0

.field private static final DEBUG:Z = false

.field private static final DENIED_IF_FULL:I = 0x2

.field private static final DENIED_IF_PARTIAL:I = 0x1

.field private static final LOG_NB_EVENTS:I = 0x14

.field public static final METHOD_AUDIO_MANAGER_ADJUST_STREAM_VOLUME:I = 0x67

.field public static final METHOD_AUDIO_MANAGER_ADJUST_SUGGESTED_STREAM_VOLUME:I = 0x66

.field public static final METHOD_AUDIO_MANAGER_ADJUST_VOLUME:I = 0x65

.field public static final METHOD_AUDIO_MANAGER_REQUEST_AUDIO_FOCUS:I = 0x12c

.field public static final METHOD_AUDIO_MANAGER_SET_RINGER_MODE:I = 0xc8

.field public static final METHOD_AUDIO_MANAGER_SET_STREAM_VOLUME:I = 0x64

.field static final METRIC_COUNTERS_FOCUS_DENIAL:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final METRIC_COUNTERS_FOCUS_GRANT:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AS.HardeningEnforcer"


# instance fields
.field final mActivityManager:Landroid/app/ActivityManager;

.field final mAppOps:Landroid/app/AppOpsManager;

.field final mContext:Landroid/content/Context;

.field final mEventLogger:Lcom/android/server/utils/EventLogger;

.field final mIsAutomotive:Z

.field final mPackageManager:Landroid/content/pm/PackageManager;

.field final mShouldEnableAllHardening:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 62
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/android/server/audio/HardeningEnforcer;->METRIC_COUNTERS_FOCUS_DENIAL:Landroid/util/SparseArray;

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/android/server/audio/HardeningEnforcer;->METRIC_COUNTERS_FOCUS_GRANT:Landroid/util/SparseArray;

    .line 66
    sget-object v0, Lcom/android/server/audio/HardeningEnforcer;->METRIC_COUNTERS_FOCUS_GRANT:Landroid/util/SparseArray;

    const-string/jumbo v2, "media_audio.value_audio_focus_gain_granted"

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    sget-object v0, Lcom/android/server/audio/HardeningEnforcer;->METRIC_COUNTERS_FOCUS_GRANT:Landroid/util/SparseArray;

    const-string/jumbo v2, "media_audio.value_audio_focus_gain_transient_granted"

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    sget-object v0, Lcom/android/server/audio/HardeningEnforcer;->METRIC_COUNTERS_FOCUS_GRANT:Landroid/util/SparseArray;

    const-string/jumbo v2, "media_audio.value_audio_focus_gain_transient_duck_granted"

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    sget-object v0, Lcom/android/server/audio/HardeningEnforcer;->METRIC_COUNTERS_FOCUS_GRANT:Landroid/util/SparseArray;

    const-string/jumbo v2, "media_audio.value_audio_focus_gain_transient_excl_granted"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    sget-object v0, Lcom/android/server/audio/HardeningEnforcer;->METRIC_COUNTERS_FOCUS_DENIAL:Landroid/util/SparseArray;

    const-string/jumbo v2, "media_audio.value_audio_focus_gain_appops_denial"

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    sget-object v0, Lcom/android/server/audio/HardeningEnforcer;->METRIC_COUNTERS_FOCUS_DENIAL:Landroid/util/SparseArray;

    const-string/jumbo v2, "media_audio.value_audio_focus_gain_transient_appops_denial"

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    sget-object v0, Lcom/android/server/audio/HardeningEnforcer;->METRIC_COUNTERS_FOCUS_DENIAL:Landroid/util/SparseArray;

    const-string/jumbo v2, "media_audio.value_audio_focus_gain_transient_duck_appops_denial"

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    sget-object v0, Lcom/android/server/audio/HardeningEnforcer;->METRIC_COUNTERS_FOCUS_DENIAL:Landroid/util/SparseArray;

    const-string/jumbo v2, "media_audio.value_audio_focus_gain_transient_excl_appops_denial"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/util/concurrent/atomic/AtomicBoolean;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManager;Lcom/android/server/utils/EventLogger;)V
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "isAutomotive"    # Z
    .param p3, "shouldEnableHardening"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p4, "appOps"    # Landroid/app/AppOpsManager;
    .param p5, "pm"    # Landroid/content/pm/PackageManager;
    .param p6, "logger"    # Lcom/android/server/utils/EventLogger;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/android/server/audio/HardeningEnforcer;->mContext:Landroid/content/Context;

    .line 119
    iput-boolean p2, p0, Lcom/android/server/audio/HardeningEnforcer;->mIsAutomotive:Z

    .line 120
    iput-object p3, p0, Lcom/android/server/audio/HardeningEnforcer;->mShouldEnableAllHardening:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 121
    iput-object p4, p0, Lcom/android/server/audio/HardeningEnforcer;->mAppOps:Landroid/app/AppOpsManager;

    .line 122
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/audio/HardeningEnforcer;->mActivityManager:Landroid/app/ActivityManager;

    .line 123
    iput-object p5, p0, Lcom/android/server/audio/HardeningEnforcer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 124
    iput-object p6, p0, Lcom/android/server/audio/HardeningEnforcer;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 125
    return-void
.end method

.method private getPackNameForUid(I)Ljava/lang/String;
    .locals 5
    .param p1, "uid"    # I

    .line 280
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 282
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/HardeningEnforcer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "names":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v3, v2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    aget-object v4, v2, v3

    .line 285
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    aget-object v3, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 288
    return-object v3

    .line 290
    .end local v2    # "names":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 286
    .restart local v2    # "names":[Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 286
    return-object v3

    .line 290
    .end local v2    # "names":[Ljava/lang/String;
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 291
    throw v2
.end method

.method private noteOp(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lcom/android/server/audio/HardeningEnforcer;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "op":I
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "attributionTag":Ljava/lang/String;
    .local v1, "op":I
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "attributionTag":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 306
    const/4 p1, 0x0

    return p1

    .line 308
    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected blockFocusMethod(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 19
    .param p1, "callingUid"    # I
    .param p2, "focusMethod"    # I
    .param p3, "clientId"    # Ljava/lang/String;
    .param p4, "focusReqType"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "attributionTag"    # Ljava/lang/String;
    .param p7, "targetSdk"    # I

    .line 199
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p6

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 200
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/HardeningEnforcer;->getPackNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .end local p5    # "packageName":Ljava/lang/String;
    .local v5, "packageName":Ljava/lang/String;
    goto :goto_0

    .line 199
    .end local v5    # "packageName":Ljava/lang/String;
    .restart local p5    # "packageName":Ljava/lang/String;
    :cond_0
    move-object/from16 v5, p5

    .line 203
    .end local p5    # "packageName":Ljava/lang/String;
    .restart local v5    # "packageName":Ljava/lang/String;
    :goto_0
    const/16 v6, 0x9a

    invoke-direct {v0, v6, v1, v5, v4}, Lcom/android/server/audio/HardeningEnforcer;->noteOp(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    .line 205
    .local v6, "blockedIfFull":Z
    const/4 v8, 0x1

    .line 207
    .local v8, "blocked":Z
    const/4 v9, 0x0

    .line 208
    .local v9, "unblockedBySdk":Z
    const/16 v10, 0x20

    invoke-direct {v0, v10, v1, v5, v4}, Lcom/android/server/audio/HardeningEnforcer;->noteOp(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 212
    const/4 v8, 0x0

    move/from16 v11, p7

    goto :goto_1

    .line 213
    :cond_1
    const/16 v10, 0x23

    move/from16 v11, p7

    if-ge v11, v10, :cond_2

    .line 218
    const/4 v9, 0x1

    .line 221
    :cond_2
    :goto_1
    iget-object v10, v0, Lcom/android/server/audio/HardeningEnforcer;->mShouldEnableAllHardening:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    if-nez v10, :cond_3

    if-nez v9, :cond_4

    :cond_3
    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    :goto_2
    move v10, v7

    .line 222
    .local v10, "enforced":Z
    :goto_3
    iget-object v13, v0, Lcom/android/server/audio/HardeningEnforcer;->mShouldEnableAllHardening:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v13

    .line 224
    .local v13, "enforcedFull":Z
    if-eqz v8, :cond_5

    if-eqz v10, :cond_5

    move v14, v7

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    :goto_4
    invoke-virtual {v0, v14, v3, v1, v9}, Lcom/android/server/audio/HardeningEnforcer;->metricsLogFocusReq(ZIIZ)V

    .line 226
    const-string v14, "AS.HardeningEnforcer"

    const-string v7, "), "

    const-string v12, " ("

    const-string/jumbo v15, "ignored for "

    const-string v16, " "

    const-string v17, " would be "

    const-string v4, "AudioHardening focus request for req "

    if-eqz v8, :cond_8

    .line 227
    move/from16 v18, v6

    .end local v6    # "blockedIfFull":Z
    .local v18, "blockedIfFull":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    if-nez v10, :cond_6

    move-object/from16 v4, v17

    goto :goto_5

    :cond_6
    move-object/from16 v4, v16

    :goto_5
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", level: partial"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, "msg":Ljava/lang/String;
    iget-object v6, v0, Lcom/android/server/audio/HardeningEnforcer;->mEventLogger:Lcom/android/server/utils/EventLogger;

    const/4 v7, 0x2

    invoke-virtual {v6, v4, v7, v14}, Lcom/android/server/utils/EventLogger;->enqueueAndSlog(Ljava/lang/String;ILjava/lang/String;)V

    .line 235
    .end local v4    # "msg":Ljava/lang/String;
    :cond_7
    goto :goto_7

    .end local v18    # "blockedIfFull":Z
    .restart local v6    # "blockedIfFull":Z
    :cond_8
    move/from16 v18, v6

    .end local v6    # "blockedIfFull":Z
    .restart local v18    # "blockedIfFull":Z
    if-eqz v18, :cond_7

    .line 236
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    if-nez v13, :cond_9

    move-object/from16 v4, v17

    goto :goto_6

    :cond_9
    move-object/from16 v4, v16

    :goto_6
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", level: full"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 243
    .restart local v4    # "msg":Ljava/lang/String;
    iget-object v6, v0, Lcom/android/server/audio/HardeningEnforcer;->mEventLogger:Lcom/android/server/utils/EventLogger;

    const/4 v7, 0x2

    invoke-virtual {v6, v4, v7, v14}, Lcom/android/server/utils/EventLogger;->enqueueAndSlog(Ljava/lang/String;ILjava/lang/String;)V

    .line 246
    .end local v4    # "msg":Ljava/lang/String;
    :goto_7
    if-eqz v8, :cond_a

    if-nez v10, :cond_b

    :cond_a
    if-eqz v18, :cond_c

    if-eqz v13, :cond_c

    :cond_b
    const/4 v7, 0x1

    goto :goto_8

    :cond_c
    const/4 v7, 0x0

    :goto_8
    return v7
.end method

.method protected blockVolumeMethod(ILjava/lang/String;I)Z
    .locals 8
    .param p1, "volumeMethod"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 135
    iget-object v0, p0, Lcom/android/server/audio/HardeningEnforcer;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 138
    return v1

    .line 141
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/audio/HardeningEnforcer;->mIsAutomotive:Z

    const-string v2, "AS.HardeningEnforcer"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 142
    nop

    .line 146
    const/16 v0, 0x2710

    if-ge p3, v0, :cond_1

    .line 147
    return v1

    .line 151
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preventing volume method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return v3

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/HardeningEnforcer;->mShouldEnableAllHardening:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 158
    .local v0, "enforced":Z
    const/16 v4, 0x9b

    const/4 v5, 0x0

    invoke-direct {p0, v4, p3, p2, v5}, Lcom/android/server/audio/HardeningEnforcer;->noteOp(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 160
    const-string/jumbo v4, "media_audio.value_audio_volume_hardening_partial_restriction"

    invoke-static {v4, p3}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 162
    const/4 v4, 0x1

    .local v4, "allowed":I
    goto :goto_0

    .line 163
    .end local v4    # "allowed":I
    :cond_3
    const/16 v4, 0x9a

    invoke-direct {p0, v4, p3, p2, v5}, Lcom/android/server/audio/HardeningEnforcer;->noteOp(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 165
    const-string/jumbo v4, "media_audio.value_audio_volume_hardening_strict_restriction"

    invoke-static {v4, p3}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 167
    const/4 v4, 0x2

    .restart local v4    # "allowed":I
    goto :goto_0

    .line 170
    .end local v4    # "allowed":I
    :cond_4
    const-string/jumbo v4, "media_audio.value_audio_volume_hardening_allowed"

    invoke-static {v4, p3}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 172
    const/4 v4, 0x0

    .line 174
    .restart local v4    # "allowed":I
    :goto_0
    if-eqz v4, :cond_7

    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AudioHardening volume control for api "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    if-nez v0, :cond_5

    const-string v6, " would be "

    goto :goto_1

    :cond_5
    const-string v6, " "

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ignored for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-direct {p0, p3}, Lcom/android/server/audio/HardeningEnforcer;->getPackNameForUid(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "), level: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    if-ne v4, v3, :cond_6

    const-string/jumbo v6, "partial"

    goto :goto_2

    :cond_6
    const-string/jumbo v6, "full"

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, "msg":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/audio/HardeningEnforcer;->mEventLogger:Lcom/android/server/utils/EventLogger;

    const/4 v7, 0x2

    invoke-virtual {v6, v5, v7, v2}, Lcom/android/server/utils/EventLogger;->enqueueAndSlog(Ljava/lang/String;ILjava/lang/String;)V

    .line 183
    .end local v5    # "msg":Ljava/lang/String;
    :cond_7
    if-eqz v0, :cond_8

    if-eqz v4, :cond_8

    move v1, v3

    :cond_8
    return v1
.end method

.method metricsLogFocusReq(ZIIZ)V
    .locals 5
    .param p1, "blocked"    # Z
    .param p2, "focusReq"    # I
    .param p3, "callingUid"    # I
    .param p4, "unblockedBySdk"    # Z

    .line 259
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/audio/HardeningEnforcer;->METRIC_COUNTERS_FOCUS_DENIAL:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 260
    :cond_0
    sget-object v0, Lcom/android/server/audio/HardeningEnforcer;->METRIC_COUNTERS_FOCUS_GRANT:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    nop

    .line 261
    .local v0, "metricId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "AS.HardeningEnforcer"

    if-eqz v1, :cond_1

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad string for focus metrics gain:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " blocked:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void

    .line 266
    :cond_1
    :try_start_0
    invoke-static {v0, p3}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 267
    if-nez p1, :cond_2

    if-eqz p4, :cond_2

    .line 270
    const-string/jumbo v1, "media_audio.value_audio_focus_grant_hardening_waived_by_sdk"

    invoke-static {v1, p3}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 273
    :catch_0
    move-exception v1

    goto :goto_2

    .line 276
    :cond_2
    :goto_1
    goto :goto_3

    .line 273
    :goto_2
    nop

    .line 274
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Counter error metricId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for focus req:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " from uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method
