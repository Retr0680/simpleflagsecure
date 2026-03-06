.class public Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;
.super Ljava/lang/Object;
.source "DynamicsProcessing.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/audio/effect/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EngineArchitecture"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public limiterInUse:Z

.field public mbcStage:Landroid/hardware/audio/effect/DynamicsProcessing$StageEnablement;

.field public postEqStage:Landroid/hardware/audio/effect/DynamicsProcessing$StageEnablement;

.field public preEqStage:Landroid/hardware/audio/effect/DynamicsProcessing$StageEnablement;

.field public preferredProcessingDurationMs:F

.field public resolutionPreference:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 595
    new-instance v0, Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture$1;

    invoke-direct {v0}, Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture$1;-><init>()V

    sput-object v0, Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;->resolutionPreference:B

    .line 588
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;->preferredProcessingDurationMs:F

    .line 592
    iput-boolean v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;->limiterInUse:Z

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 656
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 657
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 658
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 660
    :cond_1
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 649
    const/4 v0, 0x0

    .line 650
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;->preEqStage:Landroid/hardware/audio/effect/DynamicsProcessing$StageEnablement;

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 651
    iget-object v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;->postEqStage:Landroid/hardware/audio/effect/DynamicsProcessing$StageEnablement;

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 652
    iget-object v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;->mbcStage:Landroid/hardware/audio/effect/DynamicsProcessing$StageEnablement;

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 653
    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 594
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 624
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 625
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 627
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_d

    .line 628
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 641
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    .line 644
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 628
    return-void

    .line 642
    :cond_0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 629
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;->resolutionPreference:B

    .line 630
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 641
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    .line 644
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 630
    return-void

    .line 642
    :cond_2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 631
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;->preferredProcessingDurationMs:F

    .line 632
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    .line 641
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4

    .line 644
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 632
    return-void

    .line 642
    :cond_4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 633
    :cond_5
    :try_start_3
    sget-object v2, Landroid/hardware/audio/effect/DynamicsProcessing$StageEnablement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/audio/effect/DynamicsProcessing$StageEnablement;

    iput-object v2, p0, Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;->preEqStage:Landroid/hardware/audio/effect/DynamicsProcessing$StageEnablement;

    .line 634
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7

    .line 641
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    .line 644
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 634
    return-void

    .line 642
    :cond_6
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 635
    :cond_7
    :try_start_4
    sget-object v2, Landroid/hardware/audio/effect/DynamicsProcessing$StageEnablement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/audio/effect/DynamicsProcessing$StageEnablement;

    iput-object v2, p0, Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;->postEqStage:Landroid/hardware/audio/effect/DynamicsProcessing$StageEnablement;

    .line 636
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9

    .line 641
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8

    .line 644
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 636
    return-void

    .line 642
    :cond_8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 637
    :cond_9
    :try_start_5
    sget-object v2, Landroid/hardware/audio/effect/DynamicsProcessing$StageEnablement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/audio/effect/DynamicsProcessing$StageEnablement;

    iput-object v2, p0, Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;->mbcStage:Landroid/hardware/audio/effect/DynamicsProcessing$StageEnablement;

    .line 638
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b

    .line 641
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a

    .line 644
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 638
    return-void

    .line 642
    :cond_a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 639
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;->limiterInUse:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 641
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c

    .line 644
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 645
    nop

    .line 646
    return-void

    .line 642
    :cond_c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 641
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 627
    :cond_d
    :try_start_7
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 641
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_e

    .line 642
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 644
    :cond_e
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 645
    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 609
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 610
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    iget-byte v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;->resolutionPreference:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 612
    iget v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;->preferredProcessingDurationMs:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 613
    iget-object v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;->preEqStage:Landroid/hardware/audio/effect/DynamicsProcessing$StageEnablement;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 614
    iget-object v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;->postEqStage:Landroid/hardware/audio/effect/DynamicsProcessing$StageEnablement;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 615
    iget-object v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;->mbcStage:Landroid/hardware/audio/effect/DynamicsProcessing$StageEnablement;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 616
    iget-boolean v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;->limiterInUse:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 617
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 618
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 619
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 621
    return-void
.end method
