.class public final Landroid/hardware/audio/effect/Virtualizer;
.super Ljava/lang/Object;
.source "Virtualizer.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/audio/effect/Virtualizer$ChannelAngle;,
        Landroid/hardware/audio/effect/Virtualizer$Tag;,
        Landroid/hardware/audio/effect/Virtualizer$SpeakerAnglesPayload;,
        Landroid/hardware/audio/effect/Virtualizer$Id;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/audio/effect/Virtualizer;",
            ">;"
        }
    .end annotation
.end field

.field public static final device:I = 0x3

.field public static final speakerAngles:I = 0x2

.field public static final strengthPm:I = 0x1

.field public static final vendor:I


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Landroid/hardware/audio/effect/Virtualizer$1;

    invoke-direct {v0}, Landroid/hardware/audio/effect/Virtualizer$1;-><init>()V

    sput-object v0, Landroid/hardware/audio/effect/Virtualizer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "_value":Landroid/hardware/audio/effect/VendorExtension;
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/audio/effect/Virtualizer;->_tag:I

    .line 23
    iput-object v0, p0, Landroid/hardware/audio/effect/Virtualizer;->_value:Ljava/lang/Object;

    .line 24
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Landroid/hardware/audio/effect/Virtualizer;->_tag:I

    .line 32
    iput-object p2, p0, Landroid/hardware/audio/effect/Virtualizer;->_value:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/Virtualizer;->readFromParcel(Landroid/os/Parcel;)V

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/audio/effect/Virtualizer-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/Virtualizer;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 194
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Virtualizer;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 197
    return-void

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/Virtualizer;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/audio/effect/Virtualizer;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/audio/effect/Virtualizer;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private _set(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 210
    iput p1, p0, Landroid/hardware/audio/effect/Virtualizer;->_tag:I

    .line 211
    iput-object p2, p0, Landroid/hardware/audio/effect/Virtualizer;->_value:Ljava/lang/Object;

    .line 212
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 200
    packed-switch p1, :pswitch_data_0

    .line 206
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :pswitch_0
    const-string v0, "device"

    return-object v0

    .line 203
    :pswitch_1
    const-string/jumbo v0, "speakerAngles"

    return-object v0

    .line 202
    :pswitch_2
    const-string/jumbo v0, "strengthPm"

    return-object v0

    .line 201
    :pswitch_3
    const-string/jumbo v0, "vendor"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 6
    .param p1, "_v"    # Ljava/lang/Object;

    .line 179
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 180
    :cond_0
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 181
    const/4 v1, 0x0

    .line 182
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 183
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/hardware/audio/effect/Virtualizer;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 182
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_1
    return v1

    .line 187
    .end local v1    # "_mask":I
    :cond_2
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_3

    .line 188
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 190
    :cond_3
    return v0
.end method

.method public static device(Landroid/media/audio/common/AudioDeviceDescription;)Landroid/hardware/audio/effect/Virtualizer;
    .locals 2
    .param p0, "_value"    # Landroid/media/audio/common/AudioDeviceDescription;

    .line 87
    new-instance v0, Landroid/hardware/audio/effect/Virtualizer;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Virtualizer;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static speakerAngles([Landroid/hardware/audio/effect/Virtualizer$ChannelAngle;)Landroid/hardware/audio/effect/Virtualizer;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/audio/effect/Virtualizer$ChannelAngle;

    .line 72
    new-instance v0, Landroid/hardware/audio/effect/Virtualizer;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Virtualizer;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static strengthPm(I)Landroid/hardware/audio/effect/Virtualizer;
    .locals 3
    .param p0, "_value"    # I

    .line 57
    new-instance v0, Landroid/hardware/audio/effect/Virtualizer;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/hardware/audio/effect/Virtualizer;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static vendor(Landroid/hardware/audio/effect/VendorExtension;)Landroid/hardware/audio/effect/Virtualizer;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/VendorExtension;

    .line 42
    new-instance v0, Landroid/hardware/audio/effect/Virtualizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Virtualizer;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Virtualizer;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 173
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Virtualizer;->getDevice()Landroid/media/audio/common/AudioDeviceDescription;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Virtualizer;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 170
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Virtualizer;->getSpeakerAngles()[Landroid/hardware/audio/effect/Virtualizer$ChannelAngle;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Virtualizer;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 171
    goto :goto_0

    .line 167
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Virtualizer;->getVendor()Landroid/hardware/audio/effect/VendorExtension;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Virtualizer;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 168
    nop

    .line 176
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getDevice()Landroid/media/audio/common/AudioDeviceDescription;
    .locals 1

    .line 91
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Virtualizer;->_assertTag(I)V

    .line 92
    iget-object v0, p0, Landroid/hardware/audio/effect/Virtualizer;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/media/audio/common/AudioDeviceDescription;

    return-object v0
.end method

.method public getSpeakerAngles()[Landroid/hardware/audio/effect/Virtualizer$ChannelAngle;
    .locals 1

    .line 76
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Virtualizer;->_assertTag(I)V

    .line 77
    iget-object v0, p0, Landroid/hardware/audio/effect/Virtualizer;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/audio/effect/Virtualizer$ChannelAngle;

    return-object v0
.end method

.method public final getStability()I
    .locals 1

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public getStrengthPm()I
    .locals 1

    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Virtualizer;->_assertTag(I)V

    .line 62
    iget-object v0, p0, Landroid/hardware/audio/effect/Virtualizer;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 36
    iget v0, p0, Landroid/hardware/audio/effect/Virtualizer;->_tag:I

    return v0
.end method

.method public getVendor()Landroid/hardware/audio/effect/VendorExtension;
    .locals 1

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Virtualizer;->_assertTag(I)V

    .line 47
    iget-object v0, p0, Landroid/hardware/audio/effect/Virtualizer;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/VendorExtension;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 137
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 159
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :pswitch_0
    sget-object v1, Landroid/media/audio/common/AudioDeviceDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioDeviceDescription;

    .line 156
    .local v1, "_aidl_value":Landroid/media/audio/common/AudioDeviceDescription;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Virtualizer;->_set(ILjava/lang/Object;)V

    .line 157
    return-void

    .line 150
    .end local v1    # "_aidl_value":Landroid/media/audio/common/AudioDeviceDescription;
    :pswitch_1
    sget-object v1, Landroid/hardware/audio/effect/Virtualizer$ChannelAngle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/audio/effect/Virtualizer$ChannelAngle;

    .line 151
    .local v1, "_aidl_value":[Landroid/hardware/audio/effect/Virtualizer$ChannelAngle;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Virtualizer;->_set(ILjava/lang/Object;)V

    .line 152
    return-void

    .line 145
    .end local v1    # "_aidl_value":[Landroid/hardware/audio/effect/Virtualizer$ChannelAngle;
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 146
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/audio/effect/Virtualizer;->_set(ILjava/lang/Object;)V

    .line 147
    return-void

    .line 140
    .end local v1    # "_aidl_value":I
    :pswitch_3
    sget-object v1, Landroid/hardware/audio/effect/VendorExtension;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/VendorExtension;

    .line 141
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/VendorExtension;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Virtualizer;->_set(ILjava/lang/Object;)V

    .line 142
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDevice(Landroid/media/audio/common/AudioDeviceDescription;)V
    .locals 1
    .param p1, "_value"    # Landroid/media/audio/common/AudioDeviceDescription;

    .line 96
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Virtualizer;->_set(ILjava/lang/Object;)V

    .line 97
    return-void
.end method

.method public setSpeakerAngles([Landroid/hardware/audio/effect/Virtualizer$ChannelAngle;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/audio/effect/Virtualizer$ChannelAngle;

    .line 81
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Virtualizer;->_set(ILjava/lang/Object;)V

    .line 82
    return-void
.end method

.method public setStrengthPm(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/hardware/audio/effect/Virtualizer;->_set(ILjava/lang/Object;)V

    .line 67
    return-void
.end method

.method public setVendor(Landroid/hardware/audio/effect/VendorExtension;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/VendorExtension;

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Virtualizer;->_set(ILjava/lang/Object;)V

    .line 52
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 117
    iget v0, p0, Landroid/hardware/audio/effect/Virtualizer;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v0, p0, Landroid/hardware/audio/effect/Virtualizer;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 129
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Virtualizer;->getDevice()Landroid/media/audio/common/AudioDeviceDescription;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 126
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Virtualizer;->getSpeakerAngles()[Landroid/hardware/audio/effect/Virtualizer$ChannelAngle;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 127
    goto :goto_0

    .line 123
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Virtualizer;->getStrengthPm()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    goto :goto_0

    .line 120
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Virtualizer;->getVendor()Landroid/hardware/audio/effect/VendorExtension;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 121
    nop

    .line 132
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
