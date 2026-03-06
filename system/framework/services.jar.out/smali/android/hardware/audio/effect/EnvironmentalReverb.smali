.class public final Landroid/hardware/audio/effect/EnvironmentalReverb;
.super Ljava/lang/Object;
.source "EnvironmentalReverb.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/audio/effect/EnvironmentalReverb$Tag;,
        Landroid/hardware/audio/effect/EnvironmentalReverb$Id;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/audio/effect/EnvironmentalReverb;",
            ">;"
        }
    .end annotation
.end field

.field public static final bypass:I = 0xb

.field public static final decayHfRatioPm:I = 0x4

.field public static final decayTimeMs:I = 0x3

.field public static final delayMs:I = 0x8

.field public static final densityPm:I = 0xa

.field public static final diffusionPm:I = 0x9

.field public static final levelMb:I = 0x7

.field public static final reflectionsDelayMs:I = 0x6

.field public static final reflectionsLevelMb:I = 0x5

.field public static final roomHfLevelMb:I = 0x2

.field public static final roomLevelMb:I = 0x1

.field public static final vendor:I


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 232
    new-instance v0, Landroid/hardware/audio/effect/EnvironmentalReverb$1;

    invoke-direct {v0}, Landroid/hardware/audio/effect/EnvironmentalReverb$1;-><init>()V

    sput-object v0, Landroid/hardware/audio/effect/EnvironmentalReverb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, "_value":Landroid/hardware/audio/effect/VendorExtension;
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/audio/effect/EnvironmentalReverb;->_tag:I

    .line 31
    iput-object v0, p0, Landroid/hardware/audio/effect/EnvironmentalReverb;->_value:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Landroid/hardware/audio/effect/EnvironmentalReverb;->_tag:I

    .line 40
    iput-object p2, p0, Landroid/hardware/audio/effect/EnvironmentalReverb;->_value:Ljava/lang/Object;

    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/EnvironmentalReverb;->readFromParcel(Landroid/os/Parcel;)V

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/audio/effect/EnvironmentalReverb-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/EnvironmentalReverb;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 373
    invoke-virtual {p0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 376
    return-void

    .line 374
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_tagString(I)Ljava/lang/String;

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

    .line 397
    iput p1, p0, Landroid/hardware/audio/effect/EnvironmentalReverb;->_tag:I

    .line 398
    iput-object p2, p0, Landroid/hardware/audio/effect/EnvironmentalReverb;->_value:Ljava/lang/Object;

    .line 399
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 379
    packed-switch p1, :pswitch_data_0

    .line 393
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

    .line 391
    :pswitch_0
    const-string v0, "bypass"

    return-object v0

    .line 390
    :pswitch_1
    const-string v0, "densityPm"

    return-object v0

    .line 389
    :pswitch_2
    const-string v0, "diffusionPm"

    return-object v0

    .line 388
    :pswitch_3
    const-string v0, "delayMs"

    return-object v0

    .line 387
    :pswitch_4
    const-string/jumbo v0, "levelMb"

    return-object v0

    .line 386
    :pswitch_5
    const-string/jumbo v0, "reflectionsDelayMs"

    return-object v0

    .line 385
    :pswitch_6
    const-string/jumbo v0, "reflectionsLevelMb"

    return-object v0

    .line 384
    :pswitch_7
    const-string v0, "decayHfRatioPm"

    return-object v0

    .line 383
    :pswitch_8
    const-string v0, "decayTimeMs"

    return-object v0

    .line 382
    :pswitch_9
    const-string/jumbo v0, "roomHfLevelMb"

    return-object v0

    .line 381
    :pswitch_a
    const-string/jumbo v0, "roomLevelMb"

    return-object v0

    .line 380
    :pswitch_b
    const-string/jumbo v0, "vendor"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
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

.method public static bypass(Z)Landroid/hardware/audio/effect/EnvironmentalReverb;
    .locals 3
    .param p0, "_value"    # Z

    .line 215
    new-instance v0, Landroid/hardware/audio/effect/EnvironmentalReverb;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xb

    invoke-direct {v0, v2, v1}, Landroid/hardware/audio/effect/EnvironmentalReverb;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static decayHfRatioPm(I)Landroid/hardware/audio/effect/EnvironmentalReverb;
    .locals 3
    .param p0, "_value"    # I

    .line 110
    new-instance v0, Landroid/hardware/audio/effect/EnvironmentalReverb;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Landroid/hardware/audio/effect/EnvironmentalReverb;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static decayTimeMs(I)Landroid/hardware/audio/effect/EnvironmentalReverb;
    .locals 3
    .param p0, "_value"    # I

    .line 95
    new-instance v0, Landroid/hardware/audio/effect/EnvironmentalReverb;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/hardware/audio/effect/EnvironmentalReverb;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static delayMs(I)Landroid/hardware/audio/effect/EnvironmentalReverb;
    .locals 3
    .param p0, "_value"    # I

    .line 170
    new-instance v0, Landroid/hardware/audio/effect/EnvironmentalReverb;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Landroid/hardware/audio/effect/EnvironmentalReverb;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static densityPm(I)Landroid/hardware/audio/effect/EnvironmentalReverb;
    .locals 3
    .param p0, "_value"    # I

    .line 200
    new-instance v0, Landroid/hardware/audio/effect/EnvironmentalReverb;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v2, v1}, Landroid/hardware/audio/effect/EnvironmentalReverb;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 365
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 366
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 367
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 369
    :cond_1
    return v0
.end method

.method public static diffusionPm(I)Landroid/hardware/audio/effect/EnvironmentalReverb;
    .locals 3
    .param p0, "_value"    # I

    .line 185
    new-instance v0, Landroid/hardware/audio/effect/EnvironmentalReverb;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Landroid/hardware/audio/effect/EnvironmentalReverb;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static levelMb(I)Landroid/hardware/audio/effect/EnvironmentalReverb;
    .locals 3
    .param p0, "_value"    # I

    .line 155
    new-instance v0, Landroid/hardware/audio/effect/EnvironmentalReverb;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {v0, v2, v1}, Landroid/hardware/audio/effect/EnvironmentalReverb;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static reflectionsDelayMs(I)Landroid/hardware/audio/effect/EnvironmentalReverb;
    .locals 3
    .param p0, "_value"    # I

    .line 140
    new-instance v0, Landroid/hardware/audio/effect/EnvironmentalReverb;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Landroid/hardware/audio/effect/EnvironmentalReverb;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static reflectionsLevelMb(I)Landroid/hardware/audio/effect/EnvironmentalReverb;
    .locals 3
    .param p0, "_value"    # I

    .line 125
    new-instance v0, Landroid/hardware/audio/effect/EnvironmentalReverb;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Landroid/hardware/audio/effect/EnvironmentalReverb;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static roomHfLevelMb(I)Landroid/hardware/audio/effect/EnvironmentalReverb;
    .locals 3
    .param p0, "_value"    # I

    .line 80
    new-instance v0, Landroid/hardware/audio/effect/EnvironmentalReverb;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/hardware/audio/effect/EnvironmentalReverb;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static roomLevelMb(I)Landroid/hardware/audio/effect/EnvironmentalReverb;
    .locals 3
    .param p0, "_value"    # I

    .line 65
    new-instance v0, Landroid/hardware/audio/effect/EnvironmentalReverb;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/hardware/audio/effect/EnvironmentalReverb;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static vendor(Landroid/hardware/audio/effect/VendorExtension;)Landroid/hardware/audio/effect/EnvironmentalReverb;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/VendorExtension;

    .line 50
    new-instance v0, Landroid/hardware/audio/effect/EnvironmentalReverb;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/EnvironmentalReverb;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 359
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->getVendor()Landroid/hardware/audio/effect/VendorExtension;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/EnvironmentalReverb;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 362
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getBypass()Z
    .locals 1

    .line 219
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_assertTag(I)V

    .line 220
    iget-object v0, p0, Landroid/hardware/audio/effect/EnvironmentalReverb;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getDecayHfRatioPm()I
    .locals 1

    .line 114
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_assertTag(I)V

    .line 115
    iget-object v0, p0, Landroid/hardware/audio/effect/EnvironmentalReverb;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDecayTimeMs()I
    .locals 1

    .line 99
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_assertTag(I)V

    .line 100
    iget-object v0, p0, Landroid/hardware/audio/effect/EnvironmentalReverb;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDelayMs()I
    .locals 1

    .line 174
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_assertTag(I)V

    .line 175
    iget-object v0, p0, Landroid/hardware/audio/effect/EnvironmentalReverb;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDensityPm()I
    .locals 1

    .line 204
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_assertTag(I)V

    .line 205
    iget-object v0, p0, Landroid/hardware/audio/effect/EnvironmentalReverb;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDiffusionPm()I
    .locals 1

    .line 189
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_assertTag(I)V

    .line 190
    iget-object v0, p0, Landroid/hardware/audio/effect/EnvironmentalReverb;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLevelMb()I
    .locals 1

    .line 159
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_assertTag(I)V

    .line 160
    iget-object v0, p0, Landroid/hardware/audio/effect/EnvironmentalReverb;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getReflectionsDelayMs()I
    .locals 1

    .line 144
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_assertTag(I)V

    .line 145
    iget-object v0, p0, Landroid/hardware/audio/effect/EnvironmentalReverb;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getReflectionsLevelMb()I
    .locals 1

    .line 129
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_assertTag(I)V

    .line 130
    iget-object v0, p0, Landroid/hardware/audio/effect/EnvironmentalReverb;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRoomHfLevelMb()I
    .locals 1

    .line 84
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_assertTag(I)V

    .line 85
    iget-object v0, p0, Landroid/hardware/audio/effect/EnvironmentalReverb;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRoomLevelMb()I
    .locals 1

    .line 69
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_assertTag(I)V

    .line 70
    iget-object v0, p0, Landroid/hardware/audio/effect/EnvironmentalReverb;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 44
    iget v0, p0, Landroid/hardware/audio/effect/EnvironmentalReverb;->_tag:I

    return v0
.end method

.method public getVendor()Landroid/hardware/audio/effect/VendorExtension;
    .locals 1

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_assertTag(I)V

    .line 55
    iget-object v0, p0, Landroid/hardware/audio/effect/EnvironmentalReverb;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/VendorExtension;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 289
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 351
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

    .line 347
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 348
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_set(ILjava/lang/Object;)V

    .line 349
    return-void

    .line 342
    .end local v1    # "_aidl_value":Z
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 343
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_set(ILjava/lang/Object;)V

    .line 344
    return-void

    .line 337
    .end local v1    # "_aidl_value":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 338
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_set(ILjava/lang/Object;)V

    .line 339
    return-void

    .line 332
    .end local v1    # "_aidl_value":I
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 333
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_set(ILjava/lang/Object;)V

    .line 334
    return-void

    .line 327
    .end local v1    # "_aidl_value":I
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 328
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_set(ILjava/lang/Object;)V

    .line 329
    return-void

    .line 322
    .end local v1    # "_aidl_value":I
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 323
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_set(ILjava/lang/Object;)V

    .line 324
    return-void

    .line 317
    .end local v1    # "_aidl_value":I
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 318
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_set(ILjava/lang/Object;)V

    .line 319
    return-void

    .line 312
    .end local v1    # "_aidl_value":I
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 313
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_set(ILjava/lang/Object;)V

    .line 314
    return-void

    .line 307
    .end local v1    # "_aidl_value":I
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 308
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_set(ILjava/lang/Object;)V

    .line 309
    return-void

    .line 302
    .end local v1    # "_aidl_value":I
    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 303
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_set(ILjava/lang/Object;)V

    .line 304
    return-void

    .line 297
    .end local v1    # "_aidl_value":I
    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 298
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_set(ILjava/lang/Object;)V

    .line 299
    return-void

    .line 292
    .end local v1    # "_aidl_value":I
    :pswitch_b
    sget-object v1, Landroid/hardware/audio/effect/VendorExtension;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/VendorExtension;

    .line 293
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/VendorExtension;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_set(ILjava/lang/Object;)V

    .line 294
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
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

.method public setBypass(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 224
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_set(ILjava/lang/Object;)V

    .line 225
    return-void
.end method

.method public setDecayHfRatioPm(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 119
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_set(ILjava/lang/Object;)V

    .line 120
    return-void
.end method

.method public setDecayTimeMs(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_set(ILjava/lang/Object;)V

    .line 105
    return-void
.end method

.method public setDelayMs(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 179
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_set(ILjava/lang/Object;)V

    .line 180
    return-void
.end method

.method public setDensityPm(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 209
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p0, v1, v0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_set(ILjava/lang/Object;)V

    .line 210
    return-void
.end method

.method public setDiffusionPm(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 194
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x9

    invoke-direct {p0, v1, v0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_set(ILjava/lang/Object;)V

    .line 195
    return-void
.end method

.method public setLevelMb(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x7

    invoke-direct {p0, v1, v0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_set(ILjava/lang/Object;)V

    .line 165
    return-void
.end method

.method public setReflectionsDelayMs(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_set(ILjava/lang/Object;)V

    .line 150
    return-void
.end method

.method public setReflectionsLevelMb(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 134
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_set(ILjava/lang/Object;)V

    .line 135
    return-void
.end method

.method public setRoomHfLevelMb(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_set(ILjava/lang/Object;)V

    .line 90
    return-void
.end method

.method public setRoomLevelMb(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_set(ILjava/lang/Object;)V

    .line 75
    return-void
.end method

.method public setVendor(Landroid/hardware/audio/effect/VendorExtension;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/VendorExtension;

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/EnvironmentalReverb;->_set(ILjava/lang/Object;)V

    .line 60
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 245
    iget v0, p0, Landroid/hardware/audio/effect/EnvironmentalReverb;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget v0, p0, Landroid/hardware/audio/effect/EnvironmentalReverb;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 281
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->getBypass()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    .line 278
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->getDensityPm()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    goto :goto_0

    .line 275
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->getDiffusionPm()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    goto :goto_0

    .line 272
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->getDelayMs()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    goto :goto_0

    .line 269
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->getLevelMb()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    goto :goto_0

    .line 266
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->getReflectionsDelayMs()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    goto :goto_0

    .line 263
    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->getReflectionsLevelMb()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    goto :goto_0

    .line 260
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->getDecayHfRatioPm()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    goto :goto_0

    .line 257
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->getDecayTimeMs()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    goto :goto_0

    .line 254
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->getRoomHfLevelMb()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    goto :goto_0

    .line 251
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->getRoomLevelMb()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    goto :goto_0

    .line 248
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/audio/effect/EnvironmentalReverb;->getVendor()Landroid/hardware/audio/effect/VendorExtension;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 249
    nop

    .line 284
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
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
