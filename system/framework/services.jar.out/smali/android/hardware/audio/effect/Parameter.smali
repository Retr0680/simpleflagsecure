.class public final Landroid/hardware/audio/effect/Parameter;
.super Ljava/lang/Object;
.source "Parameter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/audio/effect/Parameter$Common;,
        Landroid/hardware/audio/effect/Parameter$VolumeStereo;,
        Landroid/hardware/audio/effect/Parameter$Specific;,
        Landroid/hardware/audio/effect/Parameter$Tag;,
        Landroid/hardware/audio/effect/Parameter$Id;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/audio/effect/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field public static final common:I = 0x0

.field public static final deviceDescription:I = 0x1

.field public static final mode:I = 0x2

.field public static final offload:I = 0x4

.field public static final source:I = 0x3

.field public static final specific:I = 0x6

.field public static final volumeStereo:I = 0x5


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 152
    new-instance v0, Landroid/hardware/audio/effect/Parameter$1;

    invoke-direct {v0}, Landroid/hardware/audio/effect/Parameter$1;-><init>()V

    sput-object v0, Landroid/hardware/audio/effect/Parameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "_value":Landroid/hardware/audio/effect/Parameter$Common;
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/audio/effect/Parameter;->_tag:I

    .line 26
    iput-object v0, p0, Landroid/hardware/audio/effect/Parameter;->_value:Ljava/lang/Object;

    .line 27
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Landroid/hardware/audio/effect/Parameter;->_tag:I

    .line 35
    iput-object p2, p0, Landroid/hardware/audio/effect/Parameter;->_value:Ljava/lang/Object;

    .line 36
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/Parameter;->readFromParcel(Landroid/os/Parcel;)V

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/audio/effect/Parameter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/Parameter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 269
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 272
    return-void

    .line 270
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/Parameter;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/audio/effect/Parameter;->_tagString(I)Ljava/lang/String;

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

    .line 288
    iput p1, p0, Landroid/hardware/audio/effect/Parameter;->_tag:I

    .line 289
    iput-object p2, p0, Landroid/hardware/audio/effect/Parameter;->_value:Ljava/lang/Object;

    .line 290
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 275
    packed-switch p1, :pswitch_data_0

    .line 284
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

    .line 282
    :pswitch_0
    const-string/jumbo v0, "specific"

    return-object v0

    .line 281
    :pswitch_1
    const-string/jumbo v0, "volumeStereo"

    return-object v0

    .line 280
    :pswitch_2
    const-string/jumbo v0, "offload"

    return-object v0

    .line 279
    :pswitch_3
    const-string/jumbo v0, "source"

    return-object v0

    .line 278
    :pswitch_4
    const-string/jumbo v0, "mode"

    return-object v0

    .line 277
    :pswitch_5
    const-string v0, "deviceDescription"

    return-object v0

    .line 276
    :pswitch_6
    const-string v0, "common"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static common(Landroid/hardware/audio/effect/Parameter$Common;)Landroid/hardware/audio/effect/Parameter;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/Parameter$Common;

    .line 45
    new-instance v0, Landroid/hardware/audio/effect/Parameter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 6
    .param p1, "_v"    # Ljava/lang/Object;

    .line 254
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 255
    :cond_0
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 256
    const/4 v1, 0x0

    .line 257
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 258
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/hardware/audio/effect/Parameter;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 257
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_1
    return v1

    .line 262
    .end local v1    # "_mask":I
    :cond_2
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_3

    .line 263
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 265
    :cond_3
    return v0
.end method

.method public static deviceDescription([Landroid/media/audio/common/AudioDeviceDescription;)Landroid/hardware/audio/effect/Parameter;
    .locals 2
    .param p0, "_value"    # [Landroid/media/audio/common/AudioDeviceDescription;

    .line 60
    new-instance v0, Landroid/hardware/audio/effect/Parameter;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static mode(I)Landroid/hardware/audio/effect/Parameter;
    .locals 3
    .param p0, "_value"    # I

    .line 75
    new-instance v0, Landroid/hardware/audio/effect/Parameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/hardware/audio/effect/Parameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static offload(Z)Landroid/hardware/audio/effect/Parameter;
    .locals 3
    .param p0, "_value"    # Z

    .line 105
    new-instance v0, Landroid/hardware/audio/effect/Parameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Landroid/hardware/audio/effect/Parameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static source(I)Landroid/hardware/audio/effect/Parameter;
    .locals 3
    .param p0, "_value"    # I

    .line 90
    new-instance v0, Landroid/hardware/audio/effect/Parameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/hardware/audio/effect/Parameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static specific(Landroid/hardware/audio/effect/Parameter$Specific;)Landroid/hardware/audio/effect/Parameter;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/Parameter$Specific;

    .line 135
    new-instance v0, Landroid/hardware/audio/effect/Parameter;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static volumeStereo(Landroid/hardware/audio/effect/Parameter$VolumeStereo;)Landroid/hardware/audio/effect/Parameter;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/Parameter$VolumeStereo;

    .line 120
    new-instance v0, Landroid/hardware/audio/effect/Parameter;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 248
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter;->getSpecific()Landroid/hardware/audio/effect/Parameter$Specific;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 245
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter;->getVolumeStereo()Landroid/hardware/audio/effect/Parameter$VolumeStereo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 246
    goto :goto_0

    .line 242
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter;->getDeviceDescription()[Landroid/media/audio/common/AudioDeviceDescription;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 243
    goto :goto_0

    .line 239
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter;->getCommon()Landroid/hardware/audio/effect/Parameter$Common;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 240
    nop

    .line 251
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getCommon()Landroid/hardware/audio/effect/Parameter$Common;
    .locals 1

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter;->_assertTag(I)V

    .line 50
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/Parameter$Common;

    return-object v0
.end method

.method public getDeviceDescription()[Landroid/media/audio/common/AudioDeviceDescription;
    .locals 1

    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter;->_assertTag(I)V

    .line 65
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/media/audio/common/AudioDeviceDescription;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 79
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter;->_assertTag(I)V

    .line 80
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getOffload()Z
    .locals 1

    .line 109
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter;->_assertTag(I)V

    .line 110
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getSource()I
    .locals 1

    .line 94
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter;->_assertTag(I)V

    .line 95
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSpecific()Landroid/hardware/audio/effect/Parameter$Specific;
    .locals 1

    .line 139
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter;->_assertTag(I)V

    .line 140
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/Parameter$Specific;

    return-object v0
.end method

.method public final getStability()I
    .locals 1

    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 39
    iget v0, p0, Landroid/hardware/audio/effect/Parameter;->_tag:I

    return v0
.end method

.method public getVolumeStereo()Landroid/hardware/audio/effect/Parameter$VolumeStereo;
    .locals 1

    .line 124
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter;->_assertTag(I)V

    .line 125
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/Parameter$VolumeStereo;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 194
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 231
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

    .line 227
    :pswitch_0
    sget-object v1, Landroid/hardware/audio/effect/Parameter$Specific;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/Parameter$Specific;

    .line 228
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/Parameter$Specific;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter;->_set(ILjava/lang/Object;)V

    .line 229
    return-void

    .line 222
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/Parameter$Specific;
    :pswitch_1
    sget-object v1, Landroid/hardware/audio/effect/Parameter$VolumeStereo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/Parameter$VolumeStereo;

    .line 223
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/Parameter$VolumeStereo;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter;->_set(ILjava/lang/Object;)V

    .line 224
    return-void

    .line 217
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/Parameter$VolumeStereo;
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 218
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/audio/effect/Parameter;->_set(ILjava/lang/Object;)V

    .line 219
    return-void

    .line 212
    .end local v1    # "_aidl_value":Z
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 213
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/audio/effect/Parameter;->_set(ILjava/lang/Object;)V

    .line 214
    return-void

    .line 207
    .end local v1    # "_aidl_value":I
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 208
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/audio/effect/Parameter;->_set(ILjava/lang/Object;)V

    .line 209
    return-void

    .line 202
    .end local v1    # "_aidl_value":I
    :pswitch_5
    sget-object v1, Landroid/media/audio/common/AudioDeviceDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/audio/common/AudioDeviceDescription;

    .line 203
    .local v1, "_aidl_value":[Landroid/media/audio/common/AudioDeviceDescription;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter;->_set(ILjava/lang/Object;)V

    .line 204
    return-void

    .line 197
    .end local v1    # "_aidl_value":[Landroid/media/audio/common/AudioDeviceDescription;
    :pswitch_6
    sget-object v1, Landroid/hardware/audio/effect/Parameter$Common;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/Parameter$Common;

    .line 198
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/Parameter$Common;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter;->_set(ILjava/lang/Object;)V

    .line 199
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCommon(Landroid/hardware/audio/effect/Parameter$Common;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/Parameter$Common;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter;->_set(ILjava/lang/Object;)V

    .line 55
    return-void
.end method

.method public setDeviceDescription([Landroid/media/audio/common/AudioDeviceDescription;)V
    .locals 1
    .param p1, "_value"    # [Landroid/media/audio/common/AudioDeviceDescription;

    .line 69
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter;->_set(ILjava/lang/Object;)V

    .line 70
    return-void
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/hardware/audio/effect/Parameter;->_set(ILjava/lang/Object;)V

    .line 85
    return-void
.end method

.method public setOffload(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 114
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Landroid/hardware/audio/effect/Parameter;->_set(ILjava/lang/Object;)V

    .line 115
    return-void
.end method

.method public setSource(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Landroid/hardware/audio/effect/Parameter;->_set(ILjava/lang/Object;)V

    .line 100
    return-void
.end method

.method public setSpecific(Landroid/hardware/audio/effect/Parameter$Specific;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/Parameter$Specific;

    .line 144
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter;->_set(ILjava/lang/Object;)V

    .line 145
    return-void
.end method

.method public setVolumeStereo(Landroid/hardware/audio/effect/Parameter$VolumeStereo;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/Parameter$VolumeStereo;

    .line 129
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter;->_set(ILjava/lang/Object;)V

    .line 130
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 165
    iget v0, p0, Landroid/hardware/audio/effect/Parameter;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget v0, p0, Landroid/hardware/audio/effect/Parameter;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 186
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter;->getSpecific()Landroid/hardware/audio/effect/Parameter$Specific;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 183
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter;->getVolumeStereo()Landroid/hardware/audio/effect/Parameter$VolumeStereo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 184
    goto :goto_0

    .line 180
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter;->getOffload()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 181
    goto :goto_0

    .line 177
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter;->getSource()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    goto :goto_0

    .line 174
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter;->getMode()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    goto :goto_0

    .line 171
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter;->getDeviceDescription()[Landroid/media/audio/common/AudioDeviceDescription;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 172
    goto :goto_0

    .line 168
    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter;->getCommon()Landroid/hardware/audio/effect/Parameter$Common;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 169
    nop

    .line 189
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
