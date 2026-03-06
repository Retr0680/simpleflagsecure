.class public Lcom/android/server/biometrics/AuthenticationStatsCollector;
.super Ljava/lang/Object;
.source "AuthenticationStatsCollector.java"


# static fields
.field public static final ACTION_LAST_ENROLL_TIME_CHANGED:Ljava/lang/String; = "last_enroll_time_changed"

.field private static final AUTHENTICATION_UPLOAD_INTERVAL:I = 0x32

.field public static final EXTRA_MODALITY:Ljava/lang/String; = "modality"

.field static final FRR_MINIMAL_DURATION:Ljava/time/Duration;

.field static final MAXIMUM_ENROLLMENT_NOTIFICATIONS:I

.field private static final MINIMUM_ATTEMPTS:I = 0x96

.field private static final TAG:Ljava/lang/String; = "AuthenticationStatsCollector"


# instance fields
.field private mAuthenticationStatsPersister:Lcom/android/server/biometrics/AuthenticationStatsPersister;

.field private mBiometricNotification:Lcom/android/server/biometrics/sensors/BiometricNotification;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mClock:Ljava/time/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mEnabled:Z

.field private final mEnrollTimeUpdatedReceiver:Landroid/content/BroadcastReceiver;

.field private final mFaceManager:Landroid/hardware/face/FaceManager;

.field private final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mModality:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mThreshold:F

.field private final mUserAuthenticationStatsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/biometrics/AuthenticationStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmClock(Lcom/android/server/biometrics/AuthenticationStatsCollector;)Ljava/time/Clock;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mClock:Ljava/time/Clock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModality(Lcom/android/server/biometrics/AuthenticationStatsCollector;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mModality:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserAuthenticationStatsMap(Lcom/android/server/biometrics/AuthenticationStatsCollector;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monUserRemoved(Lcom/android/server/biometrics/AuthenticationStatsCollector;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->onUserRemoved(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAuthenticationStatsMapIfNeeded(Lcom/android/server/biometrics/AuthenticationStatsCollector;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->updateAuthenticationStatsMapIfNeeded(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 57
    const/4 v0, 0x1

    sput v0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->MAXIMUM_ENROLLMENT_NOTIFICATIONS:I

    .line 59
    const-wide/16 v0, 0x7

    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->FRR_MINIMAL_DURATION:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/biometrics/sensors/BiometricNotification;Ljava/time/Clock;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "modality"    # I
    .param p3, "biometricNotification"    # Lcom/android/server/biometrics/sensors/BiometricNotification;
    .param p4, "clock"    # Ljava/time/Clock;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/android/server/biometrics/AuthenticationStatsCollector$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/AuthenticationStatsCollector$1;-><init>(Lcom/android/server/biometrics/AuthenticationStatsCollector;)V

    iput-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    new-instance v0, Lcom/android/server/biometrics/AuthenticationStatsCollector$2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/AuthenticationStatsCollector$2;-><init>(Lcom/android/server/biometrics/AuthenticationStatsCollector;)V

    iput-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mEnrollTimeUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    iput-object p1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mEnabled:Z

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 112
    const v1, 0x1130001

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mThreshold:F

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    .line 114
    iput p2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mModality:I

    .line 115
    iput-object p3, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mBiometricNotification:Lcom/android/server/biometrics/sensors/BiometricNotification;

    .line 116
    iput-object p4, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mClock:Ljava/time/Clock;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 119
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    iput-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 120
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 122
    new-instance v0, Lcom/android/server/biometrics/AuthenticationStatsPersister;

    iget-object v1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/AuthenticationStatsPersister;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mAuthenticationStatsPersister:Lcom/android/server/biometrics/AuthenticationStatsPersister;

    .line 124
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->initializeUserAuthenticationStatsMap()V

    .line 125
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mAuthenticationStatsPersister:Lcom/android/server/biometrics/AuthenticationStatsPersister;

    iget v1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mThreshold:F

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->persistFrrThreshold(F)V

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 132
    .local v1, "enrollTimeChangedFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "last_enroll_time_changed"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mEnrollTimeUpdatedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 135
    return-void
.end method

.method private hasEnrolledFace(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 303
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, p1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasEnrolledFingerprint(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 307
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledTemplates(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initializeUserAuthenticationStatsMap()V
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mAuthenticationStatsPersister:Lcom/android/server/biometrics/AuthenticationStatsPersister;

    iget v1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mModality:I

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->getAllFrrStats(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/AuthenticationStats;

    .line 140
    .local v1, "stats":Lcom/android/server/biometrics/AuthenticationStats;
    iget-object v2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthenticationStats;->getUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .end local v1    # "stats":Lcom/android/server/biometrics/AuthenticationStats;
    goto :goto_0

    .line 142
    :cond_0
    return-void
.end method

.method private isFrrMinimalDurationPassed(J)Z
    .locals 7
    .param p1, "previousMillis"    # J

    .line 239
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 240
    .local v0, "previous":Ljava/time/Instant;
    iget-object v1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 241
    .local v1, "nowMillis":J
    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v3

    .line 243
    .local v3, "now":Ljava/time/Instant;
    invoke-virtual {v3, v0}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v4

    const-string v5, "AuthenticationStatsCollector"

    if-eqz v4, :cond_1

    .line 244
    invoke-static {v0, v3}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v4

    .line 246
    .local v4, "between":Ljava/time/Duration;
    sget-object v6, Lcom/android/server/biometrics/AuthenticationStatsCollector;->FRR_MINIMAL_DURATION:Ljava/time/Duration;

    invoke-virtual {v4, v6}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v6

    if-lez v6, :cond_0

    .line 247
    const/4 v5, 0x1

    return v5

    .line 249
    :cond_0
    const-string/jumbo v6, "isFrrMinimalDurationPassed, duration too short"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .end local v4    # "between":Ljava/time/Duration;
    goto :goto_0

    .line 252
    :cond_1
    const-string/jumbo v4, "isFrrMinimalDurationPassed, date not match"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_0
    const/4 v4, 0x0

    return v4
.end method

.method private isSingleModalityDevice()Z
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    nop

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 299
    const-string v1, "android.hardware.biometrics.face"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 298
    :goto_1
    return v0
.end method

.method private onUserRemoved(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 293
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mAuthenticationStatsPersister:Lcom/android/server/biometrics/AuthenticationStatsPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->removeFrrStats(I)V

    .line 295
    return-void
.end method

.method private persistDataIfNeeded(I)V
    .locals 12
    .param p1, "userId"    # I

    .line 258
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/AuthenticationStats;

    .line 259
    .local v0, "authenticationStats":Lcom/android/server/biometrics/AuthenticationStats;
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->getTotalAttempts()I

    move-result v1

    rem-int/lit8 v1, v1, 0x32

    if-nez v1, :cond_0

    .line 260
    iget-object v2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mAuthenticationStatsPersister:Lcom/android/server/biometrics/AuthenticationStatsPersister;

    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->getUserId()I

    move-result v3

    .line 261
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->getTotalAttempts()I

    move-result v4

    .line 262
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->getRejectedAttempts()I

    move-result v5

    .line 263
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->getEnrollmentNotifications()I

    move-result v6

    .line 264
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->getLastEnrollmentTime()J

    move-result-wide v7

    .line 265
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->getLastFrrNotificationTime()J

    move-result-wide v9

    .line 266
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->getModality()I

    move-result v11

    .line 260
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/biometrics/AuthenticationStatsPersister;->persistFrrStats(IIIIJJI)V

    .line 268
    :cond_0
    return-void
.end method

.method private sendNotificationIfNeeded(I)V
    .locals 6
    .param p1, "userId"    # I

    .line 187
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/AuthenticationStats;

    .line 188
    .local v0, "authenticationStats":Lcom/android/server/biometrics/AuthenticationStats;
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->getTotalAttempts()I

    move-result v1

    const/16 v2, 0x96

    if-ge v1, v2, :cond_0

    .line 189
    return-void

    .line 193
    :cond_0
    nop

    .line 201
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->getEnrollmentNotifications()I

    move-result v1

    sget v2, Lcom/android/server/biometrics/AuthenticationStatsCollector;->MAXIMUM_ENROLLMENT_NOTIFICATIONS:I

    if-ge v1, v2, :cond_1

    .line 203
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->getFrr()F

    move-result v1

    iget v2, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mThreshold:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    nop

    .line 207
    .local v1, "showFrr":Z
    if-nez v1, :cond_2

    .line 208
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->resetData()V

    .line 209
    return-void

    .line 212
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->resetData()V

    .line 214
    nop

    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->hasEnrolledFace(I)Z

    move-result v2

    .line 225
    .local v2, "hasEnrolledFace":Z
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->hasEnrolledFingerprint(I)Z

    move-result v3

    .line 227
    .local v3, "hasEnrolledFingerprint":Z
    if-eqz v2, :cond_3

    if-nez v3, :cond_3

    .line 228
    iget-object v4, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mBiometricNotification:Lcom/android/server/biometrics/sensors/BiometricNotification;

    iget-object v5, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mContext:Landroid/content/Context;

    invoke-interface {v4, v5}, Lcom/android/server/biometrics/sensors/BiometricNotification;->sendFpEnrollNotification(Landroid/content/Context;)V

    .line 229
    iget-object v4, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/android/server/biometrics/AuthenticationStats;->updateLastFrrNotificationTime(J)V

    .line 230
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->updateNotificationCounter()V

    goto :goto_1

    .line 231
    :cond_3
    if-nez v2, :cond_4

    if-eqz v3, :cond_4

    .line 232
    iget-object v4, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mBiometricNotification:Lcom/android/server/biometrics/sensors/BiometricNotification;

    iget-object v5, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mContext:Landroid/content/Context;

    invoke-interface {v4, v5}, Lcom/android/server/biometrics/sensors/BiometricNotification;->sendFaceEnrollNotification(Landroid/content/Context;)V

    .line 233
    iget-object v4, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/android/server/biometrics/AuthenticationStats;->updateLastFrrNotificationTime(J)V

    .line 234
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->updateNotificationCounter()V

    .line 236
    :cond_4
    :goto_1
    return-void
.end method

.method private updateAuthenticationStatsMapIfNeeded(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 176
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->initializeUserAuthenticationStatsMap()V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/biometrics/AuthenticationStats;

    iget v3, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mModality:I

    invoke-direct {v2, p1, v3}, Lcom/android/server/biometrics/AuthenticationStats;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_1
    return-void
.end method


# virtual methods
.method public authenticate(IZ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "authenticated"    # Z

    .line 148
    iget-boolean v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mEnabled:Z

    if-nez v0, :cond_0

    .line 149
    return-void

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->isSingleModalityDevice()Z

    move-result v0

    if-nez v0, :cond_3

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->hasEnrolledFace(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->hasEnrolledFingerprint(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 158
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->updateAuthenticationStatsMapIfNeeded(I)V

    .line 160
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/AuthenticationStats;

    .line 161
    .local v0, "authenticationStats":Lcom/android/server/biometrics/AuthenticationStats;
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthenticationStats;->getEnrollmentNotifications()I

    move-result v1

    sget v2, Lcom/android/server/biometrics/AuthenticationStatsCollector;->MAXIMUM_ENROLLMENT_NOTIFICATIONS:I

    if-lt v1, v2, :cond_2

    .line 162
    return-void

    .line 165
    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/AuthenticationStats;->authenticate(Z)V

    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->sendNotificationIfNeeded(I)V

    .line 169
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/AuthenticationStatsCollector;->persistDataIfNeeded(I)V

    .line 170
    return-void

    .line 155
    .end local v0    # "authenticationStats":Lcom/android/server/biometrics/AuthenticationStats;
    :cond_3
    :goto_0
    return-void
.end method

.method getAuthenticationStatsForUser(I)Lcom/android/server/biometrics/AuthenticationStats;
    .locals 3
    .param p1, "userId"    # I

    .line 319
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/AuthenticationStats;

    return-object v0
.end method

.method public sendFaceReEnrollNotification()V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mBiometricNotification:Lcom/android/server/biometrics/sensors/BiometricNotification;

    iget-object v1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/server/biometrics/sensors/BiometricNotification;->sendFaceEnrollNotification(Landroid/content/Context;)V

    .line 279
    return-void
.end method

.method public sendFingerprintReEnrollNotification()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mBiometricNotification:Lcom/android/server/biometrics/sensors/BiometricNotification;

    iget-object v1, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/server/biometrics/sensors/BiometricNotification;->sendFpEnrollNotification(Landroid/content/Context;)V

    .line 290
    return-void
.end method

.method setAuthenticationStatsForUser(ILcom/android/server/biometrics/AuthenticationStats;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "authenticationStats"    # Lcom/android/server/biometrics/AuthenticationStats;

    .line 324
    iget-object v0, p0, Lcom/android/server/biometrics/AuthenticationStatsCollector;->mUserAuthenticationStatsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    return-void
.end method
