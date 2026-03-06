.class public final synthetic Lcom/android/server/vibrator/VibratorManagerService$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/vibrator/VibratorManagerService;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/vibrator/VibratorManagerService;

    check-cast p1, Lcom/android/server/vibrator/VibrationSession;

    invoke-static {v0, p1}, Lcom/android/server/vibrator/VibratorManagerService$1;->$r8$lambda$ECyrqMgejyUjUk4rWrvhVC1v6h0(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)Z

    move-result p1

    return p1
.end method
