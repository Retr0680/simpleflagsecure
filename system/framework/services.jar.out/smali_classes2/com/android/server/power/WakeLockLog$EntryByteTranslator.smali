.class Lcom/android/server/power/WakeLockLog$EntryByteTranslator;
.super Ljava/lang/Object;
.source "WakeLockLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WakeLockLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntryByteTranslator"
.end annotation


# static fields
.field static final ERROR_TIME_IS_NEGATIVE:I = -0x1

.field static final ERROR_TIME_TOO_LARGE:I = -0x2


# instance fields
.field private final mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;


# direct methods
.method constructor <init>(Lcom/android/server/power/WakeLockLog$TagDatabase;)V
    .locals 0
    .param p1, "tagDatabase"    # Lcom/android/server/power/WakeLockLog$TagDatabase;

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    .line 571
    return-void
.end method

.method private getRelativeTime(JJ)I
    .locals 4
    .param p1, "timeReference"    # J
    .param p3, "time"    # J

    .line 749
    cmp-long v0, p3, p1

    if-gez v0, :cond_0

    .line 753
    const/4 v0, -0x1

    return v0

    .line 755
    :cond_0
    sub-long v0, p3, p1

    .line 756
    .local v0, "relativeTime":J
    const-wide/16 v2, 0xff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 760
    const/4 v2, -0x2

    return v2

    .line 762
    :cond_1
    long-to-int v2, v0

    return v2
.end method


# virtual methods
.method fromBytes([BJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;
    .locals 11
    .param p1, "bytes"    # [B
    .param p2, "timeReference"    # J
    .param p4, "entryToReuse"    # Lcom/android/server/power/WakeLockLog$LogEntry;

    .line 586
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    goto/16 :goto_3

    .line 591
    :cond_1
    if-eqz p4, :cond_2

    move-object v1, p4

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/server/power/WakeLockLog$LogEntry;

    invoke-direct {v1}, Lcom/android/server/power/WakeLockLog$LogEntry;-><init>()V

    :goto_0
    move-object v2, v1

    .line 593
    .local v2, "entry":Lcom/android/server/power/WakeLockLog$LogEntry;
    const/4 v1, 0x0

    aget-byte v3, p1, v1

    const/4 v4, 0x6

    shr-int/2addr v3, v4

    const/4 v5, 0x3

    and-int/2addr v3, v5

    .line 594
    .local v3, "type":I
    and-int/lit8 v6, v3, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 596
    const/4 v3, 0x2

    move v8, v3

    goto :goto_1

    .line 594
    :cond_3
    move v8, v3

    .line 598
    .end local v3    # "type":I
    .local v8, "type":I
    :goto_1
    const/4 v3, 0x1

    packed-switch v8, :pswitch_data_0

    .line 640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type not recognized ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    const-string v4, "PowerManagerService.WLLog"

    invoke-static {v4, v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 612
    :pswitch_0
    array-length v4, p1

    if-ge v4, v7, :cond_4

    .line 613
    goto :goto_2

    .line 616
    :cond_4
    const/4 v7, 0x0

    .line 617
    .local v7, "flags":I
    aget-byte v0, p1, v1

    and-int/lit8 v0, v0, 0x7f

    .line 618
    .local v0, "tagIndex":I
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    invoke-virtual {v1, v0}, Lcom/android/server/power/WakeLockLog$TagDatabase;->getTag(I)Lcom/android/server/power/WakeLockLog$TagData;

    move-result-object v6

    .line 619
    .local v6, "tag":Lcom/android/server/power/WakeLockLog$TagData;
    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    int-to-long v3, v1

    add-long/2addr v3, p2

    .line 620
    .local v3, "time":J
    const/4 v5, 0x2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/WakeLockLog$LogEntry;->set(JILcom/android/server/power/WakeLockLog$TagData;I)V

    .line 621
    return-object v2

    .line 600
    .end local v0    # "tagIndex":I
    .end local v3    # "time":J
    .end local v6    # "tag":Lcom/android/server/power/WakeLockLog$TagData;
    .end local v7    # "flags":I
    :pswitch_1
    array-length v4, p1

    if-ge v4, v5, :cond_5

    .line 601
    goto :goto_2

    .line 604
    :cond_5
    aget-byte v0, p1, v1

    and-int/lit8 v0, v0, 0x3f

    .line 605
    .local v0, "flags":I
    aget-byte v1, p1, v3

    and-int/lit8 v1, v1, 0x7f

    .line 606
    .local v1, "tagIndex":I
    iget-object v3, p0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    invoke-virtual {v3, v1}, Lcom/android/server/power/WakeLockLog$TagDatabase;->getTag(I)Lcom/android/server/power/WakeLockLog$TagData;

    move-result-object v6

    .line 607
    .restart local v6    # "tag":Lcom/android/server/power/WakeLockLog$TagData;
    aget-byte v3, p1, v7

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long/2addr v3, p2

    .line 608
    .restart local v3    # "time":J
    const/4 v5, 0x1

    move v7, v0

    .end local v0    # "flags":I
    .restart local v7    # "flags":I
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/WakeLockLog$LogEntry;->set(JILcom/android/server/power/WakeLockLog$TagData;I)V

    .line 609
    return-object v2

    .line 624
    .end local v1    # "tagIndex":I
    .end local v3    # "time":J
    .end local v6    # "tag":Lcom/android/server/power/WakeLockLog$TagData;
    .end local v7    # "flags":I
    :pswitch_2
    array-length v1, p1

    const/16 v6, 0x9

    if-ge v1, v6, :cond_6

    .line 625
    nop

    .line 643
    :goto_2
    return-object v0

    .line 628
    :cond_6
    aget-byte v0, p1, v3

    int-to-long v0, v0

    const-wide/16 v9, 0xff

    and-long/2addr v0, v9

    const/16 v3, 0x38

    shl-long/2addr v0, v3

    aget-byte v3, p1, v7

    int-to-long v6, v3

    and-long/2addr v6, v9

    const/16 v3, 0x30

    shl-long/2addr v6, v3

    or-long/2addr v0, v6

    aget-byte v3, p1, v5

    int-to-long v5, v3

    and-long/2addr v5, v9

    const/16 v3, 0x28

    shl-long/2addr v5, v3

    or-long/2addr v0, v5

    const/4 v3, 0x4

    aget-byte v3, p1, v3

    int-to-long v5, v3

    and-long/2addr v5, v9

    const/16 v3, 0x20

    shl-long/2addr v5, v3

    or-long/2addr v0, v5

    const/4 v3, 0x5

    aget-byte v3, p1, v3

    int-to-long v5, v3

    and-long/2addr v5, v9

    const/16 v3, 0x18

    shl-long/2addr v5, v3

    or-long/2addr v0, v5

    aget-byte v3, p1, v4

    int-to-long v3, v3

    and-long/2addr v3, v9

    const/16 v5, 0x10

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    const/4 v3, 0x7

    aget-byte v3, p1, v3

    int-to-long v3, v3

    and-long/2addr v3, v9

    const/16 v5, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    aget-byte v3, p1, v5

    int-to-long v3, v3

    and-long/2addr v3, v9

    or-long/2addr v3, v0

    .line 636
    .restart local v3    # "time":J
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/WakeLockLog$LogEntry;->set(JILcom/android/server/power/WakeLockLog$TagData;I)V

    .line 637
    return-object v2

    .line 587
    .end local v2    # "entry":Lcom/android/server/power/WakeLockLog$LogEntry;
    .end local v3    # "time":J
    .end local v8    # "type":I
    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I
    .locals 10
    .param p1, "entry"    # Lcom/android/server/power/WakeLockLog$LogEntry;
    .param p2, "bytes"    # [B
    .param p3, "timeReference"    # J

    .line 681
    iget v0, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 733
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 701
    :pswitch_0
    const/4 v0, 0x2

    .line 702
    .local v0, "sizeNeeded":I
    if-eqz p2, :cond_2

    array-length v1, p2

    if-lt v1, v0, :cond_2

    .line 703
    iget-wide v4, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    invoke-direct {p0, p3, p4, v4, v5}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->getRelativeTime(JJ)I

    move-result v1

    .line 704
    .local v1, "relativeTime":I
    if-gez v1, :cond_0

    .line 706
    return v1

    .line 708
    :cond_0
    iget-object v4, p0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    iget-object v5, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    invoke-virtual {v4, v5}, Lcom/android/server/power/WakeLockLog$TagDatabase;->getTagIndex(Lcom/android/server/power/WakeLockLog$TagData;)I

    move-result v4

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    .line 709
    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 713
    .end local v1    # "relativeTime":I
    goto/16 :goto_0

    .line 683
    .end local v0    # "sizeNeeded":I
    :pswitch_1
    const/4 v0, 0x3

    .line 684
    .restart local v0    # "sizeNeeded":I
    if-eqz p2, :cond_2

    array-length v4, p2

    if-lt v4, v0, :cond_2

    .line 685
    iget-wide v4, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    invoke-direct {p0, p3, p4, v4, v5}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->getRelativeTime(JJ)I

    move-result v4

    .line 686
    .local v4, "relativeTime":I
    if-gez v4, :cond_1

    .line 688
    return v4

    .line 690
    :cond_1
    iget v5, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    and-int/lit8 v5, v5, 0x3f

    or-int/lit8 v5, v5, 0x40

    int-to-byte v5, v5

    aput-byte v5, p2, v3

    .line 692
    iget-object v3, p0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    iget-object v5, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    invoke-virtual {v3, v5}, Lcom/android/server/power/WakeLockLog$TagDatabase;->getTagIndex(Lcom/android/server/power/WakeLockLog$TagData;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 693
    and-int/lit16 v2, v4, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 697
    .end local v4    # "relativeTime":I
    goto :goto_0

    .line 717
    .end local v0    # "sizeNeeded":I
    :pswitch_2
    const/16 v0, 0x9

    .line 718
    .restart local v0    # "sizeNeeded":I
    iget-wide v4, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    .line 719
    .local v4, "time":J
    if-eqz p2, :cond_2

    array-length v6, p2

    if-lt v6, v0, :cond_2

    .line 720
    aput-byte v3, p2, v3

    .line 721
    const/16 v3, 0x38

    shr-long v6, v4, v3

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 722
    const/16 v2, 0x30

    shr-long v2, v4, v2

    and-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 723
    const/16 v1, 0x28

    shr-long v1, v4, v1

    and-long/2addr v1, v8

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, p2, v2

    .line 724
    const/16 v1, 0x20

    shr-long v1, v4, v1

    and-long/2addr v1, v8

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, p2, v2

    .line 725
    const/16 v1, 0x18

    shr-long v1, v4, v1

    and-long/2addr v1, v8

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, p2, v2

    .line 726
    const/16 v1, 0x10

    shr-long v1, v4, v1

    and-long/2addr v1, v8

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x6

    aput-byte v1, p2, v2

    .line 727
    const/16 v1, 0x8

    shr-long v2, v4, v1

    and-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x7

    aput-byte v2, p2, v3

    .line 728
    and-long v2, v4, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 736
    .end local v4    # "time":J
    :cond_2
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
