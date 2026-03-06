.class public final Landroid/hardware/audio/effect/DynamicsProcessing;
.super Ljava/lang/Object;
.source "DynamicsProcessing.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;,
        Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;,
        Landroid/hardware/audio/effect/DynamicsProcessing$EqBandConfig;,
        Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;,
        Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;,
        Landroid/hardware/audio/effect/DynamicsProcessing$InputGain;,
        Landroid/hardware/audio/effect/DynamicsProcessing$Tag;,
        Landroid/hardware/audio/effect/DynamicsProcessing$StageEnablement;,
        Landroid/hardware/audio/effect/DynamicsProcessing$ResolutionPreference;,
        Landroid/hardware/audio/effect/DynamicsProcessing$Id;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/audio/effect/DynamicsProcessing;",
            ">;"
        }
    .end annotation
.end field

.field public static final engineArchitecture:I = 0x1

.field public static final inputGain:I = 0x9

.field public static final limiter:I = 0x8

.field public static final mbc:I = 0x6

.field public static final mbcBand:I = 0x7

.field public static final postEq:I = 0x3

.field public static final postEqBand:I = 0x5

.field public static final preEq:I = 0x2

.field public static final preEqBand:I = 0x4

.field public static final vendor:I


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 200
    new-instance v0, Landroid/hardware/audio/effect/DynamicsProcessing$1;

    invoke-direct {v0}, Landroid/hardware/audio/effect/DynamicsProcessing$1;-><init>()V

    sput-object v0, Landroid/hardware/audio/effect/DynamicsProcessing;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "_value":Landroid/hardware/audio/effect/VendorExtension;
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/audio/effect/DynamicsProcessing;->_tag:I

    .line 29
    iput-object v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing;->_value:Ljava/lang/Object;

    .line 30
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Landroid/hardware/audio/effect/DynamicsProcessing;->_tag:I

    .line 38
    iput-object p2, p0, Landroid/hardware/audio/effect/DynamicsProcessing;->_value:Ljava/lang/Object;

    .line 39
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/DynamicsProcessing;->readFromParcel(Landroid/os/Parcel;)V

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/audio/effect/DynamicsProcessing-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/DynamicsProcessing;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 359
    invoke-virtual {p0}, Landroid/hardware/audio/effect/DynamicsProcessing;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 362
    return-void

    .line 360
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/DynamicsProcessing;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/audio/effect/DynamicsProcessing;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/audio/effect/DynamicsProcessing;->_tagString(I)Ljava/lang/String;

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

    .line 381
    iput p1, p0, Landroid/hardware/audio/effect/DynamicsProcessing;->_tag:I

    .line 382
    iput-object p2, p0, Landroid/hardware/audio/effect/DynamicsProcessing;->_value:Ljava/lang/Object;

    .line 383
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 365
    packed-switch p1, :pswitch_data_0

    .line 377
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

    .line 375
    :pswitch_0
    const-string/jumbo v0, "inputGain"

    return-object v0

    .line 374
    :pswitch_1
    const-string/jumbo v0, "limiter"

    return-object v0

    .line 373
    :pswitch_2
    const-string/jumbo v0, "mbcBand"

    return-object v0

    .line 372
    :pswitch_3
    const-string/jumbo v0, "mbc"

    return-object v0

    .line 371
    :pswitch_4
    const-string/jumbo v0, "postEqBand"

    return-object v0

    .line 370
    :pswitch_5
    const-string/jumbo v0, "preEqBand"

    return-object v0

    .line 369
    :pswitch_6
    const-string/jumbo v0, "postEq"

    return-object v0

    .line 368
    :pswitch_7
    const-string/jumbo v0, "preEq"

    return-object v0

    .line 367
    :pswitch_8
    const-string v0, "engineArchitecture"

    return-object v0

    .line 366
    :pswitch_9
    const-string/jumbo v0, "vendor"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
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

.method private describeContents(Ljava/lang/Object;)I
    .locals 6
    .param p1, "_v"    # Ljava/lang/Object;

    .line 344
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 345
    :cond_0
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 346
    const/4 v1, 0x0

    .line 347
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 348
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/hardware/audio/effect/DynamicsProcessing;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 347
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 350
    :cond_1
    return v1

    .line 352
    .end local v1    # "_mask":I
    :cond_2
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_3

    .line 353
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 355
    :cond_3
    return v0
.end method

.method public static engineArchitecture(Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;)Landroid/hardware/audio/effect/DynamicsProcessing;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;

    .line 63
    new-instance v0, Landroid/hardware/audio/effect/DynamicsProcessing;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/DynamicsProcessing;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static inputGain([Landroid/hardware/audio/effect/DynamicsProcessing$InputGain;)Landroid/hardware/audio/effect/DynamicsProcessing;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/audio/effect/DynamicsProcessing$InputGain;

    .line 183
    new-instance v0, Landroid/hardware/audio/effect/DynamicsProcessing;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/DynamicsProcessing;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static limiter([Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;)Landroid/hardware/audio/effect/DynamicsProcessing;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;

    .line 168
    new-instance v0, Landroid/hardware/audio/effect/DynamicsProcessing;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/DynamicsProcessing;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static mbc([Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;)Landroid/hardware/audio/effect/DynamicsProcessing;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;

    .line 138
    new-instance v0, Landroid/hardware/audio/effect/DynamicsProcessing;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/DynamicsProcessing;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static mbcBand([Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;)Landroid/hardware/audio/effect/DynamicsProcessing;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;

    .line 153
    new-instance v0, Landroid/hardware/audio/effect/DynamicsProcessing;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/DynamicsProcessing;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static postEq([Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;)Landroid/hardware/audio/effect/DynamicsProcessing;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;

    .line 93
    new-instance v0, Landroid/hardware/audio/effect/DynamicsProcessing;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/DynamicsProcessing;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static postEqBand([Landroid/hardware/audio/effect/DynamicsProcessing$EqBandConfig;)Landroid/hardware/audio/effect/DynamicsProcessing;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/audio/effect/DynamicsProcessing$EqBandConfig;

    .line 123
    new-instance v0, Landroid/hardware/audio/effect/DynamicsProcessing;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/DynamicsProcessing;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static preEq([Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;)Landroid/hardware/audio/effect/DynamicsProcessing;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;

    .line 78
    new-instance v0, Landroid/hardware/audio/effect/DynamicsProcessing;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/DynamicsProcessing;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static preEqBand([Landroid/hardware/audio/effect/DynamicsProcessing$EqBandConfig;)Landroid/hardware/audio/effect/DynamicsProcessing;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/audio/effect/DynamicsProcessing$EqBandConfig;

    .line 108
    new-instance v0, Landroid/hardware/audio/effect/DynamicsProcessing;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/DynamicsProcessing;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static vendor(Landroid/hardware/audio/effect/VendorExtension;)Landroid/hardware/audio/effect/DynamicsProcessing;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/VendorExtension;

    .line 48
    new-instance v0, Landroid/hardware/audio/effect/DynamicsProcessing;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/DynamicsProcessing;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/audio/effect/DynamicsProcessing;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 338
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/audio/effect/DynamicsProcessing;->getInputGain()[Landroid/hardware/audio/effect/DynamicsProcessing$InputGain;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/DynamicsProcessing;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 335
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/audio/effect/DynamicsProcessing;->getLimiter()[Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/DynamicsProcessing;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 336
    goto :goto_0

    .line 332
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/audio/effect/DynamicsProcessing;->getMbcBand()[Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/DynamicsProcessing;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 333
    goto :goto_0

    .line 329
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/audio/effect/DynamicsProcessing;->getMbc()[Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/DynamicsProcessing;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 330
    goto :goto_0

    .line 326
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/audio/effect/DynamicsProcessing;->getPostEqBand()[Landroid/hardware/audio/effect/DynamicsProcessing$EqBandConfig;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/DynamicsProcessing;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 327
    goto :goto_0

    .line 323
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/audio/effect/DynamicsProcessing;->getPreEqBand()[Landroid/hardware/audio/effect/DynamicsProcessing$EqBandConfig;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/DynamicsProcessing;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 324
    goto :goto_0

    .line 320
    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/audio/effect/DynamicsProcessing;->getPostEq()[Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/DynamicsProcessing;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 321
    goto :goto_0

    .line 317
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/audio/effect/DynamicsProcessing;->getPreEq()[Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/DynamicsProcessing;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 318
    goto :goto_0

    .line 314
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/audio/effect/DynamicsProcessing;->getEngineArchitecture()Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/DynamicsProcessing;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 315
    goto :goto_0

    .line 311
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/audio/effect/DynamicsProcessing;->getVendor()Landroid/hardware/audio/effect/VendorExtension;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/DynamicsProcessing;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 312
    nop

    .line 341
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
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

.method public getEngineArchitecture()Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;
    .locals 1

    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/DynamicsProcessing;->_assertTag(I)V

    .line 68
    iget-object v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;

    return-object v0
.end method

.method public getInputGain()[Landroid/hardware/audio/effect/DynamicsProcessing$InputGain;
    .locals 1

    .line 187
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/DynamicsProcessing;->_assertTag(I)V

    .line 188
    iget-object v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/audio/effect/DynamicsProcessing$InputGain;

    return-object v0
.end method

.method public getLimiter()[Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;
    .locals 1

    .line 172
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/DynamicsProcessing;->_assertTag(I)V

    .line 173
    iget-object v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;

    return-object v0
.end method

.method public getMbc()[Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;
    .locals 1

    .line 142
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/DynamicsProcessing;->_assertTag(I)V

    .line 143
    iget-object v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;

    return-object v0
.end method

.method public getMbcBand()[Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;
    .locals 1

    .line 157
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/DynamicsProcessing;->_assertTag(I)V

    .line 158
    iget-object v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;

    return-object v0
.end method

.method public getPostEq()[Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;
    .locals 1

    .line 97
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/DynamicsProcessing;->_assertTag(I)V

    .line 98
    iget-object v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;

    return-object v0
.end method

.method public getPostEqBand()[Landroid/hardware/audio/effect/DynamicsProcessing$EqBandConfig;
    .locals 1

    .line 127
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/DynamicsProcessing;->_assertTag(I)V

    .line 128
    iget-object v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/audio/effect/DynamicsProcessing$EqBandConfig;

    return-object v0
.end method

.method public getPreEq()[Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;
    .locals 1

    .line 82
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/DynamicsProcessing;->_assertTag(I)V

    .line 83
    iget-object v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;

    return-object v0
.end method

.method public getPreEqBand()[Landroid/hardware/audio/effect/DynamicsProcessing$EqBandConfig;
    .locals 1

    .line 112
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/DynamicsProcessing;->_assertTag(I)V

    .line 113
    iget-object v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/audio/effect/DynamicsProcessing$EqBandConfig;

    return-object v0
.end method

.method public final getStability()I
    .locals 1

    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 42
    iget v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing;->_tag:I

    return v0
.end method

.method public getVendor()Landroid/hardware/audio/effect/VendorExtension;
    .locals 1

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/DynamicsProcessing;->_assertTag(I)V

    .line 53
    iget-object v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/VendorExtension;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 251
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 303
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

    .line 299
    :pswitch_0
    sget-object v1, Landroid/hardware/audio/effect/DynamicsProcessing$InputGain;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/audio/effect/DynamicsProcessing$InputGain;

    .line 300
    .local v1, "_aidl_value":[Landroid/hardware/audio/effect/DynamicsProcessing$InputGain;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/DynamicsProcessing;->_set(ILjava/lang/Object;)V

    .line 301
    return-void

    .line 294
    .end local v1    # "_aidl_value":[Landroid/hardware/audio/effect/DynamicsProcessing$InputGain;
    :pswitch_1
    sget-object v1, Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;

    .line 295
    .local v1, "_aidl_value":[Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/DynamicsProcessing;->_set(ILjava/lang/Object;)V

    .line 296
    return-void

    .line 289
    .end local v1    # "_aidl_value":[Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;
    :pswitch_2
    sget-object v1, Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;

    .line 290
    .local v1, "_aidl_value":[Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/DynamicsProcessing;->_set(ILjava/lang/Object;)V

    .line 291
    return-void

    .line 284
    .end local v1    # "_aidl_value":[Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;
    :pswitch_3
    sget-object v1, Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;

    .line 285
    .local v1, "_aidl_value":[Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/DynamicsProcessing;->_set(ILjava/lang/Object;)V

    .line 286
    return-void

    .line 279
    .end local v1    # "_aidl_value":[Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;
    :pswitch_4
    sget-object v1, Landroid/hardware/audio/effect/DynamicsProcessing$EqBandConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/audio/effect/DynamicsProcessing$EqBandConfig;

    .line 280
    .local v1, "_aidl_value":[Landroid/hardware/audio/effect/DynamicsProcessing$EqBandConfig;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/DynamicsProcessing;->_set(ILjava/lang/Object;)V

    .line 281
    return-void

    .line 274
    .end local v1    # "_aidl_value":[Landroid/hardware/audio/effect/DynamicsProcessing$EqBandConfig;
    :pswitch_5
    sget-object v1, Landroid/hardware/audio/effect/DynamicsProcessing$EqBandConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/audio/effect/DynamicsProcessing$EqBandConfig;

    .line 275
    .restart local v1    # "_aidl_value":[Landroid/hardware/audio/effect/DynamicsProcessing$EqBandConfig;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/DynamicsProcessing;->_set(ILjava/lang/Object;)V

    .line 276
    return-void

    .line 269
    .end local v1    # "_aidl_value":[Landroid/hardware/audio/effect/DynamicsProcessing$EqBandConfig;
    :pswitch_6
    sget-object v1, Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;

    .line 270
    .local v1, "_aidl_value":[Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/DynamicsProcessing;->_set(ILjava/lang/Object;)V

    .line 271
    return-void

    .line 264
    .end local v1    # "_aidl_value":[Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;
    :pswitch_7
    sget-object v1, Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;

    .line 265
    .restart local v1    # "_aidl_value":[Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/DynamicsProcessing;->_set(ILjava/lang/Object;)V

    .line 266
    return-void

    .line 259
    .end local v1    # "_aidl_value":[Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;
    :pswitch_8
    sget-object v1, Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;

    .line 260
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/DynamicsProcessing;->_set(ILjava/lang/Object;)V

    .line 261
    return-void

    .line 254
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;
    :pswitch_9
    sget-object v1, Landroid/hardware/audio/effect/VendorExtension;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/VendorExtension;

    .line 255
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/VendorExtension;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/DynamicsProcessing;->_set(ILjava/lang/Object;)V

    .line 256
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
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

.method public setEngineArchitecture(Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;

    .line 72
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/DynamicsProcessing;->_set(ILjava/lang/Object;)V

    .line 73
    return-void
.end method

.method public setInputGain([Landroid/hardware/audio/effect/DynamicsProcessing$InputGain;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/audio/effect/DynamicsProcessing$InputGain;

    .line 192
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/DynamicsProcessing;->_set(ILjava/lang/Object;)V

    .line 193
    return-void
.end method

.method public setLimiter([Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;

    .line 177
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/DynamicsProcessing;->_set(ILjava/lang/Object;)V

    .line 178
    return-void
.end method

.method public setMbc([Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;

    .line 147
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/DynamicsProcessing;->_set(ILjava/lang/Object;)V

    .line 148
    return-void
.end method

.method public setMbcBand([Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;

    .line 162
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/DynamicsProcessing;->_set(ILjava/lang/Object;)V

    .line 163
    return-void
.end method

.method public setPostEq([Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;

    .line 102
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/DynamicsProcessing;->_set(ILjava/lang/Object;)V

    .line 103
    return-void
.end method

.method public setPostEqBand([Landroid/hardware/audio/effect/DynamicsProcessing$EqBandConfig;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/audio/effect/DynamicsProcessing$EqBandConfig;

    .line 132
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/DynamicsProcessing;->_set(ILjava/lang/Object;)V

    .line 133
    return-void
.end method

.method public setPreEq([Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;

    .line 87
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/DynamicsProcessing;->_set(ILjava/lang/Object;)V

    .line 88
    return-void
.end method

.method public setPreEqBand([Landroid/hardware/audio/effect/DynamicsProcessing$EqBandConfig;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/audio/effect/DynamicsProcessing$EqBandConfig;

    .line 117
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/DynamicsProcessing;->_set(ILjava/lang/Object;)V

    .line 118
    return-void
.end method

.method public setVendor(Landroid/hardware/audio/effect/VendorExtension;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/VendorExtension;

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/DynamicsProcessing;->_set(ILjava/lang/Object;)V

    .line 58
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 213
    iget v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget v0, p0, Landroid/hardware/audio/effect/DynamicsProcessing;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 243
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/audio/effect/DynamicsProcessing;->getInputGain()[Landroid/hardware/audio/effect/DynamicsProcessing$InputGain;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 240
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/audio/effect/DynamicsProcessing;->getLimiter()[Landroid/hardware/audio/effect/DynamicsProcessing$LimiterConfig;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 241
    goto :goto_0

    .line 237
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/audio/effect/DynamicsProcessing;->getMbcBand()[Landroid/hardware/audio/effect/DynamicsProcessing$MbcBandConfig;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 238
    goto :goto_0

    .line 234
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/audio/effect/DynamicsProcessing;->getMbc()[Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 235
    goto :goto_0

    .line 231
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/audio/effect/DynamicsProcessing;->getPostEqBand()[Landroid/hardware/audio/effect/DynamicsProcessing$EqBandConfig;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 232
    goto :goto_0

    .line 228
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/audio/effect/DynamicsProcessing;->getPreEqBand()[Landroid/hardware/audio/effect/DynamicsProcessing$EqBandConfig;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 229
    goto :goto_0

    .line 225
    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/audio/effect/DynamicsProcessing;->getPostEq()[Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 226
    goto :goto_0

    .line 222
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/audio/effect/DynamicsProcessing;->getPreEq()[Landroid/hardware/audio/effect/DynamicsProcessing$ChannelConfig;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 223
    goto :goto_0

    .line 219
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/audio/effect/DynamicsProcessing;->getEngineArchitecture()Landroid/hardware/audio/effect/DynamicsProcessing$EngineArchitecture;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 220
    goto :goto_0

    .line 216
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/audio/effect/DynamicsProcessing;->getVendor()Landroid/hardware/audio/effect/VendorExtension;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 217
    nop

    .line 246
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
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
