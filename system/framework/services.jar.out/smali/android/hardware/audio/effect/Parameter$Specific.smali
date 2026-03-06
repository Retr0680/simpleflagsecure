.class public final Landroid/hardware/audio/effect/Parameter$Specific;
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
    name = "Specific"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/audio/effect/Parameter$Specific$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/audio/effect/Parameter$Specific;",
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

.field public static final vendorEffect:I = 0x0

.field public static final virtualizer:I = 0xd

.field public static final visualizer:I = 0xe

.field public static final volume:I = 0xf


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1278
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Specific$1;

    invoke-direct {v0}, Landroid/hardware/audio/effect/Parameter$Specific$1;-><init>()V

    sput-object v0, Landroid/hardware/audio/effect/Parameter$Specific;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1015
    const/4 v0, 0x0

    .line 1016
    .local v0, "_value":Landroid/hardware/audio/effect/VendorExtension;
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/audio/effect/Parameter$Specific;->_tag:I

    .line 1017
    iput-object v0, p0, Landroid/hardware/audio/effect/Parameter$Specific;->_value:Ljava/lang/Object;

    .line 1018
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 1024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1025
    iput p1, p0, Landroid/hardware/audio/effect/Parameter$Specific;->_tag:I

    .line 1026
    iput-object p2, p0, Landroid/hardware/audio/effect/Parameter$Specific;->_value:Ljava/lang/Object;

    .line 1027
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/Parameter$Specific;->readFromParcel(Landroid/os/Parcel;)V

    .line 1022
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/audio/effect/Parameter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/Parameter$Specific;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 1496
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1499
    return-void

    .line 1497
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/hardware/audio/effect/Parameter$Specific;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/audio/effect/Parameter$Specific;->_tagString(I)Ljava/lang/String;

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

    .line 1524
    iput p1, p0, Landroid/hardware/audio/effect/Parameter$Specific;->_tag:I

    .line 1525
    iput-object p2, p0, Landroid/hardware/audio/effect/Parameter$Specific;->_value:Ljava/lang/Object;

    .line 1526
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 1502
    packed-switch p1, :pswitch_data_0

    .line 1520
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

    .line 1518
    :pswitch_0
    const-string/jumbo v0, "volume"

    return-object v0

    .line 1517
    :pswitch_1
    const-string/jumbo v0, "visualizer"

    return-object v0

    .line 1516
    :pswitch_2
    const-string/jumbo v0, "virtualizer"

    return-object v0

    .line 1515
    :pswitch_3
    const-string/jumbo v0, "presetReverb"

    return-object v0

    .line 1514
    :pswitch_4
    const-string/jumbo v0, "noiseSuppression"

    return-object v0

    .line 1513
    :pswitch_5
    const-string/jumbo v0, "loudnessEnhancer"

    return-object v0

    .line 1512
    :pswitch_6
    const-string/jumbo v0, "hapticGenerator"

    return-object v0

    .line 1511
    :pswitch_7
    const-string v0, "equalizer"

    return-object v0

    .line 1510
    :pswitch_8
    const-string v0, "environmentalReverb"

    return-object v0

    .line 1509
    :pswitch_9
    const-string v0, "dynamicsProcessing"

    return-object v0

    .line 1508
    :pswitch_a
    const-string v0, "downmix"

    return-object v0

    .line 1507
    :pswitch_b
    const-string v0, "bassBoost"

    return-object v0

    .line 1506
    :pswitch_c
    const-string v0, "automaticGainControlV2"

    return-object v0

    .line 1505
    :pswitch_d
    const-string v0, "automaticGainControlV1"

    return-object v0

    .line 1504
    :pswitch_e
    const-string v0, "acousticEchoCanceler"

    return-object v0

    .line 1503
    :pswitch_f
    const-string/jumbo v0, "vendorEffect"

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

.method public static acousticEchoCanceler(Landroid/hardware/audio/effect/AcousticEchoCanceler;)Landroid/hardware/audio/effect/Parameter$Specific;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/AcousticEchoCanceler;

    .line 1051
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Specific;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Specific;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static automaticGainControlV1(Landroid/hardware/audio/effect/AutomaticGainControlV1;)Landroid/hardware/audio/effect/Parameter$Specific;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/AutomaticGainControlV1;

    .line 1066
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Specific;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Specific;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static automaticGainControlV2(Landroid/hardware/audio/effect/AutomaticGainControlV2;)Landroid/hardware/audio/effect/Parameter$Specific;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/AutomaticGainControlV2;

    .line 1081
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Specific;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Specific;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static bassBoost(Landroid/hardware/audio/effect/BassBoost;)Landroid/hardware/audio/effect/Parameter$Specific;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/BassBoost;

    .line 1096
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Specific;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Specific;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 1488
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1489
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 1490
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 1492
    :cond_1
    return v0
.end method

.method public static downmix(Landroid/hardware/audio/effect/Downmix;)Landroid/hardware/audio/effect/Parameter$Specific;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/Downmix;

    .line 1111
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Specific;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Specific;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static dynamicsProcessing(Landroid/hardware/audio/effect/DynamicsProcessing;)Landroid/hardware/audio/effect/Parameter$Specific;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/DynamicsProcessing;

    .line 1126
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Specific;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Specific;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static environmentalReverb(Landroid/hardware/audio/effect/EnvironmentalReverb;)Landroid/hardware/audio/effect/Parameter$Specific;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/EnvironmentalReverb;

    .line 1141
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Specific;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Specific;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static equalizer(Landroid/hardware/audio/effect/Equalizer;)Landroid/hardware/audio/effect/Parameter$Specific;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/Equalizer;

    .line 1156
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Specific;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Specific;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static hapticGenerator(Landroid/hardware/audio/effect/HapticGenerator;)Landroid/hardware/audio/effect/Parameter$Specific;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/HapticGenerator;

    .line 1171
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Specific;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Specific;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static loudnessEnhancer(Landroid/hardware/audio/effect/LoudnessEnhancer;)Landroid/hardware/audio/effect/Parameter$Specific;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/LoudnessEnhancer;

    .line 1186
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Specific;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Specific;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static noiseSuppression(Landroid/hardware/audio/effect/NoiseSuppression;)Landroid/hardware/audio/effect/Parameter$Specific;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/NoiseSuppression;

    .line 1201
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Specific;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Specific;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static presetReverb(Landroid/hardware/audio/effect/PresetReverb;)Landroid/hardware/audio/effect/Parameter$Specific;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/PresetReverb;

    .line 1216
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Specific;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Specific;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static vendorEffect(Landroid/hardware/audio/effect/VendorExtension;)Landroid/hardware/audio/effect/Parameter$Specific;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/VendorExtension;

    .line 1036
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Specific;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Specific;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static virtualizer(Landroid/hardware/audio/effect/Virtualizer;)Landroid/hardware/audio/effect/Parameter$Specific;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/Virtualizer;

    .line 1231
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Specific;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Specific;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static visualizer(Landroid/hardware/audio/effect/Visualizer;)Landroid/hardware/audio/effect/Parameter$Specific;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/Visualizer;

    .line 1246
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Specific;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Specific;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static volume(Landroid/hardware/audio/effect/Volume;)Landroid/hardware/audio/effect/Parameter$Specific;
    .locals 2
    .param p0, "_value"    # Landroid/hardware/audio/effect/Volume;

    .line 1261
    new-instance v0, Landroid/hardware/audio/effect/Parameter$Specific;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p0}, Landroid/hardware/audio/effect/Parameter$Specific;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 1434
    const/4 v0, 0x0

    .line 1435
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 1482
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getVolume()Landroid/hardware/audio/effect/Volume;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto/16 :goto_0

    .line 1479
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getVisualizer()Landroid/hardware/audio/effect/Visualizer;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1480
    goto/16 :goto_0

    .line 1476
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getVirtualizer()Landroid/hardware/audio/effect/Virtualizer;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1477
    goto/16 :goto_0

    .line 1473
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getPresetReverb()Landroid/hardware/audio/effect/PresetReverb;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1474
    goto/16 :goto_0

    .line 1470
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getNoiseSuppression()Landroid/hardware/audio/effect/NoiseSuppression;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1471
    goto/16 :goto_0

    .line 1467
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getLoudnessEnhancer()Landroid/hardware/audio/effect/LoudnessEnhancer;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1468
    goto :goto_0

    .line 1464
    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getHapticGenerator()Landroid/hardware/audio/effect/HapticGenerator;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1465
    goto :goto_0

    .line 1461
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getEqualizer()Landroid/hardware/audio/effect/Equalizer;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1462
    goto :goto_0

    .line 1458
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getEnvironmentalReverb()Landroid/hardware/audio/effect/EnvironmentalReverb;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1459
    goto :goto_0

    .line 1455
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getDynamicsProcessing()Landroid/hardware/audio/effect/DynamicsProcessing;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1456
    goto :goto_0

    .line 1452
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getDownmix()Landroid/hardware/audio/effect/Downmix;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1453
    goto :goto_0

    .line 1449
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getBassBoost()Landroid/hardware/audio/effect/BassBoost;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1450
    goto :goto_0

    .line 1446
    :pswitch_c
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getAutomaticGainControlV2()Landroid/hardware/audio/effect/AutomaticGainControlV2;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1447
    goto :goto_0

    .line 1443
    :pswitch_d
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getAutomaticGainControlV1()Landroid/hardware/audio/effect/AutomaticGainControlV1;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1444
    goto :goto_0

    .line 1440
    :pswitch_e
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getAcousticEchoCanceler()Landroid/hardware/audio/effect/AcousticEchoCanceler;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1441
    goto :goto_0

    .line 1437
    :pswitch_f
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getVendorEffect()Landroid/hardware/audio/effect/VendorExtension;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 1438
    nop

    .line 1485
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

.method public getAcousticEchoCanceler()Landroid/hardware/audio/effect/AcousticEchoCanceler;
    .locals 1

    .line 1055
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Specific;->_assertTag(I)V

    .line 1056
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Specific;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/AcousticEchoCanceler;

    return-object v0
.end method

.method public getAutomaticGainControlV1()Landroid/hardware/audio/effect/AutomaticGainControlV1;
    .locals 1

    .line 1070
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Specific;->_assertTag(I)V

    .line 1071
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Specific;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/AutomaticGainControlV1;

    return-object v0
.end method

.method public getAutomaticGainControlV2()Landroid/hardware/audio/effect/AutomaticGainControlV2;
    .locals 1

    .line 1085
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Specific;->_assertTag(I)V

    .line 1086
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Specific;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/AutomaticGainControlV2;

    return-object v0
.end method

.method public getBassBoost()Landroid/hardware/audio/effect/BassBoost;
    .locals 1

    .line 1100
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Specific;->_assertTag(I)V

    .line 1101
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Specific;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/BassBoost;

    return-object v0
.end method

.method public getDownmix()Landroid/hardware/audio/effect/Downmix;
    .locals 1

    .line 1115
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Specific;->_assertTag(I)V

    .line 1116
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Specific;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/Downmix;

    return-object v0
.end method

.method public getDynamicsProcessing()Landroid/hardware/audio/effect/DynamicsProcessing;
    .locals 1

    .line 1130
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Specific;->_assertTag(I)V

    .line 1131
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Specific;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/DynamicsProcessing;

    return-object v0
.end method

.method public getEnvironmentalReverb()Landroid/hardware/audio/effect/EnvironmentalReverb;
    .locals 1

    .line 1145
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Specific;->_assertTag(I)V

    .line 1146
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Specific;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/EnvironmentalReverb;

    return-object v0
.end method

.method public getEqualizer()Landroid/hardware/audio/effect/Equalizer;
    .locals 1

    .line 1160
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Specific;->_assertTag(I)V

    .line 1161
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Specific;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/Equalizer;

    return-object v0
.end method

.method public getHapticGenerator()Landroid/hardware/audio/effect/HapticGenerator;
    .locals 1

    .line 1175
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Specific;->_assertTag(I)V

    .line 1176
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Specific;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/HapticGenerator;

    return-object v0
.end method

.method public getLoudnessEnhancer()Landroid/hardware/audio/effect/LoudnessEnhancer;
    .locals 1

    .line 1190
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Specific;->_assertTag(I)V

    .line 1191
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Specific;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/LoudnessEnhancer;

    return-object v0
.end method

.method public getNoiseSuppression()Landroid/hardware/audio/effect/NoiseSuppression;
    .locals 1

    .line 1205
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Specific;->_assertTag(I)V

    .line 1206
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Specific;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/NoiseSuppression;

    return-object v0
.end method

.method public getPresetReverb()Landroid/hardware/audio/effect/PresetReverb;
    .locals 1

    .line 1220
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Specific;->_assertTag(I)V

    .line 1221
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Specific;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/PresetReverb;

    return-object v0
.end method

.method public final getStability()I
    .locals 1

    .line 1275
    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 1030
    iget v0, p0, Landroid/hardware/audio/effect/Parameter$Specific;->_tag:I

    return v0
.end method

.method public getVendorEffect()Landroid/hardware/audio/effect/VendorExtension;
    .locals 1

    .line 1040
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Specific;->_assertTag(I)V

    .line 1041
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Specific;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/VendorExtension;

    return-object v0
.end method

.method public getVirtualizer()Landroid/hardware/audio/effect/Virtualizer;
    .locals 1

    .line 1235
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Specific;->_assertTag(I)V

    .line 1236
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Specific;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/Virtualizer;

    return-object v0
.end method

.method public getVisualizer()Landroid/hardware/audio/effect/Visualizer;
    .locals 1

    .line 1250
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Specific;->_assertTag(I)V

    .line 1251
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Specific;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/Visualizer;

    return-object v0
.end method

.method public getVolume()Landroid/hardware/audio/effect/Volume;
    .locals 1

    .line 1265
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Landroid/hardware/audio/effect/Parameter$Specific;->_assertTag(I)V

    .line 1266
    iget-object v0, p0, Landroid/hardware/audio/effect/Parameter$Specific;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/audio/effect/Volume;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 1346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1347
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_0

    .line 1429
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

    .line 1425
    :pswitch_0
    sget-object v1, Landroid/hardware/audio/effect/Volume;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/Volume;

    .line 1426
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/Volume;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1427
    return-void

    .line 1420
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/Volume;
    :pswitch_1
    sget-object v1, Landroid/hardware/audio/effect/Visualizer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/Visualizer;

    .line 1421
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/Visualizer;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1422
    return-void

    .line 1415
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/Visualizer;
    :pswitch_2
    sget-object v1, Landroid/hardware/audio/effect/Virtualizer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/Virtualizer;

    .line 1416
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/Virtualizer;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1417
    return-void

    .line 1410
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/Virtualizer;
    :pswitch_3
    sget-object v1, Landroid/hardware/audio/effect/PresetReverb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/PresetReverb;

    .line 1411
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/PresetReverb;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1412
    return-void

    .line 1405
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/PresetReverb;
    :pswitch_4
    sget-object v1, Landroid/hardware/audio/effect/NoiseSuppression;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/NoiseSuppression;

    .line 1406
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/NoiseSuppression;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1407
    return-void

    .line 1400
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/NoiseSuppression;
    :pswitch_5
    sget-object v1, Landroid/hardware/audio/effect/LoudnessEnhancer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/LoudnessEnhancer;

    .line 1401
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/LoudnessEnhancer;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1402
    return-void

    .line 1395
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/LoudnessEnhancer;
    :pswitch_6
    sget-object v1, Landroid/hardware/audio/effect/HapticGenerator;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/HapticGenerator;

    .line 1396
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/HapticGenerator;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1397
    return-void

    .line 1390
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/HapticGenerator;
    :pswitch_7
    sget-object v1, Landroid/hardware/audio/effect/Equalizer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/Equalizer;

    .line 1391
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/Equalizer;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1392
    return-void

    .line 1385
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/Equalizer;
    :pswitch_8
    sget-object v1, Landroid/hardware/audio/effect/EnvironmentalReverb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/EnvironmentalReverb;

    .line 1386
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/EnvironmentalReverb;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1387
    return-void

    .line 1380
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/EnvironmentalReverb;
    :pswitch_9
    sget-object v1, Landroid/hardware/audio/effect/DynamicsProcessing;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/DynamicsProcessing;

    .line 1381
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/DynamicsProcessing;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1382
    return-void

    .line 1375
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/DynamicsProcessing;
    :pswitch_a
    sget-object v1, Landroid/hardware/audio/effect/Downmix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/Downmix;

    .line 1376
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/Downmix;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1377
    return-void

    .line 1370
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/Downmix;
    :pswitch_b
    sget-object v1, Landroid/hardware/audio/effect/BassBoost;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/BassBoost;

    .line 1371
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/BassBoost;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1372
    return-void

    .line 1365
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/BassBoost;
    :pswitch_c
    sget-object v1, Landroid/hardware/audio/effect/AutomaticGainControlV2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/AutomaticGainControlV2;

    .line 1366
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/AutomaticGainControlV2;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1367
    return-void

    .line 1360
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/AutomaticGainControlV2;
    :pswitch_d
    sget-object v1, Landroid/hardware/audio/effect/AutomaticGainControlV1;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/AutomaticGainControlV1;

    .line 1361
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/AutomaticGainControlV1;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1362
    return-void

    .line 1355
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/AutomaticGainControlV1;
    :pswitch_e
    sget-object v1, Landroid/hardware/audio/effect/AcousticEchoCanceler;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/AcousticEchoCanceler;

    .line 1356
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/AcousticEchoCanceler;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1357
    return-void

    .line 1350
    .end local v1    # "_aidl_value":Landroid/hardware/audio/effect/AcousticEchoCanceler;
    :pswitch_f
    sget-object v1, Landroid/hardware/audio/effect/VendorExtension;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/audio/effect/VendorExtension;

    .line 1351
    .local v1, "_aidl_value":Landroid/hardware/audio/effect/VendorExtension;
    invoke-direct {p0, v0, v1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1352
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

.method public setAcousticEchoCanceler(Landroid/hardware/audio/effect/AcousticEchoCanceler;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/AcousticEchoCanceler;

    .line 1060
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1061
    return-void
.end method

.method public setAutomaticGainControlV1(Landroid/hardware/audio/effect/AutomaticGainControlV1;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/AutomaticGainControlV1;

    .line 1075
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1076
    return-void
.end method

.method public setAutomaticGainControlV2(Landroid/hardware/audio/effect/AutomaticGainControlV2;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/AutomaticGainControlV2;

    .line 1090
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1091
    return-void
.end method

.method public setBassBoost(Landroid/hardware/audio/effect/BassBoost;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/BassBoost;

    .line 1105
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1106
    return-void
.end method

.method public setDownmix(Landroid/hardware/audio/effect/Downmix;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/Downmix;

    .line 1120
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1121
    return-void
.end method

.method public setDynamicsProcessing(Landroid/hardware/audio/effect/DynamicsProcessing;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/DynamicsProcessing;

    .line 1135
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1136
    return-void
.end method

.method public setEnvironmentalReverb(Landroid/hardware/audio/effect/EnvironmentalReverb;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/EnvironmentalReverb;

    .line 1150
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1151
    return-void
.end method

.method public setEqualizer(Landroid/hardware/audio/effect/Equalizer;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/Equalizer;

    .line 1165
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1166
    return-void
.end method

.method public setHapticGenerator(Landroid/hardware/audio/effect/HapticGenerator;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/HapticGenerator;

    .line 1180
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1181
    return-void
.end method

.method public setLoudnessEnhancer(Landroid/hardware/audio/effect/LoudnessEnhancer;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/LoudnessEnhancer;

    .line 1195
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1196
    return-void
.end method

.method public setNoiseSuppression(Landroid/hardware/audio/effect/NoiseSuppression;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/NoiseSuppression;

    .line 1210
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1211
    return-void
.end method

.method public setPresetReverb(Landroid/hardware/audio/effect/PresetReverb;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/PresetReverb;

    .line 1225
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1226
    return-void
.end method

.method public setVendorEffect(Landroid/hardware/audio/effect/VendorExtension;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/VendorExtension;

    .line 1045
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1046
    return-void
.end method

.method public setVirtualizer(Landroid/hardware/audio/effect/Virtualizer;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/Virtualizer;

    .line 1240
    const/16 v0, 0xd

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1241
    return-void
.end method

.method public setVisualizer(Landroid/hardware/audio/effect/Visualizer;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/Visualizer;

    .line 1255
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1256
    return-void
.end method

.method public setVolume(Landroid/hardware/audio/effect/Volume;)V
    .locals 1
    .param p1, "_value"    # Landroid/hardware/audio/effect/Volume;

    .line 1270
    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Landroid/hardware/audio/effect/Parameter$Specific;->_set(ILjava/lang/Object;)V

    .line 1271
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 1291
    iget v0, p0, Landroid/hardware/audio/effect/Parameter$Specific;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1292
    iget v0, p0, Landroid/hardware/audio/effect/Parameter$Specific;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1339
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getVolume()Landroid/hardware/audio/effect/Volume;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 1336
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getVisualizer()Landroid/hardware/audio/effect/Visualizer;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1337
    goto/16 :goto_0

    .line 1333
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getVirtualizer()Landroid/hardware/audio/effect/Virtualizer;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1334
    goto/16 :goto_0

    .line 1330
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getPresetReverb()Landroid/hardware/audio/effect/PresetReverb;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1331
    goto :goto_0

    .line 1327
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getNoiseSuppression()Landroid/hardware/audio/effect/NoiseSuppression;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1328
    goto :goto_0

    .line 1324
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getLoudnessEnhancer()Landroid/hardware/audio/effect/LoudnessEnhancer;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1325
    goto :goto_0

    .line 1321
    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getHapticGenerator()Landroid/hardware/audio/effect/HapticGenerator;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1322
    goto :goto_0

    .line 1318
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getEqualizer()Landroid/hardware/audio/effect/Equalizer;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1319
    goto :goto_0

    .line 1315
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getEnvironmentalReverb()Landroid/hardware/audio/effect/EnvironmentalReverb;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1316
    goto :goto_0

    .line 1312
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getDynamicsProcessing()Landroid/hardware/audio/effect/DynamicsProcessing;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1313
    goto :goto_0

    .line 1309
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getDownmix()Landroid/hardware/audio/effect/Downmix;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1310
    goto :goto_0

    .line 1306
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getBassBoost()Landroid/hardware/audio/effect/BassBoost;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1307
    goto :goto_0

    .line 1303
    :pswitch_c
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getAutomaticGainControlV2()Landroid/hardware/audio/effect/AutomaticGainControlV2;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1304
    goto :goto_0

    .line 1300
    :pswitch_d
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getAutomaticGainControlV1()Landroid/hardware/audio/effect/AutomaticGainControlV1;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1301
    goto :goto_0

    .line 1297
    :pswitch_e
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getAcousticEchoCanceler()Landroid/hardware/audio/effect/AcousticEchoCanceler;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1298
    goto :goto_0

    .line 1294
    :pswitch_f
    invoke-virtual {p0}, Landroid/hardware/audio/effect/Parameter$Specific;->getVendorEffect()Landroid/hardware/audio/effect/VendorExtension;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1295
    nop

    .line 1342
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
