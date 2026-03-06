.class public Lcom/android/server/display/config/RefreshRateData;
.super Ljava/lang/Object;
.source "RefreshRateData.java"


# static fields
.field private static final DEFAULT_PEAK_REFRESH_RATE:I = 0x0

.field private static final DEFAULT_REFRESH_RATE:I = 0x3c

.field public static DEFAULT_REFRESH_RATE_DATA:Lcom/android/server/display/config/RefreshRateData;

.field private static final DEFAULT_REFRESH_RATE_IN_HBM:I


# instance fields
.field public final defaultPeakRefreshRate:I

.field public final defaultRefreshRate:I

.field public final defaultRefreshRateInHbmHdr:I

.field public final defaultRefreshRateInHbmSunlight:I

.field public final lowLightBlockingZoneSupportedModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/config/SupportedModeData;",
            ">;"
        }
    .end annotation
.end field

.field public final lowPowerSupportedModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/config/SupportedModeData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/android/server/display/config/RefreshRateData;->loadRefreshRateData(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/RefreshRateData;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/config/RefreshRateData;->DEFAULT_REFRESH_RATE_DATA:Lcom/android/server/display/config/RefreshRateData;

    return-void
.end method

.method public constructor <init>(IIIILjava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "defaultRefreshRate"    # I
    .param p2, "defaultPeakRefreshRate"    # I
    .param p3, "defaultRefreshRateInHbmHdr"    # I
    .param p4, "defaultRefreshRateInHbmSunlight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List<",
            "Lcom/android/server/display/config/SupportedModeData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/display/config/SupportedModeData;",
            ">;)V"
        }
    .end annotation

    .line 73
    .local p5, "lowPowerSupportedModes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/SupportedModeData;>;"
    .local p6, "lowLightBlockingZoneSupportedModes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/SupportedModeData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRate:I

    .line 75
    iput p2, p0, Lcom/android/server/display/config/RefreshRateData;->defaultPeakRefreshRate:I

    .line 76
    iput p3, p0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmHdr:I

    .line 77
    iput p4, p0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmSunlight:I

    .line 78
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/config/RefreshRateData;->lowPowerSupportedModes:Ljava/util/List;

    .line 79
    nop

    .line 80
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/config/RefreshRateData;->lowLightBlockingZoneSupportedModes:Ljava/util/List;

    .line 81
    return-void
.end method

.method private static loadDefaultPeakRefreshRate(Lcom/android/server/display/config/RefreshRateConfigs;Landroid/content/res/Resources;)I
    .locals 1
    .param p0, "refreshRateConfigs"    # Lcom/android/server/display/config/RefreshRateConfigs;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 135
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/config/RefreshRateConfigs;->getDefaultPeakRefreshRate()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/server/display/config/RefreshRateConfigs;->getDefaultPeakRefreshRate()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0

    .line 137
    :cond_0
    if-eqz p1, :cond_1

    .line 138
    const v0, 0x10e0063

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0

    .line 140
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static loadDefaultRefreshRate(Lcom/android/server/display/config/RefreshRateConfigs;Landroid/content/res/Resources;)I
    .locals 1
    .param p0, "refreshRateConfigs"    # Lcom/android/server/display/config/RefreshRateConfigs;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 125
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/config/RefreshRateConfigs;->getDefaultRefreshRate()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/server/display/config/RefreshRateConfigs;->getDefaultRefreshRate()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0

    .line 127
    :cond_0
    if-eqz p1, :cond_1

    .line 128
    const v0, 0x10e0066

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0

    .line 130
    :cond_1
    const/16 v0, 0x3c

    return v0
.end method

.method private static loadDefaultRefreshRateInHbm(Lcom/android/server/display/config/RefreshRateConfigs;Landroid/content/res/Resources;)I
    .locals 1
    .param p0, "refreshRateConfigs"    # Lcom/android/server/display/config/RefreshRateConfigs;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 145
    if-eqz p0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/android/server/display/config/RefreshRateConfigs;->getDefaultRefreshRateInHbmHdr()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/android/server/display/config/RefreshRateConfigs;->getDefaultRefreshRateInHbmHdr()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0

    .line 148
    :cond_0
    if-eqz p1, :cond_1

    .line 149
    const v0, 0x10e0067

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0

    .line 151
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static loadDefaultRefreshRateInHbmSunlight(Lcom/android/server/display/config/RefreshRateConfigs;Landroid/content/res/Resources;)I
    .locals 1
    .param p0, "refreshRateConfigs"    # Lcom/android/server/display/config/RefreshRateConfigs;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 156
    if-eqz p0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/android/server/display/config/RefreshRateConfigs;->getDefaultRefreshRateInHbmSunlight()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/server/display/config/RefreshRateConfigs;->getDefaultRefreshRateInHbmSunlight()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0

    .line 159
    :cond_0
    if-eqz p1, :cond_1

    .line 160
    const v0, 0x10e0068

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0

    .line 162
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static loadRefreshRateData(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/RefreshRateData;
    .locals 11
    .param p0, "config"    # Lcom/android/server/display/config/DisplayConfiguration;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 100
    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/config/DisplayConfiguration;->getRefreshRate()Lcom/android/server/display/config/RefreshRateConfigs;

    move-result-object v1

    .line 102
    .local v1, "refreshRateConfigs":Lcom/android/server/display/config/RefreshRateConfigs;
    :goto_0
    invoke-static {v1, p1}, Lcom/android/server/display/config/RefreshRateData;->loadDefaultRefreshRate(Lcom/android/server/display/config/RefreshRateConfigs;Landroid/content/res/Resources;)I

    move-result v3

    .line 103
    .local v3, "defaultRefreshRate":I
    invoke-static {v1, p1}, Lcom/android/server/display/config/RefreshRateData;->loadDefaultPeakRefreshRate(Lcom/android/server/display/config/RefreshRateConfigs;Landroid/content/res/Resources;)I

    move-result v4

    .line 104
    .local v4, "defaultPeakRefreshRate":I
    invoke-static {v1, p1}, Lcom/android/server/display/config/RefreshRateData;->loadDefaultRefreshRateInHbm(Lcom/android/server/display/config/RefreshRateConfigs;Landroid/content/res/Resources;)I

    move-result v5

    .line 105
    .local v5, "defaultRefreshRateInHbmHdr":I
    invoke-static {v1, p1}, Lcom/android/server/display/config/RefreshRateData;->loadDefaultRefreshRateInHbmSunlight(Lcom/android/server/display/config/RefreshRateConfigs;Landroid/content/res/Resources;)I

    move-result v6

    .line 109
    .local v6, "defaultRefreshRateInHbmSunlight":I
    if-nez v1, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateConfigs;->getLowPowerSupportedModes()Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object v2

    :goto_1
    move-object v9, v2

    .line 110
    .local v9, "lowPowerModes":Lcom/android/server/display/config/NonNegativeFloatToFloatMap;
    invoke-static {v9}, Lcom/android/server/display/config/SupportedModeData;->load(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)Ljava/util/List;

    move-result-object v7

    .line 112
    .local v7, "lowPowerSupportedModes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/SupportedModeData;>;"
    if-nez v1, :cond_2

    move-object v2, v0

    goto :goto_2

    .line 113
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateConfigs;->getLowerBlockingZoneConfigs()Lcom/android/server/display/config/BlockingZoneConfig;

    move-result-object v2

    :goto_2
    move-object v10, v2

    .line 115
    .local v10, "lowerZoneConfig":Lcom/android/server/display/config/BlockingZoneConfig;
    if-nez v10, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v10}, Lcom/android/server/display/config/BlockingZoneConfig;->getSupportedModes()Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object v0

    .line 116
    .local v0, "lowerZoneModes":Lcom/android/server/display/config/NonNegativeFloatToFloatMap;
    :goto_3
    invoke-static {v0}, Lcom/android/server/display/config/SupportedModeData;->load(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)Ljava/util/List;

    move-result-object v8

    .line 118
    .local v8, "lowLightSupportedModes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/SupportedModeData;>;"
    new-instance v2, Lcom/android/server/display/config/RefreshRateData;

    invoke-direct/range {v2 .. v8}, Lcom/android/server/display/config/RefreshRateData;-><init>(IIIILjava/util/List;Ljava/util/List;)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RefreshRateData {defaultRefreshRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", defaultPeakRefreshRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/RefreshRateData;->defaultPeakRefreshRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", defaultRefreshRateInHbmHdr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmHdr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", defaultRefreshRateInHbmSunlight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmSunlight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lowPowerSupportedModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/RefreshRateData;->lowPowerSupportedModes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lowLightBlockingZoneSupportedModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/RefreshRateData;->lowLightBlockingZoneSupportedModes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
