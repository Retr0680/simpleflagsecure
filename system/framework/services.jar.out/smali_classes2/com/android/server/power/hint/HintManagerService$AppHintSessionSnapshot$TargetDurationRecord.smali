.class Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;
.super Ljava/lang/Object;
.source "HintManagerService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TargetDurationRecord"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;",
        ">;"
    }
.end annotation


# instance fields
.field mCount:I

.field mTargetDurationNs:J

.field mTimestamp:J


# direct methods
.method constructor <init>(Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;J)V
    .locals 2
    .param p1, "this$1"    # Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;
    .param p2, "targetDurationNs"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    iput-wide p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mTargetDurationNs:J

    .line 522
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mTimestamp:J

    .line 523
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mCount:I

    .line 524
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;)I
    .locals 8
    .param p1, "t"    # Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;

    .line 528
    invoke-virtual {p1}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->getCount()I

    move-result v0

    .line 529
    .local v0, "tCount":I
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->getCount()I

    move-result v1

    .line 534
    .local v1, "thisCount":I
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 535
    invoke-virtual {p1}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->getTimestamp()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    move v2, v3

    :cond_0
    return v2

    .line 537
    :cond_1
    if-ge v0, v1, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 516
    check-cast p1, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->compareTo(Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;)I

    move-result p1

    return p1
.end method

.method getCount()I
    .locals 1

    .line 544
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mCount:I

    return v0
.end method

.method getTargetDurationNs()J
    .locals 2

    .line 540
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mTargetDurationNs:J

    return-wide v0
.end method

.method getTimestamp()J
    .locals 2

    .line 548
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mTimestamp:J

    return-wide v0
.end method

.method setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 552
    iput p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mCount:I

    .line 553
    return-void
.end method

.method setTargetDurationNs(J)V
    .locals 0
    .param p1, "targetDurationNs"    # J

    .line 560
    iput-wide p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mTargetDurationNs:J

    .line 561
    return-void
.end method

.method setTimestamp()V
    .locals 2

    .line 556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot$TargetDurationRecord;->mTimestamp:J

    .line 557
    return-void
.end method
