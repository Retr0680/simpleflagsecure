.class final Lcom/android/server/media/MediaRouterMetricLogger;
.super Ljava/lang/Object;
.source "MediaRouterMetricLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaRouterMetricLogger$RequestInfoCache;,
        Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final REQUEST_INFO_CACHE_CAPACITY:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MediaRouterMetricLogger"


# instance fields
.field private final mRequestInfoCache:Lcom/android/server/media/MediaRouterMetricLogger$RequestInfoCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    const-string v0, "MediaRouterMetricLogger"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaRouterMetricLogger;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfoCache;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfoCache;-><init>(Lcom/android/server/media/MediaRouterMetricLogger;I)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mRequestInfoCache:Lcom/android/server/media/MediaRouterMetricLogger$RequestInfoCache;

    .line 55
    return-void
.end method

.method public static convertResultFromReason(I)I
    .locals 1
    .param p0, "reason"    # I

    .line 152
    packed-switch p0, :pswitch_data_0

    .line 168
    const/4 v0, 0x0

    return v0

    .line 166
    :pswitch_0
    const/16 v0, 0x8

    return v0

    .line 164
    :pswitch_1
    const/4 v0, 0x7

    return v0

    .line 162
    :pswitch_2
    const/4 v0, 0x6

    return v0

    .line 160
    :pswitch_3
    const/4 v0, 0x5

    return v0

    .line 158
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 156
    :pswitch_5
    const/4 v0, 0x3

    return v0

    .line 154
    :pswitch_6
    const/4 v0, 0x2

    return v0

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
.end method

.method private logMediaRouterEvent(II)V
    .locals 2
    .param p1, "eventType"    # I
    .param p2, "result"    # I

    .line 183
    const/16 v0, 0x3f9

    invoke-static {v0, p1, p2}, Lcom/android/server/media/MediaRouterStatsLog;->write(III)V

    .line 186
    sget-boolean v0, Lcom/android/server/media/MediaRouterMetricLogger;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "logMediaRouterEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouterMetricLogger"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    return-void
.end method

.method private logScanningStarted()V
    .locals 2

    .line 133
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/media/MediaRouterMetricLogger;->logMediaRouterEvent(II)V

    .line 136
    return-void
.end method

.method private logScanningStopped()V
    .locals 2

    .line 140
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/media/MediaRouterMetricLogger;->logMediaRouterEvent(II)V

    .line 143
    return-void
.end method


# virtual methods
.method public addRequestInfo(JI)V
    .locals 4
    .param p1, "uniqueRequestId"    # J
    .param p3, "eventType"    # I

    .line 64
    new-instance v0, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;-><init>(JI)V

    .line 65
    .local v0, "requestInfo":Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;
    iget-object v1, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mRequestInfoCache:Lcom/android/server/media/MediaRouterMetricLogger$RequestInfoCache;

    iget-wide v2, v0, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;->mUniqueRequestId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public getRequestCacheSize()I
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mRequestInfoCache:Lcom/android/server/media/MediaRouterMetricLogger$RequestInfoCache;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public logOperationFailure(II)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "result"    # I

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaRouterMetricLogger;->logMediaRouterEvent(II)V

    .line 85
    return-void
.end method

.method public logOperationTriggered(II)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "result"    # I

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaRouterMetricLogger;->logMediaRouterEvent(II)V

    .line 94
    return-void
.end method

.method public logRequestResult(JI)V
    .locals 3
    .param p1, "uniqueRequestId"    # J
    .param p3, "result"    # I

    .line 103
    iget-object v0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mRequestInfoCache:Lcom/android/server/media/MediaRouterMetricLogger$RequestInfoCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;

    .line 104
    .local v0, "requestInfo":Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;
    if-nez v0, :cond_0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "logRequestResult: No RequestInfo found for uniqueRequestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaRouterMetricLogger"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void

    .line 112
    :cond_0
    iget v1, v0, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;->mEventType:I

    .line 113
    .local v1, "eventType":I
    invoke-direct {p0, v1, p3}, Lcom/android/server/media/MediaRouterMetricLogger;->logMediaRouterEvent(II)V

    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouterMetricLogger;->removeRequestInfo(J)V

    .line 116
    return-void
.end method

.method public removeRequestInfo(J)V
    .locals 2
    .param p1, "uniqueRequestId"    # J

    .line 74
    iget-object v0, p0, Lcom/android/server/media/MediaRouterMetricLogger;->mRequestInfoCache:Lcom/android/server/media/MediaRouterMetricLogger$RequestInfoCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public updateScanningState(Z)V
    .locals 0
    .param p1, "isScanning"    # Z

    .line 124
    if-nez p1, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterMetricLogger;->logScanningStopped()V

    goto :goto_0

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterMetricLogger;->logScanningStarted()V

    .line 129
    :goto_0
    return-void
.end method
