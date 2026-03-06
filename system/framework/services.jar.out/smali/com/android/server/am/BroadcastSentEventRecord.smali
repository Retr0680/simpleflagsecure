.class final Lcom/android/server/am/BroadcastSentEventRecord;
.super Ljava/lang/Object;
.source "BroadcastSentEventRecord.java"


# instance fields
.field private mBroadcastRecord:Lcom/android/server/am/BroadcastRecord;

.field private mIntent:Landroid/content/Intent;

.field private mOrdered:Z

.field private mOriginalIntentFlags:I

.field private mRealSenderUid:I

.field private mResult:I

.field private mResultRequested:Z

.field private mSenderProcState:I

.field private mSenderUid:I

.field private mSenderUidState:I

.field private mSticky:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculateTypesForLogging()[I
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mBroadcastRecord:Lcom/android/server/am/BroadcastRecord;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mBroadcastRecord:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastRecord;->calculateTypesForLogging()[I

    move-result-object v0

    return-object v0

    .line 121
    :cond_0
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 122
    .local v0, "types":Landroid/util/IntArray;
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mSticky:Z

    if-eqz v1, :cond_1

    .line 123
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 125
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mOrdered:Z

    if-eqz v1, :cond_2

    .line 126
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 128
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mResultRequested:Z

    if-eqz v1, :cond_3

    .line 129
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 131
    :cond_3
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public logToStatsd()V
    .locals 18

    .line 95
    move-object/from16 v0, p0

    .line 96
    iget v1, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mResult:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 103
    move v1, v3

    goto :goto_0

    .line 98
    :pswitch_0
    move v1, v2

    goto :goto_0

    .line 100
    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    .line 102
    :pswitch_2
    const/4 v1, 0x3

    .line 103
    :goto_0
    move v13, v1

    .line 105
    .local v13, "loggingResult":I
    invoke-direct {v0}, Lcom/android/server/am/BroadcastSentEventRecord;->calculateTypesForLogging()[I

    move-result-object v17

    .line 106
    .local v17, "types":[I
    iget-object v1, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v6

    iget v7, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mOriginalIntentFlags:I

    iget v8, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mSenderUid:I

    iget v9, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mRealSenderUid:I

    iget-object v1, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mIntent:Landroid/content/Intent;

    .line 107
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move v10, v2

    goto :goto_1

    :cond_0
    move v10, v3

    :goto_1
    iget-object v1, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mIntent:Landroid/content/Intent;

    .line 108
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    move v11, v2

    goto :goto_2

    :cond_1
    move v11, v3

    .line 109
    :goto_2
    iget-object v1, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mBroadcastRecord:Lcom/android/server/am/BroadcastRecord;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mBroadcastRecord:Lcom/android/server/am/BroadcastRecord;

    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v12, v1

    goto :goto_3

    :cond_2
    move v12, v3

    .line 111
    :goto_3
    iget-object v1, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mBroadcastRecord:Lcom/android/server/am/BroadcastRecord;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mBroadcastRecord:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupPolicy()I

    move-result v3

    :cond_3
    move v14, v3

    iget v1, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mSenderProcState:I

    .line 112
    invoke-static {v1}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v15

    iget v1, v0, Lcom/android/server/am/BroadcastSentEventRecord;->mSenderUidState:I

    .line 113
    invoke-static {v1}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v16

    .line 106
    const/16 v4, 0x39a

    invoke-static/range {v4 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIIIZZIIIII[I)V

    .line 115
    .end local v13    # "loggingResult":I
    .end local v17    # "types":[I
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBroadcastRecord(Lcom/android/server/am/BroadcastRecord;)V
    .locals 0
    .param p1, "record"    # Lcom/android/server/am/BroadcastRecord;

    .line 87
    iput-object p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mBroadcastRecord:Lcom/android/server/am/BroadcastRecord;

    .line 88
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 51
    iput-object p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mIntent:Landroid/content/Intent;

    .line 52
    return-void
.end method

.method public setOrdered(Z)V
    .locals 0
    .param p1, "ordered"    # Z

    .line 71
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mOrdered:Z

    .line 72
    return-void
.end method

.method public setOriginalIntentFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 63
    iput p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mOriginalIntentFlags:I

    .line 64
    return-void
.end method

.method public setRealSenderUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 59
    iput p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mRealSenderUid:I

    .line 60
    return-void
.end method

.method public setResult(I)V
    .locals 0
    .param p1, "result"    # I

    .line 91
    iput p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mResult:I

    .line 92
    return-void
.end method

.method public setResultRequested(Z)V
    .locals 0
    .param p1, "resultRequested"    # Z

    .line 75
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mResultRequested:Z

    .line 76
    return-void
.end method

.method public setSenderProcState(I)V
    .locals 0
    .param p1, "procState"    # I

    .line 79
    iput p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mSenderProcState:I

    .line 80
    return-void
.end method

.method public setSenderUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 55
    iput p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mSenderUid:I

    .line 56
    return-void
.end method

.method public setSenderUidState(I)V
    .locals 0
    .param p1, "procState"    # I

    .line 83
    iput p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mSenderUidState:I

    .line 84
    return-void
.end method

.method public setSticky(Z)V
    .locals 0
    .param p1, "sticky"    # Z

    .line 67
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastSentEventRecord;->mSticky:Z

    .line 68
    return-void
.end method
