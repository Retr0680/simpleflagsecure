.class public final Landroid/hardware/audio/effect/Visualizer;
.super Ljava/lang/Object;
.source "Visualizer.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/audio/effect/Visualizer$Id;,
        Landroid/hardware/audio/effect/Visualizer$Measurement;,
        Landroid/hardware/audio/effect/Visualizer$Tag;,
        Landroid/hardware/audio/effect/Visualizer$MeasurementMode;,
        Landroid/hardware/audio/effect/Visualizer$ScalingMode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/audio/effect/Visualizer;",
            ">;"
        }
    .end annotation
.end field

.field public static final captureSampleBuffer:I = 0x3

.field public static final captureSamples:I = 0x5

.field public static final id:I = 0x0

.field public static final latencyMs:I = 0x4

.field public static final measurement:I = 0x2

.field public static final measurementMode:I = 0x7

.field public static final scalingMode:I = 0x6

.field public static final vendor:I = 0x1


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 168
    new-instance v0, Landroid/hardware/audio/effect/Visualizer$1;

    invoke-direct {v0}, Landroid/hardware/audio/effect/Visualizer$1;-><init>()V

    sput-object v0, Landroid/hardware/audio/effect/Visualizer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "_value":Landroid/hardware/audio/effect/Visualizer$Id;
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/audio/effect/Visualizer;->_tag:I

    .line 27
    iput-object v0, p0, Landroid/hardware/audio/effect/Visualizer;->_value:Ljava/lang/Object;

    .line 28
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Landroid/hardware/audio/effect/Visualizer;->_tag:I

    .line 36
    iput-object p2, p0, Landroid/hardware/audio/effect/Visualizer;->_value:Ljava/lang/Object;

    .line 37
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/Visualizer;->readFromParcel(Landroid/os/Parcel;)V

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/audio/effect/Visualizer-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/Visualizer;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 283
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Visualizer;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 286
    return-void

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/Visualizer;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/audio/effect/Visualizer;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/audio/effect/Visualizer;->_tagString(I)Ljava/lang/String;

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

    .line 303
    iput p1, p0, Landroid/hardware/audio/effect/Visualizer;->_tag:I

    .line 304
    iput-object p2, p0, Landroid/hardware/audio/effect/Visualizer;->_value:Ljava/lang/Object;

    .line 305
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 289
    packed-switch p1, :pswitch_data_0

    .line 299
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

    .line 297
    :pswitch_0
    const-string/jumbo v0, "measurementMode"

    return-object v0

    .line 296
    :pswitch_1
    const-string/jumbo v0, "scalingMode"

    return-object v0

    .line 295
    :pswitch_2
    const-string v0, "captureSamples"

    return-object v0

    .line 294
    :pswitch_3
    const-string/jumbo v0, "latencyMs"

    return-object v0

    .line 293
    :pswitch_4
    const-string v0, "captureSampleBuffer"

    return-object v0

    .line 292
    :pswitch_5
    const-string/jumbo v0, "measurement"

    return-object v0

    .line 291
    :pswitch_6
    const-string/jumbo v0, "vendor"

    return-object v0

    .line 290
    :pswitch_7
    const-string/jumbo v0, "id"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static captureSampleBuffer([B)Landroid/hardware/audio/effect/Visualizer;
    .locals 2
    .param p0, "_value"    # [B

    .line 91
    new-instance v0, Landroid/hardware/audio/effect/Visualizer;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Visualizer;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static captureSamples(I)Landroid/hardware/audio/effect/Visualizer;
    .locals 3
    .param p0, "_value"    # I

    .line 121
    new-instance v0, Landroid/hardware/audio/effect/Visualizer;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Landroid/hardware/audio/effect/Visualizer;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 275
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 276
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 277
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 279
    :cond_1
    return v0
.end method

.method public static id(Landroid/hardware/audio/effect/Visualizer$Id;)Landroid/hardware/audio/effect/Visualizer;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/Visualizer$Id;

    .line 46
    new-instance v0, Landroid/hardware/audio/effect/Visualizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Visualizer;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static latencyMs(I)Landroid/hardware/audio/effect/Visualizer;
    .locals 3
    .param p0, "_value"    # I

    .line 106
    new-instance v0, Landroid/hardware/audio/effect/Visualizer;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Landroid/hardware/audio/effect/Visualizer;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static measurement(Landroid/hardware/audio/effect/Visualizer$Measurement;)Landroid/hardware/audio/effect/Visualizer;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/Visualizer$Measurement;

    .line 76
    new-instance v0, Landroid/hardware/audio/effect/Visualizer;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Visualizer;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static measurementMode(B)Landroid/hardware/audio/effect/Visualizer;
    .locals 3
    .param p0, "_value"    # B

    .line 151
    new-instance v0, Landroid/hardware/audio/effect/Visualizer;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {v0, v2, v1}, Landroid/hardware/audio/effect/Visualizer;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static scalingMode(B)Landroid/hardware/audio/effect/Visualizer;
    .locals 3
    .param p0, "_value"    # B

    .line 136
    new-instance v0, Landroid/hardware/audio/effect/Visualizer;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Landroid/hardware/audio/effect/Visualizer;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static vendor(Landroid/hardware/audio/effect/VendorExtension;)Landroid/hardware/audio/effect/Visualizer;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/VendorExtension;

    .line 61
    new-instance v0, Landroid/hardware/audio/effect/Visualizer;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Visualizer;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Visualizer;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 269
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Visualizer;->getMeasurement()Landroid/hardware/audio/effect/Visualizer$Measurement;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Visualizer;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 266
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Visualizer;->getVendor()Landroid/hardware/audio/effect/VendorExtension;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Visualizer;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 267
    goto :goto_0

    .line 263
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Visualizer;->getId()Landroid/hardware/audio/effect/Visualizer$Id;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Visualizer;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 264
    nop

    .line 272
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCaptureSampleBuffer()[B
    .locals 1

    .line 95
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Visualizer;->_assertTag(I)V

    .line 96
    iget-object v0, p0, Landroid/hardware/audio/effect/Visualizer;->_value:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0
.end method

.method public getCaptureSamples()I
    .locals 1

    .line 125
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Visualizer;->_assertTag(I)V

    .line 126
    iget-object v0, p0, Landroid/hardware/audio/effect/Visualizer;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getId()Landroid/hardware/audio/effect/Visualizer$Id;
    .locals 1

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Visualizer;->_assertTag(I)V

    .line 51
    iget-object v0, p0, Landroid/hardware/audio/effect/Visualizer;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/Visualizer$Id;

    return-object v0
.end method

.method public getLatencyMs()I
    .locals 1

    .line 110
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Visualizer;->_assertTag(I)V

    .line 111
    iget-object v0, p0, Landroid/hardware/audio/effect/Visualizer;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMeasurement()Landroid/hardware/audio/effect/Visualizer$Measurement;
    .locals 1

    .line 80
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Visualizer;->_assertTag(I)V

    .line 81
    iget-object v0, p0, Landroid/hardware/audio/effect/Visualizer;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/Visualizer$Measurement;

    return-object v0
.end method

.method public getMeasurementMode()B
    .locals 1

    .line 155
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Visualizer;->_assertTag(I)V

    .line 156
    iget-object v0, p0, Landroid/hardware/audio/effect/Visualizer;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getScalingMode()B
    .locals 1

    .line 140
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Visualizer;->_assertTag(I)V

    .line 141
    iget-object v0, p0, Landroid/hardware/audio/effect/Visualizer;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 40
    iget v0, p0, Landroid/hardware/audio/effect/Visualizer;->_tag:I

    return v0
.end method

.method public getVendor()Landroid/hardware/audio/effect/VendorExtension;
    .locals 1

    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Visualizer;->_assertTag(I)V

    .line 66
    iget-object v0, p0, Landroid/hardware/audio/effect/Visualizer;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/VendorExtension;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 213
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 255
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

    .line 251
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 252
    .local v1, "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/audio/effect/Visualizer;->_set(ILjava/lang/Object;)V

    .line 253
    return-void

    .line 246
    .end local v1    # "_aidl_value":B
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 247
    .restart local v1    # "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/audio/effect/Visualizer;->_set(ILjava/lang/Object;)V

    .line 248
    return-void

    .line 241
    .end local v1    # "_aidl_value":B
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 242
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/audio/effect/Visualizer;->_set(ILjava/lang/Object;)V

    .line 243
    return-void

    .line 236
    .end local v1    # "_aidl_value":I
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 237
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/audio/effect/Visualizer;->_set(ILjava/lang/Object;)V

    .line 238
    return-void

    .line 231
    .end local v1    # "_aidl_value":I
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 232
    .local v1, "_aidl_value":[B
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Visualizer;->_set(ILjava/lang/Object;)V

    .line 233
    return-void

    .line 226
    .end local v1    # "_aidl_value":[B
    :pswitch_5
    sget-object v1, Landroid/hardware/audio/effect/Visualizer$Measurement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/Visualizer$Measurement;

    .line 227
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/Visualizer$Measurement;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Visualizer;->_set(ILjava/lang/Object;)V

    .line 228
    return-void

    .line 221
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/Visualizer$Measurement;
    :pswitch_6
    sget-object v1, Landroid/hardware/audio/effect/VendorExtension;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/VendorExtension;

    .line 222
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/VendorExtension;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Visualizer;->_set(ILjava/lang/Object;)V

    .line 223
    return-void

    .line 216
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/VendorExtension;
    :pswitch_7
    sget-object v1, Landroid/hardware/audio/effect/Visualizer$Id;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/Visualizer$Id;

    .line 217
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/Visualizer$Id;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Visualizer;->_set(ILjava/lang/Object;)V

    .line 218
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCaptureSampleBuffer([B)V
    .locals 1
    .param p1, "_value"    # [B

    .line 100
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Visualizer;->_set(ILjava/lang/Object;)V

    .line 101
    return-void
.end method

.method public setCaptureSamples(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Landroid/hardware/audio/effect/Visualizer;->_set(ILjava/lang/Object;)V

    .line 131
    return-void
.end method

.method public setId(Landroid/hardware/audio/effect/Visualizer$Id;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/Visualizer$Id;

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Visualizer;->_set(ILjava/lang/Object;)V

    .line 56
    return-void
.end method

.method public setLatencyMs(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Landroid/hardware/audio/effect/Visualizer;->_set(ILjava/lang/Object;)V

    .line 116
    return-void
.end method

.method public setMeasurement(Landroid/hardware/audio/effect/Visualizer$Measurement;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/Visualizer$Measurement;

    .line 85
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Visualizer;->_set(ILjava/lang/Object;)V

    .line 86
    return-void
.end method

.method public setMeasurementMode(B)V
    .locals 2
    .param p1, "_value"    # B

    .line 160
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/4 v1, 0x7

    invoke-direct {p0, v1, v0}, Landroid/hardware/audio/effect/Visualizer;->_set(ILjava/lang/Object;)V

    .line 161
    return-void
.end method

.method public setScalingMode(B)V
    .locals 2
    .param p1, "_value"    # B

    .line 145
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/hardware/audio/effect/Visualizer;->_set(ILjava/lang/Object;)V

    .line 146
    return-void
.end method

.method public setVendor(Landroid/hardware/audio/effect/VendorExtension;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/VendorExtension;

    .line 70
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Visualizer;->_set(ILjava/lang/Object;)V

    .line 71
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 181
    iget v0, p0, Landroid/hardware/audio/effect/Visualizer;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget v0, p0, Landroid/hardware/audio/effect/Visualizer;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 205
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Visualizer;->getMeasurementMode()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 202
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Visualizer;->getScalingMode()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 203
    goto :goto_0

    .line 199
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Visualizer;->getCaptureSamples()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    goto :goto_0

    .line 196
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Visualizer;->getLatencyMs()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    goto :goto_0

    .line 193
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Visualizer;->getCaptureSampleBuffer()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 194
    goto :goto_0

    .line 190
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Visualizer;->getMeasurement()Landroid/hardware/audio/effect/Visualizer$Measurement;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 191
    goto :goto_0

    .line 187
    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Visualizer;->getVendor()Landroid/hardware/audio/effect/VendorExtension;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 188
    goto :goto_0

    .line 184
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Visualizer;->getId()Landroid/hardware/audio/effect/Visualizer$Id;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 185
    nop

    .line 208
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
