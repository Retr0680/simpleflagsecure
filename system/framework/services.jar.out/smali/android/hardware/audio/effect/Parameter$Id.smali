.class public final Landroid/hardware/audio/effect/Parameter$Id;
.super Ljava/lang/Object;
.source "Parameter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/audio/effect/Parameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Id"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/audio/effect/Parameter$Id$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/audio/effect/Parameter$Id;",
            ">;"
        }
    .end annotation
.end field

.field public static final acousticEchoCancelerTag:I = 0x1

.field public static final automaticGainControlV1Tag:I = 0x2

.field public static final automaticGainControlV2Tag:I = 0x3

.field public static final bassBoostTag:I = 0x4

.field public static final commonTag:I = 0x10

.field public static final downmixTag:I = 0x5

.field public static final dynamicsProcessingTag:I = 0x6

.field public static final environmentalReverbTag:I = 0x7

.field public static final equalizerTag:I = 0x8

.field public static final hapticGeneratorTag:I = 0x9

.field public static final loudnessEnhancerTag:I = 0xa

.field public static final noiseSuppressionTag:I = 0xb

.field public static final presetReverbTag:I = 0xc

.field public static final vendorEffectTag:I = 0x0

.field public static final virtualizerTag:I = 0xd

.field public static final visualizerTag:I = 0xe

.field public static final volumeTag:I = 0xf


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 593
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Id$1;

    invoke-direct {v0}, Landroid/hardware/audio/effect/Parameter$Id$1;-><init>()V

    sput-object v0, Landroid/hardware/audio/effect/Parameter$Id;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "_value":Landroid/hardware/audio/effect/VendorExtension;
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/audio/effect/Parameter$Id;->_tag:I

    .line 317
    iput-object v0, p0, Landroid/hardware/audio/effect/Parameter$Id;->_value:Ljava/lang/Object;

    .line 318
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput p1, p0, Landroid/hardware/audio/effect/Parameter$Id;->_tag:I

    .line 326
    iput-object p2, p0, Landroid/hardware/audio/effect/Parameter$Id;->_value:Ljava/lang/Object;

    .line 327
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/Parameter$Id;->readFromParcel(Landroid/os/Parcel;)V

    .line 322
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/audio/effect/Parameter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/Parameter$Id;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 819
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 822
    return-void

    .line 820
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/Parameter$Id;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/audio/effect/Parameter$Id;->_tagString(I)Ljava/lang/String;

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

    .line 848
    iput p1, p0, Landroid/hardware/audio/effect/Parameter$Id;->_tag:I

    .line 849
    iput-object p2, p0, Landroid/hardware/audio/effect/Parameter$Id;->_value:Ljava/lang/Object;

    .line 850
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 825
    packed-switch p1, :pswitch_data_0

    .line 844
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

    .line 842
    :pswitch_0
    const-string v0, "commonTag"

    return-object v0

    .line 841
    :pswitch_1
    const-string/jumbo v0, "volumeTag"

    return-object v0

    .line 840
    :pswitch_2
    const-string/jumbo v0, "visualizerTag"

    return-object v0

    .line 839
    :pswitch_3
    const-string/jumbo v0, "virtualizerTag"

    return-object v0

    .line 838
    :pswitch_4
    const-string/jumbo v0, "presetReverbTag"

    return-object v0

    .line 837
    :pswitch_5
    const-string/jumbo v0, "noiseSuppressionTag"

    return-object v0

    .line 836
    :pswitch_6
    const-string/jumbo v0, "loudnessEnhancerTag"

    return-object v0

    .line 835
    :pswitch_7
    const-string/jumbo v0, "hapticGeneratorTag"

    return-object v0

    .line 834
    :pswitch_8
    const-string v0, "equalizerTag"

    return-object v0

    .line 833
    :pswitch_9
    const-string v0, "environmentalReverbTag"

    return-object v0

    .line 832
    :pswitch_a
    const-string v0, "dynamicsProcessingTag"

    return-object v0

    .line 831
    :pswitch_b
    const-string v0, "downmixTag"

    return-object v0

    .line 830
    :pswitch_c
    const-string v0, "bassBoostTag"

    return-object v0

    .line 829
    :pswitch_d
    const-string v0, "automaticGainControlV2Tag"

    return-object v0

    .line 828
    :pswitch_e
    const-string v0, "automaticGainControlV1Tag"

    return-object v0

    .line 827
    :pswitch_f
    const-string v0, "acousticEchoCancelerTag"

    return-object v0

    .line 826
    :pswitch_10
    const-string/jumbo v0, "vendorEffectTag"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static acousticEchoCancelerTag(Landroid/hardware/audio/effect/AcousticEchoCanceler$Id;)Landroid/hardware/audio/effect/Parameter$Id;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/AcousticEchoCanceler$Id;

    .line 351
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Id;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Id;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static automaticGainControlV1Tag(Landroid/hardware/audio/effect/AutomaticGainControlV1$Id;)Landroid/hardware/audio/effect/Parameter$Id;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/AutomaticGainControlV1$Id;

    .line 366
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Id;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Id;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static automaticGainControlV2Tag(Landroid/hardware/audio/effect/AutomaticGainControlV2$Id;)Landroid/hardware/audio/effect/Parameter$Id;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/AutomaticGainControlV2$Id;

    .line 381
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Id;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Id;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static bassBoostTag(Landroid/hardware/audio/effect/BassBoost$Id;)Landroid/hardware/audio/effect/Parameter$Id;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/BassBoost$Id;

    .line 396
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Id;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Id;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static commonTag(I)Landroid/hardware/audio/effect/Parameter$Id;
    .locals 3
    .param p0, "_value"    # I

    .line 576
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Id;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-direct {v0, v2, v1}, Landroid/hardware/audio/effect/Parameter$Id;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 811
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 812
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 813
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 815
    :cond_1
    return v0
.end method

.method public static downmixTag(Landroid/hardware/audio/effect/Downmix$Id;)Landroid/hardware/audio/effect/Parameter$Id;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/Downmix$Id;

    .line 411
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Id;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Id;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static dynamicsProcessingTag(Landroid/hardware/audio/effect/DynamicsProcessing$Id;)Landroid/hardware/audio/effect/Parameter$Id;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/DynamicsProcessing$Id;

    .line 426
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Id;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Id;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static environmentalReverbTag(Landroid/hardware/audio/effect/EnvironmentalReverb$Id;)Landroid/hardware/audio/effect/Parameter$Id;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/EnvironmentalReverb$Id;

    .line 441
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Id;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Id;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static equalizerTag(Landroid/hardware/audio/effect/Equalizer$Id;)Landroid/hardware/audio/effect/Parameter$Id;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/Equalizer$Id;

    .line 456
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Id;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Id;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static hapticGeneratorTag(Landroid/hardware/audio/effect/HapticGenerator$Id;)Landroid/hardware/audio/effect/Parameter$Id;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/HapticGenerator$Id;

    .line 471
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Id;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Id;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static loudnessEnhancerTag(Landroid/hardware/audio/effect/LoudnessEnhancer$Id;)Landroid/hardware/audio/effect/Parameter$Id;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/LoudnessEnhancer$Id;

    .line 486
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Id;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Id;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static noiseSuppressionTag(Landroid/hardware/audio/effect/NoiseSuppression$Id;)Landroid/hardware/audio/effect/Parameter$Id;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/NoiseSuppression$Id;

    .line 501
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Id;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Id;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static presetReverbTag(Landroid/hardware/audio/effect/PresetReverb$Id;)Landroid/hardware/audio/effect/Parameter$Id;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/PresetReverb$Id;

    .line 516
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Id;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Id;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static vendorEffectTag(Landroid/hardware/audio/effect/VendorExtension;)Landroid/hardware/audio/effect/Parameter$Id;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/VendorExtension;

    .line 336
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Id;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Id;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static virtualizerTag(Landroid/hardware/audio/effect/Virtualizer$Id;)Landroid/hardware/audio/effect/Parameter$Id;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/Virtualizer$Id;

    .line 531
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Id;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Id;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static visualizerTag(Landroid/hardware/audio/effect/Visualizer$Id;)Landroid/hardware/audio/effect/Parameter$Id;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/Visualizer$Id;

    .line 546
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Id;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Id;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static volumeTag(Landroid/hardware/audio/effect/Volume$Id;)Landroid/hardware/audio/effect/Parameter$Id;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/Volume$Id;

    .line 561
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Id;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Id;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 757
    const/4 v0, 0x0

    .line 758
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 805
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getVolumeTag()Landroid/hardware/audio/effect/Volume$Id;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto/16 :goto_0

    .line 802
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getVisualizerTag()Landroid/hardware/audio/effect/Visualizer$Id;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 803
    goto/16 :goto_0

    .line 799
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getVirtualizerTag()Landroid/hardware/audio/effect/Virtualizer$Id;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 800
    goto/16 :goto_0

    .line 796
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getPresetReverbTag()Landroid/hardware/audio/effect/PresetReverb$Id;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 797
    goto/16 :goto_0

    .line 793
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getNoiseSuppressionTag()Landroid/hardware/audio/effect/NoiseSuppression$Id;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 794
    goto/16 :goto_0

    .line 790
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getLoudnessEnhancerTag()Landroid/hardware/audio/effect/LoudnessEnhancer$Id;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 791
    goto :goto_0

    .line 787
    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getHapticGeneratorTag()Landroid/hardware/audio/effect/HapticGenerator$Id;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 788
    goto :goto_0

    .line 784
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getEqualizerTag()Landroid/hardware/audio/effect/Equalizer$Id;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 785
    goto :goto_0

    .line 781
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getEnvironmentalReverbTag()Landroid/hardware/audio/effect/EnvironmentalReverb$Id;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 782
    goto :goto_0

    .line 778
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getDynamicsProcessingTag()Landroid/hardware/audio/effect/DynamicsProcessing$Id;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 779
    goto :goto_0

    .line 775
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getDownmixTag()Landroid/hardware/audio/effect/Downmix$Id;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 776
    goto :goto_0

    .line 772
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getBassBoostTag()Landroid/hardware/audio/effect/BassBoost$Id;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 773
    goto :goto_0

    .line 769
    :pswitch_c
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getAutomaticGainControlV2Tag()Landroid/hardware/audio/effect/AutomaticGainControlV2$Id;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 770
    goto :goto_0

    .line 766
    :pswitch_d
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getAutomaticGainControlV1Tag()Landroid/hardware/audio/effect/AutomaticGainControlV1$Id;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 767
    goto :goto_0

    .line 763
    :pswitch_e
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getAcousticEchoCancelerTag()Landroid/hardware/audio/effect/AcousticEchoCanceler$Id;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 764
    goto :goto_0

    .line 760
    :pswitch_f
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getVendorEffectTag()Landroid/hardware/audio/effect/VendorExtension;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 761
    nop

    .line 808
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

.method public getAcousticEchoCancelerTag()Landroid/hardware/audio/effect/AcousticEchoCanceler$Id;
    .locals 1

    .line 355
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Id;->_assertTag(I)V

    .line 356
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Id;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/AcousticEchoCanceler$Id;

    return-object v0
.end method

.method public getAutomaticGainControlV1Tag()Landroid/hardware/audio/effect/AutomaticGainControlV1$Id;
    .locals 1

    .line 370
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Id;->_assertTag(I)V

    .line 371
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Id;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/AutomaticGainControlV1$Id;

    return-object v0
.end method

.method public getAutomaticGainControlV2Tag()Landroid/hardware/audio/effect/AutomaticGainControlV2$Id;
    .locals 1

    .line 385
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Id;->_assertTag(I)V

    .line 386
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Id;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/AutomaticGainControlV2$Id;

    return-object v0
.end method

.method public getBassBoostTag()Landroid/hardware/audio/effect/BassBoost$Id;
    .locals 1

    .line 400
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Id;->_assertTag(I)V

    .line 401
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Id;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/BassBoost$Id;

    return-object v0
.end method

.method public getCommonTag()I
    .locals 1

    .line 580
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Id;->_assertTag(I)V

    .line 581
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Id;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDownmixTag()Landroid/hardware/audio/effect/Downmix$Id;
    .locals 1

    .line 415
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Id;->_assertTag(I)V

    .line 416
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Id;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/Downmix$Id;

    return-object v0
.end method

.method public getDynamicsProcessingTag()Landroid/hardware/audio/effect/DynamicsProcessing$Id;
    .locals 1

    .line 430
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Id;->_assertTag(I)V

    .line 431
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Id;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/DynamicsProcessing$Id;

    return-object v0
.end method

.method public getEnvironmentalReverbTag()Landroid/hardware/audio/effect/EnvironmentalReverb$Id;
    .locals 1

    .line 445
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Id;->_assertTag(I)V

    .line 446
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Id;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/EnvironmentalReverb$Id;

    return-object v0
.end method

.method public getEqualizerTag()Landroid/hardware/audio/effect/Equalizer$Id;
    .locals 1

    .line 460
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Id;->_assertTag(I)V

    .line 461
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Id;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/Equalizer$Id;

    return-object v0
.end method

.method public getHapticGeneratorTag()Landroid/hardware/audio/effect/HapticGenerator$Id;
    .locals 1

    .line 475
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Id;->_assertTag(I)V

    .line 476
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Id;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/HapticGenerator$Id;

    return-object v0
.end method

.method public getLoudnessEnhancerTag()Landroid/hardware/audio/effect/LoudnessEnhancer$Id;
    .locals 1

    .line 490
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Id;->_assertTag(I)V

    .line 491
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Id;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;

    return-object v0
.end method

.method public getNoiseSuppressionTag()Landroid/hardware/audio/effect/NoiseSuppression$Id;
    .locals 1

    .line 505
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Id;->_assertTag(I)V

    .line 506
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Id;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/NoiseSuppression$Id;

    return-object v0
.end method

.method public getPresetReverbTag()Landroid/hardware/audio/effect/PresetReverb$Id;
    .locals 1

    .line 520
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Id;->_assertTag(I)V

    .line 521
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Id;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/PresetReverb$Id;

    return-object v0
.end method

.method public final getStability()I
    .locals 1

    .line 590
    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 330
    iget v0, p0, Landroid/hardware/audio/effect/Parameter$Id;->_tag:I

    return v0
.end method

.method public getVendorEffectTag()Landroid/hardware/audio/effect/VendorExtension;
    .locals 1

    .line 340
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Id;->_assertTag(I)V

    .line 341
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Id;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/VendorExtension;

    return-object v0
.end method

.method public getVirtualizerTag()Landroid/hardware/audio/effect/Virtualizer$Id;
    .locals 1

    .line 535
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Id;->_assertTag(I)V

    .line 536
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Id;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/Virtualizer$Id;

    return-object v0
.end method

.method public getVisualizerTag()Landroid/hardware/audio/effect/Visualizer$Id;
    .locals 1

    .line 550
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Id;->_assertTag(I)V

    .line 551
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Id;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/Visualizer$Id;

    return-object v0
.end method

.method public getVolumeTag()Landroid/hardware/audio/effect/Volume$Id;
    .locals 1

    .line 565
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Id;->_assertTag(I)V

    .line 566
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Id;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/Volume$Id;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 664
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 665
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 752
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

    .line 748
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 749
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 750
    return-void

    .line 743
    .end local v1    # "_aidl_value":I
    :pswitch_1
    sget-object v1, Landroid/hardware/audio/effect/Volume$Id;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/Volume$Id;

    .line 744
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/Volume$Id;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 745
    return-void

    .line 738
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/Volume$Id;
    :pswitch_2
    sget-object v1, Landroid/hardware/audio/effect/Visualizer$Id;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/Visualizer$Id;

    .line 739
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/Visualizer$Id;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 740
    return-void

    .line 733
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/Visualizer$Id;
    :pswitch_3
    sget-object v1, Landroid/hardware/audio/effect/Virtualizer$Id;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/Virtualizer$Id;

    .line 734
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/Virtualizer$Id;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 735
    return-void

    .line 728
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/Virtualizer$Id;
    :pswitch_4
    sget-object v1, Landroid/hardware/audio/effect/PresetReverb$Id;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/PresetReverb$Id;

    .line 729
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/PresetReverb$Id;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 730
    return-void

    .line 723
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/PresetReverb$Id;
    :pswitch_5
    sget-object v1, Landroid/hardware/audio/effect/NoiseSuppression$Id;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/NoiseSuppression$Id;

    .line 724
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/NoiseSuppression$Id;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 725
    return-void

    .line 718
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/NoiseSuppression$Id;
    :pswitch_6
    sget-object v1, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/LoudnessEnhancer$Id;

    .line 719
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/LoudnessEnhancer$Id;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 720
    return-void

    .line 713
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/LoudnessEnhancer$Id;
    :pswitch_7
    sget-object v1, Landroid/hardware/audio/effect/HapticGenerator$Id;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/HapticGenerator$Id;

    .line 714
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/HapticGenerator$Id;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 715
    return-void

    .line 708
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/HapticGenerator$Id;
    :pswitch_8
    sget-object v1, Landroid/hardware/audio/effect/Equalizer$Id;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/Equalizer$Id;

    .line 709
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/Equalizer$Id;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 710
    return-void

    .line 703
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/Equalizer$Id;
    :pswitch_9
    sget-object v1, Landroid/hardware/audio/effect/EnvironmentalReverb$Id;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/EnvironmentalReverb$Id;

    .line 704
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/EnvironmentalReverb$Id;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 705
    return-void

    .line 698
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/EnvironmentalReverb$Id;
    :pswitch_a
    sget-object v1, Landroid/hardware/audio/effect/DynamicsProcessing$Id;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/DynamicsProcessing$Id;

    .line 699
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/DynamicsProcessing$Id;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 700
    return-void

    .line 693
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/DynamicsProcessing$Id;
    :pswitch_b
    sget-object v1, Landroid/hardware/audio/effect/Downmix$Id;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/Downmix$Id;

    .line 694
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/Downmix$Id;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 695
    return-void

    .line 688
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/Downmix$Id;
    :pswitch_c
    sget-object v1, Landroid/hardware/audio/effect/BassBoost$Id;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/BassBoost$Id;

    .line 689
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/BassBoost$Id;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 690
    return-void

    .line 683
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/BassBoost$Id;
    :pswitch_d
    sget-object v1, Landroid/hardware/audio/effect/AutomaticGainControlV2$Id;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/AutomaticGainControlV2$Id;

    .line 684
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/AutomaticGainControlV2$Id;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 685
    return-void

    .line 678
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/AutomaticGainControlV2$Id;
    :pswitch_e
    sget-object v1, Landroid/hardware/audio/effect/AutomaticGainControlV1$Id;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/AutomaticGainControlV1$Id;

    .line 679
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/AutomaticGainControlV1$Id;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 680
    return-void

    .line 673
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/AutomaticGainControlV1$Id;
    :pswitch_f
    sget-object v1, Landroid/hardware/audio/effect/AcousticEchoCanceler$Id;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/AcousticEchoCanceler$Id;

    .line 674
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/AcousticEchoCanceler$Id;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 675
    return-void

    .line 668
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/AcousticEchoCanceler$Id;
    :pswitch_10
    sget-object v1, Landroid/hardware/audio/effect/VendorExtension;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/VendorExtension;

    .line 669
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/VendorExtension;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 670
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public setAcousticEchoCancelerTag(Landroid/hardware/audio/effect/AcousticEchoCanceler$Id;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/AcousticEchoCanceler$Id;

    .line 360
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 361
    return-void
.end method

.method public setAutomaticGainControlV1Tag(Landroid/hardware/audio/effect/AutomaticGainControlV1$Id;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/AutomaticGainControlV1$Id;

    .line 375
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 376
    return-void
.end method

.method public setAutomaticGainControlV2Tag(Landroid/hardware/audio/effect/AutomaticGainControlV2$Id;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/AutomaticGainControlV2$Id;

    .line 390
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 391
    return-void
.end method

.method public setBassBoostTag(Landroid/hardware/audio/effect/BassBoost$Id;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/BassBoost$Id;

    .line 405
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 406
    return-void
.end method

.method public setCommonTag(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 585
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x10

    invoke-direct {p0, v1, v0}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 586
    return-void
.end method

.method public setDownmixTag(Landroid/hardware/audio/effect/Downmix$Id;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/Downmix$Id;

    .line 420
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 421
    return-void
.end method

.method public setDynamicsProcessingTag(Landroid/hardware/audio/effect/DynamicsProcessing$Id;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/DynamicsProcessing$Id;

    .line 435
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 436
    return-void
.end method

.method public setEnvironmentalReverbTag(Landroid/hardware/audio/effect/EnvironmentalReverb$Id;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/EnvironmentalReverb$Id;

    .line 450
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 451
    return-void
.end method

.method public setEqualizerTag(Landroid/hardware/audio/effect/Equalizer$Id;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/Equalizer$Id;

    .line 465
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 466
    return-void
.end method

.method public setHapticGeneratorTag(Landroid/hardware/audio/effect/HapticGenerator$Id;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/HapticGenerator$Id;

    .line 480
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 481
    return-void
.end method

.method public setLoudnessEnhancerTag(Landroid/hardware/audio/effect/LoudnessEnhancer$Id;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/LoudnessEnhancer$Id;

    .line 495
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 496
    return-void
.end method

.method public setNoiseSuppressionTag(Landroid/hardware/audio/effect/NoiseSuppression$Id;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/NoiseSuppression$Id;

    .line 510
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 511
    return-void
.end method

.method public setPresetReverbTag(Landroid/hardware/audio/effect/PresetReverb$Id;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/PresetReverb$Id;

    .line 525
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 526
    return-void
.end method

.method public setVendorEffectTag(Landroid/hardware/audio/effect/VendorExtension;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/VendorExtension;

    .line 345
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 346
    return-void
.end method

.method public setVirtualizerTag(Landroid/hardware/audio/effect/Virtualizer$Id;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/Virtualizer$Id;

    .line 540
    const/16 v0, 0xd

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 541
    return-void
.end method

.method public setVisualizerTag(Landroid/hardware/audio/effect/Visualizer$Id;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/Visualizer$Id;

    .line 555
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 556
    return-void
.end method

.method public setVolumeTag(Landroid/hardware/audio/effect/Volume$Id;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/Volume$Id;

    .line 570
    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Id;->_set(ILjava/lang/Object;)V

    .line 571
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 606
    iget v0, p0, Landroid/hardware/audio/effect/Parameter$Id;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    iget v0, p0, Landroid/hardware/audio/effect/Parameter$Id;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 657
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getCommonTag()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 654
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getVolumeTag()Landroid/hardware/audio/effect/Volume$Id;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 655
    goto/16 :goto_0

    .line 651
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getVisualizerTag()Landroid/hardware/audio/effect/Visualizer$Id;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 652
    goto/16 :goto_0

    .line 648
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getVirtualizerTag()Landroid/hardware/audio/effect/Virtualizer$Id;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 649
    goto/16 :goto_0

    .line 645
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getPresetReverbTag()Landroid/hardware/audio/effect/PresetReverb$Id;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 646
    goto :goto_0

    .line 642
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getNoiseSuppressionTag()Landroid/hardware/audio/effect/NoiseSuppression$Id;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 643
    goto :goto_0

    .line 639
    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getLoudnessEnhancerTag()Landroid/hardware/audio/effect/LoudnessEnhancer$Id;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 640
    goto :goto_0

    .line 636
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getHapticGeneratorTag()Landroid/hardware/audio/effect/HapticGenerator$Id;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 637
    goto :goto_0

    .line 633
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getEqualizerTag()Landroid/hardware/audio/effect/Equalizer$Id;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 634
    goto :goto_0

    .line 630
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getEnvironmentalReverbTag()Landroid/hardware/audio/effect/EnvironmentalReverb$Id;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 631
    goto :goto_0

    .line 627
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getDynamicsProcessingTag()Landroid/hardware/audio/effect/DynamicsProcessing$Id;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 628
    goto :goto_0

    .line 624
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getDownmixTag()Landroid/hardware/audio/effect/Downmix$Id;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 625
    goto :goto_0

    .line 621
    :pswitch_c
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getBassBoostTag()Landroid/hardware/audio/effect/BassBoost$Id;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 622
    goto :goto_0

    .line 618
    :pswitch_d
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getAutomaticGainControlV2Tag()Landroid/hardware/audio/effect/AutomaticGainControlV2$Id;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 619
    goto :goto_0

    .line 615
    :pswitch_e
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getAutomaticGainControlV1Tag()Landroid/hardware/audio/effect/AutomaticGainControlV1$Id;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 616
    goto :goto_0

    .line 612
    :pswitch_f
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getAcousticEchoCancelerTag()Landroid/hardware/audio/effect/AcousticEchoCanceler$Id;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 613
    goto :goto_0

    .line 609
    :pswitch_10
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Id;->getVendorEffectTag()Landroid/hardware/audio/effect/VendorExtension;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 610
    nop

    .line 660
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
