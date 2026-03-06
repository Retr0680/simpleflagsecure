.class Lcom/android/server/biometrics/BiometricService$SettingObserver$2;
.super Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback$Stub;
.source "BiometricService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/BiometricService$SettingObserver;->addBiometricListenersForMandatoryBiometrics(Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/BiometricService$SettingObserver;

.field final synthetic val$faceManager:Landroid/hardware/face/FaceManager;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricService$SettingObserver;Landroid/hardware/face/FaceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/biometrics/BiometricService$SettingObserver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 704
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$2;->this$0:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$2;->val$faceManager:Landroid/hardware/face/FaceManager;

    invoke-direct {p0}, Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllAuthenticatorsRegistered(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;)V"
        }
    .end annotation

    .line 708
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    .line 713
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 714
    .local v0, "faceSensorPropertiesInternal":Landroid/hardware/face/FaceSensorPropertiesInternal;
    iget v1, v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorStrength:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 716
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$2;->val$faceManager:Landroid/hardware/face/FaceManager;

    new-instance v2, Lcom/android/server/biometrics/BiometricService$SettingObserver$2$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/biometrics/BiometricService$SettingObserver$2$1;-><init>(Lcom/android/server/biometrics/BiometricService$SettingObserver$2;Landroid/hardware/face/FaceSensorPropertiesInternal;)V

    invoke-virtual {v1, v2}, Landroid/hardware/face/FaceManager;->registerBiometricStateListener(Landroid/hardware/biometrics/BiometricStateListener;)V

    .line 733
    :cond_2
    return-void

    .line 709
    .end local v0    # "faceSensorPropertiesInternal":Landroid/hardware/face/FaceSensorPropertiesInternal;
    :goto_0
    const-string v0, "BiometricService"

    const-string v1, "No face authenticators registered."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    return-void
.end method
