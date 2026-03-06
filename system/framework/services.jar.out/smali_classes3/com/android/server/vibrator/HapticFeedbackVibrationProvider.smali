.class public final Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;
.super Ljava/lang/Object;
.source "HapticFeedbackVibrationProvider.java"


# static fields
.field private static final COMMUNICATION_REQUEST_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field private static final HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field private static final IME_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field private static final PHYSICAL_EMULATION_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field private static final TAG:Ljava/lang/String; = "HapticFeedbackVibrationProvider"

.field private static final TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;


# instance fields
.field private final mHapticFeedbackCustomization:Lcom/android/server/vibrator/HapticFeedbackCustomization;

.field private final mHapticTextHandleEnabled:Z

.field private mKeyboardVibrationFixedAmplitude:F

.field private final mSafeModeEnabledVibrationEffect:Landroid/os/VibrationEffect;

.field private final mVibratorInfo:Landroid/os/VibratorInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    nop

    .line 41
    const/16 v0, 0x12

    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 42
    nop

    .line 43
    const/16 v0, 0x22

    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->PHYSICAL_EMULATION_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 44
    nop

    .line 45
    const/16 v0, 0x32

    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 46
    nop

    .line 47
    const/16 v0, 0x41

    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->COMMUNICATION_REQUEST_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 48
    nop

    .line 49
    const/16 v0, 0x52

    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->IME_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/os/VibratorInfo;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "vibratorInfo"    # Landroid/os/VibratorInfo;

    .line 61
    new-instance v0, Lcom/android/server/vibrator/HapticFeedbackCustomization;

    invoke-direct {v0, p1, p2}, Lcom/android/server/vibrator/HapticFeedbackCustomization;-><init>(Landroid/content/res/Resources;Landroid/os/VibratorInfo;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;-><init>(Landroid/content/res/Resources;Landroid/os/VibratorInfo;Lcom/android/server/vibrator/HapticFeedbackCustomization;)V

    .line 62
    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;Landroid/os/VibratorInfo;Lcom/android/server/vibrator/HapticFeedbackCustomization;)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "vibratorInfo"    # Landroid/os/VibratorInfo;
    .param p3, "hapticFeedbackCustomization"    # Lcom/android/server/vibrator/HapticFeedbackCustomization;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p2, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 68
    const v0, 0x111017b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mHapticTextHandleEnabled:Z

    .line 70
    iput-object p3, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mHapticFeedbackCustomization:Lcom/android/server/vibrator/HapticFeedbackCustomization;

    .line 72
    iget-object v0, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mHapticFeedbackCustomization:Lcom/android/server/vibrator/HapticFeedbackCustomization;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/HapticFeedbackCustomization;->getEffect(I)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 74
    .local v0, "safeModeVibration":Landroid/os/VibrationEffect;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 75
    :cond_0
    const v1, 0x10700bc

    invoke-static {p1, v1}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(Landroid/content/res/Resources;I)Landroid/os/VibrationEffect;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mSafeModeEnabledVibrationEffect:Landroid/os/VibrationEffect;

    .line 78
    const v1, 0x10500ef

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mKeyboardVibrationFixedAmplitude:F

    .line 80
    iget v1, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mKeyboardVibrationFixedAmplitude:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mKeyboardVibrationFixedAmplitude:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 81
    :cond_1
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mKeyboardVibrationFixedAmplitude:F

    .line 83
    :cond_2
    return-void
.end method

.method private createKeyboardVibrationAttributes(I)Landroid/os/VibrationAttributes;
    .locals 1
    .param p1, "privFlags"    # I

    .line 359
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    .line 360
    sget-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-object v0

    .line 362
    :cond_0
    sget-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->IME_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-object v0
.end method

.method private getAssistantButtonVibration()Landroid/os/VibrationEffect;
    .locals 4

    .line 316
    iget-object v0, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mVibratorInfo:Landroid/os/VibratorInfo;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/VibratorInfo;->isPrimitiveSupported(I)Z

    move-result v0

    nop

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mVibratorInfo:Landroid/os/VibratorInfo;

    .line 317
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/os/VibratorInfo;->isPrimitiveSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    .line 320
    const/high16 v3, 0x3e800000    # 0.25f

    invoke-virtual {v0, v1, v3}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    .line 321
    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v3, 0x32

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v0

    .line 319
    return-object v0

    .line 325
    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method private getKeyboardVibration(I)Landroid/os/VibrationEffect;
    .locals 5
    .param p1, "effectId"    # I

    .line 334
    packed-switch p1, :pswitch_data_0

    .line 342
    const/4 v0, 0x1

    .line 343
    .local v0, "primitiveId":I
    const/4 v1, 0x0

    .line 344
    .local v1, "predefinedEffectId":I
    const/4 v2, 0x1

    .local v2, "predefinedEffectFallback":Z
    goto :goto_0

    .line 336
    .end local v0    # "primitiveId":I
    .end local v1    # "predefinedEffectId":I
    .end local v2    # "predefinedEffectFallback":Z
    :pswitch_0
    const/4 v0, 0x7

    .line 337
    .restart local v0    # "primitiveId":I
    const/4 v1, 0x2

    .line 338
    .restart local v1    # "predefinedEffectId":I
    const/4 v2, 0x0

    .line 339
    .restart local v2    # "predefinedEffectFallback":Z
    nop

    .line 346
    :goto_0
    iget v3, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mKeyboardVibrationFixedAmplitude:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 347
    iget-object v3, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v3, v0}, Landroid/os/VibratorInfo;->isPrimitiveSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 348
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v3

    iget v4, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mKeyboardVibrationFixedAmplitude:F

    .line 349
    invoke-virtual {v3, v0, v4}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    move-result-object v3

    .line 350
    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v3

    .line 348
    return-object v3

    .line 353
    :cond_0
    invoke-static {v1, v2}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v3

    return-object v3

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method private getVibration(IFI)Landroid/os/VibrationEffect;
    .locals 1
    .param p1, "primitiveId"    # I
    .param p2, "primitiveScale"    # F
    .param p3, "predefinedVibrationEffectId"    # I

    .line 306
    iget-object v0, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mVibratorInfo:Landroid/os/VibratorInfo;

    invoke-virtual {v0, p1}, Landroid/os/VibratorInfo;->isPrimitiveSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    .line 308
    invoke-virtual {v0, p1, p2}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v0

    .line 307
    return-object v0

    .line 311
    :cond_0
    invoke-static {p3}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method private getVibrationAttributesWithFlags(Landroid/os/VibrationAttributes;II)Landroid/os/VibrationAttributes;
    .locals 2
    .param p1, "attrs"    # Landroid/os/VibrationAttributes;
    .param p2, "effectId"    # I
    .param p3, "flags"    # I

    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, "vibFlags":I
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_0

    .line 369
    or-int/lit8 v0, v0, 0x2

    .line 371
    :cond_0
    invoke-static {p2}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->shouldBypassInterruptionPolicy(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    or-int/lit8 v0, v0, 0x1

    .line 375
    :cond_1
    if-nez v0, :cond_2

    move-object v1, p1

    goto :goto_0

    .line 376
    :cond_2
    new-instance v1, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v1, p1}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    invoke-virtual {v1, v0}, Landroid/os/VibrationAttributes$Builder;->setFlags(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v1

    .line 375
    :goto_0
    return-object v1
.end method

.method private getVibrationForHapticFeedback(I)Landroid/os/VibrationEffect;
    .locals 4
    .param p1, "effectId"    # I

    .line 230
    const/4 v0, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/16 v3, 0x15

    sparse-switch p1, :sswitch_data_0

    .line 299
    const/4 v0, 0x0

    return-object v0

    .line 278
    :sswitch_0
    invoke-direct {p0}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getAssistantButtonVibration()Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 274
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mSafeModeEnabledVibrationEffect:Landroid/os/VibrationEffect;

    return-object v0

    .line 281
    :sswitch_2
    const v0, 0x3ecccccd    # 0.4f

    invoke-direct {p0, v1, v0, v3}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibration(IFI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 292
    :sswitch_3
    const/16 v0, 0x8

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibration(IFI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 287
    :sswitch_4
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibration(IFI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 270
    :sswitch_5
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 250
    :sswitch_6
    invoke-static {v2, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 236
    :sswitch_7
    invoke-static {v2}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 241
    :sswitch_8
    invoke-static {v3}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 246
    :sswitch_9
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getKeyboardVibration(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 260
    :sswitch_a
    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 266
    :sswitch_b
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x1 -> :sswitch_a
        0x3 -> :sswitch_9
        0x4 -> :sswitch_8
        0x5 -> :sswitch_a
        0x6 -> :sswitch_7
        0x7 -> :sswitch_9
        0x8 -> :sswitch_6
        0x9 -> :sswitch_8
        0xb -> :sswitch_6
        0xc -> :sswitch_a
        0xd -> :sswitch_7
        0xe -> :sswitch_b
        0xf -> :sswitch_a
        0x10 -> :sswitch_a
        0x11 -> :sswitch_5
        0x12 -> :sswitch_7
        0x13 -> :sswitch_a
        0x14 -> :sswitch_a
        0x15 -> :sswitch_4
        0x16 -> :sswitch_3
        0x17 -> :sswitch_7
        0x18 -> :sswitch_2
        0x19 -> :sswitch_b
        0x1a -> :sswitch_7
        0x1b -> :sswitch_8
        0x2711 -> :sswitch_1
        0x2712 -> :sswitch_0
        0x2713 -> :sswitch_b
        0x2714 -> :sswitch_a
        0x2715 -> :sswitch_5
    .end sparse-switch
.end method

.method private isFeedbackConstantEnabled(I)Z
    .locals 1
    .param p1, "effectId"    # I

    .line 217
    sparse-switch p1, :sswitch_data_0

    .line 220
    const/4 v0, 0x1

    goto :goto_0

    .line 218
    :sswitch_0
    iget-boolean v0, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mHapticTextHandleEnabled:Z

    goto :goto_0

    .line 219
    :sswitch_1
    const/4 v0, 0x0

    .line 217
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method private static shouldBypassInterruptionPolicy(I)Z
    .locals 1
    .param p0, "effectId"    # I

    .line 380
    packed-switch p0, :pswitch_data_0

    .line 389
    const/4 v0, 0x0

    return v0

    .line 387
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 213
    const-string v0, "mHapticTextHandleEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mHapticTextHandleEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 214
    return-void
.end method

.method public getVibration(I)Landroid/os/VibrationEffect;
    .locals 2
    .param p1, "effectId"    # I

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->isFeedbackConstantEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mHapticFeedbackCustomization:Lcom/android/server/vibrator/HapticFeedbackCustomization;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/HapticFeedbackCustomization;->getEffect(I)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 98
    .local v0, "customizedVibration":Landroid/os/VibrationEffect;
    if-eqz v0, :cond_1

    .line 99
    return-object v0

    .line 101
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibrationForHapticFeedback(I)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1
.end method

.method public getVibration(II)Landroid/os/VibrationEffect;
    .locals 2
    .param p1, "effectId"    # I
    .param p2, "inputSource"    # I

    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->isFeedbackConstantEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x0

    return-object v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mHapticFeedbackCustomization:Lcom/android/server/vibrator/HapticFeedbackCustomization;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/vibrator/HapticFeedbackCustomization;->getEffect(II)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 120
    .local v0, "customizedVibration":Landroid/os/VibrationEffect;
    if-eqz v0, :cond_1

    .line 121
    return-object v0

    .line 123
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibrationForHapticFeedback(I)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1
.end method

.method public getVibrationAttributes(III)Landroid/os/VibrationAttributes;
    .locals 2
    .param p1, "effectId"    # I
    .param p2, "flags"    # I
    .param p3, "privFlags"    # I

    .line 139
    sparse-switch p1, :sswitch_data_0

    .line 163
    sget-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .local v0, "attrs":Landroid/os/VibrationAttributes;
    goto :goto_0

    .line 160
    .end local v0    # "attrs":Landroid/os/VibrationAttributes;
    :sswitch_0
    sget-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->COMMUNICATION_REQUEST_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 161
    .restart local v0    # "attrs":Landroid/os/VibrationAttributes;
    goto :goto_0

    .line 146
    .end local v0    # "attrs":Landroid/os/VibrationAttributes;
    :sswitch_1
    sget-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 147
    .restart local v0    # "attrs":Landroid/os/VibrationAttributes;
    goto :goto_0

    .line 152
    .end local v0    # "attrs":Landroid/os/VibrationAttributes;
    :sswitch_2
    sget-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 153
    .restart local v0    # "attrs":Landroid/os/VibrationAttributes;
    goto :goto_0

    .line 142
    .end local v0    # "attrs":Landroid/os/VibrationAttributes;
    :sswitch_3
    sget-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->PHYSICAL_EMULATION_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 143
    .restart local v0    # "attrs":Landroid/os/VibrationAttributes;
    goto :goto_0

    .line 156
    .end local v0    # "attrs":Landroid/os/VibrationAttributes;
    :sswitch_4
    invoke-direct {p0, p3}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->createKeyboardVibrationAttributes(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    .line 157
    .restart local v0    # "attrs":Landroid/os/VibrationAttributes;
    nop

    .line 165
    :goto_0
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibrationAttributesWithFlags(Landroid/os/VibrationAttributes;II)Landroid/os/VibrationAttributes;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_4
        0x7 -> :sswitch_4
        0xe -> :sswitch_3
        0xf -> :sswitch_3
        0x12 -> :sswitch_2
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
        0x2712 -> :sswitch_1
        0x2713 -> :sswitch_1
        0x2714 -> :sswitch_0
        0x2715 -> :sswitch_0
    .end sparse-switch
.end method

.method public getVibrationAttributes(IIII)Landroid/os/VibrationAttributes;
    .locals 2
    .param p1, "effectId"    # I
    .param p2, "inputSource"    # I
    .param p3, "flags"    # I
    .param p4, "privFlags"    # I

    .line 179
    nop

    .line 180
    packed-switch p1, :pswitch_data_0

    .line 191
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibrationAttributes(III)Landroid/os/VibrationAttributes;

    move-result-object v0

    return-object v0

    .line 184
    :pswitch_0
    const/high16 v0, 0x400000

    if-ne p2, v0, :cond_0

    .line 185
    sget-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    goto :goto_0

    .line 186
    :cond_0
    sget-object v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    :goto_0
    nop

    .line 187
    .local v0, "attrs":Landroid/os/VibrationAttributes;
    invoke-direct {p0, v0, p1, p3}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibrationAttributesWithFlags(Landroid/os/VibrationAttributes;II)Landroid/os/VibrationAttributes;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isRestrictedHapticFeedback(I)Z
    .locals 1
    .param p1, "effectId"    # I

    .line 202
    packed-switch p1, :pswitch_data_0

    .line 207
    const/4 v0, 0x0

    return v0

    .line 205
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2714
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
