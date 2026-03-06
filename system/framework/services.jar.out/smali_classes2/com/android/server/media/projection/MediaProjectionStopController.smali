.class public Lcom/android/server/media/projection/MediaProjectionStopController;
.super Ljava/lang/Object;
.source "MediaProjectionStopController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/projection/MediaProjectionStopController$RoleHolderProvider;,
        Lcom/android/server/media/projection/MediaProjectionStopController$ProjectionTelephonyCallback;
    }
.end annotation


# static fields
.field static final STOP_REASON_CALL_END:I = 0x2

.field static final STOP_REASON_KEYGUARD:I = 0x1

.field static final STOP_REASON_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaProjectionStopController"


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mIsInCall:Z

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastCallStartTimeMillis:J

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mRoleHolderProvider:Lcom/android/server/media/projection/MediaProjectionStopController$RoleHolderProvider;

.field private final mStopReasonConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTelecomManager:Landroid/telecom/TelecomManager;

.field private final mTelephonyCallback:Landroid/telephony/TelephonyCallback;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$mvM8pK9Lkoi3AQwy6r7PezXYveY(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/media/projection/MediaProjectionStopController;->lambda$new$0(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 78
    .local p2, "stopReasonConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/android/server/media/projection/MediaProjectionStopController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/media/projection/MediaProjectionStopController$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/media/projection/MediaProjectionStopController;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;Lcom/android/server/media/projection/MediaProjectionStopController$RoleHolderProvider;)V

    .line 81
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/function/Consumer;Lcom/android/server/media/projection/MediaProjectionStopController$RoleHolderProvider;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "roleHolderProvider"    # Lcom/android/server/media/projection/MediaProjectionStopController$RoleHolderProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/media/projection/MediaProjectionStopController$RoleHolderProvider;",
            ")V"
        }
    .end annotation

    .line 85
    .local p2, "stopReasonConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/android/server/media/projection/MediaProjectionStopController$ProjectionTelephonyCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/projection/MediaProjectionStopController$ProjectionTelephonyCallback;-><init>(Lcom/android/server/media/projection/MediaProjectionStopController;Lcom/android/server/media/projection/MediaProjectionStopController-IA;)V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    .line 86
    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mStopReasonConsumer:Ljava/util/function/Consumer;

    .line 87
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 88
    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 89
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 90
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mContentResolver:Landroid/content/ContentResolver;

    .line 93
    iput-object p3, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mRoleHolderProvider:Lcom/android/server/media/projection/MediaProjectionStopController$RoleHolderProvider;

    .line 94
    return-void
.end method

.method private isExempt(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;IZ)Z
    .locals 10
    .param p1, "projectionGrant"    # Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    .param p2, "stopReason"    # I
    .param p3, "forStart"    # Z

    .line 140
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    goto/16 :goto_1

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "disable_screen_share_protections_for_apps_and_notifications"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    .line 145
    .local v1, "disableScreenShareProtections":Z
    :goto_0
    const-string v2, "MediaProjectionStopController"

    if-eqz v1, :cond_3

    .line 146
    const-string v3, "Continuing MediaProjection as screenshare protections are disabled."

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return v0

    .line 150
    :cond_3
    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.permission.RECORD_SENSITIVE_CONTENT"

    iget-object v6, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    .line 152
    const-string v3, "Continuing MediaProjection for package with RECORD_SENSITIVE_CONTENT permission"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return v0

    .line 157
    :cond_4
    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v6, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    iget-object v7, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "recording lockscreen"

    const/16 v5, 0x2e

    invoke-virtual/range {v4 .. v9}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_5

    .line 162
    const-string v3, "Continuing MediaProjection for package with OP_PROJECT_MEDIA AppOp "

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return v0

    .line 165
    :cond_5
    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mRoleHolderProvider:Lcom/android/server/media/projection/MediaProjectionStopController$RoleHolderProvider;

    const-string v5, "android.app.role.COMPANION_DEVICE_APP_STREAMING"

    iget-object v6, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->userHandle:Landroid/os/UserHandle;

    invoke-interface {v4, v5, v6}, Lcom/android/server/media/projection/MediaProjectionStopController$RoleHolderProvider;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    .line 167
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 168
    const-string v3, "Continuing MediaProjection for package holding app streaming role."

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return v0

    .line 171
    :cond_6
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/SystemConfig;->getBugreportWhitelistedPackages()Landroid/util/ArraySet;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 173
    const-string v3, "Continuing MediaProjection for package allowlisted for bugreporting."

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return v0

    .line 176
    :cond_7
    if-nez p3, :cond_8

    invoke-virtual {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getVirtualDisplayId()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_8

    .line 177
    const-string v3, "Continuing MediaProjection as current projection has no VirtualDisplay."

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return v0

    .line 181
    :cond_8
    const/4 v4, 0x2

    if-ne p2, v4, :cond_9

    .line 182
    invoke-virtual {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getCreateTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mLastCallStartTimeMillis:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_9

    .line 183
    const-string v3, "Continuing MediaProjection as (phone) call started after MediaProjection was created."

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return v0

    .line 189
    :cond_9
    return v3

    .line 141
    .end local v1    # "disableScreenShareProtections":Z
    :goto_1
    return v0
.end method

.method private static synthetic lambda$new$0(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 79
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    .line 80
    invoke-virtual {v0, p1, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 79
    return-object v0
.end method

.method public static stopReasonToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "stopReason"    # I

    .line 236
    packed-switch p0, :pswitch_data_0

    .line 244
    const-string v0, ""

    return-object v0

    .line 241
    :pswitch_0
    const-string v0, "STOP_REASON_CALL_END"

    return-object v0

    .line 238
    :pswitch_1
    const-string v0, "STOP_REASON_KEYGUARD"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method callStateChanged()V
    .locals 3

    .line 215
    nop

    .line 218
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    .line 219
    .local v0, "isInCall":Z
    if-eqz v0, :cond_0

    .line 220
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mLastCallStartTimeMillis:J

    .line 222
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mIsInCall:Z

    if-ne v0, v1, :cond_1

    .line 223
    return-void

    .line 226
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mIsInCall:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 227
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mStopReasonConsumer:Ljava/util/function/Consumer;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 229
    :cond_2
    iput-boolean v0, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mIsInCall:Z

    .line 230
    return-void
.end method

.method public isExemptFromStopping(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;I)Z
    .locals 1
    .param p1, "projectionGrant"    # Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    .param p2, "stopReason"    # I

    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/media/projection/MediaProjectionStopController;->isExempt(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;IZ)Z

    move-result v0

    return v0
.end method

.method public isStartForbidden(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)Z
    .locals 3
    .param p1, "projectionGrant"    # Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 197
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 198
    return v1

    .line 201
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/media/projection/MediaProjectionStopController;->isExempt(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    return v1

    .line 204
    :cond_1
    return v0
.end method

.method public isStopReasonCallEnd(I)Z
    .locals 1
    .param p1, "stopReason"    # I

    .line 116
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onKeyguardLockedStateChanged(Z)V
    .locals 2
    .param p1, "isKeyguardLocked"    # Z

    .line 209
    if-nez p1, :cond_0

    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mStopReasonConsumer:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 211
    return-void
.end method

.method public startTrackingStopReasons(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 100
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 102
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/android/server/media/projection/MediaProjectionStopController$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/media/projection/MediaProjectionStopController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/projection/MediaProjectionStopController;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/KeyguardManager;->addKeyguardLockedStateListener(Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V

    .line 104
    nop

    .line 105
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionStopController;->callStateChanged()V

    .line 106
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionStopController;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 111
    nop

    .line 112
    return-void

    .line 110
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 111
    throw v2
.end method
