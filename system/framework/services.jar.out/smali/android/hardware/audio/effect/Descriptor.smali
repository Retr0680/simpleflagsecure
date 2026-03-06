.class public Landroid/hardware/audio/effect/Descriptor;
.super Ljava/lang/Object;
.source "Descriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/audio/effect/Descriptor$Common;,
        Landroid/hardware/audio/effect/Descriptor$Identity;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/audio/effect/Descriptor;",
            ">;"
        }
    .end annotation
.end field

.field public static final EFFECT_TYPE_UUID_AEC:Ljava/lang/String; = "7b491460-8d4d-11e0-bd61-0002a5d5c51b"

.field public static final EFFECT_TYPE_UUID_AGC1:Ljava/lang/String; = "0a8abfe0-654c-11e0-ba26-0002a5d5c51b"

.field public static final EFFECT_TYPE_UUID_AGC2:Ljava/lang/String; = "ae3c653b-be18-4ab8-8938-418f0a7f06ac"

.field public static final EFFECT_TYPE_UUID_BASS_BOOST:Ljava/lang/String; = "0634f220-ddd4-11db-a0fc-0002a5d5c51b"

.field public static final EFFECT_TYPE_UUID_DOWNMIX:Ljava/lang/String; = "381e49cc-a858-4aa2-87f6-e8388e7601b2"

.field public static final EFFECT_TYPE_UUID_DYNAMICS_PROCESSING:Ljava/lang/String; = "7261676f-6d75-7369-6364-28e2fd3ac39e"

.field public static final EFFECT_TYPE_UUID_ENV_REVERB:Ljava/lang/String; = "c2e5d5f0-94bd-4763-9cac-4e234d06839e"

.field public static final EFFECT_TYPE_UUID_EQUALIZER:Ljava/lang/String; = "0bed4300-ddd6-11db-8f34-0002a5d5c51b"

.field public static final EFFECT_TYPE_UUID_HAPTIC_GENERATOR:Ljava/lang/String; = "1411e6d6-aecd-4021-a1cf-a6aceb0d71e5"

.field public static final EFFECT_TYPE_UUID_LOUDNESS_ENHANCER:Ljava/lang/String; = "fe3199be-aed0-413f-87bb-11260eb63cf1"

.field public static final EFFECT_TYPE_UUID_NS:Ljava/lang/String; = "58b4b260-8e06-11e0-aa8e-0002a5d5c51b"

.field public static final EFFECT_TYPE_UUID_PRESET_REVERB:Ljava/lang/String; = "47382d60-ddd8-11db-bf3a-0002a5d5c51b"

.field public static final EFFECT_TYPE_UUID_SPATIALIZER:Ljava/lang/String; = "ccd4cf09-a79d-46c2-9aae-06a1698d6c8f"

.field public static final EFFECT_TYPE_UUID_VIRTUALIZER:Ljava/lang/String; = "37cc2c00-dddd-11db-8577-0002a5d5c51b"

.field public static final EFFECT_TYPE_UUID_VISUALIZER:Ljava/lang/String; = "e46b26a0-dddd-11db-8afd-0002a5d5c51b"

.field public static final EFFECT_TYPE_UUID_VOLUME:Ljava/lang/String; = "09e8ede0-ddde-11db-b4f6-0002a5d5c51b"


# instance fields
.field public capability:Landroid/hardware/audio/effect/Capability;

.field public common:Landroid/hardware/audio/effect/Descriptor$Common;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Landroid/hardware/audio/effect/Descriptor$1;

    invoke-direct {v0}, Landroid/hardware/audio/effect/Descriptor$1;-><init>()V

    sput-object v0, Landroid/hardware/audio/effect/Descriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 80
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 81
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 82
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 84
    :cond_1
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/audio/effect/Descriptor;->common:Landroid/hardware/audio/effect/Descriptor$Common;

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Descriptor;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 76
    iget-object v1, p0, Landroid/hardware/audio/effect/Descriptor;->capability:Landroid/hardware/audio/effect/Capability;

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Descriptor;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 77
    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 15
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 42
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 44
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_5

    .line 45
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 50
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    .line 53
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 45
    return-void

    .line 51
    :cond_0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_1
    :try_start_1
    sget-object v2, Landroid/hardware/audio/effect/Descriptor$Common;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/audio/effect/Descriptor$Common;

    iput-object v2, p0, Landroid/hardware/audio/effect/Descriptor;->common:Landroid/hardware/audio/effect/Descriptor$Common;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 50
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    .line 53
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 47
    return-void

    .line 51
    :cond_2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    :cond_3
    :try_start_2
    sget-object v2, Landroid/hardware/audio/effect/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/audio/effect/Capability;

    iput-object v2, p0, Landroid/hardware/audio/effect/Descriptor;->capability:Landroid/hardware/audio/effect/Capability;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4

    .line 53
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    nop

    .line 55
    return-void

    .line 51
    :cond_4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 44
    :cond_5
    :try_start_3
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/audio/effect/Descriptor;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/audio/effect/Descriptor;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_6

    .line 51
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_6
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 31
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget-object v1, p0, Landroid/hardware/audio/effect/Descriptor;->common:Landroid/hardware/audio/effect/Descriptor$Common;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 33
    iget-object v1, p0, Landroid/hardware/audio/effect/Descriptor;->capability:Landroid/hardware/audio/effect/Capability;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 35
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 36
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 38
    return-void
.end method
