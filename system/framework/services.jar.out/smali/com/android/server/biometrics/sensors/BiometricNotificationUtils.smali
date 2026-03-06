.class public Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;
.super Ljava/lang/Object;
.source "BiometricNotificationUtils.java"


# static fields
.field private static final ACTION_BIOMETRIC_FRR_DISMISS:Ljava/lang/String; = "action_biometric_frr_dismiss"

.field private static final BAD_CALIBRATION_NOTIFICATION_TAG:Ljava/lang/String; = "FingerprintBadCalibration"

.field private static final DISMISS_FRR_INTENT:Landroid/content/Intent;

.field private static final FACE_ENROLL_ACTION:Ljava/lang/String; = "android.settings.FACE_ENROLL"

.field private static final FACE_ENROLL_CHANNEL:Ljava/lang/String; = "FaceEnrollNotificationChannel"

.field public static final FACE_ENROLL_NOTIFICATION_TAG:Ljava/lang/String; = "FaceEnroll"

.field private static final FACE_RE_ENROLL_CHANNEL:Ljava/lang/String; = "FaceReEnrollNotificationChannel"

.field private static final FACE_RE_ENROLL_NOTIFICATION_TAG:Ljava/lang/String; = "FaceReEnroll"

.field private static final FACE_SETTINGS_ACTION:Ljava/lang/String; = "android.settings.FACE_SETTINGS"

.field private static final FINGERPRINT_BAD_CALIBRATION_CHANNEL:Ljava/lang/String; = "FingerprintBadCalibrationNotificationChannel"

.field private static final FINGERPRINT_ENROLL_ACTION:Ljava/lang/String; = "android.settings.FINGERPRINT_ENROLL"

.field private static final FINGERPRINT_ENROLL_CHANNEL:Ljava/lang/String; = "FingerprintEnrollNotificationChannel"

.field public static final FINGERPRINT_ENROLL_NOTIFICATION_TAG:Ljava/lang/String; = "FingerprintEnroll"

.field private static final FINGERPRINT_FRR_CHANNEL:Ljava/lang/String; = "FingerprintFrrNotificationChannel"

.field public static final FINGERPRINT_FRR_NOTIFICATION_TAG:Ljava/lang/String; = "FingerprintFrr"

.field private static final FINGERPRINT_RE_ENROLL_CHANNEL:Ljava/lang/String; = "FingerprintReEnrollNotificationChannel"

.field private static final FINGERPRINT_RE_ENROLL_NOTIFICATION_TAG:Ljava/lang/String; = "FingerprintReEnroll"

.field private static final FINGERPRINT_SETTINGS_ACTION:Ljava/lang/String; = "android.settings.FINGERPRINT_SETTINGS"

.field private static final KEY_RE_ENROLL_FACE:Ljava/lang/String; = "re_enroll_face_unlock"

.field public static final NOTIFICATION_ID:I = 0x1

.field private static final NOTIFICATION_INTERVAL_MS:J = 0x5265c00L

.field private static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "BiometricNotificationUtils"

.field private static sLastAlertTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->sLastAlertTime:J

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action_biometric_frr_dismiss"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->DISMISS_FRR_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelBadCalibrationNotification(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 484
    const-class v0, Landroid/app/NotificationManager;

    .line 485
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 486
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "FingerprintBadCalibration"

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 488
    return-void
.end method

.method public static cancelFaceEnrollNotification(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 464
    const-class v0, Landroid/app/NotificationManager;

    .line 465
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 466
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "FaceEnroll"

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 468
    return-void
.end method

.method public static cancelFaceReEnrollNotification(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 454
    const-class v0, Landroid/app/NotificationManager;

    .line 455
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 456
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "FaceReEnroll"

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 458
    return-void
.end method

.method public static cancelFingerprintEnrollNotification(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 474
    const-class v0, Landroid/app/NotificationManager;

    .line 475
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 476
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "FingerprintEnroll"

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 478
    return-void
.end method

.method public static cancelFingerprintReEnrollNotification(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 494
    const-class v0, Landroid/app/NotificationManager;

    .line 495
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 496
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "FingerprintReEnroll"

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 498
    return-void
.end method

.method private static getFingerprintDanglingContentString(Landroid/content/Context;Ljava/util/List;Z)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "allFingerprintDeleted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 349
    .local p1, "fingerprints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    const/4 v0, 0x0

    return-object v0

    .line 354
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 355
    .local v0, "size":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .local v1, "first":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v2

    .line 357
    .local v2, "bidiFormatter":Landroid/text/BidiFormatter;
    const/4 v3, 0x1

    const-string v4, "\""

    if-le v0, v3, :cond_5

    .line 363
    const-string v3, ", "

    .line 364
    .local v3, "separator":Ljava/lang/String;
    const/4 v5, 0x0

    .line 365
    .local v5, "second":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_3

    .line 366
    add-int/lit8 v7, v0, -0x1

    if-ne v6, v7, :cond_1

    .line 367
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 369
    :cond_1
    invoke-virtual {v2, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v2, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    add-int/lit8 v7, v0, -0x2

    if-ge v6, v7, :cond_2

    .line 373
    const-string v7, ", "

    invoke-virtual {v2, v7}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 377
    .end local v6    # "i":I
    if-eqz p2, :cond_4

    .line 378
    const v4, 0x104043a

    .local v4, "resId":I
    goto :goto_2

    .line 380
    .end local v4    # "resId":I
    :cond_4
    const v4, 0x1040438

    .line 383
    .restart local v4    # "resId":I
    :goto_2
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v1, v5}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 385
    .end local v3    # "separator":Ljava/lang/String;
    .end local v4    # "resId":I
    .end local v5    # "second":Ljava/lang/String;
    :cond_5
    if-eqz p2, :cond_6

    .line 386
    const v3, 0x1040439

    .local v3, "resId":I
    goto :goto_3

    .line 388
    .end local v3    # "resId":I
    :cond_6
    const v3, 0x1040437

    .line 390
    .restart local v3    # "resId":I
    :goto_3
    invoke-virtual {v2, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v2, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getIntentFromFpFrrComponentNameStringRes(Landroid/content/Context;)Landroid/content/Intent;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104027a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "componentNameString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 195
    return-object v2

    .line 198
    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 199
    .local v1, "componentName":Landroid/content/ComponentName;
    if-nez v1, :cond_1

    .line 200
    return-object v2

    .line 203
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 204
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 205
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 206
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const/high16 v5, 0x10000

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 211
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_2

    .line 212
    return-object v4

    .line 214
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Component for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BiometricNotificationUtils"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-object v2
.end method

.method public static showBadCalibrationNotification(Landroid/content/Context;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .line 260
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 261
    .local v0, "currentTime":J
    sget-wide v2, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->sLastAlertTime:J

    sub-long v2, v0, v2

    .line 265
    .local v2, "timeSinceLastAlert":J
    sget-wide v4, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->sLastAlertTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const-wide/32 v4, 0x5265c00

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping calibration notification : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BiometricNotificationUtils"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void

    .line 270
    :cond_0
    sput-wide v0, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->sLastAlertTime:J

    .line 272
    nop

    .line 273
    const v4, 0x1040454

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 274
    .local v6, "name":Ljava/lang/String;
    nop

    .line 275
    const v4, 0x1040455

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 276
    .local v7, "title":Ljava/lang/String;
    nop

    .line 277
    const v4, 0x1040453

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 279
    .local v8, "content":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.FINGERPRINT_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v11, v4

    .line 280
    .local v11, "intent":Landroid/content/Intent;
    const-string v4, "com.android.settings"

    invoke-virtual {v11, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const/4 v13, 0x0

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/high16 v12, 0x4000000

    move-object v9, p0

    .end local p0    # "context":Landroid/content/Context;
    .local v9, "context":Landroid/content/Context;
    invoke-static/range {v9 .. v14}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    .line 286
    move-object v5, v9

    move-object v4, v11

    .end local v9    # "context":Landroid/content/Context;
    .end local v11    # "intent":Landroid/content/Intent;
    .local v4, "intent":Landroid/content/Intent;
    .local v5, "context":Landroid/content/Context;
    .local p0, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v13, -0x1

    const/4 v14, 0x0

    const-string/jumbo v10, "sys"

    const-string v11, "FingerprintBadCalibrationNotificationChannel"

    const-string v12, "FingerprintBadCalibration"

    move-object v9, p0

    .end local p0    # "pendingIntent":Landroid/app/PendingIntent;
    .local v9, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static/range {v5 .. v14}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showNotificationHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 289
    return-void
.end method

.method public static showBiometricReEnrollNotification(Landroid/content/Context;Ljava/util/List;ZI)V
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "allIdentifiersDeleted"    # Z
    .param p3, "modality"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 296
    .local p1, "identifiers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move/from16 v13, p3

    if-ne v13, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move v14, v2

    .line 297
    .local v14, "isFingerprint":Z
    const-string v2, "FaceReEnroll"

    const-string v3, "FingerprintReEnroll"

    if-eqz v14, :cond_1

    move-object v4, v3

    goto :goto_1

    .line 298
    :cond_1
    move-object v4, v2

    :goto_1
    move-object v15, v4

    .line 299
    .local v15, "reEnrollName":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const-string v5, "BiometricNotificationUtils"

    if-eqz v4, :cond_2

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " notification : empty list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-void

    .line 303
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Showing "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " notification :["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " identifier(s) deleted, allIdentifiersDeleted="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    nop

    .line 307
    const v4, 0x1040360

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, "name":Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 309
    const v5, 0x104043b

    goto :goto_2

    .line 310
    :cond_3
    const v5, 0x1040400

    .line 308
    :goto_2
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 311
    .local v5, "title":Ljava/lang/String;
    if-eqz v14, :cond_4

    .line 312
    invoke-static/range {p0 .. p2}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->getFingerprintDanglingContentString(Landroid/content/Context;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 313
    :cond_4
    const v7, 0x10403ff

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_3
    nop

    .line 316
    .local v7, "content":Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    .line 317
    if-eqz v14, :cond_5

    const-string v9, "action_fingerprint_re_enroll_launch"

    goto :goto_4

    .line 318
    :cond_5
    const-string v9, "action_face_re_enroll_launch"

    :goto_4
    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v8, "setupIntent":Landroid/content/Intent;
    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/high16 v10, 0x4000000

    invoke-static {v0, v1, v8, v10, v9}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 321
    .local v9, "setupPendingIntent":Landroid/app/PendingIntent;
    nop

    .line 322
    const v11, 0x10401aa

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 323
    .local v11, "setupText":Ljava/lang/String;
    new-instance v12, Landroid/app/Notification$Action$Builder;

    const/4 v1, 0x0

    invoke-direct {v12, v1, v11, v9}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 324
    invoke-virtual {v12}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v12

    .line 327
    .local v12, "setupAction":Landroid/app/Notification$Action;
    new-instance v1, Landroid/content/Intent;

    .line 328
    if-eqz v14, :cond_6

    const-string v18, "action_fingerprint_re_enroll_dismiss"

    move-object/from16 v10, v18

    goto :goto_5

    .line 329
    :cond_6
    const-string v18, "action_face_re_enroll_dismiss"

    move-object/from16 v10, v18

    :goto_5
    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v1, "notNowIntent":Landroid/content/Intent;
    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v18, v2

    move-object/from16 v16, v3

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {v0, v2, v1, v3, v10}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 332
    .local v2, "notNowPendingIntent":Landroid/app/PendingIntent;
    const v3, 0x10401a9

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, "notNowText":Ljava/lang/String;
    new-instance v10, Landroid/app/Notification$Action$Builder;

    const/4 v0, 0x0

    invoke-direct {v10, v0, v3, v2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 335
    invoke-virtual {v10}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    .line 337
    .local v0, "notNowAction":Landroid/app/Notification$Action;
    if-eqz v14, :cond_7

    const-string v10, "FingerprintReEnrollNotificationChannel"

    goto :goto_6

    .line 338
    :cond_7
    const-string v10, "FaceReEnrollNotificationChannel"

    :goto_6
    nop

    .line 339
    .local v10, "channel":Ljava/lang/String;
    if-eqz v14, :cond_8

    goto :goto_7

    .line 340
    :cond_8
    move-object/from16 v16, v18

    :goto_7
    nop

    .line 342
    .local v16, "tag":Ljava/lang/String;
    move-object/from16 v17, v11

    .end local v11    # "setupText":Ljava/lang/String;
    .local v17, "setupText":Ljava/lang/String;
    const/4 v11, 0x0

    move-object/from16 v18, v2

    move-object v2, v5

    move-object v5, v12

    .end local v12    # "setupAction":Landroid/app/Notification$Action;
    .local v2, "title":Ljava/lang/String;
    .local v5, "setupAction":Landroid/app/Notification$Action;
    .local v18, "notNowPendingIntent":Landroid/app/PendingIntent;
    const/16 v12, 0x20

    move-object/from16 v19, v3

    move-object v3, v7

    .end local v7    # "content":Ljava/lang/String;
    .local v3, "content":Ljava/lang/String;
    .local v19, "notNowText":Ljava/lang/String;
    const-string/jumbo v7, "sys"

    move-object/from16 v20, v8

    move-object v8, v10

    .end local v10    # "channel":Ljava/lang/String;
    .local v8, "channel":Ljava/lang/String;
    .local v20, "setupIntent":Landroid/content/Intent;
    const/4 v10, -0x1

    move-object/from16 v6, v16

    move-object/from16 v16, v1

    move-object v1, v4

    move-object v4, v9

    move-object v9, v6

    move-object v6, v0

    move-object/from16 v0, p0

    .end local v0    # "notNowAction":Landroid/app/Notification$Action;
    .local v1, "name":Ljava/lang/String;
    .local v4, "setupPendingIntent":Landroid/app/PendingIntent;
    .local v6, "notNowAction":Landroid/app/Notification$Action;
    .local v9, "tag":Ljava/lang/String;
    .local v16, "notNowIntent":Landroid/content/Intent;
    invoke-static/range {v0 .. v12}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showNotificationHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/Notification$Action;Landroid/app/Notification$Action;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 345
    return-void
.end method

.method public static showCustomizeFpFrrNotification(Landroid/content/Context;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .line 166
    nop

    .line 167
    const v0, 0x1040360

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "name":Ljava/lang/String;
    nop

    .line 169
    const v0, 0x104044e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "title":Ljava/lang/String;
    nop

    .line 171
    const v0, 0x104044d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, "content":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->getIntentFromFpFrrComponentNameStringRes(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v7

    .line 174
    .local v7, "intent":Landroid/content/Intent;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Showing Customize Fingerprint Frr Notification result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v11, 0x1

    if-eqz v7, :cond_0

    move v5, v11

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "BiometricNotificationUtils"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-nez v7, :cond_1

    .line 176
    return v1

    .line 179
    :cond_1
    const/4 v9, 0x0

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/high16 v8, 0x4000000

    move-object v5, p0

    .end local p0    # "context":Landroid/content/Context;
    .local v5, "context":Landroid/content/Context;
    invoke-static/range {v5 .. v10}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    .line 183
    move-object v1, v5

    move-object v0, v7

    .end local v5    # "context":Landroid/content/Context;
    .end local v7    # "intent":Landroid/content/Intent;
    .local v0, "intent":Landroid/content/Intent;
    .local v1, "context":Landroid/content/Context;
    .local p0, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v9, 0x1

    const/4 v10, 0x1

    const-string/jumbo v6, "recommendation"

    const-string v7, "FingerprintFrrNotificationChannel"

    const-string v8, "FingerprintFrr"

    move-object v5, p0

    .end local p0    # "pendingIntent":Landroid/app/PendingIntent;
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static/range {v1 .. v10}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showNotificationHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 187
    return v11
.end method

.method public static showFaceEnrollNotification(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .line 109
    const-string v0, "BiometricNotificationUtils"

    const-string v1, "Showing Face Enroll Notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    nop

    .line 112
    const v0, 0x1040360

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "name":Ljava/lang/String;
    nop

    .line 114
    const v0, 0x104014e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "title":Ljava/lang/String;
    nop

    .line 116
    const v0, 0x104014c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, "content":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.FACE_ENROLL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 119
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v0, "enroll_reason"

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    const/4 v9, 0x0

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/high16 v8, 0x4000000

    move-object v5, p0

    .end local p0    # "context":Landroid/content/Context;
    .local v5, "context":Landroid/content/Context;
    invoke-static/range {v5 .. v10}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    .line 127
    move-object v1, v5

    move-object v0, v7

    .end local v5    # "context":Landroid/content/Context;
    .end local v7    # "intent":Landroid/content/Intent;
    .local v0, "intent":Landroid/content/Intent;
    .local v1, "context":Landroid/content/Context;
    .local p0, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v9, 0x1

    const/4 v10, 0x1

    const-string v6, "FaceEnrollNotificationChannel"

    const-string/jumbo v7, "recommendation"

    const-string v8, "FaceEnroll"

    move-object v5, p0

    .end local p0    # "pendingIntent":Landroid/app/PendingIntent;
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static/range {v1 .. v10}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showNotificationHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 131
    return-void
.end method

.method public static showFingerprintEnrollNotification(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .line 137
    const-string v0, "BiometricNotificationUtils"

    const-string v1, "Showing Fingerprint Enroll Notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    nop

    .line 139
    const v0, 0x1040360

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "name":Ljava/lang/String;
    nop

    .line 141
    const v0, 0x104014e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "title":Ljava/lang/String;
    nop

    .line 143
    const v0, 0x104014d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, "content":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.FINGERPRINT_ENROLL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 146
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v0, "enroll_reason"

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    const/4 v9, 0x0

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/high16 v8, 0x4000000

    move-object v5, p0

    .end local p0    # "context":Landroid/content/Context;
    .local v5, "context":Landroid/content/Context;
    invoke-static/range {v5 .. v10}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    .line 154
    move-object v1, v5

    move-object v0, v7

    .end local v5    # "context":Landroid/content/Context;
    .end local v7    # "intent":Landroid/content/Intent;
    .local v0, "intent":Landroid/content/Intent;
    .local v1, "context":Landroid/content/Context;
    .local p0, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v9, 0x1

    const/4 v10, 0x1

    const-string/jumbo v6, "recommendation"

    const-string v7, "FingerprintEnrollNotificationChannel"

    const-string v8, "FingerprintEnroll"

    move-object v5, p0

    .end local p0    # "pendingIntent":Landroid/app/PendingIntent;
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static/range {v1 .. v10}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showNotificationHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 158
    return-void
.end method

.method public static showFingerprintLoeNotification(Landroid/content/Context;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;

    .line 223
    move-object/from16 v0, p0

    const-string v1, "BiometricNotificationUtils"

    const-string v2, "Showing fingerprint LOE notification"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    nop

    .line 226
    const v1, 0x1040360

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "name":Ljava/lang/String;
    const v2, 0x104043b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "title":Ljava/lang/String;
    const v3, 0x104044f

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "content":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "action_fingerprint_re_enroll_launch"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v13, v4

    .line 233
    .local v13, "setupIntent":Landroid/content/Intent;
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/high16 v6, 0x4000000

    invoke-static {v0, v5, v13, v6, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 235
    .local v4, "setupPendingIntent":Landroid/app/PendingIntent;
    nop

    .line 236
    const v7, 0x10401aa

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 237
    .local v14, "setupText":Ljava/lang/String;
    new-instance v7, Landroid/app/Notification$Action$Builder;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v14, v4}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 238
    invoke-virtual {v7}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v7

    .line 241
    .local v7, "setupAction":Landroid/app/Notification$Action;
    new-instance v9, Landroid/content/Intent;

    const-string v10, "action_fingerprint_re_enroll_dismiss"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v15, v9

    .line 243
    .local v15, "notNowIntent":Landroid/content/Intent;
    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v0, v5, v15, v6, v9}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 245
    .local v5, "notNowPendingIntent":Landroid/app/PendingIntent;
    const v6, 0x10401a9

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 247
    .local v6, "notNowText":Ljava/lang/String;
    new-instance v9, Landroid/app/Notification$Action$Builder;

    invoke-direct {v9, v8, v6, v5}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 248
    invoke-virtual {v9}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v8

    .line 250
    .local v8, "notNowAction":Landroid/app/Notification$Action;
    const/4 v11, 0x0

    const/16 v12, 0x20

    move-object v9, v5

    move-object v5, v7

    .end local v7    # "setupAction":Landroid/app/Notification$Action;
    .local v5, "setupAction":Landroid/app/Notification$Action;
    .local v9, "notNowPendingIntent":Landroid/app/PendingIntent;
    const-string/jumbo v7, "sys"

    move-object v10, v6

    move-object v6, v8

    .end local v8    # "notNowAction":Landroid/app/Notification$Action;
    .local v6, "notNowAction":Landroid/app/Notification$Action;
    .local v10, "notNowText":Ljava/lang/String;
    const-string v8, "FingerprintReEnrollNotificationChannel"

    move-object/from16 v16, v9

    .end local v9    # "notNowPendingIntent":Landroid/app/PendingIntent;
    .local v16, "notNowPendingIntent":Landroid/app/PendingIntent;
    const-string v9, "FingerprintReEnroll"

    move-object/from16 v17, v10

    .end local v10    # "notNowText":Ljava/lang/String;
    .local v17, "notNowText":Ljava/lang/String;
    const/4 v10, -0x1

    invoke-static/range {v0 .. v12}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showNotificationHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/Notification$Action;Landroid/app/Notification$Action;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 254
    return-void
.end method

.method private static showNotificationHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/Notification$Action;Landroid/app/Notification$Action;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p5, "positiveAction"    # Landroid/app/Notification$Action;
    .param p6, "negativeAction"    # Landroid/app/Notification$Action;
    .param p7, "category"    # Ljava/lang/String;
    .param p8, "channelName"    # Ljava/lang/String;
    .param p9, "notificationTag"    # Ljava/lang/String;
    .param p10, "visibility"    # I
    .param p11, "listenToDismissEvent"    # Z
    .param p12, "flags"    # I

    .line 409
    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move/from16 v11, p11

    move/from16 v12, p12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " listenToDismissEvent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricNotificationUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    sget-object v2, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->DISMISS_FRR_INTENT:Landroid/content/Intent;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v1, 0x0

    const/high16 v3, 0x4000000

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 413
    .local v1, "dismissIntent":Landroid/app/PendingIntent;
    const-class v2, Landroid/app/NotificationManager;

    .line 414
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 415
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    new-instance v3, Landroid/app/NotificationChannel;

    const/4 v4, 0x4

    invoke-direct {v3, v10, v6, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 417
    .local v3, "channel":Landroid/app/NotificationChannel;
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, v0, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 418
    const v5, 0x1080462

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 419
    move-object/from16 v5, p2

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 420
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v13, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v13}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 421
    invoke-virtual {v13, v7}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 422
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 423
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 424
    invoke-virtual {v4, v13}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 425
    invoke-virtual {v4, v13}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 426
    move-object/from16 v14, p7

    invoke-virtual {v4, v14}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 427
    move-object/from16 v15, p4

    invoke-virtual {v4, v15}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 428
    move/from16 v13, p10

    invoke-virtual {v4, v13}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 430
    .local v4, "builder":Landroid/app/Notification$Builder;
    if-lez v12, :cond_0

    .line 431
    const/4 v0, 0x1

    invoke-virtual {v4, v12, v0}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 433
    :cond_0
    if-eqz v8, :cond_1

    .line 434
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 436
    :cond_1
    if-eqz v9, :cond_2

    .line 437
    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 439
    :cond_2
    if-eqz v11, :cond_3

    .line 440
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 442
    :cond_3
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 444
    .local v0, "notification":Landroid/app/Notification;
    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 445
    move-object/from16 v17, v1

    .end local v1    # "dismissIntent":Landroid/app/PendingIntent;
    .local v17, "dismissIntent":Landroid/app/PendingIntent;
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v18, v3

    move-object/from16 v16, v4

    const/4 v4, 0x1

    move-object/from16 v3, p9

    .end local v3    # "channel":Landroid/app/NotificationChannel;
    .end local v4    # "builder":Landroid/app/Notification$Builder;
    .local v16, "builder":Landroid/app/Notification$Builder;
    .local v18, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 448
    return-void
.end method

.method private static showNotificationHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p5, "category"    # Ljava/lang/String;
    .param p6, "channelName"    # Ljava/lang/String;
    .param p7, "notificationTag"    # Ljava/lang/String;
    .param p8, "visibility"    # I
    .param p9, "listenToDismissEvent"    # Z

    .line 400
    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v0 .. v12}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showNotificationHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/Notification$Action;Landroid/app/Notification$Action;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 403
    return-void
.end method

.method public static showReEnrollmentNotification(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .line 83
    const-class v0, Landroid/app/NotificationManager;

    .line 84
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 86
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    nop

    .line 87
    const v1, 0x1040414

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "name":Ljava/lang/String;
    nop

    .line 89
    const v1, 0x1040415

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "title":Ljava/lang/String;
    nop

    .line 91
    const v1, 0x1040413

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "content":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.FACE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    .line 94
    .local v8, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const/4 v10, 0x0

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/high16 v9, 0x4000000

    move-object v6, p0

    .end local p0    # "context":Landroid/content/Context;
    .local v6, "context":Landroid/content/Context;
    invoke-static/range {v6 .. v11}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    .line 100
    move-object v2, v6

    move-object v1, v8

    .end local v6    # "context":Landroid/content/Context;
    .end local v8    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    .local v2, "context":Landroid/content/Context;
    .local p0, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v10, -0x1

    const/4 v11, 0x0

    const-string v7, "FaceReEnrollNotificationChannel"

    const-string/jumbo v8, "sys"

    const-string v9, "FaceReEnroll"

    move-object v6, p0

    .end local p0    # "pendingIntent":Landroid/app/PendingIntent;
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static/range {v2 .. v11}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showNotificationHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 103
    return-void
.end method
