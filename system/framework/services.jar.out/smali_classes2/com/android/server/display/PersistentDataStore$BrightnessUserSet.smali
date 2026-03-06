.class public final Lcom/android/server/display/PersistentDataStore$BrightnessUserSet;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/PersistentDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BrightnessUserSet"
.end annotation


# instance fields
.field private mUserBrightness:F

.field private mUserLux:F


# direct methods
.method public constructor <init>(Lcom/android/server/display/PersistentDataStore;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/display/PersistentDataStore;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 984
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessUserSet;->mUserLux:F

    .line 985
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessUserSet;->mUserBrightness:F

    .line 986
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mUserLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessUserSet;->mUserLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mUserBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessUserSet;->mUserBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1039
    return-void
.end method

.method public getUserBrightness()F
    .locals 1

    .line 993
    iget v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessUserSet;->mUserBrightness:F

    return v0
.end method

.method public getUserLux()F
    .locals 1

    .line 989
    iget v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessUserSet;->mUserLux:F

    return v0
.end method

.method public loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 3
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1007
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 1009
    .local v0, "outerDepth":I
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1010
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string/jumbo v2, "user-brightness"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_2

    :sswitch_1
    const-string/jumbo v2, "user-lux"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_2

    :goto_1
    const/4 v1, -0x1

    :goto_2
    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 1016
    :pswitch_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 1017
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessUserSet;->mUserBrightness:F

    .line 1018
    goto :goto_3

    .line 1012
    .end local v1    # "value":Ljava/lang/String;
    :pswitch_1
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 1013
    .restart local v1    # "value":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessUserSet;->mUserLux:F

    .line 1014
    nop

    .line 1021
    .end local v1    # "value":Ljava/lang/String;
    :goto_3
    goto :goto_0

    .line 1023
    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0xff3d8f3 -> :sswitch_1
        0x618bef93 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 3
    .param p1, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1026
    iget v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessUserSet;->mUserLux:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessUserSet;->mUserBrightness:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1027
    const/4 v0, 0x0

    const-string/jumbo v1, "user-lux"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1028
    iget v2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessUserSet;->mUserLux:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1029
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1030
    const-string/jumbo v1, "user-brightness"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1031
    iget v2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessUserSet;->mUserBrightness:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1032
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1034
    :cond_0
    return-void
.end method

.method public setUserBrightnessConfig(FF)Z
    .locals 1
    .param p1, "lux"    # F
    .param p2, "brightness"    # F

    .line 997
    iget v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessUserSet;->mUserLux:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessUserSet;->mUserBrightness:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    .line 1002
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 998
    :goto_0
    iput p1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessUserSet;->mUserLux:F

    .line 999
    iput p2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessUserSet;->mUserBrightness:F

    .line 1000
    const/4 v0, 0x1

    return v0
.end method
