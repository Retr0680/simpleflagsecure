.class Lcom/android/server/biometrics/BiometricService$SettingObserver$2$1;
.super Landroid/hardware/biometrics/BiometricStateListener;
.source "BiometricService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/BiometricService$SettingObserver$2;->onAllAuthenticatorsRegistered(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/biometrics/BiometricService$SettingObserver$2;

.field final synthetic val$faceSensorPropertiesInternal:Landroid/hardware/face/FaceSensorPropertiesInternal;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricService$SettingObserver$2;Landroid/hardware/face/FaceSensorPropertiesInternal;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/biometrics/BiometricService$SettingObserver$2;
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

    .line 717
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$2$1;->this$1:Lcom/android/server/biometrics/BiometricService$SettingObserver$2;

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$2$1;->val$faceSensorPropertiesInternal:Landroid/hardware/face/FaceSensorPropertiesInternal;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentsChanged(IIZ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "sensorId"    # I
    .param p3, "hasEnrollments"    # Z

    .line 724
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$2$1;->val$faceSensorPropertiesInternal:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    if-ne p2, v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$2$1;->this$1:Lcom/android/server/biometrics/BiometricService$SettingObserver$2;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$SettingObserver$2;->this$0:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->-$$Nest$fgetmFaceEnrolledForUser(Lcom/android/server/biometrics/BiometricService$SettingObserver;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 728
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 727
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    :cond_0
    return-void
.end method
