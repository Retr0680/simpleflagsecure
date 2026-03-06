.class public Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;
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
    name = "MbcBandConfig"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public attackTimeMs:F

.field public band:I

.field public channel:I

.field public cutoffFrequencyHz:F

.field public enable:Z

.field public expanderRatio:F

.field public kneeWidthDb:F

.field public noiseGateThresholdDb:F

.field public postGainDb:F

.field public preGainDb:F

.field public ratio:F

.field public releaseTimeMs:F

.field public thresholdDb:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 796
    new-instance v0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig$1;

    invoke-direct {v0}, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 781
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->channel:I

    .line 782
    iput v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->band:I

    .line 783
    iput-boolean v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->enable:Z

    .line 784
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->cutoffFrequencyHz:F

    .line 785
    iput v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->attackTimeMs:F

    .line 786
    iput v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->releaseTimeMs:F

    .line 787
    iput v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->ratio:F

    .line 788
    iput v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->thresholdDb:F

    .line 789
    iput v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->kneeWidthDb:F

    .line 790
    iput v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->noiseGateThresholdDb:F

    .line 791
    iput v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->expanderRatio:F

    .line 792
    iput v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->preGainDb:F

    .line 793
    iput v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->postGainDb:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 871
    const/4 v0, 0x0

    .line 872
    .local v0, "_mask":I
    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 795
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 832
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 833
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 835
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_1b

    .line 836
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 863
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    .line 866
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 836
    return-void

    .line 864
    :cond_0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 837
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->channel:I

    .line 838
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 863
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    .line 866
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 838
    return-void

    .line 864
    :cond_2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 839
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->band:I

    .line 840
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    .line 863
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4

    .line 866
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 840
    return-void

    .line 864
    :cond_4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 841
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->enable:Z

    .line 842
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7

    .line 863
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    .line 866
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 842
    return-void

    .line 864
    :cond_6
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 843
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->cutoffFrequencyHz:F

    .line 844
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9

    .line 863
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8

    .line 866
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 844
    return-void

    .line 864
    :cond_8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 845
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->attackTimeMs:F

    .line 846
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b

    .line 863
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a

    .line 866
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 846
    return-void

    .line 864
    :cond_a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 847
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->releaseTimeMs:F

    .line 848
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d

    .line 863
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c

    .line 866
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 848
    return-void

    .line 864
    :cond_c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 849
    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->ratio:F

    .line 850
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f

    .line 863
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e

    .line 866
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 850
    return-void

    .line 864
    :cond_e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 851
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->thresholdDb:F

    .line 852
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_11

    .line 863
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10

    .line 866
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 852
    return-void

    .line 864
    :cond_10
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 853
    :cond_11
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->kneeWidthDb:F

    .line 854
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_13

    .line 863
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_12

    .line 866
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 854
    return-void

    .line 864
    :cond_12
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 855
    :cond_13
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->noiseGateThresholdDb:F

    .line 856
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_15

    .line 863
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_14

    .line 866
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 856
    return-void

    .line 864
    :cond_14
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 857
    :cond_15
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->expanderRatio:F

    .line 858
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_17

    .line 863
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_16

    .line 866
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 858
    return-void

    .line 864
    :cond_16
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 859
    :cond_17
    :try_start_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->preGainDb:F

    .line 860
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_19

    .line 863
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_18

    .line 866
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 860
    return-void

    .line 864
    :cond_18
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 861
    :cond_19
    :try_start_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->postGainDb:F
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 863
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1a

    .line 866
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 867
    nop

    .line 868
    return-void

    .line 864
    :cond_1a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 863
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 835
    :cond_1b
    :try_start_e
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 863
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_1c

    .line 864
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 866
    :cond_1c
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 867
    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 810
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 811
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 812
    iget v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->channel:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 813
    iget v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->band:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 814
    iget-boolean v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->enable:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 815
    iget v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->cutoffFrequencyHz:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 816
    iget v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->attackTimeMs:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 817
    iget v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->releaseTimeMs:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 818
    iget v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->ratio:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 819
    iget v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->thresholdDb:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 820
    iget v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->kneeWidthDb:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 821
    iget v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->noiseGateThresholdDb:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 822
    iget v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->expanderRatio:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 823
    iget v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->preGainDb:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 824
    iget v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->postGainDb:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 825
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 826
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 827
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 829
    return-void
.end method
