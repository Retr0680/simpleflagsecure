.class Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;
.super Landroid/os/Handler;
.source "DataAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/intrusiondetection/DataAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventHandler"
.end annotation


# instance fields
.field private final mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/android/server/security/intrusiondetection/DataAggregator;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "dataAggregator"    # Lcom/android/server/security/intrusiondetection/DataAggregator;

    .line 130
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 131
    iput-object p2, p0, Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;->mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

    .line 132
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IntrusionDetection DataAggregator"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;->mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

    invoke-static {v0}, Lcom/android/server/security/intrusiondetection/DataAggregator;->-$$Nest$monDisable(Lcom/android/server/security/intrusiondetection/DataAggregator;)V

    .line 144
    goto :goto_0

    .line 140
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;->mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/server/security/intrusiondetection/DataAggregator;->-$$Nest$monNewBatchData(Lcom/android/server/security/intrusiondetection/DataAggregator;Ljava/util/List;)V

    .line 141
    goto :goto_0

    .line 137
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;->mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/security/intrusiondetection/IntrusionDetectionEvent;

    invoke-static {v0, v1}, Lcom/android/server/security/intrusiondetection/DataAggregator;->-$$Nest$monNewSingleData(Lcom/android/server/security/intrusiondetection/DataAggregator;Landroid/security/intrusiondetection/IntrusionDetectionEvent;)V

    .line 138
    nop

    .line 148
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
