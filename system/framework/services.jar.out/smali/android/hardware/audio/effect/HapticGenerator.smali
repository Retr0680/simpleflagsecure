.class public final Landroid/hardware/audio/effect/HapticGenerator;
.super Ljava/lang/Object;
.source "HapticGenerator.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/audio/effect/HapticGenerator$HapticScale;,
        Landroid/hardware/audio/effect/HapticGenerator$VibratorInformation;,
        Landroid/hardware/audio/effect/HapticGenerator$Tag;,
        Landroid/hardware/audio/effect/HapticGenerator$VibratorScale;,
        Landroid/hardware/audio/effect/HapticGenerator$Id;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/audio/effect/HapticGenerator;",
            ">;"
        }
    .end annotation
.end field

.field public static final hapticScales:I = 0x1

.field public static final vendor:I = 0x0

.field public static final vibratorInfo:I = 0x2


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Landroid/hardware/audio/effect/HapticGenerator$1;

    invoke-direct {v0}, Landroid/hardware/audio/effect/HapticGenerator$1;-><init>()V

    sput-object v0, Landroid/hardware/audio/effect/HapticGenerator;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, "_value":Landroid/hardware/audio/effect/VendorExtension;
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/audio/effect/HapticGenerator;->_tag:I

    .line 22
    iput-object v0, p0, Landroid/hardware/audio/effect/HapticGenerator;->_value:Ljava/lang/Object;

    .line 23
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Landroid/hardware/audio/effect/HapticGenerator;->_tag:I

    .line 31
    iput-object p2, p0, Landroid/hardware/audio/effect/HapticGenerator;->_value:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/HapticGenerator;->readFromParcel(Landroid/os/Parcel;)V

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/audio/effect/HapticGenerator-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/HapticGenerator;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 170
    invoke-virtual {p0}, Landroid/hardware/audio/effect/HapticGenerator;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 173
    return-void

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/HapticGenerator;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/audio/effect/HapticGenerator;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/audio/effect/HapticGenerator;->_tagString(I)Ljava/lang/String;

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

    .line 185
    iput p1, p0, Landroid/hardware/audio/effect/HapticGenerator;->_tag:I

    .line 186
    iput-object p2, p0, Landroid/hardware/audio/effect/HapticGenerator;->_value:Ljava/lang/Object;

    .line 187
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 176
    packed-switch p1, :pswitch_data_0

    .line 181
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

    .line 179
    :pswitch_0
    const-string/jumbo v0, "vibratorInfo"

    return-object v0

    .line 178
    :pswitch_1
    const-string/jumbo v0, "hapticScales"

    return-object v0

    .line 177
    :pswitch_2
    const-string/jumbo v0, "vendor"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 6
    .param p1, "_v"    # Ljava/lang/Object;

    .line 155
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 156
    :cond_0
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 157
    const/4 v1, 0x0

    .line 158
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 159
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/hardware/audio/effect/HapticGenerator;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 158
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_1
    return v1

    .line 163
    .end local v1    # "_mask":I
    :cond_2
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_3

    .line 164
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 166
    :cond_3
    return v0
.end method

.method public static hapticScales([Landroid/hardware/audio/effect/HapticGenerator$HapticScale;)Landroid/hardware/audio/effect/HapticGenerator;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/audio/effect/HapticGenerator$HapticScale;

    .line 56
    new-instance v0, Landroid/hardware/audio/effect/HapticGenerator;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/HapticGenerator;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static vendor(Landroid/hardware/audio/effect/VendorExtension;)Landroid/hardware/audio/effect/HapticGenerator;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/VendorExtension;

    .line 41
    new-instance v0, Landroid/hardware/audio/effect/HapticGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/HapticGenerator;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static vibratorInfo(Landroid/hardware/audio/effect/HapticGenerator$VibratorInformation;)Landroid/hardware/audio/effect/HapticGenerator;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/HapticGenerator$VibratorInformation;

    .line 71
    new-instance v0, Landroid/hardware/audio/effect/HapticGenerator;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/HapticGenerator;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/audio/effect/HapticGenerator;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 149
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/audio/effect/HapticGenerator;->getVibratorInfo()Landroid/hardware/audio/effect/HapticGenerator$VibratorInformation;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/HapticGenerator;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 146
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/audio/effect/HapticGenerator;->getHapticScales()[Landroid/hardware/audio/effect/HapticGenerator$HapticScale;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/HapticGenerator;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 147
    goto :goto_0

    .line 143
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/audio/effect/HapticGenerator;->getVendor()Landroid/hardware/audio/effect/VendorExtension;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/HapticGenerator;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 144
    nop

    .line 152
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getHapticScales()[Landroid/hardware/audio/effect/HapticGenerator$HapticScale;
    .locals 1

    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/HapticGenerator;->_assertTag(I)V

    .line 61
    iget-object v0, p0, Landroid/hardware/audio/effect/HapticGenerator;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/audio/effect/HapticGenerator$HapticScale;

    return-object v0
.end method

.method public final getStability()I
    .locals 1

    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 35
    iget v0, p0, Landroid/hardware/audio/effect/HapticGenerator;->_tag:I

    return v0
.end method

.method public getVendor()Landroid/hardware/audio/effect/VendorExtension;
    .locals 1

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/HapticGenerator;->_assertTag(I)V

    .line 46
    iget-object v0, p0, Landroid/hardware/audio/effect/HapticGenerator;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/VendorExtension;

    return-object v0
.end method

.method public getVibratorInfo()Landroid/hardware/audio/effect/HapticGenerator$VibratorInformation;
    .locals 1

    .line 75
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/HapticGenerator;->_assertTag(I)V

    .line 76
    iget-object v0, p0, Landroid/hardware/audio/effect/HapticGenerator;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/HapticGenerator$VibratorInformation;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 118
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 135
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

    .line 131
    :pswitch_0
    sget-object v1, Landroid/hardware/audio/effect/HapticGenerator$VibratorInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/HapticGenerator$VibratorInformation;

    .line 132
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/HapticGenerator$VibratorInformation;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/HapticGenerator;->_set(ILjava/lang/Object;)V

    .line 133
    return-void

    .line 126
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/HapticGenerator$VibratorInformation;
    :pswitch_1
    sget-object v1, Landroid/hardware/audio/effect/HapticGenerator$HapticScale;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/audio/effect/HapticGenerator$HapticScale;

    .line 127
    .local v1, "_aidl_value":[Landroid/hardware/audio/effect/HapticGenerator$HapticScale;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/HapticGenerator;->_set(ILjava/lang/Object;)V

    .line 128
    return-void

    .line 121
    .end local v1    # "_aidl_value":[Landroid/hardware/audio/effect/HapticGenerator$HapticScale;
    :pswitch_2
    sget-object v1, Landroid/hardware/audio/effect/VendorExtension;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/VendorExtension;

    .line 122
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/VendorExtension;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/HapticGenerator;->_set(ILjava/lang/Object;)V

    .line 123
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setHapticScales([Landroid/hardware/audio/effect/HapticGenerator$HapticScale;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/audio/effect/HapticGenerator$HapticScale;

    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/HapticGenerator;->_set(ILjava/lang/Object;)V

    .line 66
    return-void
.end method

.method public setVendor(Landroid/hardware/audio/effect/VendorExtension;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/VendorExtension;

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/HapticGenerator;->_set(ILjava/lang/Object;)V

    .line 51
    return-void
.end method

.method public setVibratorInfo(Landroid/hardware/audio/effect/HapticGenerator$VibratorInformation;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/HapticGenerator$VibratorInformation;

    .line 80
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/HapticGenerator;->_set(ILjava/lang/Object;)V

    .line 81
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 101
    iget v0, p0, Landroid/hardware/audio/effect/HapticGenerator;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget v0, p0, Landroid/hardware/audio/effect/HapticGenerator;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 110
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/audio/effect/HapticGenerator;->getVibratorInfo()Landroid/hardware/audio/effect/HapticGenerator$VibratorInformation;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 107
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/audio/effect/HapticGenerator;->getHapticScales()[Landroid/hardware/audio/effect/HapticGenerator$HapticScale;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 108
    goto :goto_0

    .line 104
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/audio/effect/HapticGenerator;->getVendor()Landroid/hardware/audio/effect/VendorExtension;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 105
    nop

    .line 113
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
