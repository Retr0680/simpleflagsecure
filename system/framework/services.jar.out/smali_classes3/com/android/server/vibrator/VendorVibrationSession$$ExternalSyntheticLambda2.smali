.class public final synthetic Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/vibrator/VendorVibrationSession;

.field public final synthetic f$1:Lcom/android/server/vibrator/VibrationSession$Status;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/vibrator/VendorVibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/vibrator/VendorVibrationSession;

    iput-object p2, p0, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/vibrator/VibrationSession$Status;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/vibrator/VendorVibrationSession;

    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VendorVibrationSession;->$r8$lambda$78TjSb2_FhS6sp1cocyHsPZXfZA(Lcom/android/server/vibrator/VendorVibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;)V

    return-void
.end method
