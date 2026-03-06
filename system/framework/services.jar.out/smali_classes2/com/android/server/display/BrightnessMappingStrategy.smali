.class public abstract Lcom/android/server/display/BrightnessMappingStrategy;
.super Ljava/lang/Object;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;,
        Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;
    }
.end annotation


# static fields
.field public static final INVALID_LUX:F = -1.0f

.field public static final INVALID_NITS:F = -1.0f

.field private static final LUX_GRAD_SMOOTHING:F = 0.25f

.field private static final MAX_GRAD:F = 1.0f

.field private static final MIN_PERMISSABLE_INCREASE:F = 0.004f

.field private static final PLOG:Lcom/android/server/display/utils/Plog;

.field private static final SHORT_TERM_MODEL_THRESHOLD_RATIO:F = 0.6f

.field private static final TAG:Ljava/lang/String; = "BrightnessMappingStrategy"

.field private static mMaxBacklight:I

.field private static final sDefaultBacklightArray:[I

.field private static final sDefaultLuxArray:[I

.field private static final sDefaultNit:[I


# instance fields
.field protected mLoggingEnabled:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsDefaultBacklightArray()[I
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->sDefaultBacklightArray:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsDefaultLuxArray()[I
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->sDefaultLuxArray:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsDefaultNit()[I
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->sDefaultNit:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smintArrayToFloatArray([I)[F
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->intArrayToFloatArray([I)[F

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smpropArrayToIntArray(Ljava/lang/String;)[I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->propArrayToIntArray(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 95
    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/display/BrightnessMappingStrategy;->sDefaultLuxArray:[I

    .line 97
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/display/BrightnessMappingStrategy;->sDefaultBacklightArray:[I

    .line 99
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->sDefaultNit:[I

    .line 101
    const/16 v0, 0xff

    sput v0, Lcom/android/server/display/BrightnessMappingStrategy;->mMaxBacklight:I

    .line 104
    const-string v0, "BrightnessMappingStrategy"

    invoke-static {v0}, Lcom/android/server/display/utils/Plog;->createSystemPlog(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x4
        0xa
        0x19
        0x3c
        0x96
        0x186
        0x26c
        0x2ee
        0x3e8
        0x514
        0x6a4
        0xaf0
        0xdac
        0x1194
    .end array-data

    :array_1
    .array-data 4
        0x15e
        0x190
        0x230
        0x352
        0x4ec
        0x564
        0x5b4
        0x672
        0x712
        0x776
        0x83e
        0x8f2
        0x9b0
        0xb18
        0xb9a
        0xdbb
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x8
        0xe
        0x22
        0x46
        0x54
        0x5a
        0x6f
        0x84
        0x91
        0xb2
        0xd3
        0xf8
        0x13e
        0x158
        0x1f4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;ILcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayDeviceConfig"    # Lcom/android/server/display/DisplayDeviceConfig;
    .param p2, "mode"    # I
    .param p3, "displayWhiteBalanceController"    # Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, -0x2

    const-string/jumbo v3, "screen_brightness_for_als"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    .line 190
    .local v11, "preset":I
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->useGmsAdaptiveBrightness()Z

    move-result v0

    .line 192
    .local v0, "useGmsAdaptiveBrightness":Z
    if-nez v0, :cond_0

    .line 193
    const-string/jumbo v1, "ro.vendor.display.array.lux"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "ro.vendor.display.array.auto.lux"

    .line 191
    :goto_0
    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "luxProp":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 196
    const-string/jumbo v3, "ro.vendor.display.array.backlight"

    goto :goto_1

    :cond_1
    const-string/jumbo v3, "ro.vendor.display.array.auto.backlight"

    .line 194
    :goto_1
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, "backlightProp":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/server/display/BrightnessMappingStrategy;->sDefaultLuxArray:[I

    goto :goto_2

    :cond_2
    invoke-static {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->propArrayToIntArray(Ljava/lang/String;)[I

    move-result-object v4

    :goto_2
    move-object v14, v4

    .line 200
    .local v14, "luxLevels":[I
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 201
    sget-object v2, Lcom/android/server/display/BrightnessMappingStrategy;->sDefaultBacklightArray:[I

    goto :goto_3

    :cond_3
    invoke-static {v3}, Lcom/android/server/display/BrightnessMappingStrategy;->propArrayToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 202
    .local v2, "brightnessLevelsBacklight":[I
    :goto_3
    const-string/jumbo v4, "ro.vendor.display.hbm.maxbacklight"

    const/16 v5, 0xfff

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/server/display/BrightnessMappingStrategy;->mMaxBacklight:I

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x1130000

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v7

    .line 207
    .local v7, "autoBrightnessAdjustmentMaxGamma":F
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0026

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v8, v4

    .line 210
    .local v8, "shortTermModelTimeout":J
    new-instance v4, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;

    invoke-static {v14}, Lcom/android/server/display/BrightnessMappingStrategy;->intArrayToFloatArray([I)[F

    move-result-object v5

    .line 211
    invoke-static {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->intArrayToFloatArray([I)[F

    move-result-object v6

    const/4 v13, 0x0

    move-object/from16 v12, p1

    move/from16 v10, p2

    invoke-direct/range {v4 .. v13}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;-><init>([F[FFJIILcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/BrightnessMappingStrategy-IA;)V

    .line 210
    return-object v4
.end method

.method private findInsertionPoint([FF)I
    .locals 2
    .param p1, "arr"    # [F
    .param p2, "val"    # F

    .line 570
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 571
    aget v1, p1, v0

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    .line 572
    return v0

    .line 570
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 575
    .end local v0    # "i":I
    array-length v0, p1

    return v0
.end method

.method public static getFloatArray(Landroid/content/res/TypedArray;)[F
    .locals 4
    .param p0, "array"    # Landroid/content/res/TypedArray;

    .line 260
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 261
    .local v0, "N":I
    new-array v1, v0, [F

    .line 262
    .local v1, "vals":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 263
    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 262
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 265
    .end local v2    # "i":I
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 266
    return-object v1
.end method

.method private static getLuxLevels([I)[F
    .locals 4
    .param p0, "lux"    # [I

    .line 246
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    .line 247
    .local v0, "levels":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 248
    add-int/lit8 v2, v1, 0x1

    aget v3, p0, v1

    int-to-float v3, v3

    aput v3, v0, v2

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 250
    .end local v1    # "i":I
    return-object v0
.end method

.method private insertControlPoint([F[FFF)Landroid/util/Pair;
    .locals 5
    .param p1, "luxLevels"    # [F
    .param p2, "brightnessLevels"    # [F
    .param p3, "lux"    # F
    .param p4, "brightness"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 534
    invoke-direct {p0, p1, p3}, Lcom/android/server/display/BrightnessMappingStrategy;->findInsertionPoint([FF)I

    move-result v0

    .line 537
    .local v0, "idx":I
    array-length v1, p1

    if-ne v0, v1, :cond_0

    .line 538
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 539
    .local v1, "newLuxLevels":[F
    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 540
    .local v2, "newBrightnessLevels":[F
    aput p3, v1, v0

    .line 541
    aput p4, v2, v0

    goto :goto_0

    .line 542
    .end local v1    # "newLuxLevels":[F
    .end local v2    # "newBrightnessLevels":[F
    :cond_0
    aget v1, p1, v0

    cmpl-float v1, v1, p3

    if-nez v1, :cond_1

    .line 543
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 544
    .restart local v1    # "newLuxLevels":[F
    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 545
    .restart local v2    # "newBrightnessLevels":[F
    aput p4, v2, v0

    goto :goto_0

    .line 547
    .end local v1    # "newLuxLevels":[F
    .end local v2    # "newBrightnessLevels":[F
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 548
    .restart local v1    # "newLuxLevels":[F
    add-int/lit8 v2, v0, 0x1

    array-length v3, p1

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 549
    aput p3, v1, v0

    .line 550
    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 551
    .restart local v2    # "newBrightnessLevels":[F
    add-int/lit8 v3, v0, 0x1

    array-length v4, p2

    sub-int/2addr v4, v0

    invoke-static {v2, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 553
    aput p4, v2, v0

    .line 556
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget v3, v2, v3

    .line 557
    .local v3, "lastBrightness":F
    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->smoothCurve([F[FI)V

    .line 558
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aput v3, v2, v4

    .line 560
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4
.end method

.method private static intArrayToFloatArray([I)[F
    .locals 4
    .param p0, "luxarray"    # [I

    .line 226
    array-length v0, p0

    .line 227
    .local v0, "N":I
    new-array v1, v0, [F

    .line 228
    .local v1, "outArray":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 229
    aget v3, p0, v2

    int-to-float v3, v3

    aput v3, v1, v2

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 231
    .end local v2    # "i":I
    return-object v1
.end method

.method private static isValidMapping([F[F)Z
    .locals 6
    .param p0, "x"    # [F
    .param p1, "y"    # [F

    .line 270
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v1, p0

    if-eqz v1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    goto :goto_4

    .line 273
    :cond_1
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_2

    .line 274
    return v0

    .line 276
    :cond_2
    array-length v1, p0

    .line 277
    .local v1, "N":I
    aget v2, p0, v0

    .line 278
    .local v2, "prevX":F
    aget v3, p1, v0

    .line 279
    .local v3, "prevY":F
    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-ltz v5, :cond_3

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_3

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    goto :goto_3

    .line 282
    :cond_4
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_9

    .line 283
    aget v5, p0, v4

    cmpl-float v5, v2, v5

    if-gez v5, :cond_5

    aget v5, p1, v4

    cmpl-float v5, v3, v5

    if-lez v5, :cond_6

    :cond_5
    goto :goto_2

    .line 286
    :cond_6
    aget v5, p0, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_7

    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    goto :goto_1

    .line 289
    :cond_8
    aget v2, p0, v4

    .line 290
    aget v3, p1, v4

    .line 282
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 287
    :goto_1
    return v0

    .line 284
    :goto_2
    return v0

    .line 282
    :cond_9
    nop

    .line 292
    .end local v4    # "i":I
    const/4 v0, 0x1

    return v0

    .line 280
    :goto_3
    return v0

    .line 271
    .end local v1    # "N":I
    .end local v2    # "prevX":F
    .end local v3    # "prevY":F
    :goto_4
    return v0
.end method

.method private static isValidMapping([F[I)Z
    .locals 6
    .param p0, "x"    # [F
    .param p1, "y"    # [I

    .line 296
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v1, p0

    if-eqz v1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    goto :goto_3

    .line 299
    :cond_1
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_2

    .line 300
    return v0

    .line 302
    :cond_2
    array-length v1, p0

    .line 303
    .local v1, "N":I
    aget v2, p0, v0

    .line 304
    .local v2, "prevX":F
    aget v3, p1, v0

    .line 305
    .local v3, "prevY":I
    const/4 v4, 0x0

    cmpg-float v4, v2, v4

    if-ltz v4, :cond_3

    if-ltz v3, :cond_3

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    goto :goto_2

    .line 308
    :cond_4
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_8

    .line 309
    aget v5, p0, v4

    cmpl-float v5, v2, v5

    if-gez v5, :cond_5

    aget v5, p1, v4

    if-le v3, v5, :cond_6

    :cond_5
    goto :goto_1

    .line 312
    :cond_6
    aget v5, p0, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 313
    return v0

    .line 315
    :cond_7
    aget v2, p0, v4

    .line 316
    aget v3, p1, v4

    .line 308
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 310
    :goto_1
    return v0

    .line 308
    :cond_8
    nop

    .line 318
    .end local v4    # "i":I
    const/4 v0, 0x1

    return v0

    .line 306
    :goto_2
    return v0

    .line 297
    .end local v1    # "N":I
    .end local v2    # "prevX":F
    .end local v3    # "prevY":I
    :goto_3
    return v0
.end method

.method protected static normalizeToPowerManagerMax(I)F
    .locals 2
    .param p0, "brightness"    # I

    .line 235
    int-to-float v0, p0

    sget v1, Lcom/android/server/display/BrightnessMappingStrategy;->mMaxBacklight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private permissibleRatio(FF)F
    .locals 2
    .param p1, "currLux"    # F
    .param p2, "prevLux"    # F

    .line 622
    const/high16 v0, 0x3e800000    # 0.25f

    add-float v1, p1, v0

    add-float/2addr v0, p2

    div-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Landroid/util/MathUtils;->pow(FF)F

    move-result v0

    return v0
.end method

.method private static propArrayToIntArray(Ljava/lang/String;)[I
    .locals 5
    .param p0, "prop"    # Ljava/lang/String;

    .line 216
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "propArray":[Ljava/lang/String;
    array-length v1, v0

    .line 218
    .local v1, "N":I
    new-array v2, v1, [I

    .line 219
    .local v2, "valArray":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 220
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    .line 219
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 222
    .end local v3    # "i":I
    return-object v2
.end method

.method private smoothCurve([F[FI)V
    .locals 8
    .param p1, "lux"    # [F
    .param p2, "brightness"    # [F
    .param p3, "idx"    # I

    .line 579
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 580
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo v1, "unsmoothed curve"

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 582
    :cond_0
    aget v0, p1, p3

    .line 583
    .local v0, "prevLux":F
    aget v1, p2, p3

    .line 585
    .local v1, "prevBrightness":F
    add-int/lit8 v2, p3, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 586
    aget v3, p1, v2

    .line 587
    .local v3, "currLux":F
    aget v4, p2, v2

    .line 588
    .local v4, "currBrightness":F
    nop

    .line 589
    invoke-direct {p0, v3, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleRatio(FF)F

    move-result v5

    mul-float/2addr v5, v1

    const v6, 0x3b83126f    # 0.004f

    add-float/2addr v6, v1

    .line 588
    invoke-static {v5, v6}, Landroid/util/MathUtils;->max(FF)F

    move-result v5

    .line 591
    .local v5, "maxBrightness":F
    invoke-static {v4, v1, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    .line 593
    .local v6, "newBrightness":F
    cmpl-float v7, v6, v4

    if-nez v7, :cond_1

    .line 594
    goto :goto_1

    .line 596
    :cond_1
    move v0, v3

    .line 597
    move v1, v6

    .line 598
    aput v6, p2, v2

    .line 585
    .end local v3    # "currLux":F
    .end local v4    # "currBrightness":F
    .end local v5    # "maxBrightness":F
    .end local v6    # "newBrightness":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 601
    .end local v2    # "i":I
    :cond_2
    :goto_1
    aget v0, p1, p3

    .line 602
    aget v1, p2, p3

    .line 603
    add-int/lit8 v2, p3, -0x1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_4

    .line 604
    aget v3, p1, v2

    .line 605
    .restart local v3    # "currLux":F
    aget v4, p2, v2

    .line 606
    .restart local v4    # "currBrightness":F
    invoke-direct {p0, v3, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleRatio(FF)F

    move-result v5

    mul-float/2addr v5, v1

    .line 607
    .local v5, "minBrightness":F
    invoke-static {v4, v5, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    .line 609
    .restart local v6    # "newBrightness":F
    cmpl-float v7, v6, v4

    if-nez v7, :cond_3

    .line 610
    goto :goto_3

    .line 612
    :cond_3
    move v0, v3

    .line 613
    move v1, v6

    .line 614
    aput v6, p2, v2

    .line 603
    .end local v3    # "currLux":F
    .end local v4    # "currBrightness":F
    .end local v5    # "minBrightness":F
    .end local v6    # "newBrightness":F
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 616
    .end local v2    # "i":I
    :cond_4
    :goto_3
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_5

    .line 617
    sget-object v2, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo v3, "smoothed curve"

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 619
    :cond_5
    return-void
.end method

.method public static useGmsAdaptiveBrightness()Z
    .locals 1

    .line 239
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_DISPLAY_CONTROLLER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/INtDisplayBrightnessController;

    .line 240
    invoke-interface {v0}, Lcom/android/server/display/INtDisplayBrightnessController;->useGmsAdaptiveBrightness()Z

    move-result v0

    .line 239
    return v0
.end method


# virtual methods
.method public abstract addUserDataPoint(FF)V
.end method

.method public abstract clearUserDataPoints()V
.end method

.method public abstract convertToAdjustedNits(F)F
.end method

.method public abstract convertToNits(F)F
.end method

.method public abstract dump(Ljava/io/PrintWriter;F)V
.end method

.method protected getAdjustedCurve([F[FFFFF)Landroid/util/Pair;
    .locals 9
    .param p1, "lux"    # [F
    .param p2, "brightness"    # [F
    .param p3, "userLux"    # F
    .param p4, "userBrightness"    # F
    .param p5, "adjustment"    # F
    .param p6, "maxGamma"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFFFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 680
    const/4 v0, 0x0

    .line 681
    .local v0, "isNormalUserLux":Z
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget v1, p1, v1

    cmpg-float v1, p3, v1

    if-gtz v1, :cond_0

    .line 682
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 683
    .local v1, "newLux":[F
    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 684
    .local v2, "newBrightness":[F
    const/4 v0, 0x1

    goto :goto_0

    .line 686
    .end local v1    # "newLux":[F
    .end local v2    # "newBrightness":[F
    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 687
    .restart local v1    # "newLux":[F
    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 689
    .restart local v2    # "newBrightness":[F
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v3, :cond_1

    .line 690
    sget-object v3, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo v4, "unadjusted curve"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 692
    :cond_1
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p5, v3, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p5

    .line 693
    neg-float v5, p5

    invoke-static {p6, v5}, Landroid/util/MathUtils;->pow(FF)F

    move-result v5

    .line 694
    .local v5, "gamma":F
    iget-boolean v6, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    const-string v7, "BrightnessMappingStrategy"

    if-eqz v6, :cond_2

    .line 695
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAdjustedCurve: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "^"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-float v8, p5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-float v8, p5

    .line 696
    invoke-static {p6, v8}, Landroid/util/MathUtils;->pow(FF)F

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " == "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 695
    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "userLux = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "   userBrightness = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "    gamma = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    cmpl-float v6, v5, v4

    if-eqz v6, :cond_7

    .line 702
    const v6, 0x451c4000    # 2500.0f

    if-eqz v0, :cond_4

    cmpl-float v4, v5, v4

    if-lez v4, :cond_4

    .line 703
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    if-ge v4, v7, :cond_3

    .line 704
    aget v7, v2, v4

    invoke-static {v7, v5}, Landroid/util/MathUtils;->pow(FF)F

    move-result v7

    aput v7, v2, v4

    .line 703
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    nop

    .line 706
    .end local v4    # "i":I
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    aget v7, v1, v7

    add-float/2addr v7, v6

    aput v7, v1, v4

    goto :goto_4

    .line 707
    :cond_4
    if-nez v0, :cond_6

    .line 708
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    array-length v7, v2

    add-int/lit8 v7, v7, -0x2

    aget v7, v2, v7

    aput v7, v2, v4

    .line 709
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    add-float/2addr v6, p3

    aput v6, v1, v4

    .line 710
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_5

    .line 711
    aget v6, v2, v4

    invoke-static {v6, v5}, Landroid/util/MathUtils;->pow(FF)F

    move-result v6

    aput v6, v2, v4

    .line 710
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    nop

    .end local v4    # "i":I
    goto :goto_4

    .line 714
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    array-length v6, v2

    if-ge v4, v6, :cond_7

    .line 715
    aget v6, v2, v4

    invoke-static {v6, v5}, Landroid/util/MathUtils;->pow(FF)F

    move-result v6

    aput v6, v2, v4

    .line 714
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 739
    .end local v4    # "i":I
    :cond_7
    :goto_4
    sget-object v4, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string v6, "gamma adjusted curve"

    invoke-virtual {v4, v6, v1, v2}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 744
    cmpl-float v3, p3, v3

    if-eqz v3, :cond_9

    .line 745
    invoke-direct {p0, v1, v2, p3, p4}, Lcom/android/server/display/BrightnessMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object v3

    .line 747
    .local v3, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v1, v4

    check-cast v1, [F

    .line 748
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [F

    .line 749
    iget-boolean v4, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v4, :cond_8

    .line 750
    sget-object v4, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string v6, "gamma and user adjusted curve"

    invoke-virtual {v4, v6, v1, v2}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 752
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/BrightnessMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object v3

    .line 753
    sget-object v4, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, [F

    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, [F

    const-string/jumbo v8, "user adjusted curve"

    invoke-virtual {v4, v8, v6, v7}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 756
    :cond_8
    sget-object v4, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, [F

    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, [F

    const-string v8, "final curve"

    invoke-virtual {v4, v8, v6, v7}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 760
    .end local v3    # "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    :cond_9
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method public abstract getAutoBrightnessAdjustment()F
.end method

.method public getBrightness(F)F
    .locals 2
    .param p1, "lux"    # F

    .line 378
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(FLjava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public abstract getBrightness(FLjava/lang/String;I)F
.end method

.method public abstract getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
.end method

.method public abstract getBrightnessFromNits(F)F
.end method

.method public abstract getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
.end method

.method abstract getMode()I
.end method

.method abstract getPreset()I
.end method

.method public abstract getShortTermModelTimeout()J
.end method

.method abstract getUserBrightness()F
.end method

.method abstract getUserLux()F
.end method

.method public abstract hasUserDataPoints()Z
.end method

.method protected inferAutoBrightnessAdjustment(FFF)F
    .locals 11
    .param p1, "maxGamma"    # F
    .param p2, "desiredBrightness"    # F
    .param p3, "currentBrightness"    # F

    .line 628
    const/4 v0, 0x0

    .line 629
    .local v0, "adjustment":F
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 631
    .local v1, "gamma":F
    const v2, 0x3dcccccd    # 0.1f

    .line 632
    .local v2, "minBrightnessThreshold":F
    const v3, 0x3f666666    # 0.9f

    .line 633
    .local v3, "maxbrightnessThreshold":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 635
    .local v4, "factor":F
    const/16 v5, 0x3e

    filled-new-array {v5}, [I

    move-result-object v5

    invoke-static {v5}, Lcom/nothing/NtFeaturesUtils;->isSupport([I)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0x6d

    filled-new-array {v5}, [I

    move-result-object v5

    invoke-static {v5}, Lcom/nothing/NtFeaturesUtils;->isSupport([I)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0x3f

    filled-new-array {v5}, [I

    move-result-object v5

    .line 636
    invoke-static {v5}, Lcom/nothing/NtFeaturesUtils;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 637
    :cond_0
    const v2, 0x3e0f5c29    # 0.14f

    .line 639
    :cond_1
    const/16 v5, 0x40

    filled-new-array {v5}, [I

    move-result-object v5

    invoke-static {v5}, Lcom/nothing/NtFeaturesUtils;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 640
    const/high16 v4, 0x40400000    # 3.0f

    .line 641
    const v3, 0x3f4ccccd    # 0.8f

    .line 644
    :cond_2
    cmpg-float v5, p3, v2

    const/high16 v6, 0x3f800000    # 1.0f

    if-lez v5, :cond_3

    cmpl-float v5, p3, v3

    if-ltz v5, :cond_4

    :cond_3
    goto :goto_0

    .line 654
    :cond_4
    const/4 v5, 0x0

    cmpl-float v5, p2, v5

    if-nez v5, :cond_5

    .line 655
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_1

    .line 657
    :cond_5
    cmpl-float v5, p2, v6

    if-nez v5, :cond_6

    .line 658
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    .line 661
    :cond_6
    invoke-static {p2}, Landroid/util/MathUtils;->log(F)F

    move-result v5

    invoke-static {p3}, Landroid/util/MathUtils;->log(F)F

    move-result v7

    div-float v1, v5, v7

    .line 663
    invoke-static {v1}, Landroid/util/MathUtils;->log(F)F

    move-result v5

    neg-float v5, v5

    invoke-static {p1}, Landroid/util/MathUtils;->log(F)F

    move-result v7

    div-float v0, v5, v7

    goto :goto_1

    .line 645
    :goto_0
    sub-float v5, p2, p3

    div-float v0, v5, v4

    .line 665
    :goto_1
    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v0, v5, v6}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 666
    iget-boolean v5, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v5, :cond_7

    .line 667
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "inferAutoBrightnessAdjustment: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, "^"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-float v8, v0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-float v9, v0

    .line 668
    invoke-static {p1, v9}, Landroid/util/MathUtils;->pow(FF)F

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " == "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 667
    const-string v10, "BrightnessMappingStrategy"

    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-static {p3, v1}, Landroid/util/MathUtils;->pow(FF)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 669
    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_7
    return v0
.end method

.method public abstract isDefaultConfig()Z
.end method

.method public abstract recalculateSplines(Z[F)V
.end method

.method public abstract setAutoBrightnessAdjustment(F)Z
.end method

.method public abstract setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
.end method

.method public setLoggingEnabled(Z)Z
    .locals 1
    .param p1, "loggingEnabled"    # Z

    .line 330
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_0

    .line 331
    const/4 v0, 0x0

    return v0

    .line 333
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    .line 334
    const/4 v0, 0x1

    return v0
.end method

.method public shouldResetShortTermModel(FF)Z
    .locals 8
    .param p1, "ambientLux"    # F
    .param p2, "shortTermModelAnchor"    # F

    .line 504
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    .line 505
    .local v0, "config":Landroid/hardware/display/BrightnessConfiguration;
    const v1, 0x3f19999a    # 0.6f

    .line 506
    .local v1, "minThresholdRatio":F
    const v2, 0x3f19999a    # 0.6f

    .line 507
    .local v2, "maxThresholdRatio":F
    if-eqz v0, :cond_1

    .line 508
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelLowerLuxMultiplier()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_0

    .line 509
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelLowerLuxMultiplier()F

    move-result v1

    .line 511
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelUpperLuxMultiplier()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1

    .line 512
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelUpperLuxMultiplier()F

    move-result v2

    .line 515
    :cond_1
    mul-float v3, p2, v1

    sub-float v3, p2, v3

    .line 517
    .local v3, "minAmbientLux":F
    mul-float v4, p2, v2

    add-float/2addr v4, p2

    .line 519
    .local v4, "maxAmbientLux":F
    cmpg-float v5, v3, p1

    const-string v6, "BrightnessMappingStrategy"

    if-gez v5, :cond_3

    cmpg-float v5, p1, v4

    if-gtz v5, :cond_3

    .line 520
    iget-boolean v5, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v5, :cond_2

    .line 521
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ShortTermModel: re-validate user data, ambient lux is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " < "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_2
    const/4 v5, 0x0

    return v5

    .line 526
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ShortTermModel: reset data, ambient lux is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/4 v5, 0x1

    return v5
.end method

.method public updateAdaptiveBrightness()V
    .locals 0

    .line 483
    return-void
.end method
