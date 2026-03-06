.class final Lcom/android/server/am/UidObserverController$UidObserverRegistration;
.super Ljava/lang/Object;
.source "UidObserverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UidObserverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UidObserverRegistration"
.end annotation


# static fields
.field private static final ORIG_ENUMS:[I

.field private static final PROTO_ENUMS:[I


# instance fields
.field private final mCanInteractAcrossUsers:Z

.field private final mCutpoint:I

.field final mLastProcStates:Landroid/util/SparseIntArray;

.field mMaxDispatchTime:I

.field private final mPkg:Ljava/lang/String;

.field mSlowDispatchCount:I

.field private final mToken:Landroid/os/IBinder;

.field private final mUid:I

.field private mUids:[I

.field private final mWhich:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCanInteractAcrossUsers(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCanInteractAcrossUsers:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCutpoint(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCutpoint:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPkg(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUid(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 551
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->ORIG_ENUMS:[I

    .line 559
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->PROTO_ENUMS:[I

    return-void

    :array_0
    .array-data 4
        0x4
        0x8
        0x2
        0x1
        0x20
        0x40
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x4
        0x2
        0x1
        0x6
        0x7
    .end array-data
.end method

.method constructor <init>(ILjava/lang/String;IIZ[ILandroid/os/IBinder;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "which"    # I
    .param p4, "cutpoint"    # I
    .param p5, "canInteractAcrossUsers"    # Z
    .param p6, "uids"    # [I
    .param p7, "token"    # Landroid/os/IBinder;

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    iput p1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUid:I

    .line 571
    iput-object p2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mPkg:Ljava/lang/String;

    .line 572
    iput p3, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    .line 573
    iput p4, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCutpoint:I

    .line 574
    iput-boolean p5, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCanInteractAcrossUsers:Z

    .line 576
    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 577
    invoke-virtual {p6}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 578
    iget-object v1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    goto :goto_0

    .line 580
    :cond_0
    iput-object v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 583
    :goto_0
    iput-object p7, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mToken:Landroid/os/IBinder;

    .line 585
    if-ltz p4, :cond_1

    .line 586
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    goto :goto_1

    :cond_1
    nop

    :goto_1
    iput-object v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    .line 587
    return-void
.end method


# virtual methods
.method addUid(I)V
    .locals 6
    .param p1, "uid"    # I

    .line 598
    iget-object v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    if-nez v0, :cond_0

    .line 599
    return-void

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 603
    .local v0, "temp":[I
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 604
    const/4 v1, 0x0

    .line 605
    .local v1, "inserted":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_4

    .line 606
    if-nez v1, :cond_3

    .line 607
    aget v3, v0, v2

    if-ge v3, p1, :cond_1

    .line 608
    iget-object v3, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    aget v4, v0, v2

    aput v4, v3, v2

    goto :goto_1

    .line 609
    :cond_1
    aget v3, v0, v2

    if-ne v3, p1, :cond_2

    .line 611
    iput-object v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 612
    return-void

    .line 614
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    aput p1, v3, v2

    .line 615
    iget-object v3, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    add-int/lit8 v4, v2, 0x1

    aget v5, v0, v2

    aput v5, v3, v4

    .line 616
    const/4 v1, 0x1

    goto :goto_1

    .line 619
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    add-int/lit8 v4, v2, 0x1

    aget v5, v0, v2

    aput v5, v3, v4

    .line 605
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 623
    .end local v2    # "i":I
    if-nez v1, :cond_5

    .line 624
    iget-object v2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    array-length v3, v0

    aput p1, v2, v3

    .line 626
    :cond_5
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Landroid/app/IUidObserver;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "observer"    # Landroid/app/IUidObserver;

    .line 658
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 659
    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 660
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 661
    iget-object v1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 662
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 663
    invoke-interface {p2}, Landroid/app/IUidObserver;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 664
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 665
    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 666
    const-string v0, " IDLE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 668
    :cond_0
    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 669
    const-string v0, " ACT"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 671
    :cond_1
    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 672
    const-string v0, " GONE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 674
    :cond_2
    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_3

    .line 675
    const-string v0, " CAP"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 677
    :cond_3
    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 678
    const-string v0, " STATE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 679
    const-string v0, " (cut="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 680
    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCutpoint:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 681
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 683
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 684
    iget-object v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_5

    .line 685
    iget-object v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 686
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 687
    const-string v2, "      Last "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 688
    iget-object v2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-static {p1, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 689
    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 690
    iget-object v2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 686
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 693
    .end local v0    # "size":I
    .end local v1    # "j":I
    :cond_5
    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 12
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 696
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 697
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUid:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 698
    const-wide v5, 0x10900000002L

    iget-object v2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 699
    iget v2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    int-to-long v8, v2

    sget-object v10, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->ORIG_ENUMS:[I

    sget-object v11, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->PROTO_ENUMS:[I

    const-wide v6, 0x20e00000003L

    move-object v5, p1

    .end local p1    # "proto":Landroid/util/proto/ProtoOutputStream;
    .local v5, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-static/range {v5 .. v11}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JJ[I[I)V

    .line 701
    const-wide v6, 0x10500000004L

    iget p1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCutpoint:I

    invoke-virtual {v5, v6, v7, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 702
    iget-object p1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    if-eqz p1, :cond_0

    .line 703
    iget-object p1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    .line 704
    .local p1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 705
    const-wide v6, 0x20b00000005L

    invoke-virtual {v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 706
    .local v6, "pToken":J
    iget-object v8, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    .line 707
    invoke-virtual {v8, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 706
    invoke-virtual {v5, v3, v4, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 708
    iget-object v8, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    .line 709
    invoke-virtual {v8, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    .line 708
    const-wide v9, 0x10500000002L

    invoke-virtual {v5, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 710
    invoke-virtual {v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 704
    .end local v6    # "pToken":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 713
    .end local v2    # "i":I
    .end local p1    # "size":I
    :cond_0
    invoke-virtual {v5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 714
    return-void
.end method

.method getToken()Landroid/os/IBinder;
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method isWatchingUid(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 590
    iget-object v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 591
    return v1

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method removeUid(I)V
    .locals 6
    .param p1, "uid"    # I

    .line 629
    iget-object v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_2

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 634
    .local v0, "temp":[I
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 635
    const/4 v1, 0x0

    .line 636
    .local v1, "removed":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_5

    .line 637
    if-nez v1, :cond_4

    .line 638
    aget v3, v0, v2

    if-ne v3, p1, :cond_2

    .line 639
    const/4 v1, 0x1

    goto :goto_1

    .line 640
    :cond_2
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_3

    .line 642
    iput-object v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 643
    return-void

    .line 645
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    aget v4, v0, v2

    aput v4, v3, v2

    goto :goto_1

    .line 648
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    add-int/lit8 v4, v2, -0x1

    aget v5, v0, v2

    aput v5, v3, v4

    .line 636
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    nop

    .line 651
    .end local v2    # "i":I
    return-void

    .line 630
    .end local v0    # "temp":[I
    .end local v1    # "removed":Z
    :goto_2
    return-void
.end method
