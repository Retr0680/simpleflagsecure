.class public Landroid/hardware/audio/effect/Range$EnvironmentalReverbRange;
.super Ljava/lang/Object;
.source "Range.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/audio/effect/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnvironmentalReverbRange"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/audio/effect/Range$EnvironmentalReverbRange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public max:Landroid/hardware/audio/effect/EnvironmentalReverb;

.field public min:Landroid/hardware/audio/effect/EnvironmentalReverb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 924
    new-instance v0, Landroid/hardware/audio/effect/Range$EnvironmentalReverbRange$1;

    invoke-direct {v0}, Landroid/hardware/audio/effect/Range$EnvironmentalReverbRange$1;-><init>()V

    sput-object v0, Landroid/hardware/audio/effect/Range$EnvironmentalReverbRange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 972
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 973
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 974
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 976
    :cond_1
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 966
    const/4 v0, 0x0

    .line 967
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/audio/effect/Range$EnvironmentalReverbRange;->min:Landroid/hardware/audio/effect/EnvironmentalReverb;

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Range$EnvironmentalReverbRange;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 968
    iget-object v1, p0, Landroid/hardware/audio/effect/Range$EnvironmentalReverbRange;->max:Landroid/hardware/audio/effect/EnvironmentalReverb;

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Range$EnvironmentalReverbRange;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 969
    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 923
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 949
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 950
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 952
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_5

    .line 953
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 958
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    .line 961
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 953
    return-void

    .line 959
    :cond_0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 954
    :cond_1
    :try_start_1
    sget-object v2, Landroid/hardware/audio/effect/EnvironmentalReverb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/audio/effect/EnvironmentalReverb;

    iput-object v2, p0, Landroid/hardware/audio/effect/Range$EnvironmentalReverbRange;->min:Landroid/hardware/audio/effect/EnvironmentalReverb;

    .line 955
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 958
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    .line 961
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 955
    return-void

    .line 959
    :cond_2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 956
    :cond_3
    :try_start_2
    sget-object v2, Landroid/hardware/audio/effect/EnvironmentalReverb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/audio/effect/EnvironmentalReverb;

    iput-object v2, p0, Landroid/hardware/audio/effect/Range$EnvironmentalReverbRange;->max:Landroid/hardware/audio/effect/EnvironmentalReverb;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 958
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4

    .line 961
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 962
    nop

    .line 963
    return-void

    .line 959
    :cond_4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 958
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 952
    :cond_5
    :try_start_3
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/audio/effect/Range$EnvironmentalReverbRange;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 958
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/audio/effect/Range$EnvironmentalReverbRange;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_6

    .line 959
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 961
    :cond_6
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 962
    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 938
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 939
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 940
    iget-object v1, p0, Landroid/hardware/audio/effect/Range$EnvironmentalReverbRange;->min:Landroid/hardware/audio/effect/EnvironmentalReverb;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 941
    iget-object v1, p0, Landroid/hardware/audio/effect/Range$EnvironmentalReverbRange;->max:Landroid/hardware/audio/effect/EnvironmentalReverb;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 942
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 943
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 944
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 946
    return-void
.end method
