.class public final Landroid/hardware/audio/effect/Equalizer;
.super Ljava/lang/Object;
.source "Equalizer.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/audio/effect/Equalizer$BandLevel;,
        Landroid/hardware/audio/effect/Equalizer$BandFrequency;,
        Landroid/hardware/audio/effect/Equalizer$Preset;,
        Landroid/hardware/audio/effect/Equalizer$Tag;,
        Landroid/hardware/audio/effect/Equalizer$Id;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/audio/effect/Equalizer;",
            ">;"
        }
    .end annotation
.end field

.field public static final bandFrequencies:I = 0x4

.field public static final bandLevels:I = 0x1

.field public static final centerFreqMh:I = 0x3

.field public static final preset:I = 0x2

.field public static final presets:I = 0x5

.field public static final vendor:I


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 136
    new-instance v0, Landroid/hardware/audio/effect/Equalizer$1;

    invoke-direct {v0}, Landroid/hardware/audio/effect/Equalizer$1;-><init>()V

    sput-object v0, Landroid/hardware/audio/effect/Equalizer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "_value":Landroid/hardware/audio/effect/VendorExtension;
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/audio/effect/Equalizer;->_tag:I

    .line 25
    iput-object v0, p0, Landroid/hardware/audio/effect/Equalizer;->_value:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Landroid/hardware/audio/effect/Equalizer;->_tag:I

    .line 34
    iput-object p2, p0, Landroid/hardware/audio/effect/Equalizer;->_value:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/Equalizer;->readFromParcel(Landroid/os/Parcel;)V

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/audio/effect/Equalizer-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/Equalizer;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 245
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Equalizer;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 248
    return-void

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/Equalizer;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/audio/effect/Equalizer;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/audio/effect/Equalizer;->_tagString(I)Ljava/lang/String;

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

    .line 263
    iput p1, p0, Landroid/hardware/audio/effect/Equalizer;->_tag:I

    .line 264
    iput-object p2, p0, Landroid/hardware/audio/effect/Equalizer;->_value:Ljava/lang/Object;

    .line 265
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 251
    packed-switch p1, :pswitch_data_0

    .line 259
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

    .line 257
    :pswitch_0
    const-string/jumbo v0, "presets"

    return-object v0

    .line 256
    :pswitch_1
    const-string v0, "bandFrequencies"

    return-object v0

    .line 255
    :pswitch_2
    const-string v0, "centerFreqMh"

    return-object v0

    .line 254
    :pswitch_3
    const-string/jumbo v0, "preset"

    return-object v0

    .line 253
    :pswitch_4
    const-string v0, "bandLevels"

    return-object v0

    .line 252
    :pswitch_5
    const-string/jumbo v0, "vendor"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static bandFrequencies([Landroid/hardware/audio/effect/Equalizer$BandFrequency;)Landroid/hardware/audio/effect/Equalizer;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/audio/effect/Equalizer$BandFrequency;

    .line 104
    new-instance v0, Landroid/hardware/audio/effect/Equalizer;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Equalizer;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static bandLevels([Landroid/hardware/audio/effect/Equalizer$BandLevel;)Landroid/hardware/audio/effect/Equalizer;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/audio/effect/Equalizer$BandLevel;

    .line 59
    new-instance v0, Landroid/hardware/audio/effect/Equalizer;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Equalizer;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static centerFreqMh([I)Landroid/hardware/audio/effect/Equalizer;
    .locals 2
    .param p0, "_value"    # [I

    .line 89
    new-instance v0, Landroid/hardware/audio/effect/Equalizer;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Equalizer;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 6
    .param p1, "_v"    # Ljava/lang/Object;

    .line 230
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 231
    :cond_0
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 232
    const/4 v1, 0x0

    .line 233
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 234
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/hardware/audio/effect/Equalizer;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 233
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_1
    return v1

    .line 238
    .end local v1    # "_mask":I
    :cond_2
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_3

    .line 239
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 241
    :cond_3
    return v0
.end method

.method public static preset(I)Landroid/hardware/audio/effect/Equalizer;
    .locals 3
    .param p0, "_value"    # I

    .line 74
    new-instance v0, Landroid/hardware/audio/effect/Equalizer;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/hardware/audio/effect/Equalizer;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static presets([Landroid/hardware/audio/effect/Equalizer$Preset;)Landroid/hardware/audio/effect/Equalizer;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/audio/effect/Equalizer$Preset;

    .line 119
    new-instance v0, Landroid/hardware/audio/effect/Equalizer;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Equalizer;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static vendor(Landroid/hardware/audio/effect/VendorExtension;)Landroid/hardware/audio/effect/Equalizer;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/VendorExtension;

    .line 44
    new-instance v0, Landroid/hardware/audio/effect/Equalizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Equalizer;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Equalizer;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 224
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Equalizer;->getPresets()[Landroid/hardware/audio/effect/Equalizer$Preset;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Equalizer;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 221
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Equalizer;->getBandFrequencies()[Landroid/hardware/audio/effect/Equalizer$BandFrequency;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Equalizer;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 222
    goto :goto_0

    .line 218
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Equalizer;->getBandLevels()[Landroid/hardware/audio/effect/Equalizer$BandLevel;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Equalizer;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 219
    goto :goto_0

    .line 215
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Equalizer;->getVendor()Landroid/hardware/audio/effect/VendorExtension;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Equalizer;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 216
    nop

    .line 227
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getBandFrequencies()[Landroid/hardware/audio/effect/Equalizer$BandFrequency;
    .locals 1

    .line 108
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Equalizer;->_assertTag(I)V

    .line 109
    iget-object v0, p0, Landroid/hardware/audio/effect/Equalizer;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/audio/effect/Equalizer$BandFrequency;

    return-object v0
.end method

.method public getBandLevels()[Landroid/hardware/audio/effect/Equalizer$BandLevel;
    .locals 1

    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Equalizer;->_assertTag(I)V

    .line 64
    iget-object v0, p0, Landroid/hardware/audio/effect/Equalizer;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/audio/effect/Equalizer$BandLevel;

    return-object v0
.end method

.method public getCenterFreqMh()[I
    .locals 1

    .line 93
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Equalizer;->_assertTag(I)V

    .line 94
    iget-object v0, p0, Landroid/hardware/audio/effect/Equalizer;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public getPreset()I
    .locals 1

    .line 78
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Equalizer;->_assertTag(I)V

    .line 79
    iget-object v0, p0, Landroid/hardware/audio/effect/Equalizer;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPresets()[Landroid/hardware/audio/effect/Equalizer$Preset;
    .locals 1

    .line 123
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Equalizer;->_assertTag(I)V

    .line 124
    iget-object v0, p0, Landroid/hardware/audio/effect/Equalizer;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/audio/effect/Equalizer$Preset;

    return-object v0
.end method

.method public final getStability()I
    .locals 1

    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 38
    iget v0, p0, Landroid/hardware/audio/effect/Equalizer;->_tag:I

    return v0
.end method

.method public getVendor()Landroid/hardware/audio/effect/VendorExtension;
    .locals 1

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Equalizer;->_assertTag(I)V

    .line 49
    iget-object v0, p0, Landroid/hardware/audio/effect/Equalizer;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/VendorExtension;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 175
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 207
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

    .line 203
    :pswitch_0
    sget-object v1, Landroid/hardware/audio/effect/Equalizer$Preset;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/audio/effect/Equalizer$Preset;

    .line 204
    .local v1, "_aidl_value":[Landroid/hardware/audio/effect/Equalizer$Preset;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Equalizer;->_set(ILjava/lang/Object;)V

    .line 205
    return-void

    .line 198
    .end local v1    # "_aidl_value":[Landroid/hardware/audio/effect/Equalizer$Preset;
    :pswitch_1
    sget-object v1, Landroid/hardware/audio/effect/Equalizer$BandFrequency;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/audio/effect/Equalizer$BandFrequency;

    .line 199
    .local v1, "_aidl_value":[Landroid/hardware/audio/effect/Equalizer$BandFrequency;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Equalizer;->_set(ILjava/lang/Object;)V

    .line 200
    return-void

    .line 193
    .end local v1    # "_aidl_value":[Landroid/hardware/audio/effect/Equalizer$BandFrequency;
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 194
    .local v1, "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Equalizer;->_set(ILjava/lang/Object;)V

    .line 195
    return-void

    .line 188
    .end local v1    # "_aidl_value":[I
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 189
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/audio/effect/Equalizer;->_set(ILjava/lang/Object;)V

    .line 190
    return-void

    .line 183
    .end local v1    # "_aidl_value":I
    :pswitch_4
    sget-object v1, Landroid/hardware/audio/effect/Equalizer$BandLevel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/audio/effect/Equalizer$BandLevel;

    .line 184
    .local v1, "_aidl_value":[Landroid/hardware/audio/effect/Equalizer$BandLevel;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Equalizer;->_set(ILjava/lang/Object;)V

    .line 185
    return-void

    .line 178
    .end local v1    # "_aidl_value":[Landroid/hardware/audio/effect/Equalizer$BandLevel;
    :pswitch_5
    sget-object v1, Landroid/hardware/audio/effect/VendorExtension;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/VendorExtension;

    .line 179
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/VendorExtension;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Equalizer;->_set(ILjava/lang/Object;)V

    .line 180
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBandFrequencies([Landroid/hardware/audio/effect/Equalizer$BandFrequency;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/audio/effect/Equalizer$BandFrequency;

    .line 113
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Equalizer;->_set(ILjava/lang/Object;)V

    .line 114
    return-void
.end method

.method public setBandLevels([Landroid/hardware/audio/effect/Equalizer$BandLevel;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/audio/effect/Equalizer$BandLevel;

    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Equalizer;->_set(ILjava/lang/Object;)V

    .line 69
    return-void
.end method

.method public setCenterFreqMh([I)V
    .locals 1
    .param p1, "_value"    # [I

    .line 98
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Equalizer;->_set(ILjava/lang/Object;)V

    .line 99
    return-void
.end method

.method public setPreset(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/hardware/audio/effect/Equalizer;->_set(ILjava/lang/Object;)V

    .line 84
    return-void
.end method

.method public setPresets([Landroid/hardware/audio/effect/Equalizer$Preset;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/audio/effect/Equalizer$Preset;

    .line 128
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Equalizer;->_set(ILjava/lang/Object;)V

    .line 129
    return-void
.end method

.method public setVendor(Landroid/hardware/audio/effect/VendorExtension;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/VendorExtension;

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Equalizer;->_set(ILjava/lang/Object;)V

    .line 54
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 149
    iget v0, p0, Landroid/hardware/audio/effect/Equalizer;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v0, p0, Landroid/hardware/audio/effect/Equalizer;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 167
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Equalizer;->getPresets()[Landroid/hardware/audio/effect/Equalizer$Preset;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 164
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Equalizer;->getBandFrequencies()[Landroid/hardware/audio/effect/Equalizer$BandFrequency;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 165
    goto :goto_0

    .line 161
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Equalizer;->getCenterFreqMh()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 162
    goto :goto_0

    .line 158
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Equalizer;->getPreset()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    goto :goto_0

    .line 155
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Equalizer;->getBandLevels()[Landroid/hardware/audio/effect/Equalizer$BandLevel;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 156
    goto :goto_0

    .line 152
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Equalizer;->getVendor()Landroid/hardware/audio/effect/VendorExtension;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 153
    nop

    .line 170
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
