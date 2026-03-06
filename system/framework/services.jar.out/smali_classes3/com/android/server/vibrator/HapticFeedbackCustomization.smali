.class final Lcom/android/server/vibrator/HapticFeedbackCustomization;
.super Ljava/lang/Object;
.source "HapticFeedbackCustomization.java"


# static fields
.field private static final ATTRIBUTE_ID:Ljava/lang/String; = "id"

.field private static final TAG:Ljava/lang/String; = "HapticFeedbackCustomization"

.field private static final TAG_CONSTANT:Ljava/lang/String; = "constant"

.field private static final TAG_CONSTANTS:Ljava/lang/String; = "haptic-feedback-constants"


# instance fields
.field private final mHapticCustomizations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field

.field private final mHapticCustomizationsForSourceRotary:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field

.field private final mHapticCustomizationsForSourceTouchScreen:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Landroid/os/VibratorInfo;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "vibratorInfo"    # Landroid/os/VibratorInfo;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    nop

    .line 132
    invoke-static {p1, p2}, Lcom/android/server/vibrator/HapticFeedbackCustomization;->loadCustomizedFeedbackVibrationFromFile(Landroid/content/res/Resources;Landroid/os/VibratorInfo;)Landroid/util/SparseArray;

    move-result-object v0

    .line 133
    .local v0, "hapticCustomizations":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 136
    const v1, 0x117000a

    invoke-static {p1, p2, v1}, Lcom/android/server/vibrator/HapticFeedbackCustomization;->loadCustomizedFeedbackVibrationFromRes(Landroid/content/res/Resources;Landroid/os/VibratorInfo;I)Landroid/util/SparseArray;

    move-result-object v0

    .line 139
    :cond_0
    iput-object v0, p0, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizations:Landroid/util/SparseArray;

    .line 142
    nop

    .line 143
    nop

    .line 144
    const v1, 0x117000b

    invoke-static {p1, p2, v1}, Lcom/android/server/vibrator/HapticFeedbackCustomization;->loadCustomizedFeedbackVibrationFromRes(Landroid/content/res/Resources;Landroid/os/VibratorInfo;I)Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizationsForSourceRotary:Landroid/util/SparseArray;

    .line 146
    nop

    .line 147
    const v1, 0x117000c

    invoke-static {p1, p2, v1}, Lcom/android/server/vibrator/HapticFeedbackCustomization;->loadCustomizedFeedbackVibrationFromRes(Landroid/content/res/Resources;Landroid/os/VibratorInfo;I)Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizationsForSourceTouchScreen:Landroid/util/SparseArray;

    .line 153
    return-void
.end method

.method constructor <init>(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;)V"
        }
    .end annotation

    .line 158
    .local p1, "hapticCustomizations":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    .local p2, "hapticCustomizationsForSourceRotary":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    .local p3, "hapticCustomizationsForSourceTouchScreen":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizations:Landroid/util/SparseArray;

    .line 160
    iput-object p2, p0, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizationsForSourceRotary:Landroid/util/SparseArray;

    .line 161
    iput-object p3, p0, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizationsForSourceTouchScreen:Landroid/util/SparseArray;

    .line 162
    return-void
.end method

.method private static loadCustomizedFeedbackVibrationFromFile(Landroid/content/res/Resources;Landroid/os/VibratorInfo;)Landroid/util/SparseArray;
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "vibratorInfo"    # Landroid/os/VibratorInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/os/VibratorInfo;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation

    .line 194
    const-string v0, "HapticFeedbackCustomization"

    :try_start_0
    invoke-static {p0}, Lcom/android/server/vibrator/HapticFeedbackCustomization;->readCustomizationFile(Landroid/content/res/Resources;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    .line 195
    .local v1, "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    if-nez v1, :cond_0

    .line 196
    const-string v2, "No loadable haptic feedback customization from file."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    return-object v2

    .line 200
    .end local v1    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 199
    .restart local v1    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    :cond_0
    invoke-static {v1, p1}, Lcom/android/server/vibrator/HapticFeedbackCustomization;->parseVibrations(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/VibratorInfo;)Landroid/util/SparseArray;

    move-result-object v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/vibrator/persistence/XmlParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 200
    .end local v1    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    :goto_0
    nop

    .line 201
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Error parsing haptic feedback customizations from file"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method private static loadCustomizedFeedbackVibrationFromRes(Landroid/content/res/Resources;Landroid/os/VibratorInfo;I)Landroid/util/SparseArray;
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "vibratorInfo"    # Landroid/os/VibratorInfo;
    .param p2, "xmlResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/os/VibratorInfo;",
            "I)",
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation

    .line 216
    const-string v0, "HapticFeedbackCustomization"

    :try_start_0
    invoke-static {p0, p2}, Lcom/android/server/vibrator/HapticFeedbackCustomization;->readCustomizationResources(Landroid/content/res/Resources;I)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    .line 217
    .local v1, "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    if-nez v1, :cond_0

    .line 218
    const-string v2, "No loadable haptic feedback customization from res."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    return-object v2

    .line 222
    .end local v1    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 221
    .restart local v1    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    :cond_0
    invoke-static {v1, p1}, Lcom/android/server/vibrator/HapticFeedbackCustomization;->parseVibrations(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/VibratorInfo;)Landroid/util/SparseArray;

    move-result-object v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/vibrator/persistence/XmlParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 222
    .end local v1    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    :goto_0
    nop

    .line 223
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Error parsing haptic feedback customizations from res"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method private static parseVibrations(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/VibratorInfo;)Landroid/util/SparseArray;
    .locals 14
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "vibratorInfo"    # Landroid/os/VibratorInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            "Landroid/os/VibratorInfo;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    .line 280
    const-string v0, "haptic-feedback-constants"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 281
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    .line 282
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 284
    .local v2, "rootDepth":I
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 285
    .local v3, "mapping":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/VibrationEffect;>;"
    :goto_0
    invoke-static {p0, v2}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 286
    const-string v4, "constant"

    invoke-static {p0, v4}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    .line 287
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    .line 290
    .local v5, "customizationDepth":I
    const-string v6, "id"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    .line 291
    invoke-static {p0, v6}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributeIntNonNegative(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v6

    .line 292
    .local v6, "effectId":I
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->contains(I)Z

    move-result v7

    const-string v8, "HapticFeedbackCustomization"

    if-eqz v7, :cond_0

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple customizations found for effect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0

    .line 298
    :cond_0
    nop

    .line 299
    invoke-static {p0, v5}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported empty customization tag for effect "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Object;

    .line 298
    invoke-static {v7, v9, v10}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 302
    const/4 v7, 0x1

    invoke-static {p0, v7}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseElement(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;

    move-result-object v7

    .line 304
    .local v7, "parsedVibration":Landroid/os/vibrator/persistence/ParsedVibration;
    invoke-virtual {v7, p1}, Landroid/os/vibrator/persistence/ParsedVibration;->resolve(Landroid/os/VibratorInfo;)Landroid/os/VibrationEffect;

    move-result-object v9

    .line 305
    .local v9, "effect":Landroid/os/VibrationEffect;
    if-eqz v9, :cond_2

    .line 306
    invoke-virtual {v9}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v10

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 307
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 309
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    .line 307
    const-string v4, "Vibration for effect ID %d is repeating, which is not allowed as a haptic feedback: %s"

    invoke-static {v0, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0

    .line 312
    :cond_1
    invoke-virtual {v3, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 315
    :cond_2
    invoke-static {p0, v4, v5}, Lcom/android/internal/vibrator/persistence/XmlReader;->readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)V

    .line 316
    .end local v5    # "customizationDepth":I
    .end local v6    # "effectId":I
    .end local v7    # "parsedVibration":Landroid/os/vibrator/persistence/ParsedVibration;
    .end local v9    # "effect":Landroid/os/VibrationEffect;
    goto/16 :goto_0

    .line 319
    :cond_3
    invoke-static {p0, v0, v2}, Lcom/android/internal/vibrator/persistence/XmlReader;->readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)V

    .line 320
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/XmlReader;->readDocumentEndTag(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 322
    return-object v3
.end method

.method private static readCustomizationFile(Landroid/content/res/Resources;)Lcom/android/modules/utils/TypedXmlPullParser;
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 233
    const-string v0, "HapticFeedbackCustomization"

    const v1, 0x1040283

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 238
    .local v1, "customizationFile":Ljava/lang/String;
    nop

    .line 240
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    return-object v2

    .line 246
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 250
    .local v3, "customizationReader":Ljava/io/Reader;
    nop

    .line 253
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v2

    .line 254
    .local v2, "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    const-string v4, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 255
    invoke-interface {v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 256
    const-string v4, "Successfully opened customization file."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-object v2

    .line 247
    .end local v2    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v3    # "customizationReader":Ljava/io/Reader;
    :catch_0
    move-exception v3

    .line 248
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v4, "Specified customization file not found."

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    return-object v2

    .line 235
    .end local v1    # "customizationFile":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 236
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "Customization file directory config not found."

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    return-object v2
.end method

.method private static readCustomizationResources(Landroid/content/res/Resources;I)Lcom/android/modules/utils/TypedXmlPullParser;
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "xmlResId"    # I

    .line 262
    const-string v0, "HapticFeedbackCustomization"

    .line 267
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .local v1, "resParser":Landroid/content/res/XmlResourceParser;
    nop

    .line 272
    const-string v2, "Successfully opened customization resource."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    return-object v0

    .line 268
    .end local v1    # "resParser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "Haptic customization resource not found."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method getEffect(I)Landroid/os/VibrationEffect;
    .locals 1
    .param p1, "effectId"    # I

    .line 166
    iget-object v0, p0, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    return-object v0
.end method

.method getEffect(II)Landroid/os/VibrationEffect;
    .locals 2
    .param p1, "effectId"    # I
    .param p2, "inputSource"    # I

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "resultVibration":Landroid/os/VibrationEffect;
    const/high16 v1, 0x400000

    and-int/2addr v1, p2

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizationsForSourceRotary:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/os/VibrationEffect;

    goto :goto_0

    .line 174
    :cond_0
    and-int/lit16 v1, p2, 0x1002

    if-eqz v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizationsForSourceTouchScreen:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/os/VibrationEffect;

    .line 177
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 178
    iget-object v1, p0, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/os/VibrationEffect;

    .line 180
    :cond_2
    return-object v0
.end method
