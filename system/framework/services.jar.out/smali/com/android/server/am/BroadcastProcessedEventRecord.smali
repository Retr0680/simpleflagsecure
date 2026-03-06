.class final Lcom/android/server/am/BroadcastProcessedEventRecord;
.super Ljava/lang/Object;
.source "BroadcastProcessedEventRecord.java"


# static fields
.field private static final MIN_THRESHOLD_FOR_LOGGING_TIME_MILLIS:I = 0xa


# instance fields
.field private mBroadcastTypes:[I

.field private mIntentAction:Ljava/lang/String;

.field private mMaxReceiverFinishTimeMillis:J

.field private mNumberOfReceivers:I

.field private mReceiverProcessName:Ljava/lang/String;

.field private mReceiverUid:I

.field private mSenderUid:I

.field private mTotalBroadcastFinishTimeMillis:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mMaxReceiverFinishTimeMillis:J

    return-void
.end method


# virtual methods
.method public addReceiverFinishTime(J)V
    .locals 2
    .param p1, "timeMillis"    # J

    .line 84
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mTotalBroadcastFinishTimeMillis:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mTotalBroadcastFinishTimeMillis:J

    .line 85
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mMaxReceiverFinishTimeMillis:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mMaxReceiverFinishTimeMillis:J

    .line 86
    iget v0, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mNumberOfReceivers:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mNumberOfReceivers:I

    .line 87
    return-void
.end method

.method getBroadcastTypesForTest()[I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mBroadcastTypes:[I

    return-object v0
.end method

.method getIntentActionForTest()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mIntentAction:Ljava/lang/String;

    return-object v0
.end method

.method getMaxReceiverFinishTimeMillisForTest()J
    .locals 2

    .line 116
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mMaxReceiverFinishTimeMillis:J

    return-wide v0
.end method

.method getNumberOfReceiversForTest()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mNumberOfReceivers:I

    return v0
.end method

.method getReceiverProcessNameForTest()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mReceiverProcessName:Ljava/lang/String;

    return-object v0
.end method

.method getReceiverUidForTest()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mReceiverUid:I

    return v0
.end method

.method getSenderUidForTest()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mSenderUid:I

    return v0
.end method

.method getTotalBroadcastFinishTimeMillisForTest()J
    .locals 2

    .line 112
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mTotalBroadcastFinishTimeMillis:J

    return-wide v0
.end method

.method public logToStatsD()V
    .locals 12

    .line 127
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mTotalBroadcastFinishTimeMillis:J

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 128
    return-void

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mIntentAction:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mSenderUid:I

    iget v4, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mReceiverUid:I

    iget v5, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mNumberOfReceivers:I

    iget-object v6, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mReceiverProcessName:Ljava/lang/String;

    iget-wide v7, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mTotalBroadcastFinishTimeMillis:J

    iget-wide v9, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mMaxReceiverFinishTimeMillis:J

    iget-object v11, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mBroadcastTypes:[I

    const/16 v1, 0x404

    invoke-static/range {v1 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIILjava/lang/String;JJ[I)V

    .line 141
    return-void
.end method

.method public setBroadcastTypes([I)Lcom/android/server/am/BroadcastProcessedEventRecord;
    .locals 0
    .param p1, "broadcastTypes"    # [I

    .line 54
    iput-object p1, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mBroadcastTypes:[I

    .line 55
    return-object p0
.end method

.method public setIntentAction(Ljava/lang/String;)Lcom/android/server/am/BroadcastProcessedEventRecord;
    .locals 0
    .param p1, "intentAction"    # Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mIntentAction:Ljava/lang/String;

    .line 68
    return-object p0
.end method

.method public setReceiverProcessName(Ljava/lang/String;)Lcom/android/server/am/BroadcastProcessedEventRecord;
    .locals 0
    .param p1, "receiverProcessName"    # Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mReceiverProcessName:Ljava/lang/String;

    .line 62
    return-object p0
.end method

.method public setReceiverUid(I)Lcom/android/server/am/BroadcastProcessedEventRecord;
    .locals 0
    .param p1, "uid"    # I

    .line 79
    iput p1, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mReceiverUid:I

    .line 80
    return-object p0
.end method

.method public setSenderUid(I)Lcom/android/server/am/BroadcastProcessedEventRecord;
    .locals 0
    .param p1, "uid"    # I

    .line 73
    iput p1, p0, Lcom/android/server/am/BroadcastProcessedEventRecord;->mSenderUid:I

    .line 74
    return-object p0
.end method
