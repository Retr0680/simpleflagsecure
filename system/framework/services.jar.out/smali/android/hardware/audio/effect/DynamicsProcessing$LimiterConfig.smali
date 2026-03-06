.class public Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;
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
    name = "LimiterConfig"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public attackTimeMs:F

.field public channel:I

.field public enable:Z

.field public linkGroup:I

.field public postGainDb:F

.field public ratio:F

.field public releaseTimeMs:F

.field public thresholdDb:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 887
    new-instance v0, Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig$1;

    invoke-direct {v0}, Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 877
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;->channel:I

    .line 878
    iput-boolean v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;->enable:Z

    .line 879
    iput v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;->linkGroup:I

    .line 880
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;->attackTimeMs:F

    .line 881
    iput v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;->releaseTimeMs:F

    .line 882
    iput v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;->ratio:F

    .line 883
    iput v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;->thresholdDb:F

    .line 884
    iput v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;->postGainDb:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 947
    const/4 v0, 0x0

    .line 948
    .local v0, "_mask":I
    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 886
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 918
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 919
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 921
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_11

    .line 922
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 939
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    .line 942
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 922
    return-void

    .line 940
    :cond_0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 923
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;->channel:I

    .line 924
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 939
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    .line 942
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 924
    return-void

    .line 940
    :cond_2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 925
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;->enable:Z

    .line 926
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    .line 939
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4

    .line 942
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 926
    return-void

    .line 940
    :cond_4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 927
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;->linkGroup:I

    .line 928
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7

    .line 939
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    .line 942
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 928
    return-void

    .line 940
    :cond_6
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 929
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;->attackTimeMs:F

    .line 930
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9

    .line 939
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8

    .line 942
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 930
    return-void

    .line 940
    :cond_8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 931
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;->releaseTimeMs:F

    .line 932
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b

    .line 939
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a

    .line 942
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 932
    return-void

    .line 940
    :cond_a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 933
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;->ratio:F

    .line 934
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d

    .line 939
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c

    .line 942
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 934
    return-void

    .line 940
    :cond_c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 935
    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;->thresholdDb:F

    .line 936
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f

    .line 939
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e

    .line 942
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 936
    return-void

    .line 940
    :cond_e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 937
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;->postGainDb:F
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 939
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10

    .line 942
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 943
    nop

    .line 944
    return-void

    .line 940
    :cond_10
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 939
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 921
    :cond_11
    :try_start_9
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 939
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_12

    .line 940
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 942
    :cond_12
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 943
    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 901
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 902
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 903
    iget v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;->channel:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 904
    iget-boolean v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;->enable:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 905
    iget v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;->linkGroup:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 906
    iget v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;->attackTimeMs:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 907
    iget v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;->releaseTimeMs:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 908
    iget v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;->ratio:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 909
    iget v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;->thresholdDb:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 910
    iget v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;->postGainDb:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 911
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 912
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 913
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 914
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 915
    return-void
.end method
