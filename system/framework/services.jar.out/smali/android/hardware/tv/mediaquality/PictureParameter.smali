.class public final Landroid/hardware/tv/mediaquality/PictureParameter;
.super Ljava/lang/Object;
.source "PictureParameter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/mediaquality/PictureParameter$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/mediaquality/PictureParameter;",
            ">;"
        }
    .end annotation
.end field

.field public static final LdMode:I = 0x2f

.field public static final activeProfile:I = 0x4f

.field public static final autoPictureQualityEnabled:I = 0x18

.field public static final autoSuperResolutionEnabled:I = 0x19

.field public static final blueStretch:I = 0x14

.field public static final brightness:I = 0x0

.field public static final colorSpace:I = 0x21

.field public static final colorTemperature:I = 0x16

.field public static final colorTemperatureBlueGain:I = 0x27

.field public static final colorTemperatureBlueOffset:I = 0x2a

.field public static final colorTemperatureGreenGain:I = 0x26

.field public static final colorTemperatureGreenOffset:I = 0x29

.field public static final colorTemperatureRedGain:I = 0x25

.field public static final colorTemperatureRedOffset:I = 0x28

.field public static final colorTune:I = 0x15

.field public static final colorTunerBlueGain:I = 0xd

.field public static final colorTunerBlueOffset:I = 0xa

.field public static final colorTunerBrightness:I = 0x5

.field public static final colorTunerGreenGain:I = 0xc

.field public static final colorTunerGreenOffset:I = 0x9

.field public static final colorTunerHue:I = 0x7

.field public static final colorTunerHueBlue:I = 0x3c

.field public static final colorTunerHueCyan:I = 0x3d

.field public static final colorTunerHueFlesh:I = 0x40

.field public static final colorTunerHueGreen:I = 0x3b

.field public static final colorTunerHueMagenta:I = 0x3e

.field public static final colorTunerHueRed:I = 0x3a

.field public static final colorTunerHueYellow:I = 0x3f

.field public static final colorTunerLuminanceBlue:I = 0x4a

.field public static final colorTunerLuminanceCyan:I = 0x4b

.field public static final colorTunerLuminanceFlesh:I = 0x4e

.field public static final colorTunerLuminanceGreen:I = 0x49

.field public static final colorTunerLuminanceMagenta:I = 0x4c

.field public static final colorTunerLuminanceRed:I = 0x48

.field public static final colorTunerLuminanceYellow:I = 0x4d

.field public static final colorTunerRedGain:I = 0xb

.field public static final colorTunerRedOffset:I = 0x8

.field public static final colorTunerSaturation:I = 0x6

.field public static final colorTunerSaturationBlue:I = 0x43

.field public static final colorTunerSaturationCyan:I = 0x44

.field public static final colorTunerSaturationFlesh:I = 0x47

.field public static final colorTunerSaturationGreen:I = 0x42

.field public static final colorTunerSaturationMagenta:I = 0x45

.field public static final colorTunerSaturationRed:I = 0x41

.field public static final colorTunerSaturationYellow:I = 0x46

.field public static final colorTunerSwitch:I = 0x39

.field public static final contrast:I = 0x1

.field public static final cvrr:I = 0x1f

.field public static final deContour:I = 0x11

.field public static final dynamicLumaControl:I = 0x12

.field public static final elevenPointBlue:I = 0x2d

.field public static final elevenPointGreen:I = 0x2c

.field public static final elevenPointRed:I = 0x2b

.field public static final filmMode:I = 0x13

.field public static final fleshTone:I = 0x10

.field public static final gamma:I = 0x24

.field public static final gamutMapping:I = 0x1b

.field public static final globeDimming:I = 0x17

.field public static final hdmiRgbRange:I = 0x20

.field public static final hue:I = 0x4

.field public static final levelRange:I = 0x1a

.field public static final lowBlueLight:I = 0x2e

.field public static final lowLatency:I = 0x1d

.field public static final mpegNoiseReduction:I = 0xf

.field public static final noiseReduction:I = 0xe

.field public static final osdBlueGain:I = 0x32

.field public static final osdBlueOffset:I = 0x35

.field public static final osdContrast:I = 0x38

.field public static final osdGreenGain:I = 0x31

.field public static final osdGreenOffset:I = 0x34

.field public static final osdHue:I = 0x36

.field public static final osdRedGain:I = 0x30

.field public static final osdRedOffset:I = 0x33

.field public static final osdSaturation:I = 0x37

.field public static final panelInitMaxLuminceNits:I = 0x22

.field public static final panelInitMaxLuminceValid:I = 0x23

.field public static final pcMode:I = 0x1c

.field public static final pictureQualityEventType:I = 0x50

.field public static final saturation:I = 0x3

.field public static final sharpness:I = 0x2

.field public static final vrr:I = 0x1e


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1336
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter$1;

    invoke-direct {v0}, Landroid/hardware/tv/mediaquality/PictureParameter$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/mediaquality/PictureParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "_value":F
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    .line 100
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    .line 101
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    .line 109
    iput-object p2, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    .line 110
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->readFromParcel(Landroid/os/Parcel;)V

    .line 105
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/tv/mediaquality/PictureParameter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static LdMode(B)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # B

    .line 824
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private _assertTag(I)V
    .locals 3
    .param p1, "tag"    # I

    .line 2019
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 2022
    return-void

    .line 2020
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_tagString(I)Ljava/lang/String;

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

    .line 2112
    iput p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    .line 2113
    iput-object p2, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    .line 2114
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .locals 3
    .param p1, "_tag"    # I

    .line 2025
    packed-switch p1, :pswitch_data_0

    .line 2108
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

    .line 2106
    :pswitch_0
    const-string/jumbo v0, "pictureQualityEventType"

    return-object v0

    .line 2105
    :pswitch_1
    const-string v0, "activeProfile"

    return-object v0

    .line 2104
    :pswitch_2
    const-string v0, "colorTunerLuminanceFlesh"

    return-object v0

    .line 2103
    :pswitch_3
    const-string v0, "colorTunerLuminanceYellow"

    return-object v0

    .line 2102
    :pswitch_4
    const-string v0, "colorTunerLuminanceMagenta"

    return-object v0

    .line 2101
    :pswitch_5
    const-string v0, "colorTunerLuminanceCyan"

    return-object v0

    .line 2100
    :pswitch_6
    const-string v0, "colorTunerLuminanceBlue"

    return-object v0

    .line 2099
    :pswitch_7
    const-string v0, "colorTunerLuminanceGreen"

    return-object v0

    .line 2098
    :pswitch_8
    const-string v0, "colorTunerLuminanceRed"

    return-object v0

    .line 2097
    :pswitch_9
    const-string v0, "colorTunerSaturationFlesh"

    return-object v0

    .line 2096
    :pswitch_a
    const-string v0, "colorTunerSaturationYellow"

    return-object v0

    .line 2095
    :pswitch_b
    const-string v0, "colorTunerSaturationMagenta"

    return-object v0

    .line 2094
    :pswitch_c
    const-string v0, "colorTunerSaturationCyan"

    return-object v0

    .line 2093
    :pswitch_d
    const-string v0, "colorTunerSaturationBlue"

    return-object v0

    .line 2092
    :pswitch_e
    const-string v0, "colorTunerSaturationGreen"

    return-object v0

    .line 2091
    :pswitch_f
    const-string v0, "colorTunerSaturationRed"

    return-object v0

    .line 2090
    :pswitch_10
    const-string v0, "colorTunerHueFlesh"

    return-object v0

    .line 2089
    :pswitch_11
    const-string v0, "colorTunerHueYellow"

    return-object v0

    .line 2088
    :pswitch_12
    const-string v0, "colorTunerHueMagenta"

    return-object v0

    .line 2087
    :pswitch_13
    const-string v0, "colorTunerHueCyan"

    return-object v0

    .line 2086
    :pswitch_14
    const-string v0, "colorTunerHueBlue"

    return-object v0

    .line 2085
    :pswitch_15
    const-string v0, "colorTunerHueGreen"

    return-object v0

    .line 2084
    :pswitch_16
    const-string v0, "colorTunerHueRed"

    return-object v0

    .line 2083
    :pswitch_17
    const-string v0, "colorTunerSwitch"

    return-object v0

    .line 2082
    :pswitch_18
    const-string/jumbo v0, "osdContrast"

    return-object v0

    .line 2081
    :pswitch_19
    const-string/jumbo v0, "osdSaturation"

    return-object v0

    .line 2080
    :pswitch_1a
    const-string/jumbo v0, "osdHue"

    return-object v0

    .line 2079
    :pswitch_1b
    const-string/jumbo v0, "osdBlueOffset"

    return-object v0

    .line 2078
    :pswitch_1c
    const-string/jumbo v0, "osdGreenOffset"

    return-object v0

    .line 2077
    :pswitch_1d
    const-string/jumbo v0, "osdRedOffset"

    return-object v0

    .line 2076
    :pswitch_1e
    const-string/jumbo v0, "osdBlueGain"

    return-object v0

    .line 2075
    :pswitch_1f
    const-string/jumbo v0, "osdGreenGain"

    return-object v0

    .line 2074
    :pswitch_20
    const-string/jumbo v0, "osdRedGain"

    return-object v0

    .line 2073
    :pswitch_21
    const-string v0, "LdMode"

    return-object v0

    .line 2072
    :pswitch_22
    const-string/jumbo v0, "lowBlueLight"

    return-object v0

    .line 2071
    :pswitch_23
    const-string v0, "elevenPointBlue"

    return-object v0

    .line 2070
    :pswitch_24
    const-string v0, "elevenPointGreen"

    return-object v0

    .line 2069
    :pswitch_25
    const-string v0, "elevenPointRed"

    return-object v0

    .line 2068
    :pswitch_26
    const-string v0, "colorTemperatureBlueOffset"

    return-object v0

    .line 2067
    :pswitch_27
    const-string v0, "colorTemperatureGreenOffset"

    return-object v0

    .line 2066
    :pswitch_28
    const-string v0, "colorTemperatureRedOffset"

    return-object v0

    .line 2065
    :pswitch_29
    const-string v0, "colorTemperatureBlueGain"

    return-object v0

    .line 2064
    :pswitch_2a
    const-string v0, "colorTemperatureGreenGain"

    return-object v0

    .line 2063
    :pswitch_2b
    const-string v0, "colorTemperatureRedGain"

    return-object v0

    .line 2062
    :pswitch_2c
    const-string/jumbo v0, "gamma"

    return-object v0

    .line 2061
    :pswitch_2d
    const-string/jumbo v0, "panelInitMaxLuminceValid"

    return-object v0

    .line 2060
    :pswitch_2e
    const-string/jumbo v0, "panelInitMaxLuminceNits"

    return-object v0

    .line 2059
    :pswitch_2f
    const-string v0, "colorSpace"

    return-object v0

    .line 2058
    :pswitch_30
    const-string/jumbo v0, "hdmiRgbRange"

    return-object v0

    .line 2057
    :pswitch_31
    const-string v0, "cvrr"

    return-object v0

    .line 2056
    :pswitch_32
    const-string/jumbo v0, "vrr"

    return-object v0

    .line 2055
    :pswitch_33
    const-string/jumbo v0, "lowLatency"

    return-object v0

    .line 2054
    :pswitch_34
    const-string/jumbo v0, "pcMode"

    return-object v0

    .line 2053
    :pswitch_35
    const-string/jumbo v0, "gamutMapping"

    return-object v0

    .line 2052
    :pswitch_36
    const-string/jumbo v0, "levelRange"

    return-object v0

    .line 2051
    :pswitch_37
    const-string v0, "autoSuperResolutionEnabled"

    return-object v0

    .line 2050
    :pswitch_38
    const-string v0, "autoPictureQualityEnabled"

    return-object v0

    .line 2049
    :pswitch_39
    const-string/jumbo v0, "globeDimming"

    return-object v0

    .line 2048
    :pswitch_3a
    const-string v0, "colorTemperature"

    return-object v0

    .line 2047
    :pswitch_3b
    const-string v0, "colorTune"

    return-object v0

    .line 2046
    :pswitch_3c
    const-string v0, "blueStretch"

    return-object v0

    .line 2045
    :pswitch_3d
    const-string v0, "filmMode"

    return-object v0

    .line 2044
    :pswitch_3e
    const-string v0, "dynamicLumaControl"

    return-object v0

    .line 2043
    :pswitch_3f
    const-string v0, "deContour"

    return-object v0

    .line 2042
    :pswitch_40
    const-string v0, "fleshTone"

    return-object v0

    .line 2041
    :pswitch_41
    const-string/jumbo v0, "mpegNoiseReduction"

    return-object v0

    .line 2040
    :pswitch_42
    const-string/jumbo v0, "noiseReduction"

    return-object v0

    .line 2039
    :pswitch_43
    const-string v0, "colorTunerBlueGain"

    return-object v0

    .line 2038
    :pswitch_44
    const-string v0, "colorTunerGreenGain"

    return-object v0

    .line 2037
    :pswitch_45
    const-string v0, "colorTunerRedGain"

    return-object v0

    .line 2036
    :pswitch_46
    const-string v0, "colorTunerBlueOffset"

    return-object v0

    .line 2035
    :pswitch_47
    const-string v0, "colorTunerGreenOffset"

    return-object v0

    .line 2034
    :pswitch_48
    const-string v0, "colorTunerRedOffset"

    return-object v0

    .line 2033
    :pswitch_49
    const-string v0, "colorTunerHue"

    return-object v0

    .line 2032
    :pswitch_4a
    const-string v0, "colorTunerSaturation"

    return-object v0

    .line 2031
    :pswitch_4b
    const-string v0, "colorTunerBrightness"

    return-object v0

    .line 2030
    :pswitch_4c
    const-string/jumbo v0, "hue"

    return-object v0

    .line 2029
    :pswitch_4d
    const-string/jumbo v0, "saturation"

    return-object v0

    .line 2028
    :pswitch_4e
    const-string/jumbo v0, "sharpness"

    return-object v0

    .line 2027
    :pswitch_4f
    const-string v0, "contrast"

    return-object v0

    .line 2026
    :pswitch_50
    const-string v0, "brightness"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

.method public static activeProfile(Z)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # Z

    .line 1304
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x4f

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static autoPictureQualityEnabled(Z)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # Z

    .line 479
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x18

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static autoSuperResolutionEnabled(Z)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # Z

    .line 494
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x19

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blueStretch(Z)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # Z

    .line 419
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x14

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static brightness(F)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # F

    .line 119
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorSpace(B)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # B

    .line 614
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x21

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTemperature(B)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # B

    .line 449
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x16

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTemperatureBlueGain(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 704
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x27

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTemperatureBlueOffset(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 749
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTemperatureGreenGain(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 689
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x26

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTemperatureGreenOffset(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 734
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x29

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTemperatureRedGain(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 674
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x25

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTemperatureRedOffset(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 719
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x28

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTune(Z)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # Z

    .line 434
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x15

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerBlueGain(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 314
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerBlueOffset(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 269
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerBrightness(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 194
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerGreenGain(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 299
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerGreenOffset(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 254
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerHue(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 224
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerHueBlue(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 1019
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerHueCyan(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 1034
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerHueFlesh(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 1079
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x40

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerHueGreen(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 1004
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3b

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerHueMagenta(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 1049
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3e

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerHueRed(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 989
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerHueYellow(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 1064
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3f

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerLuminanceBlue(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 1229
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x4a

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerLuminanceCyan(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 1244
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x4b

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerLuminanceFlesh(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 1289
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x4e

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerLuminanceGreen(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 1214
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x49

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerLuminanceMagenta(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 1259
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x4c

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerLuminanceRed(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 1199
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x48

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerLuminanceYellow(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 1274
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x4d

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerRedGain(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 284
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerRedOffset(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 239
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerSaturation(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 209
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerSaturationBlue(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 1124
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x43

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerSaturationCyan(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 1139
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x44

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerSaturationFlesh(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 1184
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x47

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerSaturationGreen(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 1109
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x42

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerSaturationMagenta(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 1154
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x45

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerSaturationRed(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 1094
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x41

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerSaturationYellow(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 1169
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x46

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static colorTunerSwitch(Z)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # Z

    .line 974
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x39

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static contrast(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 134
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static cvrr(Z)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # Z

    .line 584
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static deContour(B)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # B

    .line 374
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x11

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static dynamicLumaControl(B)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # B

    .line 389
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x12

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static elevenPointBlue([I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2
    .param p0, "_value"    # [I

    .line 794
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    const/16 v1, 0x2d

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static elevenPointGreen([I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2
    .param p0, "_value"    # [I

    .line 779
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    const/16 v1, 0x2c

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static elevenPointRed([I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2
    .param p0, "_value"    # [I

    .line 764
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    const/16 v1, 0x2b

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static filmMode(Z)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # Z

    .line 404
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x13

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static fleshTone(B)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # B

    .line 359
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x10

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static gamma(B)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # B

    .line 659
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x24

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static gamutMapping(Z)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # Z

    .line 524
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static globeDimming(Z)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # Z

    .line 464
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x17

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static hdmiRgbRange(B)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # B

    .line 599
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static hue(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 179
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static levelRange(B)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # B

    .line 509
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static lowBlueLight(B)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # B

    .line 809
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static lowLatency(Z)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # Z

    .line 554
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static mpegNoiseReduction(B)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # B

    .line 344
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0xf

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static noiseReduction(B)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # B

    .line 329
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0xe

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static osdBlueGain(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 869
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x32

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static osdBlueOffset(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 914
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static osdContrast(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 959
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x38

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static osdGreenGain(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 854
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x31

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static osdGreenOffset(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 899
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x34

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static osdHue(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 929
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x36

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static osdRedGain(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 839
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x30

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static osdRedOffset(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 884
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x33

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static osdSaturation(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 944
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x37

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static panelInitMaxLuminceNits(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 629
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x22

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static panelInitMaxLuminceValid(Z)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # Z

    .line 644
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x23

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static pcMode(Z)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # Z

    .line 539
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static pictureQualityEventType(B)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # B

    .line 1319
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x50

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static saturation(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 164
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static sharpness(I)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # I

    .line 149
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static vrr(Z)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 3
    .param p0, "_value"    # Z

    .line 569
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 2012
    const/4 v0, 0x0

    .line 2013
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getTag()I

    .line 2015
    return v0
.end method

.method public getActiveProfile()Z
    .locals 1

    .line 1308
    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1309
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getAutoPictureQualityEnabled()Z
    .locals 1

    .line 483
    const/16 v0, 0x18

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 484
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getAutoSuperResolutionEnabled()Z
    .locals 1

    .line 498
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 499
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBlueStretch()Z
    .locals 1

    .line 423
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 424
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBrightness()F
    .locals 1

    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 124
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getColorSpace()B
    .locals 1

    .line 618
    const/16 v0, 0x21

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 619
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getColorTemperature()B
    .locals 1

    .line 453
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 454
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getColorTemperatureBlueGain()I
    .locals 1

    .line 708
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 709
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTemperatureBlueOffset()I
    .locals 1

    .line 753
    const/16 v0, 0x2a

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 754
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTemperatureGreenGain()I
    .locals 1

    .line 693
    const/16 v0, 0x26

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 694
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTemperatureGreenOffset()I
    .locals 1

    .line 738
    const/16 v0, 0x29

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 739
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTemperatureRedGain()I
    .locals 1

    .line 678
    const/16 v0, 0x25

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 679
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTemperatureRedOffset()I
    .locals 1

    .line 723
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 724
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTune()Z
    .locals 1

    .line 438
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 439
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getColorTunerBlueGain()I
    .locals 1

    .line 318
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 319
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTunerBlueOffset()I
    .locals 1

    .line 273
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 274
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTunerBrightness()I
    .locals 1

    .line 198
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 199
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTunerGreenGain()I
    .locals 1

    .line 303
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 304
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTunerGreenOffset()I
    .locals 1

    .line 258
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 259
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTunerHue()I
    .locals 1

    .line 228
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 229
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTunerHueBlue()I
    .locals 1

    .line 1023
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1024
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTunerHueCyan()I
    .locals 1

    .line 1038
    const/16 v0, 0x3d

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1039
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTunerHueFlesh()I
    .locals 1

    .line 1083
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1084
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTunerHueGreen()I
    .locals 1

    .line 1008
    const/16 v0, 0x3b

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1009
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTunerHueMagenta()I
    .locals 1

    .line 1053
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1054
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTunerHueRed()I
    .locals 1

    .line 993
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 994
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTunerHueYellow()I
    .locals 1

    .line 1068
    const/16 v0, 0x3f

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1069
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTunerLuminanceBlue()I
    .locals 1

    .line 1233
    const/16 v0, 0x4a

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1234
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTunerLuminanceCyan()I
    .locals 1

    .line 1248
    const/16 v0, 0x4b

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1249
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTunerLuminanceFlesh()I
    .locals 1

    .line 1293
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1294
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTunerLuminanceGreen()I
    .locals 1

    .line 1218
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1219
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTunerLuminanceMagenta()I
    .locals 1

    .line 1263
    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1264
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTunerLuminanceRed()I
    .locals 1

    .line 1203
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1204
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTunerLuminanceYellow()I
    .locals 1

    .line 1278
    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1279
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTunerRedGain()I
    .locals 1

    .line 288
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 289
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTunerRedOffset()I
    .locals 1

    .line 243
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 244
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTunerSaturation()I
    .locals 1

    .line 213
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 214
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTunerSaturationBlue()I
    .locals 1

    .line 1128
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1129
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTunerSaturationCyan()I
    .locals 1

    .line 1143
    const/16 v0, 0x44

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1144
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTunerSaturationFlesh()I
    .locals 1

    .line 1188
    const/16 v0, 0x47

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1189
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTunerSaturationGreen()I
    .locals 1

    .line 1113
    const/16 v0, 0x42

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1114
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTunerSaturationMagenta()I
    .locals 1

    .line 1158
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1159
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTunerSaturationRed()I
    .locals 1

    .line 1098
    const/16 v0, 0x41

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1099
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTunerSaturationYellow()I
    .locals 1

    .line 1173
    const/16 v0, 0x46

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1174
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColorTunerSwitch()Z
    .locals 1

    .line 978
    const/16 v0, 0x39

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 979
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getContrast()I
    .locals 1

    .line 138
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 139
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCvrr()Z
    .locals 1

    .line 588
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 589
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getDeContour()B
    .locals 1

    .line 378
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 379
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getDynamicLumaControl()B
    .locals 1

    .line 393
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 394
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getElevenPointBlue()[I
    .locals 1

    .line 798
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 799
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public getElevenPointGreen()[I
    .locals 1

    .line 783
    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 784
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public getElevenPointRed()[I
    .locals 1

    .line 768
    const/16 v0, 0x2b

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 769
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public getFilmMode()Z
    .locals 1

    .line 408
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 409
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getFleshTone()B
    .locals 1

    .line 363
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 364
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getGamma()B
    .locals 1

    .line 663
    const/16 v0, 0x24

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 664
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getGamutMapping()Z
    .locals 1

    .line 528
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 529
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getGlobeDimming()Z
    .locals 1

    .line 468
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 469
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getHdmiRgbRange()B
    .locals 1

    .line 603
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 604
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getHue()I
    .locals 1

    .line 183
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 184
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLdMode()B
    .locals 1

    .line 828
    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 829
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getLevelRange()B
    .locals 1

    .line 513
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 514
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getLowBlueLight()B
    .locals 1

    .line 813
    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 814
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getLowLatency()Z
    .locals 1

    .line 558
    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 559
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getMpegNoiseReduction()B
    .locals 1

    .line 348
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 349
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getNoiseReduction()B
    .locals 1

    .line 333
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 334
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getOsdBlueGain()I
    .locals 1

    .line 873
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 874
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getOsdBlueOffset()I
    .locals 1

    .line 918
    const/16 v0, 0x35

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 919
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getOsdContrast()I
    .locals 1

    .line 963
    const/16 v0, 0x38

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 964
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getOsdGreenGain()I
    .locals 1

    .line 858
    const/16 v0, 0x31

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 859
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getOsdGreenOffset()I
    .locals 1

    .line 903
    const/16 v0, 0x34

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 904
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getOsdHue()I
    .locals 1

    .line 933
    const/16 v0, 0x36

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 934
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getOsdRedGain()I
    .locals 1

    .line 843
    const/16 v0, 0x30

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 844
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getOsdRedOffset()I
    .locals 1

    .line 888
    const/16 v0, 0x33

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 889
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getOsdSaturation()I
    .locals 1

    .line 948
    const/16 v0, 0x37

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 949
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPanelInitMaxLuminceNits()I
    .locals 1

    .line 633
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 634
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPanelInitMaxLuminceValid()Z
    .locals 1

    .line 648
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 649
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPcMode()Z
    .locals 1

    .line 543
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 544
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPictureQualityEventType()B
    .locals 1

    .line 1323
    const/16 v0, 0x50

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 1324
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getSaturation()I
    .locals 1

    .line 168
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 169
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSharpness()I
    .locals 1

    .line 153
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 154
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 1333
    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 113
    iget v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    return v0
.end method

.method public getVrr()Z
    .locals 1

    .line 573
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_assertTag(I)V

    .line 574
    iget-object v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 1599
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1600
    .local v0, "_aidl_tag":I
    const/16 v1, 0xb

    const-class v2, [I

    packed-switch v0, :pswitch_data_0

    .line 2007
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

    .line 2003
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 2004
    .local v1, "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 2005
    return-void

    .line 1998
    .end local v1    # "_aidl_value":B
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1999
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 2000
    return-void

    .line 1993
    .end local v1    # "_aidl_value":Z
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1994
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1995
    return-void

    .line 1988
    .end local v1    # "_aidl_value":I
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1989
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1990
    return-void

    .line 1983
    .end local v1    # "_aidl_value":I
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1984
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1985
    return-void

    .line 1978
    .end local v1    # "_aidl_value":I
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1979
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1980
    return-void

    .line 1973
    .end local v1    # "_aidl_value":I
    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1974
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1975
    return-void

    .line 1968
    .end local v1    # "_aidl_value":I
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1969
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1970
    return-void

    .line 1963
    .end local v1    # "_aidl_value":I
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1964
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1965
    return-void

    .line 1958
    .end local v1    # "_aidl_value":I
    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1959
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1960
    return-void

    .line 1953
    .end local v1    # "_aidl_value":I
    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1954
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1955
    return-void

    .line 1948
    .end local v1    # "_aidl_value":I
    :pswitch_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1949
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1950
    return-void

    .line 1943
    .end local v1    # "_aidl_value":I
    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1944
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1945
    return-void

    .line 1938
    .end local v1    # "_aidl_value":I
    :pswitch_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1939
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1940
    return-void

    .line 1933
    .end local v1    # "_aidl_value":I
    :pswitch_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1934
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1935
    return-void

    .line 1928
    .end local v1    # "_aidl_value":I
    :pswitch_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1929
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1930
    return-void

    .line 1923
    .end local v1    # "_aidl_value":I
    :pswitch_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1924
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1925
    return-void

    .line 1918
    .end local v1    # "_aidl_value":I
    :pswitch_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1919
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1920
    return-void

    .line 1913
    .end local v1    # "_aidl_value":I
    :pswitch_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1914
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1915
    return-void

    .line 1908
    .end local v1    # "_aidl_value":I
    :pswitch_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1909
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1910
    return-void

    .line 1903
    .end local v1    # "_aidl_value":I
    :pswitch_14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1904
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1905
    return-void

    .line 1898
    .end local v1    # "_aidl_value":I
    :pswitch_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1899
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1900
    return-void

    .line 1893
    .end local v1    # "_aidl_value":I
    :pswitch_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1894
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1895
    return-void

    .line 1888
    .end local v1    # "_aidl_value":I
    :pswitch_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1889
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1890
    return-void

    .line 1883
    .end local v1    # "_aidl_value":Z
    :pswitch_18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1884
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1885
    return-void

    .line 1878
    .end local v1    # "_aidl_value":I
    :pswitch_19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1879
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1880
    return-void

    .line 1873
    .end local v1    # "_aidl_value":I
    :pswitch_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1874
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1875
    return-void

    .line 1868
    .end local v1    # "_aidl_value":I
    :pswitch_1b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1869
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1870
    return-void

    .line 1863
    .end local v1    # "_aidl_value":I
    :pswitch_1c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1864
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1865
    return-void

    .line 1858
    .end local v1    # "_aidl_value":I
    :pswitch_1d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1859
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1860
    return-void

    .line 1853
    .end local v1    # "_aidl_value":I
    :pswitch_1e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1854
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1855
    return-void

    .line 1848
    .end local v1    # "_aidl_value":I
    :pswitch_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1849
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1850
    return-void

    .line 1843
    .end local v1    # "_aidl_value":I
    :pswitch_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1844
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1845
    return-void

    .line 1838
    .end local v1    # "_aidl_value":I
    :pswitch_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 1839
    .local v1, "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1840
    return-void

    .line 1833
    .end local v1    # "_aidl_value":B
    :pswitch_22
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 1834
    .restart local v1    # "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1835
    return-void

    .line 1828
    .end local v1    # "_aidl_value":B
    :pswitch_23
    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 1829
    .local v1, "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1830
    return-void

    .line 1823
    .end local v1    # "_aidl_value":[I
    :pswitch_24
    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 1824
    .restart local v1    # "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1825
    return-void

    .line 1818
    .end local v1    # "_aidl_value":[I
    :pswitch_25
    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 1819
    .restart local v1    # "_aidl_value":[I
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1820
    return-void

    .line 1813
    .end local v1    # "_aidl_value":[I
    :pswitch_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1814
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1815
    return-void

    .line 1808
    .end local v1    # "_aidl_value":I
    :pswitch_27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1809
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1810
    return-void

    .line 1803
    .end local v1    # "_aidl_value":I
    :pswitch_28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1804
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1805
    return-void

    .line 1798
    .end local v1    # "_aidl_value":I
    :pswitch_29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1799
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1800
    return-void

    .line 1793
    .end local v1    # "_aidl_value":I
    :pswitch_2a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1794
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1795
    return-void

    .line 1788
    .end local v1    # "_aidl_value":I
    :pswitch_2b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1789
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1790
    return-void

    .line 1783
    .end local v1    # "_aidl_value":I
    :pswitch_2c
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 1784
    .local v1, "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1785
    return-void

    .line 1778
    .end local v1    # "_aidl_value":B
    :pswitch_2d
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1779
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1780
    return-void

    .line 1773
    .end local v1    # "_aidl_value":Z
    :pswitch_2e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1774
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1775
    return-void

    .line 1768
    .end local v1    # "_aidl_value":I
    :pswitch_2f
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 1769
    .local v1, "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1770
    return-void

    .line 1763
    .end local v1    # "_aidl_value":B
    :pswitch_30
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 1764
    .restart local v1    # "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1765
    return-void

    .line 1758
    .end local v1    # "_aidl_value":B
    :pswitch_31
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1759
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1760
    return-void

    .line 1753
    .end local v1    # "_aidl_value":Z
    :pswitch_32
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1754
    .restart local v1    # "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1755
    return-void

    .line 1748
    .end local v1    # "_aidl_value":Z
    :pswitch_33
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1749
    .restart local v1    # "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1750
    return-void

    .line 1743
    .end local v1    # "_aidl_value":Z
    :pswitch_34
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1744
    .restart local v1    # "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1745
    return-void

    .line 1738
    .end local v1    # "_aidl_value":Z
    :pswitch_35
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1739
    .restart local v1    # "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1740
    return-void

    .line 1733
    .end local v1    # "_aidl_value":Z
    :pswitch_36
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 1734
    .local v1, "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1735
    return-void

    .line 1728
    .end local v1    # "_aidl_value":B
    :pswitch_37
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1729
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1730
    return-void

    .line 1723
    .end local v1    # "_aidl_value":Z
    :pswitch_38
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1724
    .restart local v1    # "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1725
    return-void

    .line 1718
    .end local v1    # "_aidl_value":Z
    :pswitch_39
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1719
    .restart local v1    # "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1720
    return-void

    .line 1713
    .end local v1    # "_aidl_value":Z
    :pswitch_3a
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 1714
    .local v1, "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1715
    return-void

    .line 1708
    .end local v1    # "_aidl_value":B
    :pswitch_3b
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1709
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1710
    return-void

    .line 1703
    .end local v1    # "_aidl_value":Z
    :pswitch_3c
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1704
    .restart local v1    # "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1705
    return-void

    .line 1698
    .end local v1    # "_aidl_value":Z
    :pswitch_3d
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1699
    .restart local v1    # "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1700
    return-void

    .line 1693
    .end local v1    # "_aidl_value":Z
    :pswitch_3e
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 1694
    .local v1, "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1695
    return-void

    .line 1688
    .end local v1    # "_aidl_value":B
    :pswitch_3f
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 1689
    .restart local v1    # "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1690
    return-void

    .line 1683
    .end local v1    # "_aidl_value":B
    :pswitch_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 1684
    .restart local v1    # "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1685
    return-void

    .line 1678
    .end local v1    # "_aidl_value":B
    :pswitch_41
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 1679
    .restart local v1    # "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1680
    return-void

    .line 1673
    .end local v1    # "_aidl_value":B
    :pswitch_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 1674
    .restart local v1    # "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1675
    return-void

    .line 1668
    .end local v1    # "_aidl_value":B
    :pswitch_43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1669
    .local v1, "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1670
    return-void

    .line 1663
    .end local v1    # "_aidl_value":I
    :pswitch_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1664
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1665
    return-void

    .line 1658
    .end local v1    # "_aidl_value":I
    :pswitch_45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1659
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1660
    return-void

    .line 1653
    .end local v1    # "_aidl_value":I
    :pswitch_46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1654
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1655
    return-void

    .line 1648
    .end local v1    # "_aidl_value":I
    :pswitch_47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1649
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1650
    return-void

    .line 1643
    .end local v1    # "_aidl_value":I
    :pswitch_48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1644
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1645
    return-void

    .line 1638
    .end local v1    # "_aidl_value":I
    :pswitch_49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1639
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1640
    return-void

    .line 1633
    .end local v1    # "_aidl_value":I
    :pswitch_4a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1634
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1635
    return-void

    .line 1628
    .end local v1    # "_aidl_value":I
    :pswitch_4b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1629
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1630
    return-void

    .line 1623
    .end local v1    # "_aidl_value":I
    :pswitch_4c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1624
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1625
    return-void

    .line 1618
    .end local v1    # "_aidl_value":I
    :pswitch_4d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1619
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1620
    return-void

    .line 1613
    .end local v1    # "_aidl_value":I
    :pswitch_4e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1614
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1615
    return-void

    .line 1608
    .end local v1    # "_aidl_value":I
    :pswitch_4f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1609
    .restart local v1    # "_aidl_value":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1610
    return-void

    .line 1603
    .end local v1    # "_aidl_value":I
    :pswitch_50
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 1604
    .local v1, "_aidl_value":F
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1605
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

    .line 1313
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x4f

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1314
    return-void
.end method

.method public setAutoPictureQualityEnabled(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 488
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x18

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 489
    return-void
.end method

.method public setAutoSuperResolutionEnabled(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 503
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x19

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 504
    return-void
.end method

.method public setBlueStretch(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 428
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x14

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 429
    return-void
.end method

.method public setBrightness(F)V
    .locals 2
    .param p1, "_value"    # F

    .line 128
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 129
    return-void
.end method

.method public setColorSpace(B)V
    .locals 2
    .param p1, "_value"    # B

    .line 623
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/16 v1, 0x21

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 624
    return-void
.end method

.method public setColorTemperature(B)V
    .locals 2
    .param p1, "_value"    # B

    .line 458
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/16 v1, 0x16

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 459
    return-void
.end method

.method public setColorTemperatureBlueGain(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 713
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x27

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 714
    return-void
.end method

.method public setColorTemperatureBlueOffset(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 758
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 759
    return-void
.end method

.method public setColorTemperatureGreenGain(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 698
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x26

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 699
    return-void
.end method

.method public setColorTemperatureGreenOffset(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 743
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x29

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 744
    return-void
.end method

.method public setColorTemperatureRedGain(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 683
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x25

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 684
    return-void
.end method

.method public setColorTemperatureRedOffset(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 728
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x28

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 729
    return-void
.end method

.method public setColorTune(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 443
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x15

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 444
    return-void
.end method

.method public setColorTunerBlueGain(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 323
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xd

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 324
    return-void
.end method

.method public setColorTunerBlueOffset(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 278
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 279
    return-void
.end method

.method public setColorTunerBrightness(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 203
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 204
    return-void
.end method

.method public setColorTunerGreenGain(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 308
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xc

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 309
    return-void
.end method

.method public setColorTunerGreenOffset(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 263
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x9

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 264
    return-void
.end method

.method public setColorTunerHue(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 233
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x7

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 234
    return-void
.end method

.method public setColorTunerHueBlue(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 1028
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1029
    return-void
.end method

.method public setColorTunerHueCyan(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 1043
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1044
    return-void
.end method

.method public setColorTunerHueFlesh(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 1088
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x40

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1089
    return-void
.end method

.method public setColorTunerHueGreen(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 1013
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1014
    return-void
.end method

.method public setColorTunerHueMagenta(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 1058
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1059
    return-void
.end method

.method public setColorTunerHueRed(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 998
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 999
    return-void
.end method

.method public setColorTunerHueYellow(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 1073
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1074
    return-void
.end method

.method public setColorTunerLuminanceBlue(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 1238
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x4a

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1239
    return-void
.end method

.method public setColorTunerLuminanceCyan(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 1253
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x4b

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1254
    return-void
.end method

.method public setColorTunerLuminanceFlesh(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 1298
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x4e

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1299
    return-void
.end method

.method public setColorTunerLuminanceGreen(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 1223
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x49

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1224
    return-void
.end method

.method public setColorTunerLuminanceMagenta(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 1268
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x4c

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1269
    return-void
.end method

.method public setColorTunerLuminanceRed(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 1208
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x48

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1209
    return-void
.end method

.method public setColorTunerLuminanceYellow(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 1283
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x4d

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1284
    return-void
.end method

.method public setColorTunerRedGain(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 293
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 294
    return-void
.end method

.method public setColorTunerRedOffset(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 248
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 249
    return-void
.end method

.method public setColorTunerSaturation(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 218
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 219
    return-void
.end method

.method public setColorTunerSaturationBlue(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 1133
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x43

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1134
    return-void
.end method

.method public setColorTunerSaturationCyan(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 1148
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x44

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1149
    return-void
.end method

.method public setColorTunerSaturationFlesh(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 1193
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x47

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1194
    return-void
.end method

.method public setColorTunerSaturationGreen(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 1118
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x42

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1119
    return-void
.end method

.method public setColorTunerSaturationMagenta(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 1163
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x45

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1164
    return-void
.end method

.method public setColorTunerSaturationRed(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 1103
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x41

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1104
    return-void
.end method

.method public setColorTunerSaturationYellow(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 1178
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x46

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1179
    return-void
.end method

.method public setColorTunerSwitch(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 983
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x39

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 984
    return-void
.end method

.method public setContrast(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 144
    return-void
.end method

.method public setCvrr(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 593
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 594
    return-void
.end method

.method public setDeContour(B)V
    .locals 2
    .param p1, "_value"    # B

    .line 383
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/16 v1, 0x11

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 384
    return-void
.end method

.method public setDynamicLumaControl(B)V
    .locals 2
    .param p1, "_value"    # B

    .line 398
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/16 v1, 0x12

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 399
    return-void
.end method

.method public setElevenPointBlue([I)V
    .locals 1
    .param p1, "_value"    # [I

    .line 803
    const/16 v0, 0x2d

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 804
    return-void
.end method

.method public setElevenPointGreen([I)V
    .locals 1
    .param p1, "_value"    # [I

    .line 788
    const/16 v0, 0x2c

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 789
    return-void
.end method

.method public setElevenPointRed([I)V
    .locals 1
    .param p1, "_value"    # [I

    .line 773
    const/16 v0, 0x2b

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 774
    return-void
.end method

.method public setFilmMode(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 413
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x13

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 414
    return-void
.end method

.method public setFleshTone(B)V
    .locals 2
    .param p1, "_value"    # B

    .line 368
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/16 v1, 0x10

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 369
    return-void
.end method

.method public setGamma(B)V
    .locals 2
    .param p1, "_value"    # B

    .line 668
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/16 v1, 0x24

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 669
    return-void
.end method

.method public setGamutMapping(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 533
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 534
    return-void
.end method

.method public setGlobeDimming(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 473
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x17

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 474
    return-void
.end method

.method public setHdmiRgbRange(B)V
    .locals 2
    .param p1, "_value"    # B

    .line 608
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/16 v1, 0x20

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 609
    return-void
.end method

.method public setHue(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 188
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 189
    return-void
.end method

.method public setLdMode(B)V
    .locals 2
    .param p1, "_value"    # B

    .line 833
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 834
    return-void
.end method

.method public setLevelRange(B)V
    .locals 2
    .param p1, "_value"    # B

    .line 518
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 519
    return-void
.end method

.method public setLowBlueLight(B)V
    .locals 2
    .param p1, "_value"    # B

    .line 818
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 819
    return-void
.end method

.method public setLowLatency(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 563
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 564
    return-void
.end method

.method public setMpegNoiseReduction(B)V
    .locals 2
    .param p1, "_value"    # B

    .line 353
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/16 v1, 0xf

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 354
    return-void
.end method

.method public setNoiseReduction(B)V
    .locals 2
    .param p1, "_value"    # B

    .line 338
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/16 v1, 0xe

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 339
    return-void
.end method

.method public setOsdBlueGain(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 878
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x32

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 879
    return-void
.end method

.method public setOsdBlueOffset(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 923
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x35

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 924
    return-void
.end method

.method public setOsdContrast(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 968
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x38

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 969
    return-void
.end method

.method public setOsdGreenGain(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 863
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x31

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 864
    return-void
.end method

.method public setOsdGreenOffset(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 908
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x34

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 909
    return-void
.end method

.method public setOsdHue(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 938
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x36

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 939
    return-void
.end method

.method public setOsdRedGain(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 848
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x30

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 849
    return-void
.end method

.method public setOsdRedOffset(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 893
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x33

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 894
    return-void
.end method

.method public setOsdSaturation(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 953
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x37

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 954
    return-void
.end method

.method public setPanelInitMaxLuminceNits(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 638
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x22

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 639
    return-void
.end method

.method public setPanelInitMaxLuminceValid(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 653
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x23

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 654
    return-void
.end method

.method public setPcMode(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 548
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 549
    return-void
.end method

.method public setPictureQualityEventType(B)V
    .locals 2
    .param p1, "_value"    # B

    .line 1328
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/16 v1, 0x50

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 1329
    return-void
.end method

.method public setSaturation(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 173
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 174
    return-void
.end method

.method public setSharpness(I)V
    .locals 2
    .param p1, "_value"    # I

    .line 158
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 159
    return-void
.end method

.method public setVrr(Z)V
    .locals 2
    .param p1, "_value"    # Z

    .line 578
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/mediaquality/PictureParameter;->_set(ILjava/lang/Object;)V

    .line 579
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 1349
    iget v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1350
    iget v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    const/16 v1, 0xb

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1592
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getPictureQualityEventType()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto/16 :goto_0

    .line 1589
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getActiveProfile()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1590
    goto/16 :goto_0

    .line 1586
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerLuminanceFlesh()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1587
    goto/16 :goto_0

    .line 1583
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerLuminanceYellow()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1584
    goto/16 :goto_0

    .line 1580
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerLuminanceMagenta()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1581
    goto/16 :goto_0

    .line 1577
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerLuminanceCyan()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1578
    goto/16 :goto_0

    .line 1574
    :pswitch_6
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerLuminanceBlue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1575
    goto/16 :goto_0

    .line 1571
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerLuminanceGreen()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1572
    goto/16 :goto_0

    .line 1568
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerLuminanceRed()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1569
    goto/16 :goto_0

    .line 1565
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturationFlesh()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1566
    goto/16 :goto_0

    .line 1562
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturationYellow()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1563
    goto/16 :goto_0

    .line 1559
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturationMagenta()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1560
    goto/16 :goto_0

    .line 1556
    :pswitch_c
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturationCyan()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1557
    goto/16 :goto_0

    .line 1553
    :pswitch_d
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturationBlue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1554
    goto/16 :goto_0

    .line 1550
    :pswitch_e
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturationGreen()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1551
    goto/16 :goto_0

    .line 1547
    :pswitch_f
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturationRed()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1548
    goto/16 :goto_0

    .line 1544
    :pswitch_10
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHueFlesh()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1545
    goto/16 :goto_0

    .line 1541
    :pswitch_11
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHueYellow()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1542
    goto/16 :goto_0

    .line 1538
    :pswitch_12
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHueMagenta()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1539
    goto/16 :goto_0

    .line 1535
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHueCyan()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1536
    goto/16 :goto_0

    .line 1532
    :pswitch_14
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHueBlue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1533
    goto/16 :goto_0

    .line 1529
    :pswitch_15
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHueGreen()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1530
    goto/16 :goto_0

    .line 1526
    :pswitch_16
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHueRed()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1527
    goto/16 :goto_0

    .line 1523
    :pswitch_17
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSwitch()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1524
    goto/16 :goto_0

    .line 1520
    :pswitch_18
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdContrast()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1521
    goto/16 :goto_0

    .line 1517
    :pswitch_19
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdSaturation()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1518
    goto/16 :goto_0

    .line 1514
    :pswitch_1a
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdHue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1515
    goto/16 :goto_0

    .line 1511
    :pswitch_1b
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdBlueOffset()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1512
    goto/16 :goto_0

    .line 1508
    :pswitch_1c
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdGreenOffset()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1509
    goto/16 :goto_0

    .line 1505
    :pswitch_1d
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdRedOffset()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1506
    goto/16 :goto_0

    .line 1502
    :pswitch_1e
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdBlueGain()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1503
    goto/16 :goto_0

    .line 1499
    :pswitch_1f
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdGreenGain()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1500
    goto/16 :goto_0

    .line 1496
    :pswitch_20
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdRedGain()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1497
    goto/16 :goto_0

    .line 1493
    :pswitch_21
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getLdMode()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1494
    goto/16 :goto_0

    .line 1490
    :pswitch_22
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getLowBlueLight()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1491
    goto/16 :goto_0

    .line 1487
    :pswitch_23
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getElevenPointBlue()[I

    move-result-object v0

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 1488
    goto/16 :goto_0

    .line 1484
    :pswitch_24
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getElevenPointGreen()[I

    move-result-object v0

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 1485
    goto/16 :goto_0

    .line 1481
    :pswitch_25
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getElevenPointRed()[I

    move-result-object v0

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 1482
    goto/16 :goto_0

    .line 1478
    :pswitch_26
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTemperatureBlueOffset()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1479
    goto/16 :goto_0

    .line 1475
    :pswitch_27
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTemperatureGreenOffset()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1476
    goto/16 :goto_0

    .line 1472
    :pswitch_28
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTemperatureRedOffset()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1473
    goto/16 :goto_0

    .line 1469
    :pswitch_29
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTemperatureBlueGain()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1470
    goto/16 :goto_0

    .line 1466
    :pswitch_2a
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTemperatureGreenGain()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1467
    goto/16 :goto_0

    .line 1463
    :pswitch_2b
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTemperatureRedGain()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1464
    goto/16 :goto_0

    .line 1460
    :pswitch_2c
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getGamma()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1461
    goto/16 :goto_0

    .line 1457
    :pswitch_2d
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getPanelInitMaxLuminceValid()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1458
    goto/16 :goto_0

    .line 1454
    :pswitch_2e
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getPanelInitMaxLuminceNits()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1455
    goto/16 :goto_0

    .line 1451
    :pswitch_2f
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorSpace()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1452
    goto/16 :goto_0

    .line 1448
    :pswitch_30
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getHdmiRgbRange()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1449
    goto/16 :goto_0

    .line 1445
    :pswitch_31
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getCvrr()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1446
    goto/16 :goto_0

    .line 1442
    :pswitch_32
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getVrr()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1443
    goto/16 :goto_0

    .line 1439
    :pswitch_33
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getLowLatency()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1440
    goto/16 :goto_0

    .line 1436
    :pswitch_34
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getPcMode()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1437
    goto/16 :goto_0

    .line 1433
    :pswitch_35
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getGamutMapping()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1434
    goto/16 :goto_0

    .line 1430
    :pswitch_36
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getLevelRange()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1431
    goto/16 :goto_0

    .line 1427
    :pswitch_37
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getAutoSuperResolutionEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1428
    goto/16 :goto_0

    .line 1424
    :pswitch_38
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getAutoPictureQualityEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1425
    goto/16 :goto_0

    .line 1421
    :pswitch_39
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getGlobeDimming()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1422
    goto/16 :goto_0

    .line 1418
    :pswitch_3a
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTemperature()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1419
    goto/16 :goto_0

    .line 1415
    :pswitch_3b
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTune()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1416
    goto/16 :goto_0

    .line 1412
    :pswitch_3c
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getBlueStretch()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1413
    goto/16 :goto_0

    .line 1409
    :pswitch_3d
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getFilmMode()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1410
    goto/16 :goto_0

    .line 1406
    :pswitch_3e
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getDynamicLumaControl()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1407
    goto/16 :goto_0

    .line 1403
    :pswitch_3f
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getDeContour()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1404
    goto/16 :goto_0

    .line 1400
    :pswitch_40
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getFleshTone()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1401
    goto/16 :goto_0

    .line 1397
    :pswitch_41
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getMpegNoiseReduction()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1398
    goto/16 :goto_0

    .line 1394
    :pswitch_42
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getNoiseReduction()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1395
    goto/16 :goto_0

    .line 1391
    :pswitch_43
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerBlueGain()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1392
    goto/16 :goto_0

    .line 1388
    :pswitch_44
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerGreenGain()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1389
    goto :goto_0

    .line 1385
    :pswitch_45
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerRedGain()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1386
    goto :goto_0

    .line 1382
    :pswitch_46
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerBlueOffset()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1383
    goto :goto_0

    .line 1379
    :pswitch_47
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerGreenOffset()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1380
    goto :goto_0

    .line 1376
    :pswitch_48
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerRedOffset()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1377
    goto :goto_0

    .line 1373
    :pswitch_49
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1374
    goto :goto_0

    .line 1370
    :pswitch_4a
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturation()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1371
    goto :goto_0

    .line 1367
    :pswitch_4b
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerBrightness()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1368
    goto :goto_0

    .line 1364
    :pswitch_4c
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getHue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1365
    goto :goto_0

    .line 1361
    :pswitch_4d
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getSaturation()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1362
    goto :goto_0

    .line 1358
    :pswitch_4e
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getSharpness()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1359
    goto :goto_0

    .line 1355
    :pswitch_4f
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getContrast()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1356
    goto :goto_0

    .line 1352
    :pswitch_50
    invoke-virtual {p0}, Landroid/hardware/tv/mediaquality/PictureParameter;->getBrightness()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1353
    nop

    .line 1595
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
