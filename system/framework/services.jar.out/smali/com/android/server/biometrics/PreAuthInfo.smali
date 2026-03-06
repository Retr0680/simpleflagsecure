.class Lcom/android/server/biometrics/PreAuthInfo;
.super Ljava/lang/Object;
.source "PreAuthInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/PreAuthInfo$AuthenticatorStatus;
    }
.end annotation


# static fields
.field static final AUTHENTICATOR_OK:I = 0x1

.field static final BIOMETRIC_DISABLED_BY_DEVICE_POLICY:I = 0x3

.field static final BIOMETRIC_HARDWARE_NOT_DETECTED:I = 0x6

.field static final BIOMETRIC_INSUFFICIENT_STRENGTH:I = 0x4

.field static final BIOMETRIC_INSUFFICIENT_STRENGTH_AFTER_DOWNGRADE:I = 0x5

.field static final BIOMETRIC_LOCKOUT_PERMANENT:I = 0xb

.field static final BIOMETRIC_LOCKOUT_TIMED:I = 0xa

.field static final BIOMETRIC_NOT_ENABLED_FOR_APPS:I = 0x8

.field static final BIOMETRIC_NOT_ENROLLED:I = 0x7

.field static final BIOMETRIC_NO_HARDWARE:I = 0x2

.field static final BIOMETRIC_SENSOR_PRIVACY_ENABLED:I = 0xc

.field static final CREDENTIAL_NOT_ENROLLED:I = 0x9

.field static final MANDATORY_BIOMETRIC_UNAVAILABLE_ERROR:I = 0xd

.field private static final TAG:Ljava/lang/String; = "BiometricService/PreAuthInfo"


# instance fields
.field final callingUserId:I

.field final confirmationRequested:Z

.field final context:Landroid/content/Context;

.field final credentialAvailable:Z

.field final credentialRequested:Z

.field final eligibleSensors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            ">;"
        }
    .end annotation
.end field

.field final ignoreEnrollmentState:Z

.field final ineligibleSensors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManager;

.field private final mBiometricRequested:Z

.field private final mBiometricStrengthRequested:I

.field private final mIsMandatoryBiometricsAuthentication:Z

.field private final mOnlyMandatoryBiometricsRequested:Z

.field final userId:I


# direct methods
.method private constructor <init>(ZIZLjava/util/List;Ljava/util/List;ZLandroid/hardware/biometrics/PromptInfo;IILandroid/content/Context;Lcom/android/server/biometrics/BiometricCameraManager;ZZ)V
    .locals 1
    .param p1, "biometricRequested"    # Z
    .param p2, "biometricStrengthRequested"    # I
    .param p3, "credentialRequested"    # Z
    .param p6, "credentialAvailable"    # Z
    .param p7, "promptInfo"    # Landroid/hardware/biometrics/PromptInfo;
    .param p8, "userId"    # I
    .param p9, "callingUserId"    # I
    .param p10, "context"    # Landroid/content/Context;
    .param p11, "biometricCameraManager"    # Lcom/android/server/biometrics/BiometricCameraManager;
    .param p12, "isOnlyMandatoryBiometricsRequested"    # Z
    .param p13, "isMandatoryBiometricsAuthentication"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZ",
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            ">;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            "Ljava/lang/Integer;",
            ">;>;Z",
            "Landroid/hardware/biometrics/PromptInfo;",
            "II",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/BiometricCameraManager;",
            "ZZ)V"
        }
    .end annotation

    .line 95
    .local p4, "eligibleSensors":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/biometrics/BiometricSensor;>;"
    .local p5, "ineligibleSensors":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-boolean p1, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricRequested:Z

    .line 97
    iput p2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricStrengthRequested:I

    .line 98
    iput-object p11, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManager;

    .line 99
    iput-boolean p3, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    .line 101
    iput-object p4, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    .line 102
    iput-object p5, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    .line 103
    iput-boolean p6, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    .line 104
    invoke-virtual {p7}, Landroid/hardware/biometrics/PromptInfo;->isConfirmationRequested()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->confirmationRequested:Z

    .line 105
    invoke-virtual {p7}, Landroid/hardware/biometrics/PromptInfo;->isIgnoreEnrollmentState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->ignoreEnrollmentState:Z

    .line 106
    iput p8, p0, Lcom/android/server/biometrics/PreAuthInfo;->userId:I

    .line 107
    iput p9, p0, Lcom/android/server/biometrics/PreAuthInfo;->callingUserId:I

    .line 108
    iput-object p10, p0, Lcom/android/server/biometrics/PreAuthInfo;->context:Landroid/content/Context;

    .line 109
    iput-boolean p12, p0, Lcom/android/server/biometrics/PreAuthInfo;->mOnlyMandatoryBiometricsRequested:Z

    .line 110
    iput-boolean p13, p0, Lcom/android/server/biometrics/PreAuthInfo;->mIsMandatoryBiometricsAuthentication:Z

    .line 111
    return-void
.end method

.method private calculateErrorByPriority()Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, "sensorNotEnrolled":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 342
    .local v1, "sensorLockout":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 343
    .local v2, "hardwareNotDetected":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 344
    .local v3, "biometricAppNotAllowed":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 345
    .local v5, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;"
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 346
    .local v6, "status":I
    const/16 v7, 0xa

    if-eq v6, v7, :cond_0

    const/16 v7, 0xb

    if-ne v6, v7, :cond_1

    .line 347
    :cond_0
    move-object v1, v5

    .line 349
    :cond_1
    const/4 v7, 0x7

    if-ne v6, v7, :cond_2

    .line 350
    move-object v0, v5

    .line 352
    :cond_2
    const/4 v7, 0x6

    if-ne v6, v7, :cond_3

    .line 353
    move-object v2, v5

    .line 355
    :cond_3
    const/16 v7, 0x8

    if-ne v6, v7, :cond_4

    .line 356
    move-object v3, v5

    .line 358
    .end local v5    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;"
    .end local v6    # "status":I
    :cond_4
    goto :goto_0

    .line 362
    :cond_5
    if-eqz v1, :cond_6

    .line 363
    return-object v1

    .line 366
    :cond_6
    if-eqz v2, :cond_7

    .line 367
    return-object v2

    .line 370
    :cond_7
    if-eqz v3, :cond_8

    .line 371
    return-object v3

    .line 377
    :cond_8
    if-eqz v0, :cond_9

    .line 378
    return-object v0

    .line 380
    :cond_9
    iget-object v4, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    return-object v4
.end method

.method static create(Landroid/app/trust/ITrustManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Ljava/util/List;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;ZLandroid/content/Context;Lcom/android/server/biometrics/BiometricCameraManager;Landroid/os/UserManager;)Lcom/android/server/biometrics/PreAuthInfo;
    .locals 26
    .param p0, "trustManager"    # Landroid/app/trust/ITrustManager;
    .param p1, "devicePolicyManager"    # Landroid/app/admin/DevicePolicyManager;
    .param p2, "settingObserver"    # Lcom/android/server/biometrics/BiometricService$SettingObserver;
    .param p4, "userId"    # I
    .param p5, "promptInfo"    # Landroid/hardware/biometrics/PromptInfo;
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "checkDevicePolicyManager"    # Z
    .param p8, "context"    # Landroid/content/Context;
    .param p9, "biometricCameraManager"    # Lcom/android/server/biometrics/BiometricCameraManager;
    .param p10, "userManager"    # Landroid/os/UserManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/trust/ITrustManager;",
            "Landroid/app/admin/DevicePolicyManager;",
            "Lcom/android/server/biometrics/BiometricService$SettingObserver;",
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/BiometricSensor;",
            ">;I",
            "Landroid/hardware/biometrics/PromptInfo;",
            "Ljava/lang/String;",
            "Z",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/BiometricCameraManager;",
            "Landroid/os/UserManager;",
            ")",
            "Lcom/android/server/biometrics/PreAuthInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    .local p3, "sensors":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/biometrics/BiometricSensor;>;"
    move-object/from16 v0, p0

    move/from16 v10, p4

    move-object/from16 v8, p5

    invoke-virtual {v8}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v1

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v13, v1

    .line 125
    .local v13, "isOnlyMandatoryBiometricsRequested":Z
    :goto_0
    const/4 v1, 0x0

    .line 134
    .local v1, "isMandatoryBiometricsAuthentication":Z
    nop

    .line 135
    invoke-static {}, Lcom/nothing/DualAppsManager;->getDualAppsUserId()I

    move-result v2

    if-ne v10, v2, :cond_1

    .line 137
    move-object/from16 v15, p10

    invoke-virtual {v15, v10}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v2

    move v9, v2

    .local v2, "effectiveUserId":I
    goto :goto_1

    .line 139
    .end local v2    # "effectiveUserId":I
    :cond_1
    move-object/from16 v15, p10

    move/from16 v2, p4

    move v9, v2

    .line 142
    .local v9, "effectiveUserId":I
    :goto_1
    invoke-virtual {v8}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v2

    .line 143
    move-object/from16 v4, p2

    invoke-virtual {v4, v9}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getMandatoryBiometricsEnabledAndRequirementsSatisfiedForUser(I)Z

    move-result v5

    .line 142
    invoke-static {v2, v5, v0}, Lcom/android/server/biometrics/PreAuthInfo;->dropCredentialFallback(IZLandroid/app/trust/ITrustManager;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 145
    const/4 v1, 0x1

    .line 146
    const/16 v2, 0xf

    invoke-virtual {v8, v2}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    .line 147
    invoke-virtual {v8}, Landroid/hardware/biometrics/PromptInfo;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_2

    .line 148
    const/high16 v2, 0x1040000

    move-object/from16 v11, p8

    invoke-virtual {v11, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/hardware/biometrics/PromptInfo;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 147
    :cond_2
    move-object/from16 v11, p8

    .line 152
    :goto_2
    move v14, v1

    goto :goto_3

    .line 142
    :cond_3
    move-object/from16 v11, p8

    move v14, v1

    .line 152
    .end local v1    # "isMandatoryBiometricsAuthentication":Z
    .local v14, "isMandatoryBiometricsAuthentication":Z
    :goto_3
    invoke-static {v8}, Lcom/android/server/biometrics/Utils;->isBiometricRequested(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v2

    .line 153
    .local v2, "biometricRequested":Z
    invoke-static {v8}, Lcom/android/server/biometrics/Utils;->getPublicBiometricStrength(Landroid/hardware/biometrics/PromptInfo;)I

    move-result v22

    .line 154
    .local v22, "requestedStrength":I
    invoke-static {v8}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v4

    .line 156
    .local v4, "credentialRequested":Z
    nop

    .line 157
    invoke-virtual {v11}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    .line 156
    invoke-interface {v0, v10, v1}, Landroid/app/trust/ITrustManager;->isDeviceSecure(II)Z

    move-result v7

    .line 165
    .local v7, "credentialAvailable":Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v5, "eligibleSensors":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/biometrics/BiometricSensor;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v6, "ineligibleSensors":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;>;"
    if-eqz v2, :cond_6

    .line 169
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v18, v12

    check-cast v18, Lcom/android/server/biometrics/BiometricSensor;

    .line 171
    .local v18, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    nop

    .line 174
    invoke-virtual {v8}, Landroid/hardware/biometrics/PromptInfo;->getAllowedSensorIds()Ljava/util/List;

    move-result-object v23

    invoke-virtual {v8}, Landroid/hardware/biometrics/PromptInfo;->isIgnoreEnrollmentState()Z

    move-result v24

    .line 171
    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v20, p6

    move/from16 v21, p7

    move-object/from16 v25, p9

    move/from16 v19, v9

    .end local v9    # "effectiveUserId":I
    .local v19, "effectiveUserId":I
    invoke-static/range {v16 .. v25}, Lcom/android/server/biometrics/PreAuthInfo;->getStatusForBiometricAuthenticator(Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Lcom/android/server/biometrics/BiometricSensor;ILjava/lang/String;ZILjava/util/List;ZLcom/android/server/biometrics/BiometricCameraManager;)I

    move-result v9

    .line 177
    move-object/from16 v3, v18

    move/from16 v12, v19

    .end local v18    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    .end local v19    # "effectiveUserId":I
    .local v3, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    .local v9, "status":I
    .local v12, "effectiveUserId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v1

    const-string v1, "Package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Sensor ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Modality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " User id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService/PreAuthInfo"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v0, 0x1

    if-ne v9, v0, :cond_4

    .line 191
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 193
    :cond_4
    new-instance v1, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .end local v3    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    .end local v9    # "status":I
    :goto_5
    move-object/from16 v0, p0

    move v9, v12

    move-object/from16 v1, v17

    goto/16 :goto_4

    .line 169
    .end local v12    # "effectiveUserId":I
    .local v9, "effectiveUserId":I
    :cond_5
    move v12, v9

    .end local v9    # "effectiveUserId":I
    .restart local v12    # "effectiveUserId":I
    goto :goto_6

    .line 168
    .end local v12    # "effectiveUserId":I
    .restart local v9    # "effectiveUserId":I
    :cond_6
    move v12, v9

    .line 198
    .end local v9    # "effectiveUserId":I
    .restart local v12    # "effectiveUserId":I
    :goto_6
    new-instance v1, Lcom/android/server/biometrics/PreAuthInfo;

    move v9, v12

    move/from16 v3, v22

    move-object/from16 v12, p9

    .end local v12    # "effectiveUserId":I
    .end local v22    # "requestedStrength":I
    .local v3, "requestedStrength":I
    .restart local v9    # "effectiveUserId":I
    invoke-direct/range {v1 .. v14}, Lcom/android/server/biometrics/PreAuthInfo;-><init>(ZIZLjava/util/List;Ljava/util/List;ZLandroid/hardware/biometrics/PromptInfo;IILandroid/content/Context;Lcom/android/server/biometrics/BiometricCameraManager;ZZ)V

    .end local v3    # "requestedStrength":I
    .restart local v22    # "requestedStrength":I
    return-object v1
.end method

.method private static dropCredentialFallback(IZLandroid/app/trust/ITrustManager;)Z
    .locals 5
    .param p0, "authenticators"    # I
    .param p1, "isMandatoryBiometricsEnabled"    # Z
    .param p2, "trustManager"    # Landroid/app/trust/ITrustManager;

    .line 206
    const/high16 v0, 0x10000

    and-int v1, p0, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 209
    .local v0, "isMandatoryBiometricsRequested":Z
    :goto_0
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 212
    :try_start_0
    invoke-interface {p2}, Landroid/app/trust/ITrustManager;->isInSignificantPlace()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .local v1, "isInSignificantPlace":Z
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2

    .line 214
    .end local v1    # "isInSignificantPlace":Z
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BiometricService/PreAuthInfo"

    const-string v4, "Remote exception while trying to check if user is in a trusted location."

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    return v3
.end method

.method private getInternalStatus()Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 393
    const/4 v0, 0x0

    .line 395
    .local v0, "modality":I
    const/4 v1, 0x0

    .line 396
    .local v1, "cameraPrivacyEnabled":Z
    iget-object v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManager;

    if-eqz v2, :cond_0

    .line 397
    iget-object v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManager;

    invoke-interface {v2}, Lcom/android/server/biometrics/BiometricCameraManager;->isCameraPrivacyEnabled()Z

    move-result v1

    .line 400
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricRequested:Z

    const-string v3, "BiometricService/PreAuthInfo"

    const/16 v4, 0x8

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    if-eqz v2, :cond_7

    .line 401
    iget-boolean v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    goto :goto_0

    .line 421
    :cond_2
    iget-object v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 422
    invoke-direct {p0}, Lcom/android/server/biometrics/PreAuthInfo;->calculateErrorByPriority()Landroid/util/Pair;

    move-result-object v2

    .line 423
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;"
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/biometrics/BiometricSensor;

    iget v4, v4, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    or-int/2addr v0, v4

    .line 424
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 425
    .local v2, "status":I
    goto/16 :goto_4

    .line 426
    .end local v2    # "status":I
    :cond_3
    or-int/lit8 v0, v0, 0x1

    .line 427
    const/16 v2, 0x9

    .restart local v2    # "status":I
    goto/16 :goto_4

    .line 402
    .end local v2    # "status":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/biometrics/BiometricSensor;

    .line 403
    .local v5, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    iget v6, v5, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    or-int/2addr v0, v6

    .line 404
    .end local v5    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    goto :goto_1

    .line 406
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz v2, :cond_5

    .line 407
    or-int/lit8 v0, v0, 0x1

    .line 408
    const/4 v2, 0x1

    .restart local v2    # "status":I
    goto/16 :goto_4

    .line 409
    .end local v2    # "status":I
    :cond_5
    if-ne v0, v4, :cond_6

    if-eqz v1, :cond_6

    .line 415
    const/16 v2, 0xc

    .restart local v2    # "status":I
    goto/16 :goto_4

    .line 417
    .end local v2    # "status":I
    :cond_6
    const/4 v2, 0x1

    .restart local v2    # "status":I
    goto/16 :goto_4

    .line 430
    .end local v2    # "status":I
    :cond_7
    iget-boolean v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricRequested:Z

    if-eqz v2, :cond_c

    .line 431
    iget-object v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 432
    iget-object v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/biometrics/BiometricSensor;

    .line 433
    .restart local v5    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    iget v6, v5, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    or-int/2addr v0, v6

    .line 434
    .end local v5    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    goto :goto_2

    .line 435
    :cond_8
    if-ne v0, v4, :cond_9

    if-eqz v1, :cond_9

    .line 440
    const/16 v2, 0xc

    .restart local v2    # "status":I
    goto :goto_4

    .line 442
    .end local v2    # "status":I
    :cond_9
    const/4 v2, 0x1

    .restart local v2    # "status":I
    goto :goto_4

    .line 446
    .end local v2    # "status":I
    :cond_a
    iget-object v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 447
    invoke-direct {p0}, Lcom/android/server/biometrics/PreAuthInfo;->calculateErrorByPriority()Landroid/util/Pair;

    move-result-object v2

    .line 448
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;"
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/biometrics/BiometricSensor;

    iget v4, v4, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    or-int/2addr v0, v4

    .line 449
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 450
    .local v2, "status":I
    goto :goto_4

    .line 451
    .end local v2    # "status":I
    :cond_b
    or-int/lit8 v0, v0, 0x0

    .line 452
    const/4 v2, 0x2

    .restart local v2    # "status":I
    goto :goto_4

    .line 455
    .end local v2    # "status":I
    :cond_c
    iget-boolean v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    if-eqz v2, :cond_e

    .line 456
    or-int/lit8 v0, v0, 0x1

    .line 457
    iget-boolean v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    goto :goto_3

    :cond_d
    const/16 v2, 0x9

    .restart local v2    # "status":I
    :goto_3
    goto :goto_4

    .line 458
    .end local v2    # "status":I
    :cond_e
    iget-boolean v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mOnlyMandatoryBiometricsRequested:Z

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mIsMandatoryBiometricsAuthentication:Z

    if-nez v2, :cond_f

    .line 460
    const/16 v2, 0xd

    .restart local v2    # "status":I
    goto :goto_4

    .line 464
    .end local v2    # "status":I
    :cond_f
    const-string v2, "No authenticators requested"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v2, 0x2

    .line 467
    .restart local v2    # "status":I
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCanAuthenticateInternal Modality: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " AuthenticatorStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    new-instance v3, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method private static getStatusForBiometricAuthenticator(Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Lcom/android/server/biometrics/BiometricSensor;ILjava/lang/String;ZILjava/util/List;ZLcom/android/server/biometrics/BiometricCameraManager;)I
    .locals 6
    .param p0, "devicePolicyManager"    # Landroid/app/admin/DevicePolicyManager;
    .param p1, "settingObserver"    # Lcom/android/server/biometrics/BiometricService$SettingObserver;
    .param p2, "sensor"    # Lcom/android/server/biometrics/BiometricSensor;
    .param p3, "userId"    # I
    .param p4, "opPackageName"    # Ljava/lang/String;
    .param p5, "checkDevicePolicyManager"    # Z
    .param p6, "requestedStrength"    # I
    .param p8, "ignoreEnrollmentState"    # Z
    .param p9, "biometricCameraManager"    # Lcom/android/server/biometrics/BiometricCameraManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/admin/DevicePolicyManager;",
            "Lcom/android/server/biometrics/BiometricService$SettingObserver;",
            "Lcom/android/server/biometrics/BiometricSensor;",
            "I",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z",
            "Lcom/android/server/biometrics/BiometricCameraManager;",
            ")I"
        }
    .end annotation

    .line 239
    .local p7, "requestedSensorIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    iget v0, p2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    return v1

    .line 243
    :cond_0
    iget v0, p2, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    .line 244
    invoke-static {v0, p6}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result v0

    .line 245
    .local v0, "wasStrongEnough":Z
    nop

    .line 246
    invoke-virtual {p2}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    move-result v2

    invoke-static {v2, p6}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result v2

    .line 248
    .local v2, "isStrongEnough":Z
    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    .line 249
    const/4 v1, 0x5

    return v1

    .line 250
    :cond_1
    if-nez v0, :cond_2

    .line 251
    const/4 v1, 0x4

    return v1

    .line 254
    :cond_2
    iget v3, p2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    const/4 v4, 0x6

    const/16 v5, 0x8

    if-ne v3, v5, :cond_3

    invoke-interface {p9}, Lcom/android/server/biometrics/BiometricCameraManager;->isAnyCameraUnavailable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 255
    return v4

    .line 259
    :cond_3
    :try_start_0
    iget-object v3, p2, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v3, p4}, Landroid/hardware/biometrics/IBiometricAuthenticator;->isHardwareDetected(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 260
    return v4

    .line 263
    :cond_4
    iget-object v3, p2, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v3, p3, p4}, Landroid/hardware/biometrics/IBiometricAuthenticator;->hasEnrolledTemplates(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    if-nez p8, :cond_5

    .line 265
    const/4 v1, 0x7

    return v1

    .line 268
    :cond_5
    if-eqz p9, :cond_6

    iget v3, p2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    if-ne v3, v5, :cond_6

    .line 269
    invoke-interface {p9}, Lcom/android/server/biometrics/BiometricCameraManager;->isCameraPrivacyEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 271
    const/16 v1, 0xc

    return v1

    .line 282
    :catch_0
    move-exception v1

    goto :goto_0

    .line 275
    :cond_6
    iget-object v3, p2, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 276
    invoke-interface {v3, p3}, Landroid/hardware/biometrics/IBiometricAuthenticator;->getLockoutModeForUser(I)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .local v3, "lockoutMode":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 278
    const/16 v1, 0xa

    return v1

    .line 279
    :cond_7
    if-ne v3, v1, :cond_8

    .line 280
    const/16 v1, 0xb

    return v1

    .line 279
    :cond_8
    nop

    .line 284
    .end local v3    # "lockoutMode":I
    nop

    .line 286
    iget v1, p2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    invoke-static {p1, v1, p3}, Lcom/android/server/biometrics/PreAuthInfo;->isEnabledForApp(Lcom/android/server/biometrics/BiometricService$SettingObserver;II)Z

    move-result v1

    if-nez v1, :cond_9

    .line 287
    return v5

    .line 290
    :cond_9
    if-eqz p5, :cond_a

    .line 291
    iget v1, p2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    invoke-static {p0, v1, p3}, Lcom/android/server/biometrics/PreAuthInfo;->isBiometricDisabledByDevicePolicy(Landroid/app/admin/DevicePolicyManager;II)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 292
    const/4 v1, 0x3

    return v1

    .line 296
    :cond_a
    return v4

    .line 282
    :goto_0
    nop

    .line 283
    .local v1, "e":Landroid/os/RemoteException;
    return v4
.end method

.method private static isBiometricDisabledByDevicePolicy(Landroid/app/admin/DevicePolicyManager;II)Z
    .locals 5
    .param p0, "devicePolicyManager"    # Landroid/app/admin/DevicePolicyManager;
    .param p1, "modality"    # I
    .param p2, "effectiveUserId"    # I

    .line 307
    invoke-static {p1}, Lcom/android/server/biometrics/PreAuthInfo;->mapModalityToDevicePolicyType(I)I

    move-result v0

    .line 308
    .local v0, "biometricToCheck":I
    if-eqz v0, :cond_1

    .line 311
    nop

    .line 312
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 313
    .local v1, "devicePolicyDisabledFeatures":I
    and-int v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 315
    .local v2, "isBiometricDisabled":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isBiometricDisabledByDevicePolicy("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BiometricService/PreAuthInfo"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return v2

    .line 309
    .end local v1    # "devicePolicyDisabledFeatures":I
    .end local v2    # "isBiometricDisabled":Z
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modality unknown to devicePolicyManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static isEnabledForApp(Lcom/android/server/biometrics/BiometricService$SettingObserver;II)Z
    .locals 1
    .param p0, "settingObserver"    # Lcom/android/server/biometrics/BiometricService$SettingObserver;
    .param p1, "modality"    # I
    .param p2, "userId"    # I

    .line 301
    invoke-virtual {p0, p2, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getEnabledForApps(II)Z

    move-result v0

    return v0
.end method

.method private static mapModalityToDevicePolicyType(I)I
    .locals 2
    .param p0, "modality"    # I

    .line 326
    sparse-switch p0, :sswitch_data_0

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error modality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService/PreAuthInfo"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v0, 0x0

    return v0

    .line 332
    :sswitch_0
    const/16 v0, 0x80

    return v0

    .line 330
    :sswitch_1
    const/16 v0, 0x100

    return v0

    .line 328
    :sswitch_2
    const/16 v0, 0x20

    return v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method getCanAuthenticateResult()I
    .locals 1

    .line 479
    nop

    .line 481
    invoke-direct {p0}, Lcom/android/server/biometrics/PreAuthInfo;->getInternalStatus()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 480
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->authenticatorStatusToBiometricConstant(I)I

    move-result v0

    .line 479
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->biometricConstantsToBiometricManager(I)I

    move-result v0

    return v0
.end method

.method getEligibleModalities()I
    .locals 4

    .line 538
    const/4 v0, 0x0

    .line 539
    .local v0, "modalities":I
    iget-object v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 540
    .local v2, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    iget v3, v2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    or-int/2addr v0, v3

    .line 541
    .end local v2    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    goto :goto_0

    .line 543
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz v1, :cond_1

    .line 544
    or-int/lit8 v0, v0, 0x1

    .line 546
    :cond_1
    return v0
.end method

.method getIsMandatoryBiometricsAuthentication()Z
    .locals 1

    .line 486
    iget-boolean v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->mIsMandatoryBiometricsAuthentication:Z

    return v0
.end method

.method getPreAuthenticateStatus()Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 498
    invoke-direct {p0}, Lcom/android/server/biometrics/PreAuthInfo;->getInternalStatus()Landroid/util/Pair;

    move-result-object v0

    .line 500
    .local v0, "internalStatus":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/biometrics/Utils;->authenticatorStatusToBiometricConstant(I)I

    move-result v1

    .line 501
    .local v1, "publicError":I
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 502
    .local v2, "modality":I
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 518
    :pswitch_0
    const/4 v2, 0x0

    goto :goto_0

    .line 512
    :pswitch_1
    nop

    .line 522
    :goto_0
    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method numSensorsWaitingForCookie()I
    .locals 5

    .line 550
    const/4 v0, 0x0

    .line 551
    .local v0, "numWaiting":I
    iget-object v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 552
    .local v2, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    invoke-virtual {v2}, Lcom/android/server/biometrics/BiometricSensor;->getSensorState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 553
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sensor ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Waiting for cookie: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v2}, Lcom/android/server/biometrics/BiometricSensor;->getCookie()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 553
    const-string v4, "BiometricService/PreAuthInfo"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    add-int/lit8 v0, v0, 0x1

    .line 557
    .end local v2    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    :cond_0
    goto :goto_0

    .line 558
    :cond_1
    return v0
.end method

.method shouldShowCredential()Z
    .locals 1

    .line 529
    iget-boolean v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BiometricRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", StrengthRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricStrengthRequested:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", CredentialRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 567
    .local v0, "string":Ljava/lang/StringBuilder;
    const-string v1, ", Eligible:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    iget-object v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, " "

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 569
    .local v2, "sensor":Lcom/android/server/biometrics/BiometricSensor;
    iget v4, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .end local v2    # "sensor":Lcom/android/server/biometrics/BiometricSensor;
    goto :goto_0

    .line 571
    :cond_0
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    const-string v2, ", Ineligible:{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    iget-object v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 575
    .local v4, "ineligible":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .end local v4    # "ineligible":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/biometrics/BiometricSensor;Ljava/lang/Integer;>;"
    goto :goto_1

    .line 577
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    const-string v1, ", CredentialAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 580
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
