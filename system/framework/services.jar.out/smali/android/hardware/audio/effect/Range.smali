.class public final Landroid/hardware/audio/effect/Range;
.super Ljava/lang/Object;
.source "Range.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/audio/effect/Range$VendorExtensionRange;,
        Landroid/hardware/audio/effect/Range$AcousticEchoCancelerRange;,
        Landroid/hardware/audio/effect/Range$AutomaticGainControlV1Range;,
        Landroid/hardware/audio/effect/Range$AutomaticGainControlV2Range;,
        Landroid/hardware/audio/effect/Range$BassBoostRange;,
        Landroid/hardware/audio/effect/Range$DownmixRange;,
        Landroid/hardware/audio/effect/Range$DynamicsProcessingRange;,
        Landroid/hardware/audio/effect/Range$EnvironmentalReverbRange;,
        Landroid/hardware/audio/effect/Range$EqualizerRange;,
        Landroid/hardware/audio/effect/Range$HapticGeneratorRange;,
        Landroid/hardware/audio/effect/Range$LoudnessEnhancerRange;,
        Landroid/hardware/audio/effect/Range$NoiseSuppressionRange;,
        Landroid/hardware/audio/effect/Range$PresetReverbRange;,
        Landroid/hardware/audio/effect/Range$VirtualizerRange;,
        Landroid/hardware/audio/effect/Range$VisualizerRange;,
        Landroid/hardware/audio/effect/Range$VolumeRange;,
        Landroid/hardware/audio/effect/Range$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/audio/effect/Range;",
            ">;"
        }
    .end annotation
.end field

.field public static final acousticEchoCanceler:I = 0x1

.field public static final automaticGainControlV1:I = 0x2

.field public static final automaticGainControlV2:I = 0x3

.field public static final bassBoost:I = 0x4

.field public static final downmix:I = 0x5

.field public static final dynamicsProcessing:I = 0x6

.field public static final environmentalReverb:I = 0x7

.field public static final equalizer:I = 0x8

.field public static final hapticGenerator:I = 0x9

.field public static final loudnessEnhancer:I = 0xa

.field public static final noiseSuppression:I = 0xb

.field public static final presetReverb:I = 0xc

.field public static final vendorExtension:I = 0x0

.field public static final virtualizer:I = 0xd

.field public static final visualizer:I = 0xe

.field public static final volume:I = 0xf


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 296
    new-instance v0, Landroid/hardware/audio/effect/Range$1;

    invoke-direct {v0}, Landroid/hardware/audio/effect/Range$1;-><init>()V

    sput-object v0, Landroid/hardware/audio/effect/Range;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/hardware/audio/effect/Range$VendorExtensionRange;

    .line 34
    .local v1, "_value":[Landroid/hardware/audio/effect/Range$VendorExtensionRange;
    iput v0, p0, Landroid/hardware/audio/effect/Range;->_tag:I

    .line 35
    iput-object v1, p0, Landroid/hardware/audio/effect/Range;->_value:Ljava/lang/Object;

    .line 36
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Landroid/hardware/audio/effect/Range;->_tag:I

    .line 44
    iput-object p2, p0, Landroid/hardware/audio/effect/Range;->_value:Ljava/lang/Object;

    .line 45
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/Range;->readFromParcel(Landroid/os/Parcel;)V

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/audio/effect/Range-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/Range;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 521
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 524
    return-void

    .line 522
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/Range;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/audio/effect/Range;->_tagString(I)Ljava/lang/String;

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

    .line 549
    iput p1, p0, Landroid/hardware/audio/effect/Range;->_tag:I

    .line 550
    iput-object p2, p0, Landroid/hardware/audio/effect/Range;->_value:Ljava/lang/Object;

    .line 551
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 527
    packed-switch p1, :pswitch_data_0

    .line 545
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

    .line 543
    :pswitch_0
    const-string/jumbo v0, "volume"

    return-object v0

    .line 542
    :pswitch_1
    const-string/jumbo v0, "visualizer"

    return-object v0

    .line 541
    :pswitch_2
    const-string/jumbo v0, "virtualizer"

    return-object v0

    .line 540
    :pswitch_3
    const-string/jumbo v0, "presetReverb"

    return-object v0

    .line 539
    :pswitch_4
    const-string/jumbo v0, "noiseSuppression"

    return-object v0

    .line 538
    :pswitch_5
    const-string/jumbo v0, "loudnessEnhancer"

    return-object v0

    .line 537
    :pswitch_6
    const-string/jumbo v0, "hapticGenerator"

    return-object v0

    .line 536
    :pswitch_7
    const-string v0, "equalizer"

    return-object v0

    .line 535
    :pswitch_8
    const-string v0, "environmentalReverb"

    return-object v0

    .line 534
    :pswitch_9
    const-string v0, "dynamicsProcessing"

    return-object v0

    .line 533
    :pswitch_a
    const-string v0, "downmix"

    return-object v0

    .line 532
    :pswitch_b
    const-string v0, "bassBoost"

    return-object v0

    .line 531
    :pswitch_c
    const-string v0, "automaticGainControlV2"

    return-object v0

    .line 530
    :pswitch_d
    const-string v0, "automaticGainControlV1"

    return-object v0

    .line 529
    :pswitch_e
    const-string v0, "acousticEchoCanceler"

    return-object v0

    .line 528
    :pswitch_f
    const-string/jumbo v0, "vendorExtension"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static acousticEchoCanceler([Landroid/hardware/audio/effect/Range$AcousticEchoCancelerRange;)Landroid/hardware/audio/effect/Range;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/audio/effect/Range$AcousticEchoCancelerRange;

    .line 69
    new-instance v0, Landroid/hardware/audio/effect/Range;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Range;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static automaticGainControlV1([Landroid/hardware/audio/effect/Range$AutomaticGainControlV1Range;)Landroid/hardware/audio/effect/Range;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/audio/effect/Range$AutomaticGainControlV1Range;

    .line 84
    new-instance v0, Landroid/hardware/audio/effect/Range;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Range;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static automaticGainControlV2([Landroid/hardware/audio/effect/Range$AutomaticGainControlV2Range;)Landroid/hardware/audio/effect/Range;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/audio/effect/Range$AutomaticGainControlV2Range;

    .line 99
    new-instance v0, Landroid/hardware/audio/effect/Range;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Range;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static bassBoost([Landroid/hardware/audio/effect/Range$BassBoostRange;)Landroid/hardware/audio/effect/Range;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/audio/effect/Range$BassBoostRange;

    .line 114
    new-instance v0, Landroid/hardware/audio/effect/Range;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Range;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 6
    .param p1, "_v"    # Ljava/lang/Object;

    .line 506
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 507
    :cond_0
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 508
    const/4 v1, 0x0

    .line 509
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 510
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/hardware/audio/effect/Range;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 509
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    :cond_1
    return v1

    .line 514
    .end local v1    # "_mask":I
    :cond_2
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_3

    .line 515
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 517
    :cond_3
    return v0
.end method

.method public static downmix([Landroid/hardware/audio/effect/Range$DownmixRange;)Landroid/hardware/audio/effect/Range;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/audio/effect/Range$DownmixRange;

    .line 129
    new-instance v0, Landroid/hardware/audio/effect/Range;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Range;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static dynamicsProcessing([Landroid/hardware/audio/effect/Range$DynamicsProcessingRange;)Landroid/hardware/audio/effect/Range;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/audio/effect/Range$DynamicsProcessingRange;

    .line 144
    new-instance v0, Landroid/hardware/audio/effect/Range;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Range;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static environmentalReverb([Landroid/hardware/audio/effect/Range$EnvironmentalReverbRange;)Landroid/hardware/audio/effect/Range;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/audio/effect/Range$EnvironmentalReverbRange;

    .line 159
    new-instance v0, Landroid/hardware/audio/effect/Range;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Range;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static equalizer([Landroid/hardware/audio/effect/Range$EqualizerRange;)Landroid/hardware/audio/effect/Range;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/audio/effect/Range$EqualizerRange;

    .line 174
    new-instance v0, Landroid/hardware/audio/effect/Range;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Range;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static hapticGenerator([Landroid/hardware/audio/effect/Range$HapticGeneratorRange;)Landroid/hardware/audio/effect/Range;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/audio/effect/Range$HapticGeneratorRange;

    .line 189
    new-instance v0, Landroid/hardware/audio/effect/Range;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Range;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static loudnessEnhancer([Landroid/hardware/audio/effect/Range$LoudnessEnhancerRange;)Landroid/hardware/audio/effect/Range;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/audio/effect/Range$LoudnessEnhancerRange;

    .line 204
    new-instance v0, Landroid/hardware/audio/effect/Range;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Range;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static noiseSuppression([Landroid/hardware/audio/effect/Range$NoiseSuppressionRange;)Landroid/hardware/audio/effect/Range;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/audio/effect/Range$NoiseSuppressionRange;

    .line 219
    new-instance v0, Landroid/hardware/audio/effect/Range;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Range;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static presetReverb([Landroid/hardware/audio/effect/Range$PresetReverbRange;)Landroid/hardware/audio/effect/Range;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/audio/effect/Range$PresetReverbRange;

    .line 234
    new-instance v0, Landroid/hardware/audio/effect/Range;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Range;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static vendorExtension([Landroid/hardware/audio/effect/Range$VendorExtensionRange;)Landroid/hardware/audio/effect/Range;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/audio/effect/Range$VendorExtensionRange;

    .line 54
    new-instance v0, Landroid/hardware/audio/effect/Range;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Range;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static virtualizer([Landroid/hardware/audio/effect/Range$VirtualizerRange;)Landroid/hardware/audio/effect/Range;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/audio/effect/Range$VirtualizerRange;

    .line 249
    new-instance v0, Landroid/hardware/audio/effect/Range;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Range;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static visualizer([Landroid/hardware/audio/effect/Range$VisualizerRange;)Landroid/hardware/audio/effect/Range;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/audio/effect/Range$VisualizerRange;

    .line 264
    new-instance v0, Landroid/hardware/audio/effect/Range;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Range;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static volume([Landroid/hardware/audio/effect/Range$VolumeRange;)Landroid/hardware/audio/effect/Range;
    .locals 2
    .param p0, "_value"    # [Landroid/hardware/audio/effect/Range$VolumeRange;

    .line 279
    new-instance v0, Landroid/hardware/audio/effect/Range;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Range;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 452
    const/4 v0, 0x0

    .line 453
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 500
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getVolume()[Landroid/hardware/audio/effect/Range$VolumeRange;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Range;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto/16 :goto_0

    .line 497
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getVisualizer()[Landroid/hardware/audio/effect/Range$VisualizerRange;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Range;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 498
    goto/16 :goto_0

    .line 494
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getVirtualizer()[Landroid/hardware/audio/effect/Range$VirtualizerRange;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Range;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 495
    goto/16 :goto_0

    .line 491
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getPresetReverb()[Landroid/hardware/audio/effect/Range$PresetReverbRange;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Range;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 492
    goto/16 :goto_0

    .line 488
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getNoiseSuppression()[Landroid/hardware/audio/effect/Range$NoiseSuppressionRange;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Range;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 489
    goto/16 :goto_0

    .line 485
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getLoudnessEnhancer()[Landroid/hardware/audio/effect/Range$LoudnessEnhancerRange;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Range;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 486
    goto :goto_0

    .line 482
    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getHapticGenerator()[Landroid/hardware/audio/effect/Range$HapticGeneratorRange;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Range;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 483
    goto :goto_0

    .line 479
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getEqualizer()[Landroid/hardware/audio/effect/Range$EqualizerRange;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Range;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 480
    goto :goto_0

    .line 476
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getEnvironmentalReverb()[Landroid/hardware/audio/effect/Range$EnvironmentalReverbRange;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Range;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 477
    goto :goto_0

    .line 473
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getDynamicsProcessing()[Landroid/hardware/audio/effect/Range$DynamicsProcessingRange;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Range;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 474
    goto :goto_0

    .line 470
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getDownmix()[Landroid/hardware/audio/effect/Range$DownmixRange;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Range;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 471
    goto :goto_0

    .line 467
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getBassBoost()[Landroid/hardware/audio/effect/Range$BassBoostRange;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Range;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 468
    goto :goto_0

    .line 464
    :pswitch_c
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getAutomaticGainControlV2()[Landroid/hardware/audio/effect/Range$AutomaticGainControlV2Range;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Range;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 465
    goto :goto_0

    .line 461
    :pswitch_d
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getAutomaticGainControlV1()[Landroid/hardware/audio/effect/Range$AutomaticGainControlV1Range;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Range;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 462
    goto :goto_0

    .line 458
    :pswitch_e
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getAcousticEchoCanceler()[Landroid/hardware/audio/effect/Range$AcousticEchoCancelerRange;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Range;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 459
    goto :goto_0

    .line 455
    :pswitch_f
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getVendorExtension()[Landroid/hardware/audio/effect/Range$VendorExtensionRange;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Range;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 456
    nop

    .line 503
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public getAcousticEchoCanceler()[Landroid/hardware/audio/effect/Range$AcousticEchoCancelerRange;
    .locals 1

    .line 73
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Range;->_assertTag(I)V

    .line 74
    iget-object v0, p0, Landroid/hardware/audio/effect/Range;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/audio/effect/Range$AcousticEchoCancelerRange;

    return-object v0
.end method

.method public getAutomaticGainControlV1()[Landroid/hardware/audio/effect/Range$AutomaticGainControlV1Range;
    .locals 1

    .line 88
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Range;->_assertTag(I)V

    .line 89
    iget-object v0, p0, Landroid/hardware/audio/effect/Range;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/audio/effect/Range$AutomaticGainControlV1Range;

    return-object v0
.end method

.method public getAutomaticGainControlV2()[Landroid/hardware/audio/effect/Range$AutomaticGainControlV2Range;
    .locals 1

    .line 103
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Range;->_assertTag(I)V

    .line 104
    iget-object v0, p0, Landroid/hardware/audio/effect/Range;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/audio/effect/Range$AutomaticGainControlV2Range;

    return-object v0
.end method

.method public getBassBoost()[Landroid/hardware/audio/effect/Range$BassBoostRange;
    .locals 1

    .line 118
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Range;->_assertTag(I)V

    .line 119
    iget-object v0, p0, Landroid/hardware/audio/effect/Range;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/audio/effect/Range$BassBoostRange;

    return-object v0
.end method

.method public getDownmix()[Landroid/hardware/audio/effect/Range$DownmixRange;
    .locals 1

    .line 133
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Range;->_assertTag(I)V

    .line 134
    iget-object v0, p0, Landroid/hardware/audio/effect/Range;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/audio/effect/Range$DownmixRange;

    return-object v0
.end method

.method public getDynamicsProcessing()[Landroid/hardware/audio/effect/Range$DynamicsProcessingRange;
    .locals 1

    .line 148
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Range;->_assertTag(I)V

    .line 149
    iget-object v0, p0, Landroid/hardware/audio/effect/Range;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/audio/effect/Range$DynamicsProcessingRange;

    return-object v0
.end method

.method public getEnvironmentalReverb()[Landroid/hardware/audio/effect/Range$EnvironmentalReverbRange;
    .locals 1

    .line 163
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Range;->_assertTag(I)V

    .line 164
    iget-object v0, p0, Landroid/hardware/audio/effect/Range;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/audio/effect/Range$EnvironmentalReverbRange;

    return-object v0
.end method

.method public getEqualizer()[Landroid/hardware/audio/effect/Range$EqualizerRange;
    .locals 1

    .line 178
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Range;->_assertTag(I)V

    .line 179
    iget-object v0, p0, Landroid/hardware/audio/effect/Range;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/audio/effect/Range$EqualizerRange;

    return-object v0
.end method

.method public getHapticGenerator()[Landroid/hardware/audio/effect/Range$HapticGeneratorRange;
    .locals 1

    .line 193
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Range;->_assertTag(I)V

    .line 194
    iget-object v0, p0, Landroid/hardware/audio/effect/Range;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/audio/effect/Range$HapticGeneratorRange;

    return-object v0
.end method

.method public getLoudnessEnhancer()[Landroid/hardware/audio/effect/Range$LoudnessEnhancerRange;
    .locals 1

    .line 208
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Range;->_assertTag(I)V

    .line 209
    iget-object v0, p0, Landroid/hardware/audio/effect/Range;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/audio/effect/Range$LoudnessEnhancerRange;

    return-object v0
.end method

.method public getNoiseSuppression()[Landroid/hardware/audio/effect/Range$NoiseSuppressionRange;
    .locals 1

    .line 223
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Range;->_assertTag(I)V

    .line 224
    iget-object v0, p0, Landroid/hardware/audio/effect/Range;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/audio/effect/Range$NoiseSuppressionRange;

    return-object v0
.end method

.method public getPresetReverb()[Landroid/hardware/audio/effect/Range$PresetReverbRange;
    .locals 1

    .line 238
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Range;->_assertTag(I)V

    .line 239
    iget-object v0, p0, Landroid/hardware/audio/effect/Range;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/audio/effect/Range$PresetReverbRange;

    return-object v0
.end method

.method public final getStability()I
    .locals 1

    .line 293
    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 48
    iget v0, p0, Landroid/hardware/audio/effect/Range;->_tag:I

    return v0
.end method

.method public getVendorExtension()[Landroid/hardware/audio/effect/Range$VendorExtensionRange;
    .locals 1

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Range;->_assertTag(I)V

    .line 59
    iget-object v0, p0, Landroid/hardware/audio/effect/Range;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/audio/effect/Range$VendorExtensionRange;

    return-object v0
.end method

.method public getVirtualizer()[Landroid/hardware/audio/effect/Range$VirtualizerRange;
    .locals 1

    .line 253
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Range;->_assertTag(I)V

    .line 254
    iget-object v0, p0, Landroid/hardware/audio/effect/Range;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/audio/effect/Range$VirtualizerRange;

    return-object v0
.end method

.method public getVisualizer()[Landroid/hardware/audio/effect/Range$VisualizerRange;
    .locals 1

    .line 268
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Range;->_assertTag(I)V

    .line 269
    iget-object v0, p0, Landroid/hardware/audio/effect/Range;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/audio/effect/Range$VisualizerRange;

    return-object v0
.end method

.method public getVolume()[Landroid/hardware/audio/effect/Range$VolumeRange;
    .locals 1

    .line 283
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Range;->_assertTag(I)V

    .line 284
    iget-object v0, p0, Landroid/hardware/audio/effect/Range;->_value:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/audio/effect/Range$VolumeRange;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 365
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 447
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

    .line 443
    :pswitch_0
    sget-object v1, Landroid/hardware/audio/effect/Range$VolumeRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/audio/effect/Range$VolumeRange;

    .line 444
    .local v1, "_aidl_value":[Landroid/hardware/audio/effect/Range$VolumeRange;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 445
    return-void

    .line 438
    .end local v1    # "_aidl_value":[Landroid/hardware/audio/effect/Range$VolumeRange;
    :pswitch_1
    sget-object v1, Landroid/hardware/audio/effect/Range$VisualizerRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/audio/effect/Range$VisualizerRange;

    .line 439
    .local v1, "_aidl_value":[Landroid/hardware/audio/effect/Range$VisualizerRange;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 440
    return-void

    .line 433
    .end local v1    # "_aidl_value":[Landroid/hardware/audio/effect/Range$VisualizerRange;
    :pswitch_2
    sget-object v1, Landroid/hardware/audio/effect/Range$VirtualizerRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/audio/effect/Range$VirtualizerRange;

    .line 434
    .local v1, "_aidl_value":[Landroid/hardware/audio/effect/Range$VirtualizerRange;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 435
    return-void

    .line 428
    .end local v1    # "_aidl_value":[Landroid/hardware/audio/effect/Range$VirtualizerRange;
    :pswitch_3
    sget-object v1, Landroid/hardware/audio/effect/Range$PresetReverbRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/audio/effect/Range$PresetReverbRange;

    .line 429
    .local v1, "_aidl_value":[Landroid/hardware/audio/effect/Range$PresetReverbRange;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 430
    return-void

    .line 423
    .end local v1    # "_aidl_value":[Landroid/hardware/audio/effect/Range$PresetReverbRange;
    :pswitch_4
    sget-object v1, Landroid/hardware/audio/effect/Range$NoiseSuppressionRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/audio/effect/Range$NoiseSuppressionRange;

    .line 424
    .local v1, "_aidl_value":[Landroid/hardware/audio/effect/Range$NoiseSuppressionRange;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 425
    return-void

    .line 418
    .end local v1    # "_aidl_value":[Landroid/hardware/audio/effect/Range$NoiseSuppressionRange;
    :pswitch_5
    sget-object v1, Landroid/hardware/audio/effect/Range$LoudnessEnhancerRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/audio/effect/Range$LoudnessEnhancerRange;

    .line 419
    .local v1, "_aidl_value":[Landroid/hardware/audio/effect/Range$LoudnessEnhancerRange;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 420
    return-void

    .line 413
    .end local v1    # "_aidl_value":[Landroid/hardware/audio/effect/Range$LoudnessEnhancerRange;
    :pswitch_6
    sget-object v1, Landroid/hardware/audio/effect/Range$HapticGeneratorRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/audio/effect/Range$HapticGeneratorRange;

    .line 414
    .local v1, "_aidl_value":[Landroid/hardware/audio/effect/Range$HapticGeneratorRange;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 415
    return-void

    .line 408
    .end local v1    # "_aidl_value":[Landroid/hardware/audio/effect/Range$HapticGeneratorRange;
    :pswitch_7
    sget-object v1, Landroid/hardware/audio/effect/Range$EqualizerRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/audio/effect/Range$EqualizerRange;

    .line 409
    .local v1, "_aidl_value":[Landroid/hardware/audio/effect/Range$EqualizerRange;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 410
    return-void

    .line 403
    .end local v1    # "_aidl_value":[Landroid/hardware/audio/effect/Range$EqualizerRange;
    :pswitch_8
    sget-object v1, Landroid/hardware/audio/effect/Range$EnvironmentalReverbRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/audio/effect/Range$EnvironmentalReverbRange;

    .line 404
    .local v1, "_aidl_value":[Landroid/hardware/audio/effect/Range$EnvironmentalReverbRange;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 405
    return-void

    .line 398
    .end local v1    # "_aidl_value":[Landroid/hardware/audio/effect/Range$EnvironmentalReverbRange;
    :pswitch_9
    sget-object v1, Landroid/hardware/audio/effect/Range$DynamicsProcessingRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/audio/effect/Range$DynamicsProcessingRange;

    .line 399
    .local v1, "_aidl_value":[Landroid/hardware/audio/effect/Range$DynamicsProcessingRange;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 400
    return-void

    .line 393
    .end local v1    # "_aidl_value":[Landroid/hardware/audio/effect/Range$DynamicsProcessingRange;
    :pswitch_a
    sget-object v1, Landroid/hardware/audio/effect/Range$DownmixRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/audio/effect/Range$DownmixRange;

    .line 394
    .local v1, "_aidl_value":[Landroid/hardware/audio/effect/Range$DownmixRange;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 395
    return-void

    .line 388
    .end local v1    # "_aidl_value":[Landroid/hardware/audio/effect/Range$DownmixRange;
    :pswitch_b
    sget-object v1, Landroid/hardware/audio/effect/Range$BassBoostRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/audio/effect/Range$BassBoostRange;

    .line 389
    .local v1, "_aidl_value":[Landroid/hardware/audio/effect/Range$BassBoostRange;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 390
    return-void

    .line 383
    .end local v1    # "_aidl_value":[Landroid/hardware/audio/effect/Range$BassBoostRange;
    :pswitch_c
    sget-object v1, Landroid/hardware/audio/effect/Range$AutomaticGainControlV2Range;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/audio/effect/Range$AutomaticGainControlV2Range;

    .line 384
    .local v1, "_aidl_value":[Landroid/hardware/audio/effect/Range$AutomaticGainControlV2Range;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 385
    return-void

    .line 378
    .end local v1    # "_aidl_value":[Landroid/hardware/audio/effect/Range$AutomaticGainControlV2Range;
    :pswitch_d
    sget-object v1, Landroid/hardware/audio/effect/Range$AutomaticGainControlV1Range;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/audio/effect/Range$AutomaticGainControlV1Range;

    .line 379
    .local v1, "_aidl_value":[Landroid/hardware/audio/effect/Range$AutomaticGainControlV1Range;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 380
    return-void

    .line 373
    .end local v1    # "_aidl_value":[Landroid/hardware/audio/effect/Range$AutomaticGainControlV1Range;
    :pswitch_e
    sget-object v1, Landroid/hardware/audio/effect/Range$AcousticEchoCancelerRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/audio/effect/Range$AcousticEchoCancelerRange;

    .line 374
    .local v1, "_aidl_value":[Landroid/hardware/audio/effect/Range$AcousticEchoCancelerRange;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 375
    return-void

    .line 368
    .end local v1    # "_aidl_value":[Landroid/hardware/audio/effect/Range$AcousticEchoCancelerRange;
    :pswitch_f
    sget-object v1, Landroid/hardware/audio/effect/Range$VendorExtensionRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/audio/effect/Range$VendorExtensionRange;

    .line 369
    .local v1, "_aidl_value":[Landroid/hardware/audio/effect/Range$VendorExtensionRange;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 370
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public setAcousticEchoCanceler([Landroid/hardware/audio/effect/Range$AcousticEchoCancelerRange;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/audio/effect/Range$AcousticEchoCancelerRange;

    .line 78
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 79
    return-void
.end method

.method public setAutomaticGainControlV1([Landroid/hardware/audio/effect/Range$AutomaticGainControlV1Range;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/audio/effect/Range$AutomaticGainControlV1Range;

    .line 93
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 94
    return-void
.end method

.method public setAutomaticGainControlV2([Landroid/hardware/audio/effect/Range$AutomaticGainControlV2Range;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/audio/effect/Range$AutomaticGainControlV2Range;

    .line 108
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 109
    return-void
.end method

.method public setBassBoost([Landroid/hardware/audio/effect/Range$BassBoostRange;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/audio/effect/Range$BassBoostRange;

    .line 123
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 124
    return-void
.end method

.method public setDownmix([Landroid/hardware/audio/effect/Range$DownmixRange;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/audio/effect/Range$DownmixRange;

    .line 138
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 139
    return-void
.end method

.method public setDynamicsProcessing([Landroid/hardware/audio/effect/Range$DynamicsProcessingRange;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/audio/effect/Range$DynamicsProcessingRange;

    .line 153
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 154
    return-void
.end method

.method public setEnvironmentalReverb([Landroid/hardware/audio/effect/Range$EnvironmentalReverbRange;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/audio/effect/Range$EnvironmentalReverbRange;

    .line 168
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 169
    return-void
.end method

.method public setEqualizer([Landroid/hardware/audio/effect/Range$EqualizerRange;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/audio/effect/Range$EqualizerRange;

    .line 183
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 184
    return-void
.end method

.method public setHapticGenerator([Landroid/hardware/audio/effect/Range$HapticGeneratorRange;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/audio/effect/Range$HapticGeneratorRange;

    .line 198
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 199
    return-void
.end method

.method public setLoudnessEnhancer([Landroid/hardware/audio/effect/Range$LoudnessEnhancerRange;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/audio/effect/Range$LoudnessEnhancerRange;

    .line 213
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 214
    return-void
.end method

.method public setNoiseSuppression([Landroid/hardware/audio/effect/Range$NoiseSuppressionRange;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/audio/effect/Range$NoiseSuppressionRange;

    .line 228
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 229
    return-void
.end method

.method public setPresetReverb([Landroid/hardware/audio/effect/Range$PresetReverbRange;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/audio/effect/Range$PresetReverbRange;

    .line 243
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 244
    return-void
.end method

.method public setVendorExtension([Landroid/hardware/audio/effect/Range$VendorExtensionRange;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/audio/effect/Range$VendorExtensionRange;

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 64
    return-void
.end method

.method public setVirtualizer([Landroid/hardware/audio/effect/Range$VirtualizerRange;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/audio/effect/Range$VirtualizerRange;

    .line 258
    const/16 v0, 0xd

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 259
    return-void
.end method

.method public setVisualizer([Landroid/hardware/audio/effect/Range$VisualizerRange;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/audio/effect/Range$VisualizerRange;

    .line 273
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 274
    return-void
.end method

.method public setVolume([Landroid/hardware/audio/effect/Range$VolumeRange;)V
    .locals 1
    .param p1, "_value"    # [Landroid/hardware/audio/effect/Range$VolumeRange;

    .line 288
    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Range;->_set(ILjava/lang/Object;)V

    .line 289
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 309
    iget v0, p0, Landroid/hardware/audio/effect/Range;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    iget v0, p0, Landroid/hardware/audio/effect/Range;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 357
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getVolume()[Landroid/hardware/audio/effect/Range$VolumeRange;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 354
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getVisualizer()[Landroid/hardware/audio/effect/Range$VisualizerRange;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 355
    goto/16 :goto_0

    .line 351
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getVirtualizer()[Landroid/hardware/audio/effect/Range$VirtualizerRange;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 352
    goto/16 :goto_0

    .line 348
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getPresetReverb()[Landroid/hardware/audio/effect/Range$PresetReverbRange;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 349
    goto :goto_0

    .line 345
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getNoiseSuppression()[Landroid/hardware/audio/effect/Range$NoiseSuppressionRange;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 346
    goto :goto_0

    .line 342
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getLoudnessEnhancer()[Landroid/hardware/audio/effect/Range$LoudnessEnhancerRange;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 343
    goto :goto_0

    .line 339
    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getHapticGenerator()[Landroid/hardware/audio/effect/Range$HapticGeneratorRange;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 340
    goto :goto_0

    .line 336
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getEqualizer()[Landroid/hardware/audio/effect/Range$EqualizerRange;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 337
    goto :goto_0

    .line 333
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getEnvironmentalReverb()[Landroid/hardware/audio/effect/Range$EnvironmentalReverbRange;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 334
    goto :goto_0

    .line 330
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getDynamicsProcessing()[Landroid/hardware/audio/effect/Range$DynamicsProcessingRange;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 331
    goto :goto_0

    .line 327
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getDownmix()[Landroid/hardware/audio/effect/Range$DownmixRange;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 328
    goto :goto_0

    .line 324
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getBassBoost()[Landroid/hardware/audio/effect/Range$BassBoostRange;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 325
    goto :goto_0

    .line 321
    :pswitch_c
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getAutomaticGainControlV2()[Landroid/hardware/audio/effect/Range$AutomaticGainControlV2Range;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 322
    goto :goto_0

    .line 318
    :pswitch_d
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getAutomaticGainControlV1()[Landroid/hardware/audio/effect/Range$AutomaticGainControlV1Range;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 319
    goto :goto_0

    .line 315
    :pswitch_e
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getAcousticEchoCanceler()[Landroid/hardware/audio/effect/Range$AcousticEchoCancelerRange;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 316
    goto :goto_0

    .line 312
    :pswitch_f
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Range;->getVendorExtension()[Landroid/hardware/audio/effect/Range$VendorExtensionRange;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 313
    nop

    .line 360
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
