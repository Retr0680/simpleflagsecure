.class public final synthetic Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

.field public final synthetic f$1:Landroid/os/vibrator/IVibrationSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;Landroid/os/vibrator/IVibrationSession;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    iput-object p2, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper$$ExternalSyntheticLambda0;->f$1:Landroid/os/vibrator/IVibrationSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper$$ExternalSyntheticLambda0;->f$1:Landroid/os/vibrator/IVibrationSession;

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->$r8$lambda$DzFVzhnn9_Dg1V8XR9BzA5RP8LY(Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;Landroid/os/vibrator/IVibrationSession;)V

    return-void
.end method
