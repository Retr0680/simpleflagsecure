.class public Lcom/android/server/media/projection/MediaProjectionMetricsLogger;
.super Ljava/lang/Object;
.source "MediaProjectionMetricsLogger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaProjectionMetricsLogger"

.field private static final TARGET_UID_UNKNOWN:I = -0x2

.field private static final TIME_SINCE_LAST_ACTIVE_UNKNOWN:I = -0x1

.field private static sSingleton:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;


# instance fields
.field private final mFrameworkStatsLogWrapper:Lcom/android/server/media/projection/FrameworkStatsLogWrapper;

.field private mPreviousProjectionState:I

.field private final mPreviousTargetBounds:Landroid/graphics/Rect;

.field private mPreviousTargetWindowingMode:I

.field private final mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

.field private final mTimestampStore:Lcom/android/server/media/projection/MediaProjectionTimestampStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->sSingleton:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    return-void
.end method

.method constructor <init>(Lcom/android/server/media/projection/FrameworkStatsLogWrapper;Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;Lcom/android/server/media/projection/MediaProjectionTimestampStore;)V
    .locals 1
    .param p1, "frameworkStatsLogWrapper"    # Lcom/android/server/media/projection/FrameworkStatsLogWrapper;
    .param p2, "sessionIdGenerator"    # Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;
    .param p3, "timestampStore"    # Lcom/android/server/media/projection/MediaProjectionTimestampStore;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetBounds:Landroid/graphics/Rect;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetWindowingMode:I

    .line 87
    iput v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousProjectionState:I

    .line 94
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mFrameworkStatsLogWrapper:Lcom/android/server/media/projection/FrameworkStatsLogWrapper;

    .line 95
    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    .line 96
    iput-object p3, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mTimestampStore:Lcom/android/server/media/projection/MediaProjectionTimestampStore;

    .line 97
    return-void
.end method

.method private captureBoundsToTargetChangeType(Landroid/graphics/Rect;)I
    .locals 3
    .param p1, "captureBounds"    # Landroid/graphics/Rect;

    .line 275
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 276
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 278
    .local v0, "hasChangedSize":Z
    const-string v1, "MediaProjectionMetricsLogger"

    if-eqz v0, :cond_1

    .line 279
    const-string/jumbo v2, "targetChangeType= changeBounds"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v1, 0x3

    return v1

    .line 282
    :cond_1
    const-string/jumbo v2, "targetChangeType= changePosition"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v1, 0x2

    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/media/projection/MediaProjectionMetricsLogger;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 101
    sget-object v0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->sSingleton:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    new-instance v1, Lcom/android/server/media/projection/FrameworkStatsLogWrapper;

    invoke-direct {v1}, Lcom/android/server/media/projection/FrameworkStatsLogWrapper;-><init>()V

    .line 105
    invoke-static {p0}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getInstance(Landroid/content/Context;)Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    move-result-object v2

    .line 106
    invoke-static {p0}, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->getInstance(Landroid/content/Context;)Lcom/android/server/media/projection/MediaProjectionTimestampStore;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;-><init>(Lcom/android/server/media/projection/FrameworkStatsLogWrapper;Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;Lcom/android/server/media/projection/MediaProjectionTimestampStore;)V

    sput-object v0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->sSingleton:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    .line 108
    :cond_0
    sget-object v0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->sSingleton:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    return-object v0
.end method

.method private writeStateChanged(IIII)V
    .locals 10
    .param p1, "hostUid"    # I
    .param p2, "state"    # I
    .param p3, "sessionCreationSource"    # I
    .param p4, "sessionStopSource"    # I

    .line 380
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mFrameworkStatsLogWrapper:Lcom/android/server/media/projection/FrameworkStatsLogWrapper;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/16 v1, 0x2d9

    const/16 v2, 0x7b

    const/4 v4, 0x0

    move v5, p1

    move v3, p2

    move v8, p3

    move v9, p4

    .end local p1    # "hostUid":I
    .end local p2    # "state":I
    .end local p3    # "sessionCreationSource":I
    .end local p4    # "sessionStopSource":I
    .local v3, "state":I
    .local v5, "hostUid":I
    .local v8, "sessionCreationSource":I
    .local v9, "sessionStopSource":I
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/media/projection/FrameworkStatsLogWrapper;->writeStateChanged(IIIIIIIII)V

    .line 390
    return-void
.end method

.method private writeStateChanged(IIIIIII)V
    .locals 10
    .param p1, "sessionId"    # I
    .param p2, "state"    # I
    .param p3, "hostUid"    # I
    .param p4, "targetUid"    # I
    .param p5, "timeSinceLastActive"    # I
    .param p6, "creationSource"    # I
    .param p7, "stopSource"    # I

    .line 400
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mFrameworkStatsLogWrapper:Lcom/android/server/media/projection/FrameworkStatsLogWrapper;

    const/16 v1, 0x2d9

    iget v4, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousProjectionState:I

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/media/projection/FrameworkStatsLogWrapper;->writeStateChanged(IIIIIIIII)V

    .line 410
    iput p2, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousProjectionState:I

    .line 411
    return-void
.end method

.method private writeTargetChanged(IIIIIIIIII)V
    .locals 12
    .param p1, "sessionId"    # I
    .param p2, "targetType"    # I
    .param p3, "hostUid"    # I
    .param p4, "targetUid"    # I
    .param p5, "targetWindowingMode"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "centerX"    # I
    .param p9, "centerY"    # I
    .param p10, "targetChangeType"    # I

    .line 424
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mFrameworkStatsLogWrapper:Lcom/android/server/media/projection/FrameworkStatsLogWrapper;

    const/16 v1, 0x2da

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/media/projection/FrameworkStatsLogWrapper;->writeTargetChanged(IIIIIIIIIII)V

    .line 436
    return-void
.end method


# virtual methods
.method public contentToRecordToTargetType(I)I
    .locals 1
    .param p1, "recordContentType"    # I

    .line 288
    packed-switch p1, :pswitch_data_0

    .line 293
    const/4 v0, 0x0

    goto :goto_0

    .line 292
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 290
    :pswitch_1
    const/4 v0, 0x1

    .line 288
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public logAppSelectorDisplayed(I)V
    .locals 9
    .param p1, "hostUid"    # I

    .line 185
    const-string v0, "MediaProjectionMetricsLogger"

    const-string/jumbo v1, "logAppSelectorDisplayed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    .line 187
    invoke-virtual {v0}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getCurrentSessionId()I

    move-result v2

    .line 186
    const/4 v3, 0x3

    const/4 v5, -0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v4, p1

    .end local p1    # "hostUid":I
    .local v4, "hostUid":I
    invoke-direct/range {v1 .. v8}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->writeStateChanged(IIIIIII)V

    .line 194
    return-void
.end method

.method public logChangedCaptureBounds(IIILandroid/graphics/Rect;)V
    .locals 13
    .param p1, "contentToRecord"    # I
    .param p2, "hostUid"    # I
    .param p3, "targetUid"    # I
    .param p4, "captureBounds"    # Landroid/graphics/Rect;

    .line 256
    move-object/from16 v11, p4

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object v12, v1

    .line 257
    .local v12, "capturePosition":Landroid/graphics/Point;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "logChangedCaptureBounds: captureBounds= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " position= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaProjectionMetricsLogger"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    .line 261
    invoke-virtual {v1}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getCurrentSessionId()I

    move-result v1

    .line 262
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->contentToRecordToTargetType(I)I

    move-result v2

    iget v5, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetWindowingMode:I

    .line 266
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 267
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 268
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    .line 269
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    .line 270
    invoke-direct {p0, v11}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->captureBoundsToTargetChangeType(Landroid/graphics/Rect;)I

    move-result v10

    .line 260
    move-object v0, p0

    move v3, p2

    move/from16 v4, p3

    invoke-direct/range {v0 .. v10}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->writeTargetChanged(IIIIIIIIII)V

    .line 271
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 272
    return-void
.end method

.method public logChangedWindowingMode(IIII)V
    .locals 12
    .param p1, "contentToRecord"    # I
    .param p2, "hostUid"    # I
    .param p3, "targetUid"    # I
    .param p4, "windowingMode"    # I

    .line 227
    move/from16 v11, p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "logChangedWindowingMode: windowingMode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-static {v11}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    const-string v2, "MediaProjectionMetricsLogger"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string/jumbo v1, "targetChangeType= changeWindowingMode"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    .line 231
    invoke-virtual {v1}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getCurrentSessionId()I

    move-result v1

    .line 232
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->contentToRecordToTargetType(I)I

    move-result v2

    .line 235
    invoke-virtual {p0, v11}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->windowingModeToTargetWindowingMode(I)I

    move-result v5

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetBounds:Landroid/graphics/Rect;

    .line 236
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetBounds:Landroid/graphics/Rect;

    .line 237
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetBounds:Landroid/graphics/Rect;

    .line 238
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetBounds:Landroid/graphics/Rect;

    .line 239
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    .line 230
    const/4 v10, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v10}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->writeTargetChanged(IIIIIIIIII)V

    .line 241
    iput v11, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousTargetWindowingMode:I

    .line 242
    return-void
.end method

.method public logInProgress(II)V
    .locals 9
    .param p1, "hostUid"    # I
    .param p2, "targetUid"    # I

    .line 203
    const-string v0, "MediaProjectionMetricsLogger"

    const-string/jumbo v1, "logInProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    .line 205
    invoke-virtual {v0}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getCurrentSessionId()I

    move-result v2

    .line 204
    const/4 v3, 0x4

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v4, p1

    move v5, p2

    .end local p1    # "hostUid":I
    .end local p2    # "targetUid":I
    .local v4, "hostUid":I
    .local v5, "targetUid":I
    invoke-direct/range {v1 .. v8}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->writeStateChanged(IIIIIII)V

    .line 212
    return-void
.end method

.method public logInitiated(II)V
    .locals 10
    .param p1, "hostUid"    # I
    .param p2, "sessionCreationSource"    # I

    .line 129
    const-string v0, "MediaProjectionMetricsLogger"

    const-string/jumbo v1, "logInitiated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mTimestampStore:Lcom/android/server/media/projection/MediaProjectionTimestampStore;

    invoke-virtual {v0}, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->timeSinceLastActiveSession()Ljava/time/Duration;

    move-result-object v0

    .line 132
    .local v0, "durationSinceLastActiveSession":Ljava/time/Duration;
    if-nez v0, :cond_0

    .line 133
    const/4 v1, -0x1

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {v0}, Ljava/time/Duration;->toSeconds()J

    move-result-wide v1

    long-to-int v1, v1

    :goto_0
    move v7, v1

    .line 135
    .local v7, "timeSinceLastActiveInSeconds":I
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    .line 136
    invoke-virtual {v1}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->createAndGetNewSessionId()I

    move-result v3

    .line 135
    const/4 v4, 0x1

    const/4 v6, -0x2

    const/4 v9, 0x0

    move-object v2, p0

    move v5, p1

    move v8, p2

    .end local p1    # "hostUid":I
    .end local p2    # "sessionCreationSource":I
    .local v5, "hostUid":I
    .local v8, "sessionCreationSource":I
    invoke-direct/range {v2 .. v9}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->writeStateChanged(IIIIIII)V

    .line 143
    return-void
.end method

.method public logPermissionRequestDisplayed(I)V
    .locals 9
    .param p1, "hostUid"    # I

    .line 152
    const-string v0, "MediaProjectionMetricsLogger"

    const-string/jumbo v1, "logPermissionRequestDisplayed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    .line 154
    invoke-virtual {v0}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getCurrentSessionId()I

    move-result v2

    .line 153
    const/4 v3, 0x2

    const/4 v5, -0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v4, p1

    .end local p1    # "hostUid":I
    .local v4, "hostUid":I
    invoke-direct/range {v1 .. v8}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->writeStateChanged(IIIIIII)V

    .line 161
    return-void
.end method

.method public logProjectionPermissionRequestCancelled(I)V
    .locals 9
    .param p1, "hostUid"    # I

    .line 169
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    .line 170
    invoke-virtual {v0}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getCurrentSessionId()I

    move-result v2

    .line 169
    const/16 v3, 0x8

    const/4 v5, -0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v4, p1

    .end local p1    # "hostUid":I
    .local v4, "hostUid":I
    invoke-direct/range {v1 .. v8}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->writeStateChanged(IIIIIII)V

    .line 177
    return-void
.end method

.method public logStopped(III)V
    .locals 10
    .param p1, "hostUid"    # I
    .param p2, "targetUid"    # I
    .param p3, "stopReason"    # I

    .line 346
    iget v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousProjectionState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 349
    .local v0, "wasCaptureInProgress":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "logStopped: wasCaptureInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " stopReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaProjectionMetricsLogger"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    .line 352
    invoke-virtual {v1}, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->getCurrentSessionId()I

    move-result v3

    .line 358
    invoke-virtual {p0, p3}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->stopReasonToSessionStopSource(I)I

    move-result v9

    .line 351
    const/4 v4, 0x7

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v2, p0

    move v5, p1

    move v6, p2

    .end local p1    # "hostUid":I
    .end local p2    # "targetUid":I
    .local v5, "hostUid":I
    .local v6, "targetUid":I
    invoke-direct/range {v2 .. v9}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->writeStateChanged(IIIIIII)V

    .line 360
    if-eqz v0, :cond_1

    .line 361
    iget-object p1, v2, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mTimestampStore:Lcom/android/server/media/projection/MediaProjectionTimestampStore;

    invoke-virtual {p1}, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->registerActiveSessionEnded()V

    .line 363
    :cond_1
    return-void
.end method

.method public notifyProjectionStateChange(IIII)V
    .locals 0
    .param p1, "hostUid"    # I
    .param p2, "state"    # I
    .param p3, "sessionCreationSource"    # I
    .param p4, "sessionStopSource"    # I

    .line 371
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->writeStateChanged(IIII)V

    .line 372
    return-void
.end method

.method public stopReasonToSessionStopSource(I)I
    .locals 1
    .param p1, "stopReason"    # I

    .line 313
    packed-switch p1, :pswitch_data_0

    .line 335
    const/4 v0, 0x0

    goto :goto_0

    .line 333
    :pswitch_0
    const/16 v0, 0xa

    goto :goto_0

    .line 331
    :pswitch_1
    const/16 v0, 0x9

    goto :goto_0

    .line 329
    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 327
    :pswitch_3
    const/4 v0, 0x7

    goto :goto_0

    .line 325
    :pswitch_4
    const/4 v0, 0x6

    goto :goto_0

    .line 323
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 321
    :pswitch_6
    const/4 v0, 0x4

    goto :goto_0

    .line 319
    :pswitch_7
    const/4 v0, 0x3

    goto :goto_0

    .line 317
    :pswitch_8
    const/4 v0, 0x2

    goto :goto_0

    .line 315
    :pswitch_9
    const/4 v0, 0x1

    .line 313
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public windowingModeToTargetWindowingMode(I)I
    .locals 1
    .param p1, "windowingMode"    # I

    .line 299
    sparse-switch p1, :sswitch_data_0

    .line 307
    const/4 v0, 0x0

    goto :goto_0

    .line 305
    :sswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 303
    :sswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 301
    :sswitch_2
    const/4 v0, 0x2

    .line 299
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
