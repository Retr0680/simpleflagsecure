.class public Lcom/android/server/input/InputShellCommand;
.super Landroid/os/ShellCommand;
.source "InputShellCommand.java"


# static fields
.field private static final DEFAULT_BUTTON_STATE:I = 0x0

.field private static final DEFAULT_DEVICE_ID:I = 0x0

.field private static final DEFAULT_EDGE_FLAGS:I = 0x0

.field private static final DEFAULT_FLAGS:I = 0x0

.field private static final DEFAULT_META_STATE:I = 0x0

.field private static final DEFAULT_PRECISION_X:F = 1.0f

.field private static final DEFAULT_PRECISION_Y:F = 1.0f

.field private static final DEFAULT_PRESSURE:F = 1.0f

.field private static final DEFAULT_SIZE:F = 1.0f

.field private static final INJECT_ASYNC:Z = true

.field private static final INJECT_SYNC:Z = false

.field private static final INVALID_ARGUMENTS:Ljava/lang/String; = "Error: Invalid arguments for command: "

.field private static final INVALID_DISPLAY_ARGUMENTS:Ljava/lang/String; = "Error: Invalid arguments for display ID."

.field private static final MODIFIER:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final NO_PRESSURE:F = 0.0f

.field private static final SECOND_IN_MILLISECONDS:J = 0x3e8L

.field private static final SOURCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SWIPE_EVENT_HZ_DEFAULT:I = 0x78


# instance fields
.field private final mInputEventInjector:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Landroid/view/InputEvent;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$hGxb9MovDr1pEN3Qnb51vH9VzpA(Landroid/view/InputEvent;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/input/InputShellCommand;->injectInputEvent(Landroid/view/InputEvent;Ljava/lang/Integer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 99
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 100
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const/16 v1, 0x72

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x5000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const/16 v1, 0x3a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const/16 v1, 0x3b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x41

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x81

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, 0x30000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const/16 v1, 0x76

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, 0x50000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/android/server/input/InputShellCommand;->MODIFIER:Ljava/util/Map;

    .line 115
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 116
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v1, 0x101

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "keyboard"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const/16 v1, 0x201

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dpad"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const/16 v1, 0x401

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "gamepad"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const/16 v1, 0x1002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "touchscreen"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const/16 v1, 0x2002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "mouse"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const/16 v1, 0x4002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "stylus"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const v1, 0x10004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "trackball"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const v1, 0x100008

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "touchpad"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const/high16 v1, 0x200000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "touchnavigation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const v1, 0x1000010

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "joystick"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const/high16 v1, 0x400000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "rotaryencoder"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/android/server/input/InputShellCommand;->SOURCES:Ljava/util/Map;

    .line 129
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 132
    new-instance v0, Lcom/android/server/input/InputShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/input/InputShellCommand$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/input/InputShellCommand;-><init>(Ljava/util/function/BiConsumer;)V

    .line 133
    return-void
.end method

.method constructor <init>(Ljava/util/function/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Landroid/view/InputEvent;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 136
    .local p1, "inputEventInjector":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/view/InputEvent;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/android/server/input/InputShellCommand;->mInputEventInjector:Ljava/util/function/BiConsumer;

    .line 138
    return-void
.end method

.method private getAction()I
    .locals 7

    .line 637
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, "actionString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x3

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "CANCEL"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :sswitch_1
    const-string v2, "MOVE"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :sswitch_2
    const-string v2, "DOWN"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_3
    const-string v2, "UP"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 648
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 646
    :pswitch_0
    return v6

    .line 644
    :pswitch_1
    return v5

    .line 642
    :pswitch_2
    return v3

    .line 640
    :pswitch_3
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        0xa9b -> :sswitch_3
        0x201ca2 -> :sswitch_2
        0x2433d1 -> :sswitch_1
        0x760d227a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDisplayId()I
    .locals 4

    .line 165
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "displayArg":Ljava/lang/String;
    const-string v1, "INVALID_DISPLAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 167
    return v2

    .line 168
    :cond_0
    const-string v1, "DEFAULT_DISPLAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 169
    return v3

    .line 172
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 173
    .local v1, "displayId":I
    if-ne v1, v2, :cond_2

    .line 174
    return v2

    .line 176
    :cond_2
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 177
    .end local v1    # "displayId":I
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Error: Invalid arguments for display ID."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getInputDeviceId(I)I
    .locals 7
    .param p1, "inputSource"    # I

    .line 154
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    .line 155
    .local v0, "devIds":[I
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 156
    .local v4, "devId":I
    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 157
    .local v5, "inputDev":Landroid/view/InputDevice;
    invoke-virtual {v5, p1}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 158
    return v4

    .line 157
    :cond_0
    nop

    .line 155
    .end local v4    # "devId":I
    .end local v5    # "inputDev":Landroid/view/InputDevice;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 161
    :cond_1
    return v2
.end method

.method private getSource(II)I
    .locals 1
    .param p1, "inputSource"    # I
    .param p2, "defaultSource"    # I

    .line 249
    if-nez p1, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method private getToolType(I)I
    .locals 1
    .param p1, "inputSource"    # I

    .line 253
    sparse-switch p1, :sswitch_data_0

    .line 268
    const/4 v0, 0x0

    return v0

    .line 261
    :sswitch_0
    const/4 v0, 0x2

    return v0

    .line 257
    :sswitch_1
    const/4 v0, 0x3

    return v0

    .line 266
    :sswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1002 -> :sswitch_2
        0x2002 -> :sswitch_1
        0x4002 -> :sswitch_0
        0xc002 -> :sswitch_0
        0x10004 -> :sswitch_1
        0x20004 -> :sswitch_1
        0x100008 -> :sswitch_2
        0x200000 -> :sswitch_2
    .end sparse-switch
.end method

.method private static injectInputEvent(Landroid/view/InputEvent;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "event"    # Landroid/view/InputEvent;
    .param p1, "injectMode"    # Ljava/lang/Integer;

    .line 141
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManagerGlobal;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 142
    return-void
.end method

.method private injectKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "async"    # Z

    .line 147
    if-eqz p2, :cond_0

    .line 148
    const/4 v0, 0x0

    goto :goto_0

    .line 149
    :cond_0
    const/4 v0, 0x2

    :goto_0
    nop

    .line 150
    .local v0, "injectMode":I
    iget-object v1, p0, Lcom/android/server/input/InputShellCommand;->mInputEventInjector:Ljava/util/function/BiConsumer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    return-void
.end method

.method private injectMotionEvent(IIJJFFFI)V
    .locals 16
    .param p1, "inputSource"    # I
    .param p2, "action"    # I
    .param p3, "downTime"    # J
    .param p5, "when"    # J
    .param p7, "x"    # F
    .param p8, "y"    # F
    .param p9, "pressure"    # F
    .param p10, "displayId"    # I

    .line 196
    nop

    .line 198
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p7 .. p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 199
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p8 .. p8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 200
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {p9 .. p9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 197
    invoke-static/range {v1 .. v6}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v14

    .line 201
    .local v14, "axisValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;"
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    move/from16 v15, p10

    invoke-direct/range {v7 .. v15}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJLjava/util/Map;I)V

    .line 202
    return-void
.end method

.method private injectMotionEvent(IIJJLjava/util/Map;I)V
    .locals 19
    .param p1, "inputSource"    # I
    .param p2, "action"    # I
    .param p3, "downTime"    # J
    .param p5, "when"    # J
    .param p8, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;I)V"
        }
    .end annotation

    .line 216
    .local p7, "axisValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;"
    const/4 v0, 0x1

    .line 217
    .local v0, "pointerCount":I
    const/4 v1, 0x1

    new-array v8, v1, [Landroid/view/MotionEvent$PointerProperties;

    .line 219
    .local v8, "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 220
    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v8, v2

    .line 221
    aget-object v3, v8, v2

    iput v2, v3, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 222
    aget-object v3, v8, v2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/input/InputShellCommand;->getToolType(I)I

    move-result v4

    iput v4, v3, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 224
    .end local v2    # "i":I
    new-array v9, v1, [Landroid/view/MotionEvent$PointerCoords;

    .line 225
    .local v9, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 226
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v9, v2

    .line 227
    aget-object v3, v9, v2

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 228
    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 229
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Float;>;"
    aget-object v5, v9, v2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 230
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Float;>;"
    goto :goto_2

    .line 225
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 232
    .end local v2    # "i":I
    const/4 v1, -0x1

    move/from16 v2, p8

    if-ne v2, v1, :cond_3

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    .line 234
    const/4 v1, 0x0

    move/from16 v17, v1

    .end local p8    # "displayId":I
    .local v1, "displayId":I
    goto :goto_3

    .line 236
    .end local v1    # "displayId":I
    .restart local p8    # "displayId":I
    :cond_3
    move/from16 v17, v2

    .end local p8    # "displayId":I
    .local v17, "displayId":I
    :goto_3
    nop

    .line 238
    invoke-direct/range {p0 .. p1}, Lcom/android/server/input/InputShellCommand;->getInputDeviceId(I)I

    move-result v14

    .line 236
    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v18, 0x0

    move/from16 v16, p1

    move/from16 v6, p2

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    invoke-static/range {v2 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 240
    .local v1, "event":Landroid/view/MotionEvent;
    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/server/input/InputShellCommand;->mInputEventInjector:Ljava/util/function/BiConsumer;

    .line 241
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 240
    invoke-interface {v3, v1, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 242
    return-void
.end method

.method private lerp(FFF)F
    .locals 1
    .param p1, "a"    # F
    .param p2, "b"    # F
    .param p3, "alpha"    # F

    .line 245
    sub-float v0, p2, p1

    mul-float/2addr v0, p3

    add-float/2addr v0, p1

    return v0
.end method

.method private readAxisOptionValues(Ljava/util/Set;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 607
    .local p1, "supportedAxes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "optionValue":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, "axisAndValue":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AXIS_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 613
    .local v2, "axisName":Ljava/lang/String;
    invoke-static {v2}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v3

    .line 614
    .local v3, "axis":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 617
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 620
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4

    .line 618
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported axis: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 615
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid axis name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 610
    .end local v2    # "axisName":Ljava/lang/String;
    .end local v3    # "axis":I
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid --axis option value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private runDragAndDrop(II)V
    .locals 1
    .param p1, "inputSource"    # I
    .param p2, "displayId"    # I

    .line 557
    const/16 v0, 0x1002

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    .line 558
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/input/InputShellCommand;->sendSwipe(IIZ)V

    .line 559
    return-void
.end method

.method private runKeyCombination(II)V
    .locals 8
    .param p1, "inputSource"    # I
    .param p2, "displayId"    # I

    .line 687
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 690
    .local v0, "arg":Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 691
    .local v1, "duration":J
    const-string v3, "-t"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 692
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 693
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v1, v3

    .line 694
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    move-wide v5, v1

    goto :goto_0

    .line 691
    :cond_0
    move-wide v5, v1

    .line 697
    .end local v1    # "duration":J
    .local v5, "duration":J
    :goto_0
    new-instance v3, Landroid/util/IntArray;

    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    .line 698
    .local v3, "keyCodes":Landroid/util/IntArray;
    :goto_1
    if-eqz v0, :cond_2

    .line 699
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v1

    .line 700
    .local v1, "keyCode":I
    if-eqz v1, :cond_1

    .line 703
    invoke-virtual {v3, v1}, Landroid/util/IntArray;->add(I)V

    .line 704
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 705
    .end local v1    # "keyCode":I
    goto :goto_1

    .line 701
    .restart local v1    # "keyCode":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown keycode: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 708
    .end local v1    # "keyCode":I
    :cond_2
    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    .line 712
    move-object v1, p0

    move v2, p1

    move v4, p2

    .end local p1    # "inputSource":I
    .end local p2    # "displayId":I
    .local v2, "inputSource":I
    .local v4, "displayId":I
    invoke-direct/range {v1 .. v6}, Lcom/android/server/input/InputShellCommand;->sendKeyCombination(ILandroid/util/IntArray;IJ)V

    .line 713
    return-void

    .line 709
    .end local v2    # "inputSource":I
    .end local v4    # "displayId":I
    .restart local p1    # "inputSource":I
    .restart local p2    # "displayId":I
    :cond_3
    move v2, p1

    move v4, p2

    .end local p1    # "inputSource":I
    .end local p2    # "displayId":I
    .restart local v2    # "inputSource":I
    .restart local v4    # "displayId":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "keycombination requires at least 2 keycodes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private runKeyEvent(II)V
    .locals 17
    .param p1, "inputSource"    # I
    .param p2, "displayId"    # I

    .line 404
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 405
    .local v1, "longPress":Z
    const/4 v2, 0x0

    .line 406
    .local v2, "async":Z
    const/4 v3, 0x0

    .line 407
    .local v3, "doubleTap":Z
    const-wide/16 v4, 0x0

    .line 408
    .local v4, "delayMs":J
    const-wide/16 v6, 0x0

    .line 410
    .local v6, "durationMs":J
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 412
    .local v8, "arg":Ljava/lang/String;
    :goto_0
    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    move v9, v1

    move v10, v3

    move-wide v11, v4

    move-wide v15, v6

    move v6, v2

    move-wide v1, v15

    goto/16 :goto_7

    .line 413
    :cond_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v1, :cond_1

    const-string v11, "--longpress"

    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    move v11, v10

    goto :goto_2

    :goto_1
    move v11, v9

    :goto_2
    move v1, v11

    .line 414
    if-nez v2, :cond_3

    const-string v11, "--async"

    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_3
    goto :goto_3

    :cond_4
    move v11, v10

    goto :goto_4

    :goto_3
    move v11, v9

    :goto_4
    move v2, v11

    .line 415
    if-nez v3, :cond_5

    const-string v11, "--doubletap"

    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_5
    goto :goto_5

    :cond_6
    move v9, v10

    :goto_5
    move v3, v9

    .line 416
    const-string v9, "--delay"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 417
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_6

    .line 418
    :cond_7
    const-string v9, "--duration"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 419
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 421
    :cond_8
    :goto_6
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    nop

    if-nez v9, :cond_f

    move v9, v1

    move v10, v3

    move-wide v11, v4

    move-wide v15, v6

    move v6, v2

    move-wide v1, v15

    .line 423
    .end local v2    # "async":Z
    .end local v3    # "doubleTap":Z
    .end local v4    # "delayMs":J
    .local v1, "durationMs":J
    .local v6, "async":Z
    .local v9, "longPress":Z
    .local v10, "doubleTap":Z
    .local v11, "delayMs":J
    :goto_7
    const-wide/16 v13, 0x0

    cmp-long v3, v1, v13

    if-lez v3, :cond_9

    if-nez v9, :cond_a

    :cond_9
    goto :goto_8

    .line 424
    :cond_a
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "--duration and --longpress cannot be used at the same time."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "keyevent args should only contain either durationMs or longPress"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 429
    :goto_8
    if-eqz v9, :cond_b

    .line 430
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v1, v3

    move-wide v3, v1

    goto :goto_9

    .line 429
    :cond_b
    move-wide v3, v1

    .line 433
    .end local v1    # "durationMs":J
    .local v3, "durationMs":J
    :goto_9
    const/4 v1, 0x1

    .line 435
    .local v1, "firstInput":Z
    :goto_a
    if-nez v1, :cond_c

    cmp-long v2, v11, v13

    if-lez v2, :cond_c

    .line 436
    invoke-direct {v0, v11, v12}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    .line 438
    :cond_c
    const/4 v7, 0x0

    .line 440
    .end local v1    # "firstInput":Z
    .local v7, "firstInput":Z
    invoke-static {v8}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v2

    .line 441
    .local v2, "keyCode":I
    move/from16 v1, p1

    move/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/input/InputShellCommand;->sendKeyEvent(IIJIZ)V

    .line 442
    if-eqz v10, :cond_d

    .line 443
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v1

    int-to-long v13, v1

    invoke-direct {v0, v13, v14}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    .line 444
    move/from16 v1, p1

    move/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/input/InputShellCommand;->sendKeyEvent(IIJIZ)V

    move-wide v13, v3

    move v0, v6

    .end local v3    # "durationMs":J
    .end local v6    # "async":Z
    .local v0, "async":Z
    .local v13, "durationMs":J
    goto :goto_b

    .line 442
    .end local v0    # "async":Z
    .end local v13    # "durationMs":J
    .restart local v3    # "durationMs":J
    .restart local v6    # "async":Z
    :cond_d
    move-wide v13, v3

    move v0, v6

    .line 446
    .end local v2    # "keyCode":I
    .end local v3    # "durationMs":J
    .end local v6    # "async":Z
    .restart local v0    # "async":Z
    .restart local v13    # "durationMs":J
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    if-nez v1, :cond_e

    .line 447
    return-void

    .line 446
    :cond_e
    move v6, v0

    move v1, v7

    move-wide v3, v13

    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    goto :goto_a

    .line 421
    .end local v0    # "async":Z
    .end local v7    # "firstInput":Z
    .end local v9    # "longPress":Z
    .end local v10    # "doubleTap":Z
    .end local v11    # "delayMs":J
    .end local v13    # "durationMs":J
    .local v1, "longPress":Z
    .local v2, "async":Z
    .local v3, "doubleTap":Z
    .restart local v4    # "delayMs":J
    .local v6, "durationMs":J
    :cond_f
    move-object/from16 v0, p0

    goto/16 :goto_0
.end method

.method private runMotionEvent(II)V
    .locals 7
    .param p1, "inputSource"    # I
    .param p2, "displayId"    # I

    .line 653
    const/16 v0, 0x1002

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result v2

    .line 654
    .end local p1    # "inputSource":I
    .local v2, "inputSource":I
    invoke-direct {p0}, Lcom/android/server/input/InputShellCommand;->getAction()I

    move-result v3

    .line 655
    .local v3, "action":I
    const/4 p1, 0x0

    .local p1, "x":F
    const/4 v0, 0x0

    .line 656
    .local v0, "y":F
    if-eqz v3, :cond_0

    const/4 v1, 0x2

    if-eq v3, v1, :cond_0

    const/4 v1, 0x1

    if-ne v3, v1, :cond_1

    :cond_0
    goto :goto_0

    .line 663
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 664
    .local v1, "xString":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 665
    .local v4, "yString":Ljava/lang/String;
    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    .line 666
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 667
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    move v4, p1

    move v5, v0

    goto :goto_1

    .line 671
    .end local v1    # "xString":Ljava/lang/String;
    .end local v4    # "yString":Ljava/lang/String;
    :cond_2
    move v4, p1

    move v5, v0

    goto :goto_1

    .line 659
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 660
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    move v4, p1

    move v5, v0

    .line 671
    .end local v0    # "y":F
    .end local p1    # "x":F
    .local v4, "x":F
    .local v5, "y":F
    :goto_1
    move-object v1, p0

    move v6, p2

    .end local p2    # "displayId":I
    .local v6, "displayId":I
    invoke-direct/range {v1 .. v6}, Lcom/android/server/input/InputShellCommand;->sendMotionEvent(IIFFI)V

    .line 672
    return-void
.end method

.method private runPress(II)V
    .locals 1
    .param p1, "inputSource"    # I
    .param p2, "displayId"    # I

    .line 496
    const v0, 0x10004

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    .line 497
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/android/server/input/InputShellCommand;->sendTap(IFFI)V

    .line 498
    return-void
.end method

.method private runRoll(II)V
    .locals 2
    .param p1, "inputSource"    # I
    .param p2, "displayId"    # I

    .line 562
    const v0, 0x10004

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    .line 563
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 564
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 563
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/input/InputShellCommand;->sendMove(IFFI)V

    .line 565
    return-void
.end method

.method private runScroll(II)V
    .locals 11
    .param p1, "inputSource"    # I
    .param p2, "displayId"    # I

    .line 568
    const/high16 v0, 0x400000

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result v2

    .line 569
    .end local p1    # "inputSource":I
    .local v2, "inputSource":I
    and-int/lit8 p1, v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 570
    .local p1, "isPointerEvent":Z
    :goto_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 571
    .local v8, "axisValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;"
    if-eqz p1, :cond_1

    .line 572
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v8, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    :cond_1
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v3, v4}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 577
    .local v0, "supportedAxes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    .local v10, "nextOption":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 578
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_2
    goto :goto_2

    :pswitch_0
    const-string v3, "--axis"

    invoke-virtual {v10, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_3

    :goto_2
    const/4 v3, -0x1

    :goto_3
    packed-switch v3, :pswitch_data_1

    .line 584
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 580
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/server/input/InputShellCommand;->readAxisOptionValues(Ljava/util/Set;)Landroid/util/Pair;

    move-result-object v3

    .line 581
    .local v3, "axisAndValue":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Float;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-interface {v8, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    nop

    .line 585
    .end local v3    # "axisAndValue":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Float;>;"
    goto :goto_1

    .line 587
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 588
    .local v4, "now":J
    const/16 v3, 0x8

    move-wide v6, v4

    move-object v1, p0

    move v9, p2

    .end local p2    # "displayId":I
    .local v9, "displayId":I
    invoke-direct/range {v1 .. v9}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJLjava/util/Map;I)V

    .line 590
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4f721d41
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private runSwipe(II)V
    .locals 1
    .param p1, "inputSource"    # I
    .param p2, "displayId"    # I

    .line 501
    const/16 v0, 0x1002

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    .line 502
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/input/InputShellCommand;->sendSwipe(IIZ)V

    .line 503
    return-void
.end method

.method private runTap(II)V
    .locals 2
    .param p1, "inputSource"    # I
    .param p2, "displayId"    # I

    .line 483
    const/16 v0, 0x1002

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    .line 484
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 485
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 484
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/input/InputShellCommand;->sendTap(IFFI)V

    .line 486
    return-void
.end method

.method private runText(II)V
    .locals 1
    .param p1, "inputSource"    # I
    .param p2, "displayId"    # I

    .line 364
    const/16 v0, 0x101

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    .line 365
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/input/InputShellCommand;->sendText(ILjava/lang/String;I)V

    .line 366
    return-void
.end method

.method private sendKeyCombination(ILandroid/util/IntArray;IJ)V
    .locals 21
    .param p1, "inputSource"    # I
    .param p2, "keyCodes"    # Landroid/util/IntArray;
    .param p3, "displayId"    # I
    .param p4, "duration"    # J

    .line 717
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 718
    .local v2, "now":J
    invoke-virtual/range {p2 .. p2}, Landroid/util/IntArray;->size()I

    move-result v14

    .line 719
    .local v14, "count":I
    new-array v15, v14, [Landroid/view/KeyEvent;

    .line 720
    .local v15, "events":[Landroid/view/KeyEvent;
    const/4 v1, 0x0

    .line 721
    .local v1, "metaState":I
    const/4 v4, 0x0

    move v9, v1

    move v1, v4

    .local v1, "i":I
    .local v9, "metaState":I
    :goto_0
    const/16 v16, 0x0

    if-ge v1, v14, :cond_0

    .line 722
    move-object/from16 v4, p2

    invoke-virtual {v4, v1}, Landroid/util/IntArray;->get(I)I

    move-result v7

    .line 723
    .local v7, "keyCode":I
    move v5, v1

    .end local v1    # "i":I
    .local v5, "i":I
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    move v13, v5

    .end local v5    # "i":I
    .local v13, "i":I
    move-wide v4, v2

    move/from16 v17, v13

    move/from16 v13, p1

    .end local v13    # "i":I
    .local v17, "i":I
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 726
    .local v1, "event":Landroid/view/KeyEvent;
    move/from16 v4, p3

    invoke-virtual {v1, v4}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 727
    aput-object v1, v15, v17

    .line 729
    sget-object v5, Lcom/android/server/input/InputShellCommand;->MODIFIER:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v6, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    or-int/2addr v9, v5

    .line 721
    .end local v1    # "event":Landroid/view/KeyEvent;
    .end local v7    # "keyCode":I
    add-int/lit8 v1, v17, 0x1

    .end local v17    # "i":I
    .local v1, "i":I
    goto :goto_0

    :cond_0
    move/from16 v4, p3

    move/from16 v17, v1

    .line 732
    .end local v1    # "i":I
    array-length v1, v15

    move/from16 v5, v16

    :goto_1
    const/4 v6, 0x1

    if-ge v5, v1, :cond_1

    aget-object v7, v15, v5

    .line 735
    .local v7, "event":Landroid/view/KeyEvent;
    invoke-direct {v0, v7, v6}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 732
    .end local v7    # "event":Landroid/view/KeyEvent;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 738
    :cond_1
    move-wide/from16 v7, p4

    invoke-direct {v0, v7, v8}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    .line 740
    array-length v1, v15

    move/from16 v5, v16

    :goto_2
    if-ge v5, v1, :cond_2

    aget-object v17, v15, v5

    .line 741
    .local v17, "event":Landroid/view/KeyEvent;
    invoke-virtual/range {v17 .. v17}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    .line 742
    .local v7, "keyCode":I
    move v8, v1

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v10, v6

    const/4 v6, 0x1

    move v13, v8

    const/4 v8, 0x0

    move/from16 v18, v10

    const/4 v10, -0x1

    move/from16 v19, v5

    move-wide v4, v2

    move/from16 v20, v18

    move/from16 v18, v14

    move/from16 v14, v20

    move/from16 v20, v19

    move/from16 v19, v13

    move/from16 v13, p1

    .end local v14    # "count":I
    .local v18, "count":I
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 745
    .local v1, "upEvent":Landroid/view/KeyEvent;
    invoke-direct {v0, v1, v14}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 746
    sget-object v4, Lcom/android/server/input/InputShellCommand;->MODIFIER:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    not-int v4, v4

    and-int/2addr v9, v4

    .line 740
    .end local v1    # "upEvent":Landroid/view/KeyEvent;
    .end local v7    # "keyCode":I
    .end local v17    # "event":Landroid/view/KeyEvent;
    add-int/lit8 v5, v20, 0x1

    move/from16 v4, p3

    move-wide/from16 v7, p4

    move v6, v14

    move/from16 v14, v18

    move/from16 v1, v19

    goto :goto_2

    .line 748
    .end local v18    # "count":I
    .restart local v14    # "count":I
    :cond_2
    return-void
.end method

.method private sendKeyEvent(IIJIZ)V
    .locals 18
    .param p1, "inputSource"    # I
    .param p2, "keyCode"    # I
    .param p3, "durationMs"    # J
    .param p5, "displayId"    # I
    .param p6, "async"    # Z

    .line 452
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move/from16 v3, p6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 454
    .local v5, "now":J
    new-instance v4, Landroid/view/KeyEvent;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    move-wide v7, v5

    move/from16 v16, p1

    move/from16 v10, p2

    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 457
    .local v4, "event":Landroid/view/KeyEvent;
    move/from16 v7, p5

    invoke-virtual {v4, v7}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 459
    invoke-direct {v0, v4, v3}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 460
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v8

    int-to-long v8, v8

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 461
    .local v8, "firstSleepDurationMs":J
    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    const/4 v13, 0x1

    if-lez v12, :cond_0

    .line 462
    invoke-direct {v0, v8, v9}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    .line 464
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v12

    int-to-long v14, v12

    cmp-long v12, v1, v14

    if-ltz v12, :cond_0

    .line 467
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v12

    int-to-long v14, v12

    add-long/2addr v14, v5

    .line 468
    .local v14, "nextEventTime":J
    const/16 v12, 0x80

    invoke-static {v4, v14, v15, v13, v12}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v12

    .line 470
    .local v12, "longPressEvent":Landroid/view/KeyEvent;
    invoke-direct {v0, v12, v3}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 472
    move-wide/from16 v16, v10

    sub-long v10, v1, v8

    .line 473
    .local v10, "secondSleepDurationMs":J
    cmp-long v16, v10, v16

    if-lez v16, :cond_0

    .line 474
    invoke-direct {v0, v10, v11}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    .line 478
    .end local v10    # "secondSleepDurationMs":J
    .end local v12    # "longPressEvent":Landroid/view/KeyEvent;
    .end local v14    # "nextEventTime":J
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-static {v4, v10, v11, v12}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v4

    .line 479
    invoke-static {v4, v13}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v10

    invoke-direct {v0, v10, v3}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 480
    return-void
.end method

.method private sendMotionEvent(IIFFI)V
    .locals 11
    .param p1, "inputSource"    # I
    .param p2, "action"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "displayId"    # I

    .line 676
    const/4 v0, 0x0

    .line 678
    .local v0, "pressure":F
    if-eqz p2, :cond_0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    move v9, v0

    goto :goto_1

    .line 679
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    move v9, v0

    .line 682
    .end local v0    # "pressure":F
    .local v9, "pressure":F
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 683
    .local v3, "now":J
    move-wide v5, v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v7, p3

    move v8, p4

    move/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    .line 684
    return-void
.end method

.method private sendMove(IFFI)V
    .locals 11
    .param p1, "inputSource"    # I
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "displayId"    # I

    .line 631
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 632
    .local v3, "now":J
    const/4 v2, 0x2

    const/4 v9, 0x0

    move-wide v5, v3

    move-object v0, p0

    move v1, p1

    move v7, p2

    move v8, p3

    move v10, p4

    .end local p1    # "inputSource":I
    .end local p2    # "dx":F
    .end local p3    # "dy":F
    .end local p4    # "displayId":I
    .local v1, "inputSource":I
    .local v7, "dx":F
    .local v8, "dy":F
    .local v10, "displayId":I
    invoke-direct/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    .line 634
    return-void
.end method

.method private sendSwipe(IIZ)V
    .locals 28
    .param p1, "inputSource"    # I
    .param p2, "displayId"    # I
    .param p3, "isDragDrop"    # Z

    .line 507
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 508
    .local v7, "x1":F
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 509
    .local v8, "y1":F
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    .line 510
    .local v11, "x2":F
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    .line 511
    .local v12, "y2":F
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v13

    .line 512
    .local v13, "durationArg":Ljava/lang/String;
    if-eqz v13, :cond_0

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 513
    .local v0, "duration":I
    :goto_0
    if-gez v0, :cond_1

    .line 514
    const/16 v0, 0x12c

    move v14, v0

    goto :goto_1

    .line 513
    :cond_1
    move v14, v0

    .line 517
    .end local v0    # "duration":I
    .local v14, "duration":I
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 518
    .local v3, "down":J
    const/4 v2, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-wide v5, v3

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    .line 520
    move v15, v7

    move v1, v8

    .end local v7    # "x1":F
    .end local v8    # "y1":F
    .local v1, "y1":F
    .local v15, "x1":F
    if-eqz p3, :cond_2

    .line 522
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v5, v2

    invoke-direct {v0, v5, v6}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    .line 524
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 525
    .local v5, "now":J
    int-to-long v7, v14

    add-long v16, v3, v7

    .line 526
    .local v16, "endTime":J
    const v18, 0x41055555

    .line 528
    .local v18, "swipeEventPeriodMillis":F
    const/4 v2, 0x1

    .line 529
    .local v2, "injected":I
    :goto_2
    cmp-long v7, v5, v16

    if-gez v7, :cond_5

    .line 532
    sub-long v7, v5, v3

    .line 533
    .local v7, "elapsedTime":J
    int-to-float v9, v2

    const v10, 0x41055555

    mul-float/2addr v9, v10

    long-to-float v10, v7

    sub-float/2addr v9, v10

    float-to-double v9, v9

    .line 534
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-long v9, v9

    .line 535
    .local v9, "errorMillis":J
    const-wide/16 v19, 0x0

    cmp-long v19, v9, v19

    if-lez v19, :cond_4

    .line 537
    sub-long v19, v16, v5

    cmp-long v19, v9, v19

    if-lez v19, :cond_3

    .line 538
    move-wide/from16 v19, v3

    move v4, v2

    .end local v2    # "injected":I
    .end local v3    # "down":J
    .local v4, "injected":I
    .local v19, "down":J
    sub-long v2, v16, v5

    invoke-direct {v0, v2, v3}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    .line 539
    move-wide/from16 v26, v19

    move/from16 v20, v4

    move-wide/from16 v3, v26

    move/from16 v19, v1

    goto :goto_4

    .line 541
    .end local v4    # "injected":I
    .end local v19    # "down":J
    .restart local v2    # "injected":I
    .restart local v3    # "down":J
    :cond_3
    move-wide/from16 v19, v3

    move v4, v2

    .end local v2    # "injected":I
    .end local v3    # "down":J
    .restart local v4    # "injected":I
    .restart local v19    # "down":J
    invoke-direct {v0, v9, v10}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    goto :goto_3

    .line 535
    .end local v4    # "injected":I
    .end local v19    # "down":J
    .restart local v2    # "injected":I
    .restart local v3    # "down":J
    :cond_4
    move-wide/from16 v19, v3

    move v4, v2

    .line 544
    .end local v2    # "injected":I
    .end local v3    # "down":J
    .restart local v4    # "injected":I
    .restart local v19    # "down":J
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 545
    sub-long v2, v5, v19

    .line 546
    .end local v7    # "elapsedTime":J
    .local v2, "elapsedTime":J
    long-to-float v7, v2

    int-to-float v8, v14

    div-float/2addr v7, v8

    .line 547
    .local v7, "alpha":F
    nop

    .line 548
    invoke-direct {v0, v15, v11, v7}, Lcom/android/server/input/InputShellCommand;->lerp(FFF)F

    move-result v8

    move/from16 v21, v8

    invoke-direct {v0, v1, v12, v7}, Lcom/android/server/input/InputShellCommand;->lerp(FFF)F

    move-result v8

    .line 547
    move-wide/from16 v22, v2

    .end local v2    # "elapsedTime":J
    .local v22, "elapsedTime":J
    const/4 v2, 0x2

    move-wide/from16 v24, v9

    .end local v9    # "errorMillis":J
    .local v24, "errorMillis":J
    const/high16 v9, 0x3f800000    # 1.0f

    move-wide/from16 v26, v19

    move/from16 v20, v4

    move-wide/from16 v3, v26

    move/from16 v10, v21

    move/from16 v21, v7

    move v7, v10

    move/from16 v10, p2

    move/from16 v19, v1

    move/from16 v1, p1

    .end local v1    # "y1":F
    .end local v4    # "injected":I
    .end local v7    # "alpha":F
    .restart local v3    # "down":J
    .local v19, "y1":F
    .local v20, "injected":I
    .local v21, "alpha":F
    invoke-direct/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    .line 549
    add-int/lit8 v2, v20, 0x1

    .line 550
    .end local v20    # "injected":I
    .local v2, "injected":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 551
    .end local v21    # "alpha":F
    .end local v22    # "elapsedTime":J
    .end local v24    # "errorMillis":J
    move-object/from16 v0, p0

    move/from16 v1, v19

    goto :goto_2

    .line 529
    .end local v19    # "y1":F
    .restart local v1    # "y1":F
    :cond_5
    move/from16 v19, v1

    move/from16 v20, v2

    .line 552
    .end local v1    # "y1":F
    .end local v2    # "injected":I
    .restart local v19    # "y1":F
    .restart local v20    # "injected":I
    :goto_4
    const/4 v2, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v10, p2

    move v7, v11

    move v8, v12

    .end local v11    # "x2":F
    .end local v12    # "y2":F
    .local v7, "x2":F
    .local v8, "y2":F
    invoke-direct/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    .line 554
    return-void
.end method

.method private sendTap(IFFI)V
    .locals 11
    .param p1, "inputSource"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "displayId"    # I

    .line 489
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 490
    .local v3, "now":J
    const/4 v2, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-wide v5, v3

    move-object v0, p0

    move v1, p1

    move v7, p2

    move v8, p3

    move v10, p4

    .end local p1    # "inputSource":I
    .end local p2    # "x":F
    .end local p3    # "y":F
    .end local p4    # "displayId":I
    .local v1, "inputSource":I
    .local v7, "x":F
    .local v8, "y":F
    .local v10, "displayId":I
    invoke-direct/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    .line 492
    const/4 v2, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    .line 493
    return-void
.end method

.method private sendText(ILjava/lang/String;I)V
    .locals 8
    .param p1, "source"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "displayId"    # I

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 376
    .local v0, "buff":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 377
    .local v1, "escapeFlag":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 378
    if-eqz v1, :cond_0

    .line 379
    const/4 v1, 0x0

    .line 380
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x73

    if-ne v3, v4, :cond_0

    .line 381
    const/16 v3, 0x20

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 382
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 385
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    if-ne v3, v4, :cond_1

    .line 386
    const/4 v1, 0x1

    .line 377
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 390
    .end local v2    # "i":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 391
    .local v2, "chars":[C
    const/4 v3, -0x1

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v3

    .line 392
    .local v3, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual {v3, v2}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v4

    .line 393
    .local v4, "events":[Landroid/view/KeyEvent;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_4

    .line 394
    aget-object v6, v4, v5

    .line 395
    .local v6, "e":Landroid/view/KeyEvent;
    invoke-virtual {v6}, Landroid/view/KeyEvent;->getSource()I

    move-result v7

    if-eq p1, v7, :cond_3

    .line 396
    invoke-virtual {v6, p1}, Landroid/view/KeyEvent;->setSource(I)V

    .line 398
    :cond_3
    invoke-virtual {v6, p3}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 399
    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 393
    .end local v6    # "e":Landroid/view/KeyEvent;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    nop

    .line 401
    .end local v5    # "i":I
    return-void
.end method

.method private sleep(J)V
    .locals 2
    .param p1, "milliseconds"    # J

    .line 757
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    nop

    .line 761
    return-void

    .line 758
    :catch_0
    move-exception v0

    .line 759
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 7
    .param p1, "cmd"    # Ljava/lang/String;

    .line 273
    move-object v0, p1

    .line 274
    .local v0, "arg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 276
    .local v1, "inputSource":I
    sget-object v2, Lcom/android/server/input/InputShellCommand;->SOURCES:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    sget-object v2, Lcom/android/server/input/InputShellCommand;->SOURCES:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 278
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 282
    :cond_0
    const/4 v2, -0x1

    .line 283
    .local v2, "displayId":I
    const-string v3, "-d"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 284
    invoke-direct {p0}, Lcom/android/server/input/InputShellCommand;->getDisplayId()I

    move-result v2

    .line 285
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 289
    :cond_1
    :try_start_0
    const-string/jumbo v3, "text"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 290
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runText(II)V

    goto/16 :goto_0

    .line 312
    :catch_0
    move-exception v3

    goto/16 :goto_1

    .line 291
    :cond_2
    const-string/jumbo v3, "keyevent"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 292
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runKeyEvent(II)V

    goto :goto_0

    .line 293
    :cond_3
    const-string/jumbo v3, "tap"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 294
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runTap(II)V

    goto :goto_0

    .line 295
    :cond_4
    const-string/jumbo v3, "swipe"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 296
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runSwipe(II)V

    goto :goto_0

    .line 297
    :cond_5
    const-string v3, "draganddrop"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 298
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runDragAndDrop(II)V

    goto :goto_0

    .line 299
    :cond_6
    const-string/jumbo v3, "press"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 300
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runPress(II)V

    goto :goto_0

    .line 301
    :cond_7
    const-string/jumbo v3, "roll"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 302
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runRoll(II)V

    goto :goto_0

    .line 303
    :cond_8
    const-string/jumbo v3, "scroll"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 304
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runScroll(II)V

    goto :goto_0

    .line 305
    :cond_9
    const-string/jumbo v3, "motionevent"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 306
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runMotionEvent(II)V

    goto :goto_0

    .line 307
    :cond_a
    const-string/jumbo v3, "keycombination"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 308
    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runKeyCombination(II)V

    goto :goto_0

    .line 310
    :cond_b
    invoke-virtual {p0, v0}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    nop

    .line 315
    const/4 v3, 0x0

    return v3

    .line 312
    :goto_1
    nop

    .line 313
    .local v3, "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Invalid arguments for command: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public final onHelp()V
    .locals 5

    .line 320
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 321
    .local v0, "out":Ljava/io/PrintWriter;
    :try_start_0
    const-string v1, "Usage: input [<source>] [-d DISPLAY_ID] <command> [<arg>...]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 323
    const-string v1, "The sources are: "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    sget-object v1, Lcom/android/server/input/InputShellCommand;->SOURCES:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 325
    .local v2, "src":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    .end local v2    # "src":Ljava/lang/String;
    goto :goto_0

    .line 320
    :catchall_0
    move-exception v1

    goto/16 :goto_1

    .line 327
    :cond_0
    const-string v1, "[axis_value] represents an option specifying the value of a given axis "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    const-string v1, "      The syntax is as follows: --axis <axis_name>,<axis_value>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    const-string v1, "            where <axis_name> is the name of the axis as defined in "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    const-string v1, "            MotionEvent without the AXIS_ prefix (e.g. SCROLL, X)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    const-string v1, "      Sample [axis_values] entry: `--axis Y,3`, `--axis SCROLL,-2`"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 333
    const-string v1, "-d: specify the display ID.\n      (Default: %d for key event, %d for motion event if not specified.)"

    .line 335
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 333
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 336
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 337
    const-string v1, "The commands and default sources are:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    const-string v1, "      text <string> (Default: keyboard)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    const-string v1, "      keyevent [--longpress|--duration <duration to hold key down in ms>] [--doubletap] [--async] [--delay <duration between keycodes in ms>] <key code number or name> ... (Default: keyboard)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    const-string v1, "      tap <x> <y> (Default: touchscreen)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    const-string v1, "      swipe <x1> <y1> <x2> <y2> [duration(ms)] (Default: touchscreen)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    const-string v1, "      draganddrop <x1> <y1> <x2> <y2> [duration(ms)] (Default: touchscreen)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    const-string v1, "      press (Default: trackball)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    const-string v1, "      roll <dx> <dy> (Default: trackball)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    const-string v1, "      motionevent <DOWN|UP|MOVE|CANCEL> <x> <y> (Default: touchscreen)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    const-string v1, "      scroll (Default: rotaryencoder). Has the following syntax:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    const-string v1, "            scroll <x> <y> [axis_value] (for pointer-based sources)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    const-string v1, "            scroll [axis_value] (for non-pointer-based sources)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    const-string v1, "            Axis options: SCROLL, HSCROLL, VSCROLL"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    const-string v1, "            None or one or multiple axis value options can be specified."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    const-string v1, "            To specify multiple axes, use one axis option for per axis."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    const-string v1, "            Example: `scroll --axis VSCROLL,2 --axis SCROLL,-2.4`"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    const-string v1, "      keycombination [-t duration(ms)] <key code 1> <key code 2> ... (Default: keyboard, the key order is important here.)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 361
    .end local v0    # "out":Ljava/io/PrintWriter;
    return-void

    .line 320
    .restart local v0    # "out":Ljava/io/PrintWriter;
    :goto_1
    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v1
.end method
