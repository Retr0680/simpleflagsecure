.class public Lcom/android/server/display/config/HdrBrightnessConfig;
.super Ljava/lang/Object;
.source "HdrBrightnessConfig.java"


# instance fields
.field private allowInLowPowerMode:Ljava/lang/Boolean;

.field private brightnessDecreaseDebounceMillis:Ljava/math/BigInteger;

.field private brightnessIncreaseDebounceMillis:Ljava/math/BigInteger;

.field private brightnessMap:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

.field private minimumHdrPercentOfScreenForHbm:Ljava/math/BigDecimal;

.field private minimumHdrPercentOfScreenForNbm:Ljava/math/BigDecimal;

.field private screenBrightnessRampDecrease:Ljava/math/BigDecimal;

.field private screenBrightnessRampIncrease:Ljava/math/BigDecimal;

.field private sdrHdrRatioMap:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/HdrBrightnessConfig;
    .locals 7
    .param p0, "_parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 153
    new-instance v0, Lcom/android/server/display/config/HdrBrightnessConfig;

    invoke-direct {v0}, Lcom/android/server/display/config/HdrBrightnessConfig;-><init>()V

    .line 154
    .local v0, "_instance":Lcom/android/server/display/config/HdrBrightnessConfig;
    const/4 v1, 0x0

    .line 155
    .local v1, "_raw":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 157
    .local v2, "outerDepth":I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_a

    if-eq v4, v6, :cond_a

    .line 159
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "_tagName":Ljava/lang/String;
    const-string v5, "brightnessMap"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 162
    invoke-static {p0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object v5

    .line 163
    .local v5, "_value":Lcom/android/server/display/config/NonNegativeFloatToFloatMap;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HdrBrightnessConfig;->setBrightnessMap(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)V

    .line 164
    .end local v5    # "_value":Lcom/android/server/display/config/NonNegativeFloatToFloatMap;
    goto/16 :goto_1

    :cond_1
    const-string v5, "brightnessIncreaseDebounceMillis"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 165
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 166
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 167
    .local v5, "_value":Ljava/math/BigInteger;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HdrBrightnessConfig;->setBrightnessIncreaseDebounceMillis(Ljava/math/BigInteger;)V

    .line 168
    .end local v5    # "_value":Ljava/math/BigInteger;
    goto/16 :goto_1

    :cond_2
    const-string v5, "brightnessDecreaseDebounceMillis"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 169
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 170
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 171
    .restart local v5    # "_value":Ljava/math/BigInteger;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HdrBrightnessConfig;->setBrightnessDecreaseDebounceMillis(Ljava/math/BigInteger;)V

    .line 172
    .end local v5    # "_value":Ljava/math/BigInteger;
    goto/16 :goto_1

    :cond_3
    const-string/jumbo v5, "screenBrightnessRampIncrease"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 173
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 174
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 175
    .local v5, "_value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HdrBrightnessConfig;->setScreenBrightnessRampIncrease(Ljava/math/BigDecimal;)V

    .line 176
    .end local v5    # "_value":Ljava/math/BigDecimal;
    goto :goto_1

    :cond_4
    const-string/jumbo v5, "screenBrightnessRampDecrease"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 177
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 178
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 179
    .restart local v5    # "_value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HdrBrightnessConfig;->setScreenBrightnessRampDecrease(Ljava/math/BigDecimal;)V

    .line 180
    .end local v5    # "_value":Ljava/math/BigDecimal;
    goto :goto_1

    :cond_5
    const-string/jumbo v5, "minimumHdrPercentOfScreenForNbm"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 181
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 182
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 183
    .restart local v5    # "_value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HdrBrightnessConfig;->setMinimumHdrPercentOfScreenForNbm(Ljava/math/BigDecimal;)V

    .line 184
    .end local v5    # "_value":Ljava/math/BigDecimal;
    goto :goto_1

    :cond_6
    const-string/jumbo v5, "minimumHdrPercentOfScreenForHbm"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 185
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 186
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 187
    .restart local v5    # "_value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HdrBrightnessConfig;->setMinimumHdrPercentOfScreenForHbm(Ljava/math/BigDecimal;)V

    .line 188
    .end local v5    # "_value":Ljava/math/BigDecimal;
    goto :goto_1

    :cond_7
    const-string v5, "allowInLowPowerMode"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 189
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 191
    .local v5, "_value":Z
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HdrBrightnessConfig;->setAllowInLowPowerMode(Z)V

    .line 192
    .end local v5    # "_value":Z
    goto :goto_1

    :cond_8
    const-string/jumbo v5, "sdrHdrRatioMap"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 193
    invoke-static {p0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object v5

    .line 194
    .local v5, "_value":Lcom/android/server/display/config/NonNegativeFloatToFloatMap;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HdrBrightnessConfig;->setSdrHdrRatioMap(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)V

    .line 195
    .end local v5    # "_value":Lcom/android/server/display/config/NonNegativeFloatToFloatMap;
    goto :goto_1

    .line 196
    :cond_9
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 198
    .end local v3    # "_tagName":Ljava/lang/String;
    :goto_1
    goto/16 :goto_0

    .line 199
    :cond_a
    if-ne v4, v6, :cond_b

    .line 202
    return-object v0

    .line 200
    :cond_b
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "HdrBrightnessConfig is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public final getAllowInLowPowerMode()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->allowInLowPowerMode:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    return v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->allowInLowPowerMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getBrightnessDecreaseDebounceMillis()Ljava/math/BigInteger;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->brightnessDecreaseDebounceMillis:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getBrightnessIncreaseDebounceMillis()Ljava/math/BigInteger;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->brightnessIncreaseDebounceMillis:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getBrightnessMap()Lcom/android/server/display/config/NonNegativeFloatToFloatMap;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->brightnessMap:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    return-object v0
.end method

.method public final getMinimumHdrPercentOfScreenForHbm()Ljava/math/BigDecimal;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->minimumHdrPercentOfScreenForHbm:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getMinimumHdrPercentOfScreenForNbm()Ljava/math/BigDecimal;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->minimumHdrPercentOfScreenForNbm:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getScreenBrightnessRampDecrease()Ljava/math/BigDecimal;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->screenBrightnessRampDecrease:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getScreenBrightnessRampIncrease()Ljava/math/BigDecimal;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->screenBrightnessRampIncrease:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getSdrHdrRatioMap()Lcom/android/server/display/config/NonNegativeFloatToFloatMap;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->sdrHdrRatioMap:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    return-object v0
.end method

.method hasAllowInLowPowerMode()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->allowInLowPowerMode:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x0

    return v0

    .line 130
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasBrightnessDecreaseDebounceMillis()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->brightnessDecreaseDebounceMillis:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    return v0

    .line 52
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasBrightnessIncreaseDebounceMillis()Z
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->brightnessIncreaseDebounceMillis:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    return v0

    .line 37
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasBrightnessMap()Z
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->brightnessMap:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x0

    return v0

    .line 22
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasMinimumHdrPercentOfScreenForHbm()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->minimumHdrPercentOfScreenForHbm:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x0

    return v0

    .line 112
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasMinimumHdrPercentOfScreenForNbm()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->minimumHdrPercentOfScreenForNbm:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    return v0

    .line 97
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessRampDecrease()Z
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->screenBrightnessRampDecrease:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    return v0

    .line 82
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessRampIncrease()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->screenBrightnessRampIncrease:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    return v0

    .line 67
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasSdrHdrRatioMap()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->sdrHdrRatioMap:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    return v0

    .line 145
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final setAllowInLowPowerMode(Z)V
    .locals 1
    .param p1, "allowInLowPowerMode"    # Z

    .line 134
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->allowInLowPowerMode:Ljava/lang/Boolean;

    .line 135
    return-void
.end method

.method public final setBrightnessDecreaseDebounceMillis(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "brightnessDecreaseDebounceMillis"    # Ljava/math/BigInteger;

    .line 56
    iput-object p1, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->brightnessDecreaseDebounceMillis:Ljava/math/BigInteger;

    .line 57
    return-void
.end method

.method public final setBrightnessIncreaseDebounceMillis(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "brightnessIncreaseDebounceMillis"    # Ljava/math/BigInteger;

    .line 41
    iput-object p1, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->brightnessIncreaseDebounceMillis:Ljava/math/BigInteger;

    .line 42
    return-void
.end method

.method public final setBrightnessMap(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)V
    .locals 0
    .param p1, "brightnessMap"    # Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 26
    iput-object p1, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->brightnessMap:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 27
    return-void
.end method

.method public final setMinimumHdrPercentOfScreenForHbm(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "minimumHdrPercentOfScreenForHbm"    # Ljava/math/BigDecimal;

    .line 116
    iput-object p1, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->minimumHdrPercentOfScreenForHbm:Ljava/math/BigDecimal;

    .line 117
    return-void
.end method

.method public final setMinimumHdrPercentOfScreenForNbm(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "minimumHdrPercentOfScreenForNbm"    # Ljava/math/BigDecimal;

    .line 101
    iput-object p1, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->minimumHdrPercentOfScreenForNbm:Ljava/math/BigDecimal;

    .line 102
    return-void
.end method

.method public final setScreenBrightnessRampDecrease(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "screenBrightnessRampDecrease"    # Ljava/math/BigDecimal;

    .line 86
    iput-object p1, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->screenBrightnessRampDecrease:Ljava/math/BigDecimal;

    .line 87
    return-void
.end method

.method public final setScreenBrightnessRampIncrease(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "screenBrightnessRampIncrease"    # Ljava/math/BigDecimal;

    .line 71
    iput-object p1, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->screenBrightnessRampIncrease:Ljava/math/BigDecimal;

    .line 72
    return-void
.end method

.method public final setSdrHdrRatioMap(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)V
    .locals 0
    .param p1, "sdrHdrRatioMap"    # Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 149
    iput-object p1, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->sdrHdrRatioMap:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 150
    return-void
.end method
