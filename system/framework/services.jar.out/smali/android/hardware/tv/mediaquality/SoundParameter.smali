.class public final Landroid/hardware/tv/mediaquality/SoundParameter;
.super Ljava/lang/Object;
.source "SoundParameter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/mediaquality/SoundParameter$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/mediaquality/SoundParameter;",
            ">;"
        }
    .end annotation
.end field

.field public static final activeProfile:I = 0x10

.field public static final autoVolumeControl:I = 0x8

.field public static final balance:I = 0x0

.field public static final bass:I = 0x1

.field public static final digitalOutput:I = 0xe

.field public static final digitalOutputDelayMs:I = 0xf

.field public static final dolbyAudioProcessing:I = 0xb

.field public static final dolbyDialogueEnhancer:I = 0xc

.field public static final downmixMode:I = 0x9

.field public static final dtsDrc:I = 0xa

.field public static final dtsVirtualX:I = 0xd

.field public static final enhancedAudioReturnChannelEnabled:I = 0x7

.field public static final equalizerDetail:I = 0x4

.field public static final soundStyle:I = 0x11

.field public static final speakersDelayMs:I = 0x6

.field public static final speakersEnabled:I = 0x5

.field public static final surroundSoundEnabled:I = 0x3

.field public static final treble:I = 0x2


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 328
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter$1;

    invoke-direct {v0}, Landroid/hardware/tv/mediaquality/SoundParameter$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/mediaquality/SoundParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "_value":I
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    .line 38
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    .line 46
    iput-object p2, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    .line 47
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/SoundParameter;->readFromParcel(Landroid/os/Parcel;)V

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/tv/mediaquality/SoundParameter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 523
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 526
    return-void

    .line 524
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/hardware/tv/mediaquality/SoundParameter;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_tagString(I)Ljava/lang/String;

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

    .line 553
    iput p1, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    .line 554
    iput-object p2, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    .line 555
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 529
    packed-switch p1, :pswitch_data_0

    .line 549
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

    .line 547
    :pswitch_0
    const-string/jumbo v0, "soundStyle"

    return-object v0

    .line 546
    :pswitch_1
    const-string v0, "activeProfile"

    return-object v0

    .line 545
    :pswitch_2
    const-string v0, "digitalOutputDelayMs"

    return-object v0

    .line 544
    :pswitch_3
    const-string v0, "digitalOutput"

    return-object v0

    .line 543
    :pswitch_4
    const-string v0, "dtsVirtualX"

    return-object v0

    .line 542
    :pswitch_5
    const-string v0, "dolbyDialogueEnhancer"

    return-object v0

    .line 541
    :pswitch_6
    const-string v0, "dolbyAudioProcessing"

    return-object v0

    .line 540
    :pswitch_7
    const-string v0, "dtsDrc"

    return-object v0

    .line 539
    :pswitch_8
    const-string v0, "downmixMode"

    return-object v0

    .line 538
    :pswitch_9
    const-string v0, "autoVolumeControl"

    return-object v0

    .line 537
    :pswitch_a
    const-string v0, "enhancedAudioReturnChannelEnabled"

    return-object v0

    .line 536
    :pswitch_b
    const-string/jumbo v0, "speakersDelayMs"

    return-object v0

    .line 535
    :pswitch_c
    const-string/jumbo v0, "speakersEnabled"

    return-object v0

    .line 534
    :pswitch_d
    const-string v0, "equalizerDetail"

    return-object v0

    .line 533
    :pswitch_e
    const-string/jumbo v0, "surroundSoundEnabled"

    return-object v0

    .line 532
    :pswitch_f
    const-string/jumbo v0, "treble"

    return-object v0

    .line 531
    :pswitch_10
    const-string v0, "bass"

    return-object v0

    .line 530
    :pswitch_11
    const-string v0, "balance"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

.method public static activeProfile(Z)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 3
    .param p0, "_value"    # Z

    .line 296
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x10

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static autoVolumeControl(Z)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 3
    .param p0, "_value"    # Z

    .line 176
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static balance(I)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 56
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static bass(I)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 71
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 515
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 516
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 517
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 519
    :cond_1
    return v0
.end method

.method public static digitalOutput(B)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 3
    .param p0, "_value"    # B

    .line 266
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0xe

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static digitalOutputDelayMs(I)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 281
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static dolbyAudioProcessing(Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;

    .line 221
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static dolbyDialogueEnhancer(B)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 3
    .param p0, "_value"    # B

    .line 236
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0xc

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static downmixMode(B)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 3
    .param p0, "_value"    # B

    .line 191
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static dtsDrc(Z)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 3
    .param p0, "_value"    # Z

    .line 206
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static dtsVirtualX(Landroid/hardware/tv/mediaquality/DtsVirtualX;)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/mediaquality/DtsVirtualX;

    .line 251
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static enhancedAudioReturnChannelEnabled(Z)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 3
    .param p0, "_value"    # Z

    .line 161
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static equalizerDetail(Landroid/hardware/tv/mediaquality/EqualizerDetail;)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/tv/mediaquality/EqualizerDetail;

    .line 116
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static soundStyle(B)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 3
    .param p0, "_value"    # B

    .line 311
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x11

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static speakersDelayMs(I)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 146
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static speakersEnabled(Z)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 3
    .param p0, "_value"    # Z

    .line 131
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static surroundSoundEnabled(Z)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 3
    .param p0, "_value"    # Z

    .line 101
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static treble(I)Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 86
    new-instance v0, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/SoundParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 500
    const/4 v0, 0x0

    .line 501
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getTag()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 509
    :sswitch_0
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDtsVirtualX()Landroid/hardware/tv/mediaquality/DtsVirtualX;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/mediaquality/SoundParameter;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 506
    :sswitch_1
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDolbyAudioProcessing()Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/mediaquality/SoundParameter;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 507
    goto :goto_0

    .line 503
    :sswitch_2
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getEqualizerDetail()Landroid/hardware/tv/mediaquality/EqualizerDetail;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/mediaquality/SoundParameter;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 504
    nop

    .line 512
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0xb -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public getActiveProfile()Z
    .locals 1

    .line 300
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 301
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getAutoVolumeControl()Z
    .locals 1

    .line 180
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 181
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBalance()I
    .locals 1

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 61
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getBass()I
    .locals 1

    .line 75
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 76
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDigitalOutput()B
    .locals 1

    .line 270
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 271
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getDigitalOutputDelayMs()I
    .locals 1

    .line 285
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 286
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDolbyAudioProcessing()Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;
    .locals 1

    .line 225
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 226
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;

    return-object v0
.end method

.method public getDolbyDialogueEnhancer()B
    .locals 1

    .line 240
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 241
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getDownmixMode()B
    .locals 1

    .line 195
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 196
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getDtsDrc()Z
    .locals 1

    .line 210
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 211
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getDtsVirtualX()Landroid/hardware/tv/mediaquality/DtsVirtualX;
    .locals 1

    .line 255
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 256
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/mediaquality/DtsVirtualX;

    return-object v0
.end method

.method public getEnhancedAudioReturnChannelEnabled()Z
    .locals 1

    .line 165
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 166
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getEqualizerDetail()Landroid/hardware/tv/mediaquality/EqualizerDetail;
    .locals 1

    .line 120
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 121
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/mediaquality/EqualizerDetail;

    return-object v0
.end method

.method public getSoundStyle()B
    .locals 1

    .line 315
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 316
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getSpeakersDelayMs()I
    .locals 1

    .line 150
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 151
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSpeakersEnabled()Z
    .locals 1

    .line 135
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 136
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public getSurroundSoundEnabled()Z
    .locals 1

    .line 105
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 106
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 50
    iget v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    return v0
.end method

.method public getTreble()I
    .locals 1

    .line 90
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_assertTag(I)V

    .line 91
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 403
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 495
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

    .line 491
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 492
    .local v1, "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 493
    return-void

    .line 486
    .end local v1    # "_aidl_value":B
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 487
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 488
    return-void

    .line 481
    .end local v1    # "_aidl_value":Z
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 482
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 483
    return-void

    .line 476
    .end local v1    # "_aidl_value":I
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 477
    .local v1, "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 478
    return-void

    .line 471
    .end local v1    # "_aidl_value":B
    :pswitch_4
    sget-object v1, Landroid/hardware/tv/mediaquality/DtsVirtualX;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/mediaquality/DtsVirtualX;

    .line 472
    .local v1, "_aidl_value":Landroid/hardware/tv/mediaquality/DtsVirtualX;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 473
    return-void

    .line 466
    .end local v1    # "_aidl_value":Landroid/hardware/tv/mediaquality/DtsVirtualX;
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 467
    .local v1, "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 468
    return-void

    .line 461
    .end local v1    # "_aidl_value":B
    :pswitch_6
    sget-object v1, Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;

    .line 462
    .local v1, "_aidl_value":Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 463
    return-void

    .line 456
    .end local v1    # "_aidl_value":Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 457
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 458
    return-void

    .line 451
    .end local v1    # "_aidl_value":Z
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 452
    .local v1, "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 453
    return-void

    .line 446
    .end local v1    # "_aidl_value":B
    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 447
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 448
    return-void

    .line 441
    .end local v1    # "_aidl_value":Z
    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 442
    .restart local v1    # "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 443
    return-void

    .line 436
    .end local v1    # "_aidl_value":Z
    :pswitch_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 437
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 438
    return-void

    .line 431
    .end local v1    # "_aidl_value":I
    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 432
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 433
    return-void

    .line 426
    .end local v1    # "_aidl_value":Z
    :pswitch_d
    sget-object v1, Landroid/hardware/tv/mediaquality/EqualizerDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/mediaquality/EqualizerDetail;

    .line 427
    .local v1, "_aidl_value":Landroid/hardware/tv/mediaquality/EqualizerDetail;
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 428
    return-void

    .line 421
    .end local v1    # "_aidl_value":Landroid/hardware/tv/mediaquality/EqualizerDetail;
    :pswitch_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 422
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 423
    return-void

    .line 416
    .end local v1    # "_aidl_value":Z
    :pswitch_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 417
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 418
    return-void

    .line 411
    .end local v1    # "_aidl_value":I
    :pswitch_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 412
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 413
    return-void

    .line 406
    .end local v1    # "_aidl_value":I
    :pswitch_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 407
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 408
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

.method public setActiveProfile(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 305
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x10

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 306
    return-void
.end method

.method public setAutoVolumeControl(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 185
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 186
    return-void
.end method

.method public setBalance(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 66
    return-void
.end method

.method public setBass(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 81
    return-void
.end method

.method public setDigitalOutput(B)V
    .locals 2
    .param p1, "_value"    # B

    .line 275
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/16 v1, 0xe

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 276
    return-void
.end method

.method public setDigitalOutputDelayMs(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 290
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xf

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 291
    return-void
.end method

.method public setDolbyAudioProcessing(Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;

    .line 230
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 231
    return-void
.end method

.method public setDolbyDialogueEnhancer(B)V
    .locals 2
    .param p1, "_value"    # B

    .line 245
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/16 v1, 0xc

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 246
    return-void
.end method

.method public setDownmixMode(B)V
    .locals 2
    .param p1, "_value"    # B

    .line 200
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/16 v1, 0x9

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 201
    return-void
.end method

.method public setDtsDrc(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 215
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 216
    return-void
.end method

.method public setDtsVirtualX(Landroid/hardware/tv/mediaquality/DtsVirtualX;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/mediaquality/DtsVirtualX;

    .line 260
    const/16 v0, 0xd

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 261
    return-void
.end method

.method public setEnhancedAudioReturnChannelEnabled(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 170
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x7

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 171
    return-void
.end method

.method public setEqualizerDetail(Landroid/hardware/tv/mediaquality/EqualizerDetail;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/tv/mediaquality/EqualizerDetail;

    .line 125
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 126
    return-void
.end method

.method public setSoundStyle(B)V
    .locals 2
    .param p1, "_value"    # B

    .line 320
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/16 v1, 0x11

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 321
    return-void
.end method

.method public setSpeakersDelayMs(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 155
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 156
    return-void
.end method

.method public setSpeakersEnabled(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 140
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 141
    return-void
.end method

.method public setSurroundSoundEnabled(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 110
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 111
    return-void
.end method

.method public setTreble(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/SoundParameter;->_set(ILjava/lang/Object;)V

    .line 96
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 341
    iget v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 395
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getSoundStyle()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto/16 :goto_0

    .line 392
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getActiveProfile()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 393
    goto/16 :goto_0

    .line 389
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDigitalOutputDelayMs()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    goto/16 :goto_0

    .line 386
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDigitalOutput()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 387
    goto/16 :goto_0

    .line 383
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDtsVirtualX()Landroid/hardware/tv/mediaquality/DtsVirtualX;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 384
    goto/16 :goto_0

    .line 380
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDolbyDialogueEnhancer()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 381
    goto :goto_0

    .line 377
    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDolbyAudioProcessing()Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 378
    goto :goto_0

    .line 374
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDtsDrc()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 375
    goto :goto_0

    .line 371
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDownmixMode()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 372
    goto :goto_0

    .line 368
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getAutoVolumeControl()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 369
    goto :goto_0

    .line 365
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getEnhancedAudioReturnChannelEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 366
    goto :goto_0

    .line 362
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getSpeakersDelayMs()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    goto :goto_0

    .line 359
    :pswitch_c
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getSpeakersEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 360
    goto :goto_0

    .line 356
    :pswitch_d
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getEqualizerDetail()Landroid/hardware/tv/mediaquality/EqualizerDetail;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 357
    goto :goto_0

    .line 353
    :pswitch_e
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getSurroundSoundEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 354
    goto :goto_0

    .line 350
    :pswitch_f
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getTreble()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    goto :goto_0

    .line 347
    :pswitch_10
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getBass()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    goto :goto_0

    .line 344
    :pswitch_11
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/SoundParameter;->getBalance()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    nop

    .line 398
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
