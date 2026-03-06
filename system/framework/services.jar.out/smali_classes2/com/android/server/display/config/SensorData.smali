.class public Lcom/android/server/display/config/SensorData;
.super Ljava/lang/Object;
.source "SensorData.java"


# static fields
.field public static final TEMPERATURE_TYPE_DISPLAY:Ljava/lang/String; = "DISPLAY"

.field public static final TEMPERATURE_TYPE_SKIN:Ljava/lang/String; = "SKIN"

.field private static final UNSPECIFIED_SENSOR_DATA:Lcom/android/server/display/config/SensorData;


# instance fields
.field public final maxRefreshRate:F

.field public final minRefreshRate:F

.field public final name:Ljava/lang/String;

.field public final supportedModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/config/SupportedModeData;",
            ">;"
        }
    .end annotation
.end field

.field public final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/android/server/display/config/SensorData;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/server/display/config/SensorData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/config/SensorData;->UNSPECIFIED_SENSOR_DATA:Lcom/android/server/display/config/SensorData;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 49
    nop

    .line 50
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v5

    .line 49
    const/4 v3, 0x0

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "type":Ljava/lang/String;
    .end local p2    # "name":Ljava/lang/String;
    .local v1, "type":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/config/SensorData;-><init>(Ljava/lang/String;Ljava/lang/String;FFLjava/util/List;)V

    .line 51
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;FFLjava/util/List;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "minRefreshRate"    # F
    .param p4, "maxRefreshRate"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FF",
            "Ljava/util/List<",
            "Lcom/android/server/display/config/SupportedModeData;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p5, "supportedModes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/SupportedModeData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    .line 58
    iput p3, p0, Lcom/android/server/display/config/SensorData;->minRefreshRate:F

    .line 59
    iput p4, p0, Lcom/android/server/display/config/SensorData;->maxRefreshRate:F

    .line 60
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/config/SensorData;->supportedModes:Ljava/util/List;

    .line 61
    return-void
.end method

.method public static loadAmbientLightSensorConfig(Landroid/content/res/Resources;)Lcom/android/server/display/config/SensorData;
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 102
    new-instance v0, Lcom/android/server/display/config/SensorData;

    .line 103
    const v1, 0x1040267

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/config/SensorData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-object v0
.end method

.method public static loadAmbientLightSensorConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/SensorData;
    .locals 2
    .param p0, "config"    # Lcom/android/server/display/config/DisplayConfiguration;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 90
    invoke-virtual {p0}, Lcom/android/server/display/config/DisplayConfiguration;->getLightSensor()Lcom/android/server/display/config/SensorDetails;

    move-result-object v0

    .line 91
    .local v0, "sensorDetails":Lcom/android/server/display/config/SensorDetails;
    if-eqz v0, :cond_0

    .line 92
    invoke-static {v0}, Lcom/android/server/display/config/SensorData;->loadSensorData(Lcom/android/server/display/config/SensorDetails;)Lcom/android/server/display/config/SensorData;

    move-result-object v1

    return-object v1

    .line 94
    :cond_0
    invoke-static {p1}, Lcom/android/server/display/config/SensorData;->loadAmbientLightSensorConfig(Landroid/content/res/Resources;)Lcom/android/server/display/config/SensorData;

    move-result-object v1

    return-object v1
.end method

.method public static loadProxSensorConfig(Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/SensorData;
    .locals 6
    .param p0, "flags"    # Lcom/android/server/display/feature/DisplayManagerFlags;
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 125
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getProxSensor()Ljava/util/List;

    move-result-object v0

    .line 126
    .local v0, "sensorDetailsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/SensorDetails;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    sget-object v1, Lcom/android/server/display/config/SensorData;->UNSPECIFIED_SENSOR_DATA:Lcom/android/server/display/config/SensorData;

    return-object v1

    .line 130
    :cond_0
    sget-object v1, Lcom/android/server/display/config/SensorData;->UNSPECIFIED_SENSOR_DATA:Lcom/android/server/display/config/SensorData;

    .line 132
    .local v1, "selectedSensor":Lcom/android/server/display/config/SensorData;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/SensorDetails;

    .line 133
    .local v3, "sensorDetails":Lcom/android/server/display/config/SensorDetails;
    invoke-virtual {v3}, Lcom/android/server/display/config/SensorDetails;->getFeatureFlag()Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "flagStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isUseFusionProxSensorEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags;->getUseFusionProxSensorFlagName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 136
    invoke-static {v3}, Lcom/android/server/display/config/SensorData;->loadSensorData(Lcom/android/server/display/config/SensorDetails;)Lcom/android/server/display/config/SensorData;

    move-result-object v1

    .line 137
    goto :goto_1

    .line 139
    .end local v3    # "sensorDetails":Lcom/android/server/display/config/SensorDetails;
    .end local v4    # "flagStr":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 142
    :cond_2
    :goto_1
    sget-object v2, Lcom/android/server/display/config/SensorData;->UNSPECIFIED_SENSOR_DATA:Lcom/android/server/display/config/SensorData;

    if-ne v2, v1, :cond_4

    .line 143
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/SensorDetails;

    .line 144
    .restart local v3    # "sensorDetails":Lcom/android/server/display/config/SensorDetails;
    invoke-virtual {v3}, Lcom/android/server/display/config/SensorDetails;->getFeatureFlag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 145
    goto :goto_2

    .line 147
    :cond_3
    invoke-static {v3}, Lcom/android/server/display/config/SensorData;->loadSensorData(Lcom/android/server/display/config/SensorDetails;)Lcom/android/server/display/config/SensorData;

    move-result-object v1

    .line 148
    nop

    .line 153
    .end local v3    # "sensorDetails":Lcom/android/server/display/config/SensorDetails;
    :cond_4
    sget-object v2, Lcom/android/server/display/config/SensorData;->UNSPECIFIED_SENSOR_DATA:Lcom/android/server/display/config/SensorData;

    if-eq v2, v1, :cond_5

    .line 154
    iget-object v2, v1, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 157
    const/4 v1, 0x0

    .line 161
    :cond_5
    return-object v1
.end method

.method public static loadScreenOffBrightnessSensorConfig(Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/SensorData;
    .locals 2
    .param p0, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 111
    invoke-virtual {p0}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenOffBrightnessSensor()Lcom/android/server/display/config/SensorDetails;

    move-result-object v0

    .line 112
    .local v0, "sensorDetails":Lcom/android/server/display/config/SensorDetails;
    if-eqz v0, :cond_0

    .line 113
    invoke-static {v0}, Lcom/android/server/display/config/SensorData;->loadSensorData(Lcom/android/server/display/config/SensorDetails;)Lcom/android/server/display/config/SensorData;

    move-result-object v1

    return-object v1

    .line 115
    :cond_0
    sget-object v1, Lcom/android/server/display/config/SensorData;->UNSPECIFIED_SENSOR_DATA:Lcom/android/server/display/config/SensorData;

    return-object v1
.end method

.method private static loadSensorData(Lcom/android/server/display/config/SensorDetails;)Lcom/android/server/display/config/SensorData;
    .locals 9
    .param p0, "sensorDetails"    # Lcom/android/server/display/config/SensorDetails;

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "minRefreshRate":F
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 202
    .local v1, "maxRefreshRate":F
    invoke-virtual {p0}, Lcom/android/server/display/config/SensorDetails;->getRefreshRate()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v2

    .line 203
    .local v2, "rr":Lcom/android/server/display/config/RefreshRateRange;
    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {v2}, Lcom/android/server/display/config/RefreshRateRange;->getMinimum()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    .line 205
    invoke-virtual {v2}, Lcom/android/server/display/config/RefreshRateRange;->getMaximum()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->floatValue()F

    move-result v1

    move v6, v0

    move v7, v1

    goto :goto_0

    .line 203
    :cond_0
    move v6, v0

    move v7, v1

    .line 207
    .end local v0    # "minRefreshRate":F
    .end local v1    # "maxRefreshRate":F
    .local v6, "minRefreshRate":F
    .local v7, "maxRefreshRate":F
    :goto_0
    nop

    .line 208
    invoke-virtual {p0}, Lcom/android/server/display/config/SensorDetails;->getSupportedModes()Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object v0

    .line 207
    invoke-static {v0}, Lcom/android/server/display/config/SupportedModeData;->load(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)Ljava/util/List;

    move-result-object v8

    .line 210
    .local v8, "supportedModes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/SupportedModeData;>;"
    new-instance v3, Lcom/android/server/display/config/SensorData;

    invoke-virtual {p0}, Lcom/android/server/display/config/SensorDetails;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/display/config/SensorDetails;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v3 .. v8}, Lcom/android/server/display/config/SensorData;-><init>(Ljava/lang/String;Ljava/lang/String;FFLjava/util/List;)V

    return-object v3
.end method

.method public static loadSensorUnspecifiedConfig()Lcom/android/server/display/config/SensorData;
    .locals 1

    .line 196
    sget-object v0, Lcom/android/server/display/config/SensorData;->UNSPECIFIED_SENSOR_DATA:Lcom/android/server/display/config/SensorData;

    return-object v0
.end method

.method public static loadTempSensorConfig(Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/SensorData;
    .locals 4
    .param p0, "flags"    # Lcom/android/server/display/feature/DisplayManagerFlags;
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 177
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getTempSensor()Lcom/android/server/display/config/SensorDetails;

    move-result-object v0

    .line 178
    .local v0, "sensorDetails":Lcom/android/server/display/config/SensorDetails;
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isSensorBasedBrightnessThrottlingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/display/config/SensorDetails;->getName()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/server/display/config/SensorDetails;->getType()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "type":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 184
    :cond_2
    const-string v2, "SKIN"

    .line 185
    const/4 v1, 0x0

    .line 187
    :cond_3
    new-instance v3, Lcom/android/server/display/config/SensorData;

    invoke-direct {v3, v2, v1}, Lcom/android/server/display/config/SensorData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 179
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/server/display/config/SensorData;->loadTempSensorUnspecifiedConfig()Lcom/android/server/display/config/SensorData;

    move-result-object v1

    return-object v1
.end method

.method public static loadTempSensorUnspecifiedConfig()Lcom/android/server/display/config/SensorData;
    .locals 3

    .line 168
    new-instance v0, Lcom/android/server/display/config/SensorData;

    const-string v1, "SKIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/config/SensorData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "sensorName"    # Ljava/lang/String;
    .param p2, "sensorType"    # Ljava/lang/String;

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 69
    .local v0, "isNameSpecified":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v1

    .line 70
    .local v2, "isTypeSpecified":Z
    if-nez v0, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    nop

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    .line 71
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    nop

    nop

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    .line 72
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    nop

    .line 70
    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SensorData{type= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", refreshRateRange: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/SensorData;->minRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/SensorData;->maxRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "], supportedModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/SensorData;->supportedModes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
