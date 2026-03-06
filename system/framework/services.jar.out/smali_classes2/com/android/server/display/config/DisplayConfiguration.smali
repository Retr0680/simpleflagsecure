.class public Lcom/android/server/display/config/DisplayConfiguration;
.super Ljava/lang/Object;
.source "DisplayConfiguration.java"


# instance fields
.field private ambientBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

.field private ambientBrightnessChangeThresholdsIdle:Lcom/android/server/display/config/Thresholds;

.field private ambientLightHorizonLong:Ljava/math/BigInteger;

.field private ambientLightHorizonShort:Ljava/math/BigInteger;

.field private autoBrightness:Lcom/android/server/display/config/AutoBrightness;

.field private defaultDozeBrightness:Ljava/math/BigDecimal;

.field private densityMapping:Lcom/android/server/display/config/DensityMapping;

.field private displayBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

.field private displayBrightnessChangeThresholdsIdle:Lcom/android/server/display/config/Thresholds;

.field private dozeBrightnessSensorValueToBrightness:Lcom/android/server/display/config/FloatArray;

.field private evenDimmer:Lcom/android/server/display/config/EvenDimmerMode;

.field private hdrBrightnessConfig:Lcom/android/server/display/config/HdrBrightnessConfig;

.field private highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

.field private idleScreenRefreshRateTimeout:Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

.field private lightSensor:Lcom/android/server/display/config/SensorDetails;

.field private luxThrottling:Lcom/android/server/display/config/LuxThrottling;

.field private name:Ljava/lang/String;

.field private powerThrottlingConfig:Lcom/android/server/display/config/PowerThrottlingConfig;

.field private proxSensor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/config/SensorDetails;",
            ">;"
        }
    .end annotation
.end field

.field private quirks:Lcom/android/server/display/config/DisplayQuirks;

.field private refreshRate:Lcom/android/server/display/config/RefreshRateConfigs;

.field private screenBrightnessCapForWearBedtimeMode:Ljava/math/BigDecimal;

.field private screenBrightnessDefault:Ljava/math/BigDecimal;

.field private screenBrightnessMap:Lcom/android/server/display/config/NitsMap;

.field private screenBrightnessRampDecreaseMaxIdleMillis:Ljava/math/BigInteger;

.field private screenBrightnessRampDecreaseMaxMillis:Ljava/math/BigInteger;

.field private screenBrightnessRampFastDecrease:Ljava/math/BigDecimal;

.field private screenBrightnessRampFastIncrease:Ljava/math/BigDecimal;

.field private screenBrightnessRampIncreaseMaxIdleMillis:Ljava/math/BigInteger;

.field private screenBrightnessRampIncreaseMaxMillis:Ljava/math/BigInteger;

.field private screenBrightnessRampSlowDecrease:Ljava/math/BigDecimal;

.field private screenBrightnessRampSlowDecreaseIdle:Ljava/math/BigDecimal;

.field private screenBrightnessRampSlowIncrease:Ljava/math/BigDecimal;

.field private screenBrightnessRampSlowIncreaseIdle:Ljava/math/BigDecimal;

.field private screenOffBrightnessSensor:Lcom/android/server/display/config/SensorDetails;

.field private screenOffBrightnessSensorValueToLux:Lcom/android/server/display/config/IntegerArray;

.field private supportsVrr:Ljava/lang/Boolean;

.field private tempSensor:Lcom/android/server/display/config/SensorDetails;

.field private thermalThrottling:Lcom/android/server/display/config/ThermalThrottling;

.field private usiVersion:Lcom/android/server/display/config/UsiVersion;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/DisplayConfiguration;
    .locals 7
    .param p0, "_parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 641
    new-instance v0, Lcom/android/server/display/config/DisplayConfiguration;

    invoke-direct {v0}, Lcom/android/server/display/config/DisplayConfiguration;-><init>()V

    .line 642
    .local v0, "_instance":Lcom/android/server/display/config/DisplayConfiguration;
    const/4 v1, 0x0

    .line 643
    .local v1, "_raw":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 645
    .local v2, "outerDepth":I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_29

    if-eq v4, v6, :cond_29

    .line 647
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    goto :goto_0

    .line 648
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 649
    .local v3, "_tagName":Ljava/lang/String;
    const-string/jumbo v5, "name"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 650
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 651
    move-object v5, v1

    .line 652
    .local v5, "_value":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setName(Ljava/lang/String;)V

    .line 653
    .end local v5    # "_value":Ljava/lang/String;
    goto/16 :goto_1

    :cond_1
    const-string v5, "densityMapping"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 654
    invoke-static {p0}, Lcom/android/server/display/config/DensityMapping;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/DensityMapping;

    move-result-object v5

    .line 655
    .local v5, "_value":Lcom/android/server/display/config/DensityMapping;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setDensityMapping(Lcom/android/server/display/config/DensityMapping;)V

    .line 656
    .end local v5    # "_value":Lcom/android/server/display/config/DensityMapping;
    goto/16 :goto_1

    :cond_2
    const-string/jumbo v5, "screenBrightnessMap"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 657
    invoke-static {p0}, Lcom/android/server/display/config/NitsMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NitsMap;

    move-result-object v5

    .line 658
    .local v5, "_value":Lcom/android/server/display/config/NitsMap;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessMap(Lcom/android/server/display/config/NitsMap;)V

    .line 659
    .end local v5    # "_value":Lcom/android/server/display/config/NitsMap;
    goto/16 :goto_1

    :cond_3
    const-string/jumbo v5, "screenBrightnessDefault"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 660
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 661
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 662
    .local v5, "_value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessDefault(Ljava/math/BigDecimal;)V

    .line 663
    .end local v5    # "_value":Ljava/math/BigDecimal;
    goto/16 :goto_1

    :cond_4
    const-string/jumbo v5, "thermalThrottling"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 664
    invoke-static {p0}, Lcom/android/server/display/config/ThermalThrottling;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/ThermalThrottling;

    move-result-object v5

    .line 665
    .local v5, "_value":Lcom/android/server/display/config/ThermalThrottling;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setThermalThrottling(Lcom/android/server/display/config/ThermalThrottling;)V

    .line 666
    .end local v5    # "_value":Lcom/android/server/display/config/ThermalThrottling;
    goto/16 :goto_1

    :cond_5
    const-string/jumbo v5, "powerThrottlingConfig"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 667
    invoke-static {p0}, Lcom/android/server/display/config/PowerThrottlingConfig;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/PowerThrottlingConfig;

    move-result-object v5

    .line 668
    .local v5, "_value":Lcom/android/server/display/config/PowerThrottlingConfig;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setPowerThrottlingConfig(Lcom/android/server/display/config/PowerThrottlingConfig;)V

    .line 669
    .end local v5    # "_value":Lcom/android/server/display/config/PowerThrottlingConfig;
    goto/16 :goto_1

    :cond_6
    const-string/jumbo v5, "luxThrottling"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 670
    invoke-static {p0}, Lcom/android/server/display/config/LuxThrottling;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/LuxThrottling;

    move-result-object v5

    .line 671
    .local v5, "_value":Lcom/android/server/display/config/LuxThrottling;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setLuxThrottling(Lcom/android/server/display/config/LuxThrottling;)V

    .line 672
    .end local v5    # "_value":Lcom/android/server/display/config/LuxThrottling;
    goto/16 :goto_1

    :cond_7
    const-string/jumbo v5, "highBrightnessMode"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 673
    invoke-static {p0}, Lcom/android/server/display/config/HighBrightnessMode;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/HighBrightnessMode;

    move-result-object v5

    .line 674
    .local v5, "_value":Lcom/android/server/display/config/HighBrightnessMode;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setHighBrightnessMode(Lcom/android/server/display/config/HighBrightnessMode;)V

    .line 675
    .end local v5    # "_value":Lcom/android/server/display/config/HighBrightnessMode;
    goto/16 :goto_1

    :cond_8
    const-string/jumbo v5, "hdrBrightnessConfig"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 676
    invoke-static {p0}, Lcom/android/server/display/config/HdrBrightnessConfig;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/HdrBrightnessConfig;

    move-result-object v5

    .line 677
    .local v5, "_value":Lcom/android/server/display/config/HdrBrightnessConfig;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setHdrBrightnessConfig(Lcom/android/server/display/config/HdrBrightnessConfig;)V

    .line 678
    .end local v5    # "_value":Lcom/android/server/display/config/HdrBrightnessConfig;
    goto/16 :goto_1

    :cond_9
    const-string/jumbo v5, "quirks"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 679
    invoke-static {p0}, Lcom/android/server/display/config/DisplayQuirks;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/DisplayQuirks;

    move-result-object v5

    .line 680
    .local v5, "_value":Lcom/android/server/display/config/DisplayQuirks;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setQuirks(Lcom/android/server/display/config/DisplayQuirks;)V

    .line 681
    .end local v5    # "_value":Lcom/android/server/display/config/DisplayQuirks;
    goto/16 :goto_1

    :cond_a
    const-string v5, "autoBrightness"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 682
    invoke-static {p0}, Lcom/android/server/display/config/AutoBrightness;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/AutoBrightness;

    move-result-object v5

    .line 683
    .local v5, "_value":Lcom/android/server/display/config/AutoBrightness;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setAutoBrightness(Lcom/android/server/display/config/AutoBrightness;)V

    .line 684
    .end local v5    # "_value":Lcom/android/server/display/config/AutoBrightness;
    goto/16 :goto_1

    :cond_b
    const-string/jumbo v5, "refreshRate"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 685
    invoke-static {p0}, Lcom/android/server/display/config/RefreshRateConfigs;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateConfigs;

    move-result-object v5

    .line 686
    .local v5, "_value":Lcom/android/server/display/config/RefreshRateConfigs;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setRefreshRate(Lcom/android/server/display/config/RefreshRateConfigs;)V

    .line 687
    .end local v5    # "_value":Lcom/android/server/display/config/RefreshRateConfigs;
    goto/16 :goto_1

    :cond_c
    const-string/jumbo v5, "screenBrightnessRampFastDecrease"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 688
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 689
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 690
    .local v5, "_value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampFastDecrease(Ljava/math/BigDecimal;)V

    .line 691
    .end local v5    # "_value":Ljava/math/BigDecimal;
    goto/16 :goto_1

    :cond_d
    const-string/jumbo v5, "screenBrightnessRampFastIncrease"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 692
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 693
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 694
    .restart local v5    # "_value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampFastIncrease(Ljava/math/BigDecimal;)V

    .line 695
    .end local v5    # "_value":Ljava/math/BigDecimal;
    goto/16 :goto_1

    :cond_e
    const-string/jumbo v5, "screenBrightnessRampSlowDecrease"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 696
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 697
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 698
    .restart local v5    # "_value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampSlowDecrease(Ljava/math/BigDecimal;)V

    .line 699
    .end local v5    # "_value":Ljava/math/BigDecimal;
    goto/16 :goto_1

    :cond_f
    const-string/jumbo v5, "screenBrightnessRampSlowIncrease"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 700
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 701
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 702
    .restart local v5    # "_value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampSlowIncrease(Ljava/math/BigDecimal;)V

    .line 703
    .end local v5    # "_value":Ljava/math/BigDecimal;
    goto/16 :goto_1

    :cond_10
    const-string/jumbo v5, "screenBrightnessRampSlowDecreaseIdle"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 704
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 705
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 706
    .restart local v5    # "_value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampSlowDecreaseIdle(Ljava/math/BigDecimal;)V

    .line 707
    .end local v5    # "_value":Ljava/math/BigDecimal;
    goto/16 :goto_1

    :cond_11
    const-string/jumbo v5, "screenBrightnessRampSlowIncreaseIdle"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 708
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 709
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 710
    .restart local v5    # "_value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampSlowIncreaseIdle(Ljava/math/BigDecimal;)V

    .line 711
    .end local v5    # "_value":Ljava/math/BigDecimal;
    goto/16 :goto_1

    :cond_12
    const-string/jumbo v5, "screenBrightnessRampIncreaseMaxMillis"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 712
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 713
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 714
    .local v5, "_value":Ljava/math/BigInteger;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampIncreaseMaxMillis(Ljava/math/BigInteger;)V

    .line 715
    .end local v5    # "_value":Ljava/math/BigInteger;
    goto/16 :goto_1

    :cond_13
    const-string/jumbo v5, "screenBrightnessRampDecreaseMaxMillis"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 716
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 717
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 718
    .restart local v5    # "_value":Ljava/math/BigInteger;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampDecreaseMaxMillis(Ljava/math/BigInteger;)V

    .line 719
    .end local v5    # "_value":Ljava/math/BigInteger;
    goto/16 :goto_1

    :cond_14
    const-string/jumbo v5, "screenBrightnessRampIncreaseMaxIdleMillis"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 720
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 721
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 722
    .restart local v5    # "_value":Ljava/math/BigInteger;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampIncreaseMaxIdleMillis(Ljava/math/BigInteger;)V

    .line 723
    .end local v5    # "_value":Ljava/math/BigInteger;
    goto/16 :goto_1

    :cond_15
    const-string/jumbo v5, "screenBrightnessRampDecreaseMaxIdleMillis"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 724
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 725
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 726
    .restart local v5    # "_value":Ljava/math/BigInteger;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampDecreaseMaxIdleMillis(Ljava/math/BigInteger;)V

    .line 727
    .end local v5    # "_value":Ljava/math/BigInteger;
    goto/16 :goto_1

    :cond_16
    const-string/jumbo v5, "lightSensor"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 728
    invoke-static {p0}, Lcom/android/server/display/config/SensorDetails;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;

    move-result-object v5

    .line 729
    .local v5, "_value":Lcom/android/server/display/config/SensorDetails;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setLightSensor(Lcom/android/server/display/config/SensorDetails;)V

    .line 730
    .end local v5    # "_value":Lcom/android/server/display/config/SensorDetails;
    goto/16 :goto_1

    :cond_17
    const-string/jumbo v5, "screenOffBrightnessSensor"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 731
    invoke-static {p0}, Lcom/android/server/display/config/SensorDetails;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;

    move-result-object v5

    .line 732
    .restart local v5    # "_value":Lcom/android/server/display/config/SensorDetails;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenOffBrightnessSensor(Lcom/android/server/display/config/SensorDetails;)V

    .line 733
    .end local v5    # "_value":Lcom/android/server/display/config/SensorDetails;
    goto/16 :goto_1

    :cond_18
    const-string/jumbo v5, "proxSensor"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 734
    invoke-static {p0}, Lcom/android/server/display/config/SensorDetails;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;

    move-result-object v5

    .line 735
    .restart local v5    # "_value":Lcom/android/server/display/config/SensorDetails;
    invoke-virtual {v0}, Lcom/android/server/display/config/DisplayConfiguration;->getProxSensor()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    .end local v5    # "_value":Lcom/android/server/display/config/SensorDetails;
    goto/16 :goto_1

    :cond_19
    const-string/jumbo v5, "tempSensor"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 737
    invoke-static {p0}, Lcom/android/server/display/config/SensorDetails;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;

    move-result-object v5

    .line 738
    .restart local v5    # "_value":Lcom/android/server/display/config/SensorDetails;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setTempSensor(Lcom/android/server/display/config/SensorDetails;)V

    .line 739
    .end local v5    # "_value":Lcom/android/server/display/config/SensorDetails;
    goto/16 :goto_1

    :cond_1a
    const-string v5, "ambientLightHorizonLong"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 740
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 741
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 742
    .local v5, "_value":Ljava/math/BigInteger;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setAmbientLightHorizonLong(Ljava/math/BigInteger;)V

    .line 743
    .end local v5    # "_value":Ljava/math/BigInteger;
    goto/16 :goto_1

    :cond_1b
    const-string v5, "ambientLightHorizonShort"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 744
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 745
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 746
    .restart local v5    # "_value":Ljava/math/BigInteger;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setAmbientLightHorizonShort(Ljava/math/BigInteger;)V

    .line 747
    .end local v5    # "_value":Ljava/math/BigInteger;
    goto/16 :goto_1

    :cond_1c
    const-string v5, "displayBrightnessChangeThresholds"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 748
    invoke-static {p0}, Lcom/android/server/display/config/Thresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;

    move-result-object v5

    .line 749
    .local v5, "_value":Lcom/android/server/display/config/Thresholds;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setDisplayBrightnessChangeThresholds(Lcom/android/server/display/config/Thresholds;)V

    .line 750
    .end local v5    # "_value":Lcom/android/server/display/config/Thresholds;
    goto/16 :goto_1

    :cond_1d
    const-string v5, "ambientBrightnessChangeThresholds"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 751
    invoke-static {p0}, Lcom/android/server/display/config/Thresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;

    move-result-object v5

    .line 752
    .restart local v5    # "_value":Lcom/android/server/display/config/Thresholds;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setAmbientBrightnessChangeThresholds(Lcom/android/server/display/config/Thresholds;)V

    .line 753
    .end local v5    # "_value":Lcom/android/server/display/config/Thresholds;
    goto/16 :goto_1

    :cond_1e
    const-string v5, "displayBrightnessChangeThresholdsIdle"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 754
    invoke-static {p0}, Lcom/android/server/display/config/Thresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;

    move-result-object v5

    .line 755
    .restart local v5    # "_value":Lcom/android/server/display/config/Thresholds;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setDisplayBrightnessChangeThresholdsIdle(Lcom/android/server/display/config/Thresholds;)V

    .line 756
    .end local v5    # "_value":Lcom/android/server/display/config/Thresholds;
    goto/16 :goto_1

    :cond_1f
    const-string v5, "ambientBrightnessChangeThresholdsIdle"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 757
    invoke-static {p0}, Lcom/android/server/display/config/Thresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;

    move-result-object v5

    .line 758
    .restart local v5    # "_value":Lcom/android/server/display/config/Thresholds;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setAmbientBrightnessChangeThresholdsIdle(Lcom/android/server/display/config/Thresholds;)V

    .line 759
    .end local v5    # "_value":Lcom/android/server/display/config/Thresholds;
    goto/16 :goto_1

    :cond_20
    const-string/jumbo v5, "screenOffBrightnessSensorValueToLux"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 760
    invoke-static {p0}, Lcom/android/server/display/config/IntegerArray;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/IntegerArray;

    move-result-object v5

    .line 761
    .local v5, "_value":Lcom/android/server/display/config/IntegerArray;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenOffBrightnessSensorValueToLux(Lcom/android/server/display/config/IntegerArray;)V

    .line 762
    .end local v5    # "_value":Lcom/android/server/display/config/IntegerArray;
    goto/16 :goto_1

    :cond_21
    const-string/jumbo v5, "usiVersion"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 763
    invoke-static {p0}, Lcom/android/server/display/config/UsiVersion;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/UsiVersion;

    move-result-object v5

    .line 764
    .local v5, "_value":Lcom/android/server/display/config/UsiVersion;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setUsiVersion(Lcom/android/server/display/config/UsiVersion;)V

    .line 765
    .end local v5    # "_value":Lcom/android/server/display/config/UsiVersion;
    goto/16 :goto_1

    :cond_22
    const-string v5, "evenDimmer"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 766
    invoke-static {p0}, Lcom/android/server/display/config/EvenDimmerMode;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/EvenDimmerMode;

    move-result-object v5

    .line 767
    .local v5, "_value":Lcom/android/server/display/config/EvenDimmerMode;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setEvenDimmer(Lcom/android/server/display/config/EvenDimmerMode;)V

    .line 768
    .end local v5    # "_value":Lcom/android/server/display/config/EvenDimmerMode;
    goto :goto_1

    :cond_23
    const-string/jumbo v5, "screenBrightnessCapForWearBedtimeMode"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 769
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 770
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 771
    .local v5, "_value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessCapForWearBedtimeMode(Ljava/math/BigDecimal;)V

    .line 772
    .end local v5    # "_value":Ljava/math/BigDecimal;
    goto :goto_1

    :cond_24
    const-string/jumbo v5, "idleScreenRefreshRateTimeout"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 773
    invoke-static {p0}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

    move-result-object v5

    .line 774
    .local v5, "_value":Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setIdleScreenRefreshRateTimeout(Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;)V

    .line 775
    .end local v5    # "_value":Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;
    goto :goto_1

    :cond_25
    const-string/jumbo v5, "supportsVrr"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 776
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 777
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 778
    .local v5, "_value":Z
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setSupportsVrr(Z)V

    .line 779
    .end local v5    # "_value":Z
    goto :goto_1

    :cond_26
    const-string v5, "dozeBrightnessSensorValueToBrightness"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 780
    invoke-static {p0}, Lcom/android/server/display/config/FloatArray;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/FloatArray;

    move-result-object v5

    .line 781
    .local v5, "_value":Lcom/android/server/display/config/FloatArray;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setDozeBrightnessSensorValueToBrightness(Lcom/android/server/display/config/FloatArray;)V

    .line 782
    .end local v5    # "_value":Lcom/android/server/display/config/FloatArray;
    goto :goto_1

    :cond_27
    const-string v5, "defaultDozeBrightness"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 783
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 784
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 785
    .local v5, "_value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setDefaultDozeBrightness(Ljava/math/BigDecimal;)V

    .line 786
    .end local v5    # "_value":Ljava/math/BigDecimal;
    goto :goto_1

    .line 787
    :cond_28
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 789
    .end local v3    # "_tagName":Ljava/lang/String;
    :goto_1
    goto/16 :goto_0

    .line 790
    :cond_29
    if-ne v4, v6, :cond_2a

    .line 793
    return-object v0

    .line 791
    :cond_2a
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "DisplayConfiguration is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public final getAmbientBrightnessChangeThresholds()Lcom/android/server/display/config/Thresholds;
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    return-object v0
.end method

.method public final getAmbientBrightnessChangeThresholdsIdle()Lcom/android/server/display/config/Thresholds;
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientBrightnessChangeThresholdsIdle:Lcom/android/server/display/config/Thresholds;

    return-object v0
.end method

.method public final getAmbientLightHorizonLong()Ljava/math/BigInteger;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonLong:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getAmbientLightHorizonShort()Ljava/math/BigInteger;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonShort:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getAutoBrightness()Lcom/android/server/display/config/AutoBrightness;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->autoBrightness:Lcom/android/server/display/config/AutoBrightness;

    return-object v0
.end method

.method public final getDefaultDozeBrightness()Ljava/math/BigDecimal;
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->defaultDozeBrightness:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getDensityMapping()Lcom/android/server/display/config/DensityMapping;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->densityMapping:Lcom/android/server/display/config/DensityMapping;

    return-object v0
.end method

.method public final getDisplayBrightnessChangeThresholds()Lcom/android/server/display/config/Thresholds;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->displayBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    return-object v0
.end method

.method public final getDisplayBrightnessChangeThresholdsIdle()Lcom/android/server/display/config/Thresholds;
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->displayBrightnessChangeThresholdsIdle:Lcom/android/server/display/config/Thresholds;

    return-object v0
.end method

.method public final getDozeBrightnessSensorValueToBrightness()Lcom/android/server/display/config/FloatArray;
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->dozeBrightnessSensorValueToBrightness:Lcom/android/server/display/config/FloatArray;

    return-object v0
.end method

.method public final getEvenDimmer()Lcom/android/server/display/config/EvenDimmerMode;
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->evenDimmer:Lcom/android/server/display/config/EvenDimmerMode;

    return-object v0
.end method

.method public final getHdrBrightnessConfig()Lcom/android/server/display/config/HdrBrightnessConfig;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->hdrBrightnessConfig:Lcom/android/server/display/config/HdrBrightnessConfig;

    return-object v0
.end method

.method public getHighBrightnessMode()Lcom/android/server/display/config/HighBrightnessMode;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

    return-object v0
.end method

.method public final getIdleScreenRefreshRateTimeout()Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->idleScreenRefreshRateTimeout:Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

    return-object v0
.end method

.method public final getLightSensor()Lcom/android/server/display/config/SensorDetails;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->lightSensor:Lcom/android/server/display/config/SensorDetails;

    return-object v0
.end method

.method public getLuxThrottling()Lcom/android/server/display/config/LuxThrottling;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->luxThrottling:Lcom/android/server/display/config/LuxThrottling;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerThrottlingConfig()Lcom/android/server/display/config/PowerThrottlingConfig;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->powerThrottlingConfig:Lcom/android/server/display/config/PowerThrottlingConfig;

    return-object v0
.end method

.method public final getProxSensor()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/display/config/SensorDetails;",
            ">;"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Ljava/util/List;

    if-nez v0, :cond_0

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Ljava/util/List;

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Ljava/util/List;

    return-object v0
.end method

.method public getQuirks()Lcom/android/server/display/config/DisplayQuirks;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->quirks:Lcom/android/server/display/config/DisplayQuirks;

    return-object v0
.end method

.method public getRefreshRate()Lcom/android/server/display/config/RefreshRateConfigs;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->refreshRate:Lcom/android/server/display/config/RefreshRateConfigs;

    return-object v0
.end method

.method public final getScreenBrightnessCapForWearBedtimeMode()Ljava/math/BigDecimal;
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessCapForWearBedtimeMode:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getScreenBrightnessDefault()Ljava/math/BigDecimal;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessDefault:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getScreenBrightnessMap()Lcom/android/server/display/config/NitsMap;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessMap:Lcom/android/server/display/config/NitsMap;

    return-object v0
.end method

.method public final getScreenBrightnessRampDecreaseMaxIdleMillis()Ljava/math/BigInteger;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampDecreaseMaxIdleMillis:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getScreenBrightnessRampDecreaseMaxMillis()Ljava/math/BigInteger;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampDecreaseMaxMillis:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getScreenBrightnessRampFastDecrease()Ljava/math/BigDecimal;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastDecrease:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getScreenBrightnessRampFastIncrease()Ljava/math/BigDecimal;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastIncrease:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getScreenBrightnessRampIncreaseMaxIdleMillis()Ljava/math/BigInteger;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampIncreaseMaxIdleMillis:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getScreenBrightnessRampIncreaseMaxMillis()Ljava/math/BigInteger;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampIncreaseMaxMillis:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getScreenBrightnessRampSlowDecrease()Ljava/math/BigDecimal;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecrease:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getScreenBrightnessRampSlowDecreaseIdle()Ljava/math/BigDecimal;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecreaseIdle:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getScreenBrightnessRampSlowIncrease()Ljava/math/BigDecimal;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncrease:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getScreenBrightnessRampSlowIncreaseIdle()Ljava/math/BigDecimal;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncreaseIdle:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getScreenOffBrightnessSensor()Lcom/android/server/display/config/SensorDetails;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenOffBrightnessSensor:Lcom/android/server/display/config/SensorDetails;

    return-object v0
.end method

.method public final getScreenOffBrightnessSensorValueToLux()Lcom/android/server/display/config/IntegerArray;
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenOffBrightnessSensorValueToLux:Lcom/android/server/display/config/IntegerArray;

    return-object v0
.end method

.method public final getSupportsVrr()Z
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->supportsVrr:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 594
    const/4 v0, 0x0

    return v0

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->supportsVrr:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getTempSensor()Lcom/android/server/display/config/SensorDetails;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->tempSensor:Lcom/android/server/display/config/SensorDetails;

    return-object v0
.end method

.method public final getThermalThrottling()Lcom/android/server/display/config/ThermalThrottling;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->thermalThrottling:Lcom/android/server/display/config/ThermalThrottling;

    return-object v0
.end method

.method public final getUsiVersion()Lcom/android/server/display/config/UsiVersion;
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->usiVersion:Lcom/android/server/display/config/UsiVersion;

    return-object v0
.end method

.method hasAmbientBrightnessChangeThresholds()Z
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    if-nez v0, :cond_0

    .line 478
    const/4 v0, 0x0

    return v0

    .line 480
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasAmbientBrightnessChangeThresholdsIdle()Z
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientBrightnessChangeThresholdsIdle:Lcom/android/server/display/config/Thresholds;

    if-nez v0, :cond_0

    .line 508
    const/4 v0, 0x0

    return v0

    .line 510
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasAmbientLightHorizonLong()Z
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonLong:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 433
    const/4 v0, 0x0

    return v0

    .line 435
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasAmbientLightHorizonShort()Z
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonShort:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 448
    const/4 v0, 0x0

    return v0

    .line 450
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasAutoBrightness()Z
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->autoBrightness:Lcom/android/server/display/config/AutoBrightness;

    if-nez v0, :cond_0

    .line 201
    const/4 v0, 0x0

    return v0

    .line 203
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasDefaultDozeBrightness()Z
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->defaultDozeBrightness:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    .line 631
    const/4 v0, 0x0

    return v0

    .line 633
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasDensityMapping()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->densityMapping:Lcom/android/server/display/config/DensityMapping;

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    return v0

    .line 68
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasDisplayBrightnessChangeThresholds()Z
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->displayBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    if-nez v0, :cond_0

    .line 463
    const/4 v0, 0x0

    return v0

    .line 465
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasDisplayBrightnessChangeThresholdsIdle()Z
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->displayBrightnessChangeThresholdsIdle:Lcom/android/server/display/config/Thresholds;

    if-nez v0, :cond_0

    .line 493
    const/4 v0, 0x0

    return v0

    .line 495
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasDozeBrightnessSensorValueToBrightness()Z
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->dozeBrightnessSensorValueToBrightness:Lcom/android/server/display/config/FloatArray;

    if-nez v0, :cond_0

    .line 616
    const/4 v0, 0x0

    return v0

    .line 618
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasEvenDimmer()Z
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->evenDimmer:Lcom/android/server/display/config/EvenDimmerMode;

    if-nez v0, :cond_0

    .line 553
    const/4 v0, 0x0

    return v0

    .line 555
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasHdrBrightnessConfig()Z
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->hdrBrightnessConfig:Lcom/android/server/display/config/HdrBrightnessConfig;

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x0

    return v0

    .line 173
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasHighBrightnessMode()Z
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x0

    return v0

    .line 158
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasIdleScreenRefreshRateTimeout()Z
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->idleScreenRefreshRateTimeout:Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

    if-nez v0, :cond_0

    .line 583
    const/4 v0, 0x0

    return v0

    .line 585
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasLightSensor()Z
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->lightSensor:Lcom/android/server/display/config/SensorDetails;

    if-nez v0, :cond_0

    .line 381
    const/4 v0, 0x0

    return v0

    .line 383
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasLuxThrottling()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->luxThrottling:Lcom/android/server/display/config/LuxThrottling;

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x0

    return v0

    .line 143
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasName()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    return v0

    .line 53
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasPowerThrottlingConfig()Z
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->powerThrottlingConfig:Lcom/android/server/display/config/PowerThrottlingConfig;

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    return v0

    .line 128
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasQuirks()Z
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->quirks:Lcom/android/server/display/config/DisplayQuirks;

    if-nez v0, :cond_0

    .line 186
    const/4 v0, 0x0

    return v0

    .line 188
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasRefreshRate()Z
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->refreshRate:Lcom/android/server/display/config/RefreshRateConfigs;

    if-nez v0, :cond_0

    .line 216
    const/4 v0, 0x0

    return v0

    .line 218
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessCapForWearBedtimeMode()Z
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessCapForWearBedtimeMode:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    .line 568
    const/4 v0, 0x0

    return v0

    .line 570
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessDefault()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessDefault:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    return v0

    .line 98
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessMap()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessMap:Lcom/android/server/display/config/NitsMap;

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    return v0

    .line 83
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessRampDecreaseMaxIdleMillis()Z
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampDecreaseMaxIdleMillis:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 366
    const/4 v0, 0x0

    return v0

    .line 368
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessRampDecreaseMaxMillis()Z
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampDecreaseMaxMillis:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 336
    const/4 v0, 0x0

    return v0

    .line 338
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessRampFastDecrease()Z
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastDecrease:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    .line 231
    const/4 v0, 0x0

    return v0

    .line 233
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessRampFastIncrease()Z
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastIncrease:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    .line 246
    const/4 v0, 0x0

    return v0

    .line 248
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessRampIncreaseMaxIdleMillis()Z
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampIncreaseMaxIdleMillis:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 351
    const/4 v0, 0x0

    return v0

    .line 353
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessRampIncreaseMaxMillis()Z
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampIncreaseMaxMillis:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 321
    const/4 v0, 0x0

    return v0

    .line 323
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessRampSlowDecrease()Z
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecrease:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    .line 261
    const/4 v0, 0x0

    return v0

    .line 263
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessRampSlowDecreaseIdle()Z
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecreaseIdle:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    .line 291
    const/4 v0, 0x0

    return v0

    .line 293
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessRampSlowIncrease()Z
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncrease:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    .line 276
    const/4 v0, 0x0

    return v0

    .line 278
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessRampSlowIncreaseIdle()Z
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncreaseIdle:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    .line 306
    const/4 v0, 0x0

    return v0

    .line 308
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenOffBrightnessSensor()Z
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenOffBrightnessSensor:Lcom/android/server/display/config/SensorDetails;

    if-nez v0, :cond_0

    .line 396
    const/4 v0, 0x0

    return v0

    .line 398
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenOffBrightnessSensorValueToLux()Z
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenOffBrightnessSensorValueToLux:Lcom/android/server/display/config/IntegerArray;

    if-nez v0, :cond_0

    .line 523
    const/4 v0, 0x0

    return v0

    .line 525
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasSupportsVrr()Z
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->supportsVrr:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 601
    const/4 v0, 0x0

    return v0

    .line 603
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasTempSensor()Z
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->tempSensor:Lcom/android/server/display/config/SensorDetails;

    if-nez v0, :cond_0

    .line 418
    const/4 v0, 0x0

    return v0

    .line 420
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasThermalThrottling()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->thermalThrottling:Lcom/android/server/display/config/ThermalThrottling;

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    return v0

    .line 113
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasUsiVersion()Z
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->usiVersion:Lcom/android/server/display/config/UsiVersion;

    if-nez v0, :cond_0

    .line 538
    const/4 v0, 0x0

    return v0

    .line 540
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final setAmbientBrightnessChangeThresholds(Lcom/android/server/display/config/Thresholds;)V
    .locals 0
    .param p1, "ambientBrightnessChangeThresholds"    # Lcom/android/server/display/config/Thresholds;

    .line 484
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    .line 485
    return-void
.end method

.method public final setAmbientBrightnessChangeThresholdsIdle(Lcom/android/server/display/config/Thresholds;)V
    .locals 0
    .param p1, "ambientBrightnessChangeThresholdsIdle"    # Lcom/android/server/display/config/Thresholds;

    .line 514
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientBrightnessChangeThresholdsIdle:Lcom/android/server/display/config/Thresholds;

    .line 515
    return-void
.end method

.method public final setAmbientLightHorizonLong(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "ambientLightHorizonLong"    # Ljava/math/BigInteger;

    .line 439
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonLong:Ljava/math/BigInteger;

    .line 440
    return-void
.end method

.method public final setAmbientLightHorizonShort(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "ambientLightHorizonShort"    # Ljava/math/BigInteger;

    .line 454
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonShort:Ljava/math/BigInteger;

    .line 455
    return-void
.end method

.method public setAutoBrightness(Lcom/android/server/display/config/AutoBrightness;)V
    .locals 0
    .param p1, "autoBrightness"    # Lcom/android/server/display/config/AutoBrightness;

    .line 207
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->autoBrightness:Lcom/android/server/display/config/AutoBrightness;

    .line 208
    return-void
.end method

.method public final setDefaultDozeBrightness(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "defaultDozeBrightness"    # Ljava/math/BigDecimal;

    .line 637
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->defaultDozeBrightness:Ljava/math/BigDecimal;

    .line 638
    return-void
.end method

.method public final setDensityMapping(Lcom/android/server/display/config/DensityMapping;)V
    .locals 0
    .param p1, "densityMapping"    # Lcom/android/server/display/config/DensityMapping;

    .line 72
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->densityMapping:Lcom/android/server/display/config/DensityMapping;

    .line 73
    return-void
.end method

.method public final setDisplayBrightnessChangeThresholds(Lcom/android/server/display/config/Thresholds;)V
    .locals 0
    .param p1, "displayBrightnessChangeThresholds"    # Lcom/android/server/display/config/Thresholds;

    .line 469
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->displayBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    .line 470
    return-void
.end method

.method public final setDisplayBrightnessChangeThresholdsIdle(Lcom/android/server/display/config/Thresholds;)V
    .locals 0
    .param p1, "displayBrightnessChangeThresholdsIdle"    # Lcom/android/server/display/config/Thresholds;

    .line 499
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->displayBrightnessChangeThresholdsIdle:Lcom/android/server/display/config/Thresholds;

    .line 500
    return-void
.end method

.method public final setDozeBrightnessSensorValueToBrightness(Lcom/android/server/display/config/FloatArray;)V
    .locals 0
    .param p1, "dozeBrightnessSensorValueToBrightness"    # Lcom/android/server/display/config/FloatArray;

    .line 622
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->dozeBrightnessSensorValueToBrightness:Lcom/android/server/display/config/FloatArray;

    .line 623
    return-void
.end method

.method public final setEvenDimmer(Lcom/android/server/display/config/EvenDimmerMode;)V
    .locals 0
    .param p1, "evenDimmer"    # Lcom/android/server/display/config/EvenDimmerMode;

    .line 559
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->evenDimmer:Lcom/android/server/display/config/EvenDimmerMode;

    .line 560
    return-void
.end method

.method public final setHdrBrightnessConfig(Lcom/android/server/display/config/HdrBrightnessConfig;)V
    .locals 0
    .param p1, "hdrBrightnessConfig"    # Lcom/android/server/display/config/HdrBrightnessConfig;

    .line 177
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->hdrBrightnessConfig:Lcom/android/server/display/config/HdrBrightnessConfig;

    .line 178
    return-void
.end method

.method public setHighBrightnessMode(Lcom/android/server/display/config/HighBrightnessMode;)V
    .locals 0
    .param p1, "highBrightnessMode"    # Lcom/android/server/display/config/HighBrightnessMode;

    .line 162
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

    .line 163
    return-void
.end method

.method public final setIdleScreenRefreshRateTimeout(Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;)V
    .locals 0
    .param p1, "idleScreenRefreshRateTimeout"    # Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

    .line 589
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->idleScreenRefreshRateTimeout:Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

    .line 590
    return-void
.end method

.method public final setLightSensor(Lcom/android/server/display/config/SensorDetails;)V
    .locals 0
    .param p1, "lightSensor"    # Lcom/android/server/display/config/SensorDetails;

    .line 387
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->lightSensor:Lcom/android/server/display/config/SensorDetails;

    .line 388
    return-void
.end method

.method public setLuxThrottling(Lcom/android/server/display/config/LuxThrottling;)V
    .locals 0
    .param p1, "luxThrottling"    # Lcom/android/server/display/config/LuxThrottling;

    .line 147
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->luxThrottling:Lcom/android/server/display/config/LuxThrottling;

    .line 148
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->name:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setPowerThrottlingConfig(Lcom/android/server/display/config/PowerThrottlingConfig;)V
    .locals 0
    .param p1, "powerThrottlingConfig"    # Lcom/android/server/display/config/PowerThrottlingConfig;

    .line 132
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->powerThrottlingConfig:Lcom/android/server/display/config/PowerThrottlingConfig;

    .line 133
    return-void
.end method

.method public setQuirks(Lcom/android/server/display/config/DisplayQuirks;)V
    .locals 0
    .param p1, "quirks"    # Lcom/android/server/display/config/DisplayQuirks;

    .line 192
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->quirks:Lcom/android/server/display/config/DisplayQuirks;

    .line 193
    return-void
.end method

.method public setRefreshRate(Lcom/android/server/display/config/RefreshRateConfigs;)V
    .locals 0
    .param p1, "refreshRate"    # Lcom/android/server/display/config/RefreshRateConfigs;

    .line 222
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->refreshRate:Lcom/android/server/display/config/RefreshRateConfigs;

    .line 223
    return-void
.end method

.method public final setScreenBrightnessCapForWearBedtimeMode(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "screenBrightnessCapForWearBedtimeMode"    # Ljava/math/BigDecimal;

    .line 574
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessCapForWearBedtimeMode:Ljava/math/BigDecimal;

    .line 575
    return-void
.end method

.method public final setScreenBrightnessDefault(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "screenBrightnessDefault"    # Ljava/math/BigDecimal;

    .line 102
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessDefault:Ljava/math/BigDecimal;

    .line 103
    return-void
.end method

.method public final setScreenBrightnessMap(Lcom/android/server/display/config/NitsMap;)V
    .locals 0
    .param p1, "screenBrightnessMap"    # Lcom/android/server/display/config/NitsMap;

    .line 87
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessMap:Lcom/android/server/display/config/NitsMap;

    .line 88
    return-void
.end method

.method public final setScreenBrightnessRampDecreaseMaxIdleMillis(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "screenBrightnessRampDecreaseMaxIdleMillis"    # Ljava/math/BigInteger;

    .line 372
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampDecreaseMaxIdleMillis:Ljava/math/BigInteger;

    .line 373
    return-void
.end method

.method public final setScreenBrightnessRampDecreaseMaxMillis(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "screenBrightnessRampDecreaseMaxMillis"    # Ljava/math/BigInteger;

    .line 342
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampDecreaseMaxMillis:Ljava/math/BigInteger;

    .line 343
    return-void
.end method

.method public final setScreenBrightnessRampFastDecrease(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "screenBrightnessRampFastDecrease"    # Ljava/math/BigDecimal;

    .line 237
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastDecrease:Ljava/math/BigDecimal;

    .line 238
    return-void
.end method

.method public final setScreenBrightnessRampFastIncrease(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "screenBrightnessRampFastIncrease"    # Ljava/math/BigDecimal;

    .line 252
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastIncrease:Ljava/math/BigDecimal;

    .line 253
    return-void
.end method

.method public final setScreenBrightnessRampIncreaseMaxIdleMillis(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "screenBrightnessRampIncreaseMaxIdleMillis"    # Ljava/math/BigInteger;

    .line 357
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampIncreaseMaxIdleMillis:Ljava/math/BigInteger;

    .line 358
    return-void
.end method

.method public final setScreenBrightnessRampIncreaseMaxMillis(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "screenBrightnessRampIncreaseMaxMillis"    # Ljava/math/BigInteger;

    .line 327
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampIncreaseMaxMillis:Ljava/math/BigInteger;

    .line 328
    return-void
.end method

.method public final setScreenBrightnessRampSlowDecrease(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "screenBrightnessRampSlowDecrease"    # Ljava/math/BigDecimal;

    .line 267
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecrease:Ljava/math/BigDecimal;

    .line 268
    return-void
.end method

.method public final setScreenBrightnessRampSlowDecreaseIdle(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "screenBrightnessRampSlowDecreaseIdle"    # Ljava/math/BigDecimal;

    .line 297
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecreaseIdle:Ljava/math/BigDecimal;

    .line 298
    return-void
.end method

.method public final setScreenBrightnessRampSlowIncrease(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "screenBrightnessRampSlowIncrease"    # Ljava/math/BigDecimal;

    .line 282
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncrease:Ljava/math/BigDecimal;

    .line 283
    return-void
.end method

.method public final setScreenBrightnessRampSlowIncreaseIdle(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "screenBrightnessRampSlowIncreaseIdle"    # Ljava/math/BigDecimal;

    .line 312
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncreaseIdle:Ljava/math/BigDecimal;

    .line 313
    return-void
.end method

.method public final setScreenOffBrightnessSensor(Lcom/android/server/display/config/SensorDetails;)V
    .locals 0
    .param p1, "screenOffBrightnessSensor"    # Lcom/android/server/display/config/SensorDetails;

    .line 402
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenOffBrightnessSensor:Lcom/android/server/display/config/SensorDetails;

    .line 403
    return-void
.end method

.method public final setScreenOffBrightnessSensorValueToLux(Lcom/android/server/display/config/IntegerArray;)V
    .locals 0
    .param p1, "screenOffBrightnessSensorValueToLux"    # Lcom/android/server/display/config/IntegerArray;

    .line 529
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenOffBrightnessSensorValueToLux:Lcom/android/server/display/config/IntegerArray;

    .line 530
    return-void
.end method

.method public final setSupportsVrr(Z)V
    .locals 1
    .param p1, "supportsVrr"    # Z

    .line 607
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->supportsVrr:Ljava/lang/Boolean;

    .line 608
    return-void
.end method

.method public final setTempSensor(Lcom/android/server/display/config/SensorDetails;)V
    .locals 0
    .param p1, "tempSensor"    # Lcom/android/server/display/config/SensorDetails;

    .line 424
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->tempSensor:Lcom/android/server/display/config/SensorDetails;

    .line 425
    return-void
.end method

.method public final setThermalThrottling(Lcom/android/server/display/config/ThermalThrottling;)V
    .locals 0
    .param p1, "thermalThrottling"    # Lcom/android/server/display/config/ThermalThrottling;

    .line 117
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->thermalThrottling:Lcom/android/server/display/config/ThermalThrottling;

    .line 118
    return-void
.end method

.method public final setUsiVersion(Lcom/android/server/display/config/UsiVersion;)V
    .locals 0
    .param p1, "usiVersion"    # Lcom/android/server/display/config/UsiVersion;

    .line 544
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->usiVersion:Lcom/android/server/display/config/UsiVersion;

    .line 545
    return-void
.end method
