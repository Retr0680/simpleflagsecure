.class final Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "VibratorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VibratorManagerShellCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;,
        Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$AdvancedEnveloperBuilderWrapper;,
        Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$BasicEnveloperBuilderWrapper;,
        Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$EnvelopeBuilder;
    }
.end annotation


# static fields
.field public static final SHELL_PACKAGE_NAME:Ljava/lang/String; = "com.android.shell"

.field public static final VIBRATION_END_TIMEOUT_MS:J = 0x1f4L


# instance fields
.field private final mShellCallbacksToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "shellCallbacksToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2786
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2787
    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->mShellCallbacksToken:Landroid/os/IBinder;

    .line 2788
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/IBinder;Lcom/android/server/vibrator/VibratorManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/IBinder;)V

    return-void
.end method

.method private addEnvelopeToComposition(Landroid/os/VibrationEffect$Composition;)V
    .locals 13
    .param p1, "composition"    # Landroid/os/VibrationEffect$Composition;

    .line 3028
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 3029
    const/4 v0, -0x1

    .line 3030
    .local v0, "repeat":I
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 3031
    .local v1, "initialSharpness":F
    const/4 v2, 0x0

    .line 3032
    .local v2, "preamble":Landroid/os/VibrationEffect;
    const/4 v3, 0x0

    .line 3034
    .local v3, "isAdvanced":Z
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "nextOption":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 3035
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v4, "-r"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_2

    :sswitch_1
    const-string v4, "-i"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :sswitch_2
    const-string v4, "-a"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_2

    :goto_1
    const/4 v4, -0x1

    :goto_2
    packed-switch v4, :pswitch_data_0

    goto :goto_3

    .line 3039
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Expected repeat index after -r"

    invoke-static {v4, v6}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    .line 3037
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Expected initial sharpness after -i"

    invoke-static {v4, v6}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v1

    goto :goto_3

    .line 3036
    :pswitch_2
    const/4 v3, 0x1

    .line 3041
    :goto_3
    goto :goto_0

    .line 3044
    :cond_1
    const/4 v4, 0x0

    if-eqz v3, :cond_2

    new-instance v6, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$AdvancedEnveloperBuilderWrapper;

    invoke-direct {v6, v4}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$AdvancedEnveloperBuilderWrapper;-><init>(Lcom/android/server/vibrator/VibratorManagerService-IA;)V

    goto :goto_4

    .line 3045
    :cond_2
    new-instance v6, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$BasicEnveloperBuilderWrapper;

    invoke-direct {v6, v4}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$BasicEnveloperBuilderWrapper;-><init>(Lcom/android/server/vibrator/VibratorManagerService-IA;)V

    :goto_4
    nop

    .line 3047
    .local v6, "builder":Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$EnvelopeBuilder;
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3048
    invoke-interface {v6, v1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$EnvelopeBuilder;->setInitialSharpness(F)V

    .line 3051
    :cond_3
    const/4 v4, 0x0

    .line 3052
    .local v4, "pos":I
    const/4 v7, 0x0

    .line 3054
    .local v7, "sharpness":F
    :goto_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .local v9, "nextArg":Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 3055
    if-lez v4, :cond_4

    if-ne v4, v0, :cond_4

    .line 3056
    invoke-interface {v6}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$EnvelopeBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object v2

    .line 3057
    invoke-interface {v6, v7}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$EnvelopeBuilder;->reset(F)V

    .line 3060
    :cond_4
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 3061
    .local v8, "duration":I
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3065
    nop

    .line 3066
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Expected envelope intensity"

    invoke-static {v10, v11}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v10

    .line 3067
    .local v10, "intensity":F
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Expected envelope sharpness"

    invoke-static {v11, v12}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v7

    .line 3068
    int-to-long v11, v8

    invoke-interface {v6, v10, v7, v11, v12}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$EnvelopeBuilder;->addControlPoint(FFJ)V

    .line 3069
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 3062
    .end local v8    # "duration":I
    .end local v10    # "intensity":F
    :catch_0
    move-exception v8

    .line 3064
    .local v8, "e":Ljava/lang/NumberFormatException;
    nop

    .line 3072
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    if-ltz v0, :cond_7

    .line 3073
    if-nez v2, :cond_6

    .line 3074
    invoke-interface {v6}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$EnvelopeBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object v8

    invoke-static {v8}, Landroid/os/VibrationEffect;->createRepeatingEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    goto :goto_6

    .line 3076
    :cond_6
    nop

    .line 3077
    invoke-interface {v6}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$EnvelopeBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/os/VibrationEffect;->createRepeatingEffect(Landroid/os/VibrationEffect;Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;

    move-result-object v8

    .line 3076
    invoke-virtual {p1, v8}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    .line 3079
    :goto_6
    return-void

    .line 3082
    :cond_7
    invoke-interface {v6}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$EnvelopeBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    .line 3083
    return-void

    :sswitch_data_0
    .sparse-switch
        0x5d4 -> :sswitch_2
        0x5dc -> :sswitch_1
        0x5e5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private addOneShotToComposition(Landroid/os/VibrationEffect$Composition;)V
    .locals 8
    .param p1, "composition"    # Landroid/os/VibrationEffect$Composition;

    .line 2947
    const/4 v0, 0x0

    .line 2948
    .local v0, "hasAmplitude":Z
    const/4 v1, 0x0

    .line 2950
    .local v1, "delay":I
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2952
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "nextOption":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 2953
    const-string v2, "-a"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2954
    const/4 v0, 0x1

    goto :goto_0

    .line 2955
    :cond_1
    const-string v2, "-w"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2956
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Expected delay millis after -w"

    invoke-static {v2, v4}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 2960
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Expected one-shot duration millis"

    invoke-static {v2, v4}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    .line 2961
    .local v4, "duration":J
    if-eqz v0, :cond_3

    .line 2962
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v6, "Expected one-shot amplitude"

    invoke-static {v2, v6}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 2963
    :cond_3
    const/4 v2, -0x1

    :goto_1
    nop

    .line 2964
    .local v2, "amplitude":I
    int-to-long v6, v1

    invoke-static {v6, v7}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/VibrationEffect$Composition;->addOffDuration(Ljava/time/Duration;)Landroid/os/VibrationEffect$Composition;

    .line 2965
    invoke-static {v4, v5, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    .line 2966
    return-void
.end method

.method private addPrebakedToComposition(Landroid/os/VibrationEffect$Composition;)V
    .locals 6
    .param p1, "composition"    # Landroid/os/VibrationEffect$Composition;

    .line 3178
    const/4 v0, 0x0

    .line 3179
    .local v0, "shouldFallback":Z
    const/4 v1, 0x0

    .line 3181
    .local v1, "delay":I
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 3183
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "nextOption":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 3184
    const-string v2, "-b"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3185
    const/4 v0, 0x1

    goto :goto_0

    .line 3186
    :cond_1
    const-string v2, "-w"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3187
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Expected delay millis after -w"

    invoke-static {v2, v4}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 3191
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Expected prebaked effect id"

    invoke-static {v2, v4}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3192
    .local v2, "effectId":I
    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/VibrationEffect$Composition;->addOffDuration(Ljava/time/Duration;)Landroid/os/VibrationEffect$Composition;

    .line 3193
    invoke-static {v2, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    .line 3194
    return-void
.end method

.method private addPrimitivesToComposition(Landroid/os/VibrationEffect$Composition;)V
    .locals 6
    .param p1, "composition"    # Landroid/os/VibrationEffect$Composition;

    .line 3197
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 3198
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3199
    const/4 v0, 0x0

    .line 3200
    .local v0, "delay":I
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3201
    .local v1, "scale":F
    const/4 v2, 0x0

    .line 3204
    .local v2, "delayType":I
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "nextOption":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 3205
    const-string v3, "-s"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3206
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Expected scale after -s"

    invoke-static {v3, v5}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v1

    goto :goto_1

    .line 3207
    :cond_1
    const-string v3, "-o"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3208
    const/4 v2, 0x1

    .line 3209
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Expected offset millis after -o"

    invoke-static {v3, v5}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 3210
    :cond_2
    const-string v3, "-w"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3211
    const/4 v2, 0x0

    .line 3212
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Expected delay millis after -w"

    invoke-static {v3, v5}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 3216
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    .line 3217
    .local v3, "nextArg":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5, v1, v0, v2}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFII)Landroid/os/VibrationEffect$Composition;

    .line 3218
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3222
    nop

    .line 3223
    .end local v0    # "delay":I
    .end local v1    # "scale":F
    .end local v2    # "delayType":I
    .end local v3    # "nextArg":Ljava/lang/String;
    .end local v4    # "nextOption":Ljava/lang/String;
    goto :goto_0

    .line 3219
    .restart local v0    # "delay":I
    .restart local v1    # "scale":F
    .restart local v2    # "delayType":I
    .restart local v4    # "nextOption":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 3221
    .local v3, "e":Ljava/lang/RuntimeException;
    nop

    .line 3224
    .end local v0    # "delay":I
    .end local v1    # "scale":F
    .end local v2    # "delayType":I
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .end local v4    # "nextOption":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private addWaveformToComposition(Landroid/os/VibrationEffect$Composition;)V
    .locals 18
    .param p1, "composition"    # Landroid/os/VibrationEffect$Composition;

    .line 3086
    move-object/from16 v1, p1

    const/4 v0, 0x0

    .line 3087
    .local v0, "hasAmplitudes":Z
    const/4 v2, 0x0

    .line 3088
    .local v2, "hasFrequencies":Z
    const/4 v3, 0x0

    .line 3089
    .local v3, "isContinuous":Z
    const/4 v4, -0x1

    .line 3090
    .local v4, "repeat":I
    const/4 v5, 0x0

    .line 3092
    .local v5, "delay":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    .line 3094
    .end local v0    # "hasAmplitudes":Z
    .local v2, "hasAmplitudes":Z
    .local v3, "hasFrequencies":Z
    .local v4, "isContinuous":Z
    .local v5, "repeat":I
    .local v6, "delay":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .local v7, "nextOption":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 3095
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v0, "-w"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_2

    :sswitch_1
    const-string v0, "-r"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_2

    :sswitch_2
    const-string v0, "-f"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_2

    :sswitch_3
    const-string v0, "-c"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_2

    :sswitch_4
    const-string v0, "-a"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_2

    :goto_1
    const/4 v0, -0x1

    :goto_2
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 3101
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string v8, "Expected delay millis after -w"

    invoke-static {v0, v8}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v6, v0

    .end local v6    # "delay":I
    .local v0, "delay":I
    goto :goto_3

    .line 3099
    .end local v0    # "delay":I
    .restart local v6    # "delay":I
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string v8, "Expected repeat index after -r"

    invoke-static {v0, v8}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v5, v0

    .end local v5    # "repeat":I
    .local v0, "repeat":I
    goto :goto_3

    .line 3098
    .end local v0    # "repeat":I
    .restart local v5    # "repeat":I
    :pswitch_2
    const/4 v0, 0x1

    move v4, v0

    .end local v4    # "isContinuous":Z
    .local v0, "isContinuous":Z
    goto :goto_3

    .line 3097
    .end local v0    # "isContinuous":Z
    .restart local v4    # "isContinuous":Z
    :pswitch_3
    const/4 v0, 0x1

    move v3, v0

    .end local v3    # "hasFrequencies":Z
    .local v0, "hasFrequencies":Z
    goto :goto_3

    .line 3096
    .end local v0    # "hasFrequencies":Z
    .restart local v3    # "hasFrequencies":Z
    :pswitch_4
    const/4 v0, 0x1

    move v2, v0

    .line 3103
    :goto_3
    goto :goto_0

    .line 3105
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 3106
    .local v8, "durations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 3107
    .local v9, "amplitudes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 3109
    .local v10, "frequencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v0, 0x0

    move v11, v0

    .line 3111
    .local v11, "nextAmplitude":F
    :cond_2
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .local v12, "nextArg":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 3113
    :try_start_0
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3114
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3118
    nop

    .line 3119
    if-eqz v2, :cond_3

    .line 3120
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string v13, "Expected waveform amplitude"

    invoke-static {v0, v13}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3121
    .local v0, "amplitude":I
    int-to-float v13, v0

    const/high16 v14, 0x437f0000    # 255.0f

    div-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3122
    .end local v0    # "amplitude":I
    goto :goto_5

    .line 3123
    :cond_3
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3124
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v11

    move v11, v0

    .line 3126
    :goto_5
    if-eqz v3, :cond_2

    .line 3127
    nop

    .line 3128
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string v13, "Expected waveform frequency"

    invoke-static {v0, v13}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 3127
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3115
    :catch_0
    move-exception v0

    .line 3117
    .local v0, "e":Ljava/lang/NumberFormatException;
    nop

    .line 3133
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    int-to-long v13, v6

    invoke-static {v13, v14}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/VibrationEffect$Composition;->addOffDuration(Ljava/time/Duration;)Landroid/os/VibrationEffect$Composition;

    .line 3135
    invoke-static {}, Landroid/os/VibrationEffect;->startWaveform()Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object v0

    .line 3136
    .local v0, "waveform":Landroid/os/VibrationEffect$WaveformBuilder;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_6
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_b

    .line 3137
    if-eqz v4, :cond_5

    .line 3138
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-long v14, v14

    invoke-static {v14, v15}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v14

    goto :goto_7

    .line 3139
    :cond_5
    sget-object v14, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    :goto_7
    nop

    .line 3140
    .local v14, "transitionDuration":Ljava/time/Duration;
    if-eqz v4, :cond_6

    .line 3141
    sget-object v15, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    move/from16 v16, v2

    move/from16 v17, v3

    goto :goto_8

    .line 3142
    :cond_6
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "hasAmplitudes":Z
    .end local v3    # "hasFrequencies":Z
    .local v16, "hasAmplitudes":Z
    .local v17, "hasFrequencies":Z
    int-to-long v2, v15

    invoke-static {v2, v3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v15

    :goto_8
    nop

    .line 3144
    .local v15, "sustainDuration":Ljava/time/Duration;
    if-eqz v17, :cond_7

    .line 3145
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v2

    .line 3146
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3}, Landroid/os/VibrationEffect$VibrationParameter;->targetFrequency(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v3

    .line 3145
    invoke-virtual {v0, v14, v2, v3}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    goto :goto_9

    .line 3148
    :cond_7
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v2

    invoke-virtual {v0, v14, v2}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    .line 3150
    :goto_9
    invoke-virtual {v15}, Ljava/time/Duration;->isZero()Z

    move-result v2

    if-nez v2, :cond_8

    .line 3153
    invoke-virtual {v0, v15}, Landroid/os/VibrationEffect$WaveformBuilder;->addSustain(Ljava/time/Duration;)Landroid/os/VibrationEffect$WaveformBuilder;

    .line 3156
    :cond_8
    if-lez v13, :cond_a

    if-ne v13, v5, :cond_a

    .line 3158
    invoke-virtual {v0}, Landroid/os/VibrationEffect$WaveformBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    .line 3160
    if-eqz v17, :cond_9

    .line 3161
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v2

    .line 3162
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3}, Landroid/os/VibrationEffect$VibrationParameter;->targetFrequency(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v3

    .line 3161
    invoke-static {v2, v3}, Landroid/os/VibrationEffect;->startWaveform(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object v0

    goto :goto_a

    .line 3164
    :cond_9
    nop

    .line 3165
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Landroid/os/VibrationEffect$VibrationParameter;->targetAmplitude(F)Landroid/os/VibrationEffect$VibrationParameter;

    move-result-object v2

    .line 3164
    invoke-static {v2}, Landroid/os/VibrationEffect;->startWaveform(Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object v0

    .line 3136
    .end local v14    # "transitionDuration":Ljava/time/Duration;
    .end local v15    # "sustainDuration":Ljava/time/Duration;
    :cond_a
    :goto_a
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, v16

    move/from16 v3, v17

    goto/16 :goto_6

    .end local v16    # "hasAmplitudes":Z
    .end local v17    # "hasFrequencies":Z
    .restart local v2    # "hasAmplitudes":Z
    .restart local v3    # "hasFrequencies":Z
    :cond_b
    move/from16 v16, v2

    move/from16 v17, v3

    .line 3169
    .end local v2    # "hasAmplitudes":Z
    .end local v3    # "hasFrequencies":Z
    .end local v13    # "i":I
    .restart local v16    # "hasAmplitudes":Z
    .restart local v17    # "hasFrequencies":Z
    if-gez v5, :cond_c

    .line 3170
    invoke-virtual {v0}, Landroid/os/VibrationEffect$WaveformBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    goto :goto_b

    .line 3173
    :cond_c
    invoke-virtual {v0}, Landroid/os/VibrationEffect$WaveformBuilder;->build()Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/VibrationEffect$Composition;->repeatEffectIndefinitely(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    .line 3175
    :goto_b
    return-void

    :sswitch_data_0
    .sparse-switch
        0x5d4 -> :sswitch_4
        0x5d6 -> :sswitch_3
        0x5d9 -> :sswitch_2
        0x5e5 -> :sswitch_1
        0x5ea -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createVibrationAttributes(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;)Landroid/os/VibrationAttributes;
    .locals 3
    .param p1, "commonOptions"    # Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    .line 3228
    iget-boolean v0, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->force:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3229
    .local v0, "flags":I
    :goto_0
    new-instance v1, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v1}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    .line 3230
    invoke-virtual {v1, v0}, Landroid/os/VibrationAttributes$Builder;->setFlags(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v1

    .line 3233
    const/16 v2, 0x41

    invoke-virtual {v1, v2}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v1

    .line 3234
    invoke-virtual {v1}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v1

    .line 3229
    return-object v1
.end method

.method private maybeWaitOnVibration(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;)V
    .locals 5
    .param p1, "vib"    # Lcom/android/server/vibrator/HalVibration;
    .param p2, "commonOptions"    # Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    .line 3256
    if-eqz p1, :cond_0

    iget-boolean v0, p2, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->background:Z

    if-nez v0, :cond_0

    .line 3260
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/vibrator/HalVibration;->waitForEnd()V

    .line 3262
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibrationThread(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v1, v1, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 3263
    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationSettings;->getRampDownDuration()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x1f4

    add-long/2addr v1, v3

    .line 3262
    invoke-virtual {v0, v1, v2}, Lcom/android/server/vibrator/VibrationThread;->waitForThreadIdle(J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3265
    goto :goto_0

    .line 3264
    :catch_0
    move-exception v0

    .line 3267
    :cond_0
    :goto_0
    return-void
.end method

.method private nextEffect()Landroid/os/VibrationEffect;
    .locals 3

    .line 2923
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    .line 2926
    .local v0, "composition":Landroid/os/VibrationEffect$Composition;
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "nextArg":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 2927
    const-string v1, "oneshot"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2928
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->addOneShotToComposition(Landroid/os/VibrationEffect$Composition;)V

    goto :goto_0

    .line 2929
    :cond_0
    const-string v1, "waveform"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2930
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->addWaveformToComposition(Landroid/os/VibrationEffect$Composition;)V

    goto :goto_0

    .line 2931
    :cond_1
    const-string v1, "prebaked"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2932
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->addPrebakedToComposition(Landroid/os/VibrationEffect$Composition;)V

    goto :goto_0

    .line 2933
    :cond_2
    const-string v1, "primitives"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2934
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->addPrimitivesToComposition(Landroid/os/VibrationEffect$Composition;)V

    goto :goto_0

    .line 2935
    :cond_3
    const-string v1, "envelope"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2936
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->addEnvelopeToComposition(Landroid/os/VibrationEffect$Composition;)V

    goto :goto_0

    .line 2943
    :cond_4
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1
.end method

.method private static parseFloat(Ljava/lang/String;Ljava/lang/String;)F
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 3279
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3280
    :catch_0
    move-exception v0

    .line 3281
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static parseInt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 3271
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3272
    :catch_0
    move-exception v0

    .line 3273
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private parseXml(Ljava/lang/String;)Landroid/os/CombinedVibration;
    .locals 6
    .param p1, "xml"    # Ljava/lang/String;

    .line 3239
    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 3240
    invoke-static {v0}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseDocument(Ljava/io/Reader;)Landroid/os/vibrator/persistence/ParsedVibration;

    move-result-object v0

    .line 3241
    .local v0, "parsedVibration":Landroid/os/vibrator/persistence/ParsedVibration;
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mgetCombinedVibratorInfo(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/os/VibratorInfo;

    move-result-object v1

    .line 3242
    .local v1, "combinedVibratorInfo":Landroid/os/VibratorInfo;
    if-eqz v1, :cond_1

    .line 3245
    invoke-virtual {v0, v1}, Landroid/os/vibrator/persistence/ParsedVibration;->resolve(Landroid/os/VibratorInfo;)Landroid/os/VibrationEffect;

    move-result-object v2

    .line 3246
    .local v2, "effect":Landroid/os/VibrationEffect;
    if-eqz v2, :cond_0

    .line 3249
    invoke-static {v2}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v3

    return-object v3

    .line 3250
    .end local v0    # "parsedVibration":Landroid/os/vibrator/persistence/ParsedVibration;
    .end local v1    # "combinedVibratorInfo":Landroid/os/VibratorInfo;
    .end local v2    # "effect":Landroid/os/VibrationEffect;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3247
    .restart local v0    # "parsedVibration":Landroid/os/vibrator/persistence/ParsedVibration;
    .restart local v1    # "combinedVibratorInfo":Landroid/os/VibratorInfo;
    .restart local v2    # "effect":Landroid/os/VibrationEffect;
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsed XML cannot be resolved: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;
    .end local p1    # "xml":Ljava/lang/String;
    throw v3

    .line 3243
    .end local v2    # "effect":Landroid/os/VibrationEffect;
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;
    .restart local p1    # "xml":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No vibrator info available to parse XML"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;
    .end local p1    # "xml":Ljava/lang/String;
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3250
    .end local v0    # "parsedVibration":Landroid/os/vibrator/persistence/ParsedVibration;
    .end local v1    # "combinedVibratorInfo":Landroid/os/VibratorInfo;
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;
    .restart local p1    # "xml":Ljava/lang/String;
    :goto_0
    nop

    .line 3251
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing XML: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private runCancel()I
    .locals 3

    .line 2902
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/vibrator/VibratorManagerService;->cancelVibrate(ILandroid/os/IBinder;)V

    .line 2903
    const/4 v0, 0x0

    return v0
.end method

.method private runHapticFeedback()I
    .locals 12

    .line 2907
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V

    .line 2908
    .local v0, "commonOptions":Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Expected haptic feedback constant id"

    invoke-static {v1, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 2910
    .local v7, "constant":I
    iget-boolean v1, v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->background:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    move-object v9, v1

    goto :goto_0

    .line 2911
    :cond_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->mShellCallbacksToken:Landroid/os/IBinder;

    move-object v9, v1

    :goto_0
    nop

    .line 2912
    .local v9, "deathBinder":Landroid/os/IBinder;
    iget-boolean v1, v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->force:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2913
    const/4 v1, 0x2

    move v10, v1

    goto :goto_1

    :cond_1
    move v10, v2

    .line 2914
    .local v10, "flags":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iget-object v8, v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->description:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v5, 0x0

    const-string v6, "com.android.shell"

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/vibrator/VibratorManagerService;->performHapticFeedbackInternal(IILjava/lang/String;ILjava/lang/String;Landroid/os/IBinder;II)Lcom/android/server/vibrator/HalVibration;

    move-result-object v1

    .line 2917
    .local v1, "vib":Lcom/android/server/vibrator/HalVibration;
    invoke-direct {p0, v1, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->maybeWaitOnVibration(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;)V

    .line 2919
    return v2
.end method

.method private runListVibrators()I
    .locals 6

    .line 2829
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2830
    .local v0, "pw":Ljava/io/PrintWriter;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibratorIds(Lcom/android/server/vibrator/VibratorManagerService;)[I

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2831
    const-string v1, "No vibrator found"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2829
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 2833
    :cond_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibratorIds(Lcom/android/server/vibrator/VibratorManagerService;)[I

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, v1, v4

    .line 2834
    .local v5, "id":I
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 2833
    .end local v5    # "id":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2837
    :cond_1
    :goto_1
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2838
    nop

    .line 2839
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 2838
    return v2

    .line 2829
    :goto_2
    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw v1
.end method

.method private runMono()I
    .locals 2

    .line 2862
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V

    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->nextEffect()Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-static {v1}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V

    .line 2863
    const/4 v0, 0x0

    return v0
.end method

.method private runSequential()I
    .locals 4

    .line 2879
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V

    .line 2881
    .local v0, "commonOptions":Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;
    invoke-static {}, Landroid/os/CombinedVibration;->startSequential()Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v1

    .line 2882
    .local v1, "combination":Landroid/os/CombinedVibration$SequentialCombination;
    :goto_0
    const-string v2, "-v"

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2883
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Expected vibrator id after -v"

    invoke-static {v2, v3}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2884
    .local v2, "vibratorId":I
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->nextEffect()Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$SequentialCombination;

    .line 2885
    .end local v2    # "vibratorId":I
    goto :goto_0

    .line 2886
    :cond_0
    invoke-virtual {v1}, Landroid/os/CombinedVibration$SequentialCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V

    .line 2887
    const/4 v2, 0x0

    return v2
.end method

.method private runStereo()I
    .locals 4

    .line 2867
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V

    .line 2869
    .local v0, "commonOptions":Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;
    invoke-static {}, Landroid/os/CombinedVibration;->startParallel()Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v1

    .line 2870
    .local v1, "combination":Landroid/os/CombinedVibration$ParallelCombination;
    :goto_0
    const-string v2, "-v"

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2871
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Expected vibrator id after -v"

    invoke-static {v2, v3}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2872
    .local v2, "vibratorId":I
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->nextEffect()Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/CombinedVibration$ParallelCombination;->addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;

    .line 2873
    .end local v2    # "vibratorId":I
    goto :goto_0

    .line 2874
    :cond_0
    invoke-virtual {v1}, Landroid/os/CombinedVibration$ParallelCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V

    .line 2875
    const/4 v2, 0x0

    return v2
.end method

.method private runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V
    .locals 8
    .param p1, "commonOptions"    # Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;
    .param p2, "combined"    # Landroid/os/CombinedVibration;

    .line 2846
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->createVibrationAttributes(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;)Landroid/os/VibrationAttributes;

    move-result-object v5

    .line 2850
    .local v5, "attrs":Landroid/os/VibrationAttributes;
    iget-boolean v0, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->background:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    move-object v7, v0

    goto :goto_0

    .line 2851
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->mShellCallbacksToken:Landroid/os/IBinder;

    move-object v7, v0

    :goto_0
    nop

    .line 2852
    .local v7, "deathBinder":Landroid/os/IBinder;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2855
    .local v1, "uid":I
    const-string v0, "com.android.shell"

    invoke-static {v1, v0}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2856
    .local v3, "resolvedPackageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    const/4 v2, 0x0

    iget-object v6, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->description:Ljava/lang/String;

    move-object v4, p2

    .end local p2    # "combined":Landroid/os/CombinedVibration;
    .local v4, "combined":Landroid/os/CombinedVibration;
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/vibrator/VibratorManagerService;->vibrateWithPermissionCheck(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;

    move-result-object p2

    .line 2858
    .local p2, "vib":Lcom/android/server/vibrator/HalVibration;
    invoke-direct {p0, p2, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->maybeWaitOnVibration(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;)V

    .line 2859
    return-void
.end method

.method private runXml()I
    .locals 4

    .line 2891
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V

    .line 2892
    .local v0, "commonOptions":Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 2893
    .local v1, "xml":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->parseXml(Ljava/lang/String;)Landroid/os/CombinedVibration;

    move-result-object v2

    .line 2894
    .local v2, "vibration":Landroid/os/CombinedVibration;
    invoke-direct {p0, v0, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runVibrate(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;Landroid/os/CombinedVibration;)V

    .line 2895
    const/4 v3, 0x0

    return v3
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .line 2793
    const-wide/32 v0, 0x800000

    :try_start_0
    const-string v2, "list"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2794
    const-string v2, "onCommand: list"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2795
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runListVibrators()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2824
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2795
    return v2

    .line 2824
    :catchall_0
    move-exception v2

    goto/16 :goto_0

    .line 2797
    :cond_0
    :try_start_1
    const-string v2, "synced"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2798
    const-string v2, "onCommand: synced"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2799
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runMono()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2824
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2799
    return v2

    .line 2801
    :cond_1
    :try_start_2
    const-string v2, "combined"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2802
    const-string v2, "onCommand: combined"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2803
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runStereo()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2824
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2803
    return v2

    .line 2805
    :cond_2
    :try_start_3
    const-string v2, "sequential"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2806
    const-string v2, "onCommand: sequential"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2807
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runSequential()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2824
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2807
    return v2

    .line 2809
    :cond_3
    :try_start_4
    const-string v2, "xml"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2810
    const-string v2, "onCommand: xml"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2811
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runXml()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2824
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2811
    return v2

    .line 2813
    :cond_4
    :try_start_5
    const-string v2, "cancel"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2814
    const-string v2, "onCommand: cancel"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2815
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runCancel()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2824
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2815
    return v2

    .line 2817
    :cond_5
    :try_start_6
    const-string v2, "feedback"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2818
    const-string v2, "onCommand: feedback"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2819
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runHapticFeedback()I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2824
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2819
    return v2

    .line 2821
    :cond_6
    :try_start_7
    const-string v2, "onCommand: default"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2822
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2824
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2822
    return v2

    .line 2824
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2825
    throw v2
.end method

.method public onHelp()V
    .locals 5

    .line 3287
    const-string v0, "    wait time in milliseconds."

    const-string v1, "    If -w is provided, the effect will be played after the specified"

    const-string v2, ""

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 3288
    .local v3, "pw":Ljava/io/PrintWriter;
    :try_start_0
    const-string v4, "Vibrator Manager commands:"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3289
    const-string v4, "  help"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3290
    const-string v4, "    Prints this help text."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3291
    const-string v4, "  list"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3292
    const-string v4, "    Prints device vibrator ids; does not include input devices."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3293
    const-string v4, "  synced [options] <effect>..."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3294
    const-string v4, "    Vibrates effect on all vibrators in sync."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3295
    const-string v4, "  combined [options] (-v <vibrator-id> <effect>...)..."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3296
    const-string v4, "    Vibrates different effects on each vibrator in sync."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3297
    const-string v4, "  sequential [options] (-v <vibrator-id> <effect>...)..."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3298
    const-string v4, "    Vibrates different effects on each vibrator in sequence."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3299
    const-string v4, "  xml [options] <xml>"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3300
    const-string v4, "    Vibrates using combined vibration described in given XML string"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3301
    const-string v4, "    on all vibrators in sync. The XML could be:"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3302
    const-string v4, "        A single <vibration-effect>, or"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3303
    const-string v4, "        A <vibration-select> containing multiple effects."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3304
    const-string v4, "  feedback [options] <constant>"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3305
    const-string v4, "    Performs a haptic feedback with the given constant."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3306
    const-string v4, "  cancel"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3307
    const-string v4, "    Cancels any active vibration"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3308
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3309
    const-string v4, "Effect commands:"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3310
    const-string v4, "  oneshot [-w delay] [-a] <duration> [<amplitude>]"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3311
    const-string v4, "    Vibrates for duration milliseconds."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3312
    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3313
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3314
    const-string v4, "    If -a is provided, the command accepts a second argument for "

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3315
    const-string v4, "    amplitude, in a scale of 1-255."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3316
    const-string v4, "  waveform [-w delay] [-r index] [-a] [-f] [-c] "

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3317
    const-string v4, "(<duration> [<amplitude>] [<frequency>])..."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3318
    const-string v4, "    Vibrates for durations and amplitudes in list."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3319
    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3320
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3321
    const-string v4, "    If -r is provided, the waveform loops back to the specified"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3322
    const-string v4, "    index (e.g. 0 loops from the beginning)."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3323
    const-string v4, "    If -a is provided, the command expects amplitude to follow each"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3324
    const-string v4, "    duration; otherwise, it accepts durations only and alternates"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3325
    const-string v4, "    off/on."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3326
    const-string v4, "    If -f is provided, the command expects frequency to follow each"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3327
    const-string v4, "    amplitude or duration; otherwise, it uses resonant frequency."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3328
    const-string v4, "    If -c is provided, the waveform is continuous and will ramp"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3329
    const-string v4, "    between values; otherwise each entry is a fixed step."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3330
    const-string v4, "    Duration is in milliseconds; amplitude is a scale of 1-255;"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3331
    const-string v4, "    frequency is an absolute value in hertz."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3332
    const-string v4, "  envelope [-a] [-i initial sharpness] [-r index]  "

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3333
    const-string v4, "[<duration1> <intensity1> <sharpness1>]..."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3334
    const-string v4, "    Generates a vibration pattern based on a series of duration, "

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3335
    const-string v4, "    intensity, and sharpness values. The total vibration time is "

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3336
    const-string v4, "    the sum of all durations."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3337
    const-string v4, "    If -a is provided, the waveform will use the advanced APIs to "

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3338
    const-string v4, "    generate the vibration pattern and the input parameters "

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3339
    const-string v4, "    become [<duration1> <amplitude1> <frequency1>]."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3340
    const-string v4, "    If -i is provided, the waveform will have an initial sharpness "

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3341
    const-string v4, "    it will start from."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3342
    const-string v4, "    If -r is provided, the waveform loops back to the specified index"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3343
    const-string v4, "    (e.g. 0 loops from the beginning)."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3344
    const-string v4, "  prebaked [-w delay] [-b] <effect-id>"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3345
    const-string v4, "    Vibrates with prebaked effect."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3346
    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3347
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3348
    const-string v0, "    If -b is provided, the prebaked fallback effect will be played if"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3349
    const-string v0, "    the device doesn\'t support the given effect-id."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3350
    const-string v0, "  primitives ([-w delay] [-o time] [-s scale]"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3351
    const-string v0, "<primitive-id> [<scale>])..."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3352
    const-string v0, "    Vibrates with a composed effect."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3353
    const-string v0, "    If -w is provided, the next primitive will be played after the "

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3354
    const-string v0, "    specified wait time in milliseconds."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3355
    const-string v0, "    If -o is provided, the next primitive will be played at the "

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3356
    const-string v0, "    specified start offset time in milliseconds."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3357
    const-string v0, "    If -s is provided, the next primitive will be played with the"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3358
    const-string v0, "    specified amplitude scale, in a scale of [0,1]."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3359
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3360
    const-string v0, "Common Options:"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3361
    const-string v0, "  -f"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3362
    const-string v0, "    Force. Ignore Do Not Disturb setting."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3363
    const-string v0, "  -B"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3364
    const-string v0, "    Run in the background; without this option the shell cmd will"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3365
    const-string v0, "    block until the vibration has completed."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3366
    const-string v0, "  -d <description>"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3367
    const-string v0, "    Add description to the vibration."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3368
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3369
    const-string v0, "Notes"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3370
    const-string v0, "    Vibrations triggered by these commands will be ignored when"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3371
    const-string v0, "    device is on DND (Do Not Disturb) mode; notification strength"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3372
    const-string v0, "    user settings will be applied for scale."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3373
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3374
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 3375
    .end local v3    # "pw":Ljava/io/PrintWriter;
    return-void

    .line 3287
    .restart local v3    # "pw":Ljava/io/PrintWriter;
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0
.end method
