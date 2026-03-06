.class final enum Lcom/android/server/vibrator/VibratorController$VibratorState;
.super Ljava/lang/Enum;
.source "VibratorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "VibratorState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/vibrator/VibratorController$VibratorState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/vibrator/VibratorController$VibratorState;

.field public static final enum IDLE:Lcom/android/server/vibrator/VibratorController$VibratorState;

.field public static final enum UNDER_EXTERNAL_CONTROL:Lcom/android/server/vibrator/VibratorController$VibratorState;

.field public static final enum VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;


# direct methods
.method private static synthetic $values()[Lcom/android/server/vibrator/VibratorController$VibratorState;
    .locals 3

    .line 95
    sget-object v0, Lcom/android/server/vibrator/VibratorController$VibratorState;->IDLE:Lcom/android/server/vibrator/VibratorController$VibratorState;

    sget-object v1, Lcom/android/server/vibrator/VibratorController$VibratorState;->VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;

    sget-object v2, Lcom/android/server/vibrator/VibratorController$VibratorState;->UNDER_EXTERNAL_CONTROL:Lcom/android/server/vibrator/VibratorController$VibratorState;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/vibrator/VibratorController$VibratorState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 96
    new-instance v0, Lcom/android/server/vibrator/VibratorController$VibratorState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/vibrator/VibratorController$VibratorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/vibrator/VibratorController$VibratorState;->IDLE:Lcom/android/server/vibrator/VibratorController$VibratorState;

    new-instance v0, Lcom/android/server/vibrator/VibratorController$VibratorState;

    const-string v1, "VIBRATING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/vibrator/VibratorController$VibratorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/vibrator/VibratorController$VibratorState;->VIBRATING:Lcom/android/server/vibrator/VibratorController$VibratorState;

    new-instance v0, Lcom/android/server/vibrator/VibratorController$VibratorState;

    const-string v1, "UNDER_EXTERNAL_CONTROL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/vibrator/VibratorController$VibratorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/vibrator/VibratorController$VibratorState;->UNDER_EXTERNAL_CONTROL:Lcom/android/server/vibrator/VibratorController$VibratorState;

    .line 95
    invoke-static {}, Lcom/android/server/vibrator/VibratorController$VibratorState;->$values()[Lcom/android/server/vibrator/VibratorController$VibratorState;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/VibratorController$VibratorState;->$VALUES:[Lcom/android/server/vibrator/VibratorController$VibratorState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/vibrator/VibratorController$VibratorState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 95
    const-class v0, Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibratorController$VibratorState;

    return-object v0
.end method

.method public static values()[Lcom/android/server/vibrator/VibratorController$VibratorState;
    .locals 1

    .line 95
    sget-object v0, Lcom/android/server/vibrator/VibratorController$VibratorState;->$VALUES:[Lcom/android/server/vibrator/VibratorController$VibratorState;

    invoke-virtual {v0}, [Lcom/android/server/vibrator/VibratorController$VibratorState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/vibrator/VibratorController$VibratorState;

    return-object v0
.end method
