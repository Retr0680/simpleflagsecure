.class public final Lcom/android/server/input/InputDataStore;
.super Ljava/lang/Object;
.source "InputDataStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/InputDataStore$FileInjector;
    }
.end annotation


# static fields
.field private static final ATTR_APP_LAUNCH_DATA_CATEGORY:Ljava/lang/String; = "category"

.field private static final ATTR_APP_LAUNCH_DATA_CLASS_NAME:Ljava/lang/String; = "class_name"

.field private static final ATTR_APP_LAUNCH_DATA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final ATTR_APP_LAUNCH_DATA_ROLE:Ljava/lang/String; = "role"

.field private static final ATTR_KEY_GESTURE_TYPE:Ljava/lang/String; = "key_gesture_type"

.field private static final ATTR_KEY_TRIGGER_KEYCODE:Ljava/lang/String; = "keycode"

.field private static final ATTR_KEY_TRIGGER_MODIFIER_STATE:Ljava/lang/String; = "modifiers"

.field private static final ATTR_TOUCHPAD_TRIGGER_GESTURE_TYPE:Ljava/lang/String; = "touchpad_gesture_type"

.field private static final INPUT_MANAGER_DIRECTORY:Ljava/lang/String; = "input"

.field private static final TAG:Ljava/lang/String; = "InputDataStore"

.field private static final TAG_APP_LAUNCH_DATA:Ljava/lang/String; = "app_launch_data"

.field private static final TAG_INPUT_GESTURE:Ljava/lang/String; = "input_gesture"

.field private static final TAG_INPUT_GESTURE_LIST:Ljava/lang/String; = "input_gesture_list"

.field private static final TAG_KEY_TRIGGER:Ljava/lang/String; = "key_trigger"

.field private static final TAG_ROOT:Ljava/lang/String; = "root"

.field private static final TAG_TOUCHPAD_TRIGGER:Ljava/lang/String; = "touchpad_trigger"


# instance fields
.field private final mInputGestureFileInjector:Lcom/android/server/input/InputDataStore$FileInjector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 73
    new-instance v0, Lcom/android/server/input/InputDataStore$FileInjector;

    const-string/jumbo v1, "input_gestures.xml"

    invoke-direct {v0, v1}, Lcom/android/server/input/InputDataStore$FileInjector;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/input/InputDataStore;-><init>(Lcom/android/server/input/InputDataStore$FileInjector;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/android/server/input/InputDataStore$FileInjector;)V
    .locals 0
    .param p1, "inputGestureFileInjector"    # Lcom/android/server/input/InputDataStore$FileInjector;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/server/input/InputDataStore;->mInputGestureFileInjector:Lcom/android/server/input/InputDataStore$FileInjector;

    .line 78
    return-void
.end method

.method private readInputGestureFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/hardware/input/InputGestureData;
    .locals 10
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 199
    new-instance v0, Landroid/hardware/input/InputGestureData$Builder;

    invoke-direct {v0}, Landroid/hardware/input/InputGestureData$Builder;-><init>()V

    .line 200
    .local v0, "builder":Landroid/hardware/input/InputGestureData$Builder;
    const-string/jumbo v1, "key_gesture_type"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputGestureData$Builder;->setKeyGestureType(I)Landroid/hardware/input/InputGestureData$Builder;

    .line 201
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 203
    .local v1, "outerDepth":I
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_6

    .line 205
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-gt v1, v3, :cond_5

    .line 213
    const/4 v3, 0x3

    if-ne v4, v3, :cond_0

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "input_gesture"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    goto/16 :goto_2

    .line 217
    :cond_0
    const/4 v3, 0x2

    if-eq v4, v3, :cond_1

    .line 218
    goto :goto_0

    .line 221
    :cond_1
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, "tag":Ljava/lang/String;
    const-string/jumbo v5, "key_trigger"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 223
    nop

    .line 224
    const-string/jumbo v5, "keycode"

    invoke-interface {p1, v2, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 225
    const-string/jumbo v6, "modifiers"

    invoke-interface {p1, v2, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 223
    invoke-static {v5, v6}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/hardware/input/InputGestureData$Builder;->setTrigger(Landroid/hardware/input/InputGestureData$Trigger;)Landroid/hardware/input/InputGestureData$Builder;

    goto :goto_1

    .line 226
    :cond_2
    const-string/jumbo v5, "touchpad_trigger"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 227
    nop

    .line 228
    const-string/jumbo v5, "touchpad_gesture_type"

    invoke-interface {p1, v2, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 227
    invoke-static {v5}, Landroid/hardware/input/InputGestureData;->createTouchpadTrigger(I)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/hardware/input/InputGestureData$Builder;->setTrigger(Landroid/hardware/input/InputGestureData$Trigger;)Landroid/hardware/input/InputGestureData$Builder;

    goto :goto_1

    .line 229
    :cond_3
    const-string v5, "app_launch_data"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 230
    const-string/jumbo v5, "role"

    invoke-interface {p1, v2, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 231
    .local v5, "roleValue":Ljava/lang/String;
    const-string v6, "category"

    invoke-interface {p1, v2, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 233
    .local v6, "categoryValue":Ljava/lang/String;
    const-string v7, "class_name"

    invoke-interface {p1, v2, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 235
    .local v7, "classNameValue":Ljava/lang/String;
    const-string/jumbo v8, "package_name"

    invoke-interface {p1, v2, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 237
    .local v8, "packageNameValue":Ljava/lang/String;
    invoke-static {v6, v5, v8, v7}, Landroid/hardware/input/AppLaunchData;->createLaunchData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;

    move-result-object v9

    .line 239
    .local v9, "appLaunchData":Landroid/hardware/input/AppLaunchData;
    if-eqz v9, :cond_4

    .line 240
    invoke-virtual {v0, v9}, Landroid/hardware/input/InputGestureData$Builder;->setAppLaunchData(Landroid/hardware/input/AppLaunchData;)Landroid/hardware/input/InputGestureData$Builder;

    .line 243
    .end local v3    # "tag":Ljava/lang/String;
    .end local v5    # "roleValue":Ljava/lang/String;
    .end local v6    # "categoryValue":Ljava/lang/String;
    .end local v7    # "classNameValue":Ljava/lang/String;
    .end local v8    # "packageNameValue":Ljava/lang/String;
    .end local v9    # "appLaunchData":Landroid/hardware/input/AppLaunchData;
    :cond_4
    :goto_1
    goto/16 :goto_0

    .line 206
    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parser has left the initial scope of the tag that was being parsed on line number: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getLineNumber()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 244
    :cond_6
    :goto_2
    invoke-virtual {v0}, Landroid/hardware/input/InputGestureData$Builder;->build()Landroid/hardware/input/InputGestureData;

    move-result-object v2

    return-object v2
.end method

.method private readInputGestureListFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;
    .locals 7
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/input/InputGestureData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v0, "inputGestureDataList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputGestureData;>;"
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 252
    .local v1, "outerDepth":I
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    .line 254
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 262
    const/4 v2, 0x3

    if-ne v3, v2, :cond_0

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "input_gesture_list"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    goto :goto_2

    .line 266
    :cond_0
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1

    .line 267
    goto :goto_0

    .line 270
    :cond_1
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "tag":Ljava/lang/String;
    const-string/jumbo v4, "input_gesture"

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 273
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/input/InputDataStore;->readInputGestureFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/hardware/input/InputGestureData;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    goto :goto_1

    .line 274
    :catch_0
    move-exception v4

    .line 275
    .local v4, "exception":Ljava/lang/IllegalArgumentException;
    const-string v5, "InputDataStore"

    const-string v6, "Invalid parameters for input gesture data: "

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    goto :goto_0

    .line 279
    .end local v2    # "tag":Ljava/lang/String;
    .end local v4    # "exception":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_1
    goto :goto_0

    .line 255
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parser has left the initial scope of the tag that was being parsed on line number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 280
    :cond_4
    :goto_2
    return-object v0
.end method

.method private writeInputGestureListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;)V
    .locals 4
    .param p1, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlSerializer;",
            "Ljava/util/List<",
            "Landroid/hardware/input/InputGestureData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    .local p2, "inputGestureDataList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputGestureData;>;"
    const/4 v0, 0x0

    const-string/jumbo v1, "input_gesture_list"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 327
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputGestureData;

    .line 328
    .local v3, "inputGestureData":Landroid/hardware/input/InputGestureData;
    invoke-direct {p0, p1, v3}, Lcom/android/server/input/InputDataStore;->writeInputGestureToXml(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/hardware/input/InputGestureData;)V

    .line 329
    .end local v3    # "inputGestureData":Landroid/hardware/input/InputGestureData;
    goto :goto_0

    .line 330
    :cond_0
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 331
    return-void
.end method

.method private writeInputGestureToXml(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/hardware/input/InputGestureData;)V
    .locals 8
    .param p1, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p2, "inputGestureData"    # Landroid/hardware/input/InputGestureData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    const/4 v0, 0x0

    const-string/jumbo v1, "input_gesture"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 286
    nop

    .line 287
    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/input/InputGestureData$Action;->keyGestureType()I

    move-result v2

    .line 286
    const-string/jumbo v3, "key_gesture_type"

    invoke-interface {p1, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 289
    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v2

    .line 290
    .local v2, "trigger":Landroid/hardware/input/InputGestureData$Trigger;
    instance-of v3, v2, Landroid/hardware/input/InputGestureData$KeyTrigger;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/hardware/input/InputGestureData$KeyTrigger;

    .line 291
    .local v3, "keyTrigger":Landroid/hardware/input/InputGestureData$KeyTrigger;
    const-string/jumbo v4, "key_trigger"

    invoke-interface {p1, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 292
    invoke-virtual {v3}, Landroid/hardware/input/InputGestureData$KeyTrigger;->getKeycode()I

    move-result v5

    const-string/jumbo v6, "keycode"

    invoke-interface {p1, v0, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 293
    nop

    .line 294
    invoke-virtual {v3}, Landroid/hardware/input/InputGestureData$KeyTrigger;->getModifierState()I

    move-result v5

    .line 293
    const-string/jumbo v6, "modifiers"

    invoke-interface {p1, v0, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 295
    invoke-interface {p1, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 296
    .end local v3    # "keyTrigger":Landroid/hardware/input/InputGestureData$KeyTrigger;
    :cond_0
    instance-of v3, v2, Landroid/hardware/input/InputGestureData$TouchpadTrigger;

    nop

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroid/hardware/input/InputGestureData$TouchpadTrigger;

    .line 297
    .local v3, "touchpadTrigger":Landroid/hardware/input/InputGestureData$TouchpadTrigger;
    const-string/jumbo v4, "touchpad_trigger"

    invoke-interface {p1, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 298
    nop

    .line 299
    invoke-virtual {v3}, Landroid/hardware/input/InputGestureData$TouchpadTrigger;->getTouchpadGestureType()I

    move-result v5

    .line 298
    const-string/jumbo v6, "touchpad_gesture_type"

    invoke-interface {p1, v0, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 300
    invoke-interface {p1, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 303
    .end local v3    # "touchpadTrigger":Landroid/hardware/input/InputGestureData$TouchpadTrigger;
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/input/InputGestureData$Action;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 304
    const-string v3, "app_launch_data"

    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 305
    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/input/InputGestureData$Action;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v4

    .line 306
    .local v4, "appLaunchData":Landroid/hardware/input/AppLaunchData;
    instance-of v5, v4, Landroid/hardware/input/AppLaunchData$RoleData;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Landroid/hardware/input/AppLaunchData$RoleData;

    .line 307
    .local v5, "roleData":Landroid/hardware/input/AppLaunchData$RoleData;
    const-string/jumbo v6, "role"

    invoke-virtual {v5}, Landroid/hardware/input/AppLaunchData$RoleData;->getRole()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v0, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 308
    .end local v5    # "roleData":Landroid/hardware/input/AppLaunchData$RoleData;
    :cond_2
    instance-of v5, v4, Landroid/hardware/input/AppLaunchData$CategoryData;

    if-eqz v5, :cond_3

    .line 309
    move-object v5, v4

    check-cast v5, Landroid/hardware/input/AppLaunchData$CategoryData;

    .line 310
    .local v5, "categoryData":Landroid/hardware/input/AppLaunchData$CategoryData;
    nop

    .line 311
    invoke-virtual {v5}, Landroid/hardware/input/AppLaunchData$CategoryData;->getCategory()Ljava/lang/String;

    move-result-object v6

    .line 310
    const-string v7, "category"

    invoke-interface {p1, v0, v7, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 312
    .end local v5    # "categoryData":Landroid/hardware/input/AppLaunchData$CategoryData;
    :cond_3
    instance-of v5, v4, Landroid/hardware/input/AppLaunchData$ComponentData;

    nop

    if-eqz v5, :cond_4

    move-object v5, v4

    check-cast v5, Landroid/hardware/input/AppLaunchData$ComponentData;

    .line 313
    .local v5, "componentData":Landroid/hardware/input/AppLaunchData$ComponentData;
    nop

    .line 314
    invoke-virtual {v5}, Landroid/hardware/input/AppLaunchData$ComponentData;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 313
    const-string/jumbo v7, "package_name"

    invoke-interface {p1, v0, v7, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 315
    nop

    .line 316
    invoke-virtual {v5}, Landroid/hardware/input/AppLaunchData$ComponentData;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 315
    const-string v7, "class_name"

    invoke-interface {p1, v0, v7, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 318
    .end local v5    # "componentData":Landroid/hardware/input/AppLaunchData$ComponentData;
    :cond_4
    :goto_1
    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 321
    .end local v4    # "appLaunchData":Landroid/hardware/input/AppLaunchData;
    :cond_5
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 322
    return-void
.end method


# virtual methods
.method public loadInputGestures(I)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/input/InputGestureData;",
            ">;"
        }
    .end annotation

    .line 89
    const-string v0, "Failed to read from "

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputDataStore;->mInputGestureFileInjector:Lcom/android/server/input/InputDataStore$FileInjector;

    invoke-virtual {v1, p1}, Lcom/android/server/input/InputDataStore$FileInjector;->openRead(I)Ljava/io/InputStream;

    move-result-object v1

    .line 90
    .local v1, "inputStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/input/InputDataStore;->readInputGesturesXml(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v2

    .line 91
    .local v2, "inputGestureDataList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputGestureData;>;"
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v1    # "inputStream":Ljava/io/InputStream;
    nop

    .line 109
    return-object v2

    .line 102
    .end local v2    # "inputGestureDataList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputGestureData;>;"
    :catch_0
    move-exception v1

    goto :goto_0

    .line 96
    :catch_1
    move-exception v1

    goto :goto_1

    .line 92
    :catch_2
    move-exception v0

    goto :goto_2

    .line 102
    :goto_0
    nop

    .line 105
    .local v1, "exception":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/input/InputDataStore;->mInputGestureFileInjector:Lcom/android/server/input/InputDataStore$FileInjector;

    .line 106
    invoke-virtual {v0, p1}, Lcom/android/server/input/InputDataStore$FileInjector;->getAtomicFileForUserId(I)Landroid/util/AtomicFile;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 96
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_1
    nop

    .line 99
    .local v1, "exception":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/input/InputDataStore;->mInputGestureFileInjector:Lcom/android/server/input/InputDataStore$FileInjector;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputDataStore$FileInjector;->getAtomicFileForUserId(I)Landroid/util/AtomicFile;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InputDataStore"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 92
    .end local v1    # "exception":Ljava/io/IOException;
    :goto_2
    nop

    .line 95
    .local v0, "exception":Ljava/io/FileNotFoundException;
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public readInputGesturesXml(Ljava/io/InputStream;Z)Ljava/util/List;
    .locals 5
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "utf8Encoded"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/hardware/input/InputGestureData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v0, "inputGestureDataList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputGestureData;>;"
    if-eqz p2, :cond_0

    .line 150
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    .line 151
    .local v1, "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    .end local v1    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    :cond_0
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    .line 156
    .restart local v1    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    :goto_0
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    .line 157
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1

    .line 158
    goto :goto_0

    .line 160
    :cond_1
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "tag":Ljava/lang/String;
    const-string/jumbo v4, "root"

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 162
    goto :goto_0

    .line 165
    :cond_2
    const-string/jumbo v4, "input_gesture_list"

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 166
    invoke-direct {p0, v1}, Lcom/android/server/input/InputDataStore;->readInputGestureListFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 168
    .end local v2    # "tag":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 169
    :cond_4
    return-object v0
.end method

.method public saveInputGestures(ILjava/util/List;)V
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/input/InputGestureData;",
            ">;)V"
        }
    .end annotation

    .line 119
    .local p2, "inputGestureDataList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputGestureData;>;"
    const/4 v0, 0x0

    .line 121
    .local v0, "outputStream":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputDataStore;->mInputGestureFileInjector:Lcom/android/server/input/InputDataStore$FileInjector;

    invoke-virtual {v2, p1}, Lcom/android/server/input/InputDataStore$FileInjector;->startWrite(I)Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v0, v2

    .line 122
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/input/InputDataStore;->writeInputGestureXml(Ljava/io/OutputStream;ZLjava/util/List;)V

    .line 123
    iget-object v2, p0, Lcom/android/server/input/InputDataStore;->mInputGestureFileInjector:Lcom/android/server/input/InputDataStore$FileInjector;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v0, v3}, Lcom/android/server/input/InputDataStore$FileInjector;->finishWrite(ILjava/io/FileOutputStream;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_0

    .line 124
    :catch_0
    move-exception v2

    .line 125
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write to file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/input/InputDataStore;->mInputGestureFileInjector:Lcom/android/server/input/InputDataStore$FileInjector;

    .line 126
    invoke-virtual {v4, p1}, Lcom/android/server/input/InputDataStore$FileInjector;->getAtomicFileForUserId(I)Landroid/util/AtomicFile;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    const-string v4, "InputDataStore"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    iget-object v3, p0, Lcom/android/server/input/InputDataStore;->mInputGestureFileInjector:Lcom/android/server/input/InputDataStore$FileInjector;

    invoke-virtual {v3, p1, v0, v1}, Lcom/android/server/input/InputDataStore$FileInjector;->finishWrite(ILjava/io/FileOutputStream;Z)V

    .line 130
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public writeInputGestureXml(Ljava/io/OutputStream;ZLjava/util/List;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "utf8Encoded"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Z",
            "Ljava/util/List<",
            "Landroid/hardware/input/InputGestureData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    .local p3, "inputGestureDataList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputGestureData;>;"
    if-eqz p2, :cond_0

    .line 184
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    .line 185
    .local v0, "serializer":Lcom/android/modules/utils/TypedXmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    .end local v0    # "serializer":Lcom/android/modules/utils/TypedXmlSerializer;
    :cond_0
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    .line 190
    .restart local v0    # "serializer":Lcom/android/modules/utils/TypedXmlSerializer;
    :goto_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 191
    const-string/jumbo v1, "root"

    invoke-interface {v0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 192
    invoke-direct {p0, v0, p3}, Lcom/android/server/input/InputDataStore;->writeInputGestureListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;)V

    .line 193
    invoke-interface {v0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 195
    return-void
.end method
