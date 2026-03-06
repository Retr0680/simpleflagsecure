.class Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;
.super Ljava/lang/Object;
.source "ContextHubService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/contexthub/ContextHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReliableMessageRecord"
.end annotation


# instance fields
.field public mContextHubId:I

.field mErrorCode:B

.field public mMessageSequenceNumber:I

.field public mTimestamp:J


# direct methods
.method constructor <init>(IJIB)V
    .locals 0
    .param p1, "contextHubId"    # I
    .param p2, "timestamp"    # J
    .param p4, "messageSequenceNumber"    # I
    .param p5, "errorCode"    # B

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput p1, p0, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mContextHubId:I

    .line 291
    iput-wide p2, p0, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mTimestamp:J

    .line 292
    iput p4, p0, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mMessageSequenceNumber:I

    .line 293
    iput-byte p5, p0, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mErrorCode:B

    .line 294
    return-void
.end method


# virtual methods
.method public getContextHubId()I
    .locals 1

    .line 297
    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mContextHubId:I

    return v0
.end method

.method public getErrorCode()B
    .locals 1

    .line 309
    iget-byte v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mErrorCode:B

    return v0
.end method

.method public getMessageSequenceNumber()I
    .locals 1

    .line 305
    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mMessageSequenceNumber:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 301
    iget-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mTimestamp:J

    return-wide v0
.end method

.method public isExpired()Z
    .locals 4

    .line 317
    iget-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mTimestamp:J

    sget-object v2, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->RELIABLE_MESSAGE_DUPLICATE_DETECTION_TIMEOUT:Ljava/time/Duration;

    .line 320
    invoke-virtual {v2}, Ljava/time/Duration;->toNanos()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 321
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 317
    :goto_0
    return v0
.end method

.method public setErrorCode(B)V
    .locals 0
    .param p1, "errorCode"    # B

    .line 313
    iput-byte p1, p0, Lcom/android/server/location/contexthub/ContextHubService$ReliableMessageRecord;->mErrorCode:B

    .line 314
    return-void
.end method
