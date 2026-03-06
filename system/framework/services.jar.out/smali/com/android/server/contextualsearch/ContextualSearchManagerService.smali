.class public Lcom/android/server/contextualsearch/ContextualSearchManagerService;
.super Lcom/android/server/SystemService;
.source "ContextualSearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INTERNAL_ENTRYPOINT_APP:I = -0x1

.field private static final MAX_TEMP_PACKAGE_DURATION_MS:I = 0x1d4c0

.field private static final MAX_TOKEN_VALID_DURATION_MS:I = 0x927c0

.field private static final MSG_INVALIDATE_TOKEN:I = 0x1

.field private static final MSG_RESET_TEMPORARY_PACKAGE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAssistDataCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

.field private final mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

.field private final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManager:Landroid/content/pm/PackageManagerInternal;

.field private mStateCallback:Landroid/app/contextualsearch/IContextualSearchCallback;

.field private mTemporaryHandler:Landroid/os/Handler;

.field private mTemporaryPackage:Ljava/lang/String;

.field private mTokenValidDurationMs:J

.field private final mUserManager:Landroid/os/UserManager;

.field private final mWmInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAssistDataRequester(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)Lcom/android/server/am/AssistDataRequester;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)Landroid/content/pm/PackageManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateCallback(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)Landroid/app/contextualsearch/IContextualSearchCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mStateCallback:Landroid/app/contextualsearch/IContextualSearchCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWmInternal(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmStateCallback(Lcom/android/server/contextualsearch/ContextualSearchManagerService;Landroid/app/contextualsearch/IContextualSearchCallback;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mStateCallback:Landroid/app/contextualsearch/IContextualSearchCallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$menforceForegroundApp(Lcom/android/server/contextualsearch/ContextualSearchManagerService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->enforceForegroundApp(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$menforcePermission(Lcom/android/server/contextualsearch/ContextualSearchManagerService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->enforcePermission(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetContextualSearchIntent(Lcom/android/server/contextualsearch/ContextualSearchManagerService;IILjava/lang/String;Landroid/app/contextualsearch/CallbackToken;)Landroid/content/Intent;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->getContextualSearchIntent(IILjava/lang/String;Landroid/app/contextualsearch/CallbackToken;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetTokenValidDurationMs(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)J
    .locals 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->getTokenValidDurationMs()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$minvokeContextualSearchIntent(Lcom/android/server/contextualsearch/ContextualSearchManagerService;Landroid/content/Intent;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->invokeContextualSearchIntent(Landroid/content/Intent;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 92
    const-class v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mLock:Ljava/lang/Object;

    .line 120
    new-instance v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$1;-><init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)V

    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAssistDataCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryPackage:Ljava/lang/String;

    .line 166
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTokenValidDurationMs:J

    .line 175
    iput-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mContext:Landroid/content/Context;

    .line 176
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 177
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 176
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 178
    nop

    .line 179
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 178
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 180
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    .line 181
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 182
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mUserManager:Landroid/os/UserManager;

    .line 184
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 185
    new-instance v1, Lcom/android/server/am/AssistDataRequester;

    iget-object v2, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mContext:Landroid/content/Context;

    .line 187
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AppOpsManager;

    .line 188
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/AppOpsManager;

    iget-object v5, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAssistDataCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    iget-object v6, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mLock:Ljava/lang/Object;

    const/16 v7, 0x31

    const/16 v8, 0x32

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/AssistDataRequester;-><init>(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/app/AppOpsManager;Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;Ljava/lang/Object;II)V

    iput-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    .line 191
    invoke-direct {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->updateSecureSetting()V

    .line 192
    return-void
.end method

.method private enforceForegroundApp(Ljava/lang/String;)V
    .locals 4
    .param p1, "func"    # Ljava/lang/String;

    .line 416
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 417
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, "callingPackage":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2, v0}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    .line 427
    return-void

    .line 422
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: Cannot call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " without a foreground activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private enforceOverridingPermission(Ljava/lang/String;)V
    .locals 2
    .param p1, "func"    # Ljava/lang/String;

    .line 430
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    .line 431
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: Cannot override Contextual Search. Called "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 437
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "func"    # Ljava/lang/String;

    .line 406
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 407
    .local v0, "ctx":Landroid/content/Context;
    const-string v1, "android.permission.ACCESS_CONTEXTUAL_SEARCH"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    invoke-direct {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->isCallerTemporary()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 409
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: Cannot call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 413
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method private getContextualSearchIntent(IILjava/lang/String;Landroid/app/contextualsearch/CallbackToken;)Landroid/content/Intent;
    .locals 20
    .param p1, "entrypoint"    # I
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "mToken"    # Landroid/app/contextualsearch/CallbackToken;

    .line 318
    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct {v1, v2}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->getResolvedLaunchIntent(I)Landroid/content/Intent;

    move-result-object v3

    .line 319
    .local v3, "launchIntent":Landroid/content/Intent;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 321
    return-object v4

    .line 325
    :cond_0
    const v0, 0x10058000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 327
    nop

    .line 329
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 327
    const-string v0, "android.app.contextualsearch.extra.INVOCATION_TIME_MS"

    invoke-virtual {v3, v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 330
    const-string v0, "android.app.contextualsearch.extra.ENTRYPOINT"

    move/from16 v5, p1

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 331
    const-string v0, "android.app.contextualsearch.extra.TOKEN"

    move-object/from16 v6, p4

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 332
    nop

    .line 336
    nop

    .line 339
    iget-object v0, v1, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isAssistDataAllowed()Z

    move-result v7

    .line 340
    .local v7, "isAssistDataAllowed":Z
    iget-object v0, v1, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopVisibleActivities()Ljava/util/List;

    move-result-object v8

    .line 341
    .local v8, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityAssistInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-object v11, v0

    .line 342
    .local v11, "activityTokens":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 343
    .local v9, "visiblePackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 344
    .local v0, "isManagedProfileVisible":Z
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v12, v0

    .end local v0    # "isManagedProfileVisible":Z
    .local v12, "isManagedProfileVisible":Z
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityAssistInfo;

    .line 346
    .local v0, "record":Lcom/android/server/wm/ActivityAssistInfo;
    if-eqz v7, :cond_1

    .line 347
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityAssistInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityAssistInfo;->getActivityToken()Landroid/os/IBinder;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_1
    iget-object v13, v1, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityAssistInfo;->getUserId()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 351
    const/4 v12, 0x1

    .line 353
    .end local v0    # "record":Lcom/android/server/wm/ActivityAssistInfo;
    :cond_2
    goto :goto_0

    .line 354
    :cond_3
    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v10, v17

    .line 355
    .local v10, "csPackage":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v13, 0x0

    invoke-virtual {v0, v10, v13, v14, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v16

    .line 356
    .local v16, "csUid":I
    if-eqz v7, :cond_4

    .line 358
    move-object/from16 v17, v10

    .end local v10    # "csPackage":Ljava/lang/String;
    .local v17, "csPackage":Ljava/lang/String;
    :try_start_0
    iget-object v10, v1, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v15, 0x0

    const/16 v18, 0x0

    move v13, v12

    .end local v12    # "isManagedProfileVisible":Z
    .local v13, "isManagedProfileVisible":Z
    const/4 v12, 0x1

    move v14, v13

    .end local v13    # "isManagedProfileVisible":Z
    .local v14, "isManagedProfileVisible":Z
    const/4 v13, 0x0

    move/from16 v19, v14

    .end local v14    # "isManagedProfileVisible":Z
    .local v19, "isManagedProfileVisible":Z
    const/4 v14, 0x1

    move/from16 v4, v19

    .end local v19    # "isManagedProfileVisible":Z
    .local v4, "isManagedProfileVisible":Z
    :try_start_1
    invoke-virtual/range {v10 .. v18}, Lcom/android/server/am/AssistDataRequester;->requestAssistData(Ljava/util/List;ZZZZILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v10, v16

    .line 369
    .end local v16    # "csUid":I
    .local v10, "csUid":I
    goto :goto_2

    .line 367
    .end local v10    # "csUid":I
    .restart local v16    # "csUid":I
    :catch_0
    move-exception v0

    move/from16 v10, v16

    .end local v16    # "csUid":I
    .restart local v10    # "csUid":I
    goto :goto_1

    .end local v4    # "isManagedProfileVisible":Z
    .end local v10    # "csUid":I
    .restart local v12    # "isManagedProfileVisible":Z
    .restart local v16    # "csUid":I
    :catch_1
    move-exception v0

    move v4, v12

    move/from16 v10, v16

    .line 368
    .end local v12    # "isManagedProfileVisible":Z
    .end local v16    # "csUid":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v4    # "isManagedProfileVisible":Z
    .restart local v10    # "csUid":I
    :goto_1
    sget-object v12, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->TAG:Ljava/lang/String;

    const-string v13, "Could not request assist data"

    invoke-static {v12, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 356
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "isManagedProfileVisible":Z
    .end local v17    # "csPackage":Ljava/lang/String;
    .local v10, "csPackage":Ljava/lang/String;
    .restart local v12    # "isManagedProfileVisible":Z
    .restart local v16    # "csUid":I
    :cond_4
    move-object/from16 v17, v10

    move v4, v12

    move/from16 v10, v16

    .line 371
    .end local v12    # "isManagedProfileVisible":Z
    .end local v16    # "csUid":I
    .restart local v4    # "isManagedProfileVisible":Z
    .local v10, "csUid":I
    .restart local v17    # "csPackage":Ljava/lang/String;
    :goto_2
    iget-object v0, v1, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 372
    nop

    .line 371
    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowManagerInternal;->takeContextualSearchScreenshot(I)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v0

    .line 373
    .local v0, "shb":Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    .line 375
    .local v12, "bm":Landroid/graphics/Bitmap;
    :goto_3
    if-eqz v12, :cond_6

    .line 376
    nop

    .line 377
    invoke-virtual {v0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    move-result v13

    .line 376
    const-string v14, "android.app.contextualsearch.extra.FLAG_SECURE_FOUND"

    invoke-virtual {v3, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 379
    if-eqz v7, :cond_6

    .line 380
    const-string v13, "android.app.contextualsearch.extra.SCREENSHOT"

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->asShared()Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 383
    :cond_6
    const-string v13, "android.app.contextualsearch.extra.IS_MANAGED_PROFILE_VISIBLE"

    invoke-virtual {v3, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 386
    if-eqz v7, :cond_7

    .line 387
    const-string v13, "android.app.contextualsearch.extra.VISIBLE_PACKAGE_NAMES"

    invoke-virtual {v3, v13, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 390
    :cond_7
    return-object v3
.end method

.method private getContextualSearchPackageName()Ljava/lang/String;
    .locals 2

    .line 209
    monitor-enter p0

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryPackage:Ljava/lang/String;

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040239

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    monitor-exit p0

    .line 210
    return-object v0

    .line 212
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getResolvedLaunchIntent(I)Landroid/content/Intent;
    .locals 5
    .param p1, "userId"    # I

    .line 283
    monitor-enter p0

    .line 286
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->getContextualSearchPackageName()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "csPkgName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 290
    monitor-exit p0

    return-object v2

    .line 308
    .end local v0    # "csPkgName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 292
    .restart local v0    # "csPkgName":Ljava/lang/String;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.app.contextualsearch.action.LAUNCH_CONTEXTUAL_SEARCH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v1, "launchIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    iget-object v3, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0xc0000

    invoke-virtual {v3, v1, v4, p1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 297
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v3, :cond_1

    .line 299
    monitor-exit p0

    return-object v2

    .line 301
    :cond_1
    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 302
    .local v4, "componentName":Landroid/content/ComponentName;
    if-nez v4, :cond_2

    .line 304
    monitor-exit p0

    return-object v2

    .line 306
    :cond_2
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 307
    monitor-exit p0

    return-object v1

    .line 308
    .end local v0    # "csPkgName":Ljava/lang/String;
    .end local v1    # "launchIntent":Landroid/content/Intent;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "componentName":Landroid/content/ComponentName;
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getTokenValidDurationMs()J
    .locals 2

    .line 277
    monitor-enter p0

    .line 278
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTokenValidDurationMs:J

    monitor-exit p0

    return-wide v0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private invokeContextualSearchIntent(Landroid/content/Intent;I)I
    .locals 10
    .param p1, "launchIntent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 397
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeCustomTaskAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 399
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setDisableStartingWindow(Z)V

    .line 400
    iget-object v2, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mContext:Landroid/content/Context;

    .line 401
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 402
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    .line 400
    const/4 v7, 0x0

    move-object v3, p1

    move v9, p2

    .end local p1    # "launchIntent":Landroid/content/Intent;
    .end local p2    # "userId":I
    .local v3, "launchIntent":Landroid/content/Intent;
    .local v9, "userId":I
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityWithScreenshot(Landroid/content/Intent;Ljava/lang/String;IILandroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result p1

    return p1
.end method

.method private isCallerTemporary()Z
    .locals 3

    .line 440
    monitor-enter p0

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryPackage:Ljava/lang/String;

    .line 443
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 444
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 442
    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    .line 441
    return v0

    .line 444
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateSecureSetting()V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mContext:Landroid/content/Context;

    .line 203
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 205
    invoke-direct {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->getContextualSearchPackageName()Ljava/lang/String;

    move-result-object v1

    .line 202
    const-string v2, "contextual_search_package"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 206
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 196
    new-instance v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;-><init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService;Lcom/android/server/contextualsearch/ContextualSearchManagerService-IA;)V

    const-string v1, "contextual_search"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 197
    return-void
.end method

.method resetTemporaryPackage()V
    .locals 3

    .line 216
    monitor-enter p0

    .line 217
    :try_start_0
    const-string/jumbo v0, "resetTemporaryPackage"

    invoke-direct {p0, v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->enforceOverridingPermission(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 220
    iput-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryHandler:Landroid/os/Handler;

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 223
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryPackage:Ljava/lang/String;

    .line 224
    invoke-direct {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->updateSecureSetting()V

    .line 225
    monitor-exit p0

    .line 226
    return-void

    .line 225
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method resetTokenValidDurationMs()V
    .locals 1

    .line 260
    const v0, 0x927c0

    invoke-virtual {p0, v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->setTokenValidDurationMs(I)V

    .line 261
    return-void
.end method

.method setTemporaryPackage(Ljava/lang/String;I)V
    .locals 6
    .param p1, "temporaryPackage"    # Ljava/lang/String;
    .param p2, "durationMs"    # I

    .line 229
    monitor-enter p0

    .line 230
    :try_start_0
    const-string/jumbo v0, "setTemporaryPackage"

    invoke-direct {p0, v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->enforceOverridingPermission(Ljava/lang/String;)V

    .line 231
    const v0, 0x1d4c0

    .line 232
    .local v0, "maxDurationMs":I
    const v1, 0x1d4c0

    if-gt p2, v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 237
    new-instance v1, Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v1, p0, v3, v4, v5}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;-><init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryHandler:Landroid/os/Handler;

    goto :goto_0

    .line 256
    .end local v0    # "maxDurationMs":I
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 250
    .restart local v0    # "maxDurationMs":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 252
    :goto_0
    iput-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryPackage:Ljava/lang/String;

    .line 253
    invoke-direct {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->updateSecureSetting()V

    .line 254
    iget-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryHandler:Landroid/os/Handler;

    int-to-long v3, p2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 256
    nop

    .end local v0    # "maxDurationMs":I
    monitor-exit p0

    .line 257
    return-void

    .line 233
    .restart local v0    # "maxDurationMs":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Max duration is 120000 (called with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/contextualsearch/ContextualSearchManagerService;
    .end local p1    # "temporaryPackage":Ljava/lang/String;
    .end local p2    # "durationMs":I
    throw v1

    .line 256
    .end local v0    # "maxDurationMs":I
    .restart local p0    # "this":Lcom/android/server/contextualsearch/ContextualSearchManagerService;
    .restart local p1    # "temporaryPackage":Ljava/lang/String;
    .restart local p2    # "durationMs":I
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setTokenValidDurationMs(I)V
    .locals 3
    .param p1, "durationMs"    # I

    .line 264
    monitor-enter p0

    .line 265
    :try_start_0
    const-string/jumbo v0, "setTokenValidDurationMs"

    invoke-direct {p0, v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->enforceOverridingPermission(Ljava/lang/String;)V

    .line 266
    const v0, 0x927c0

    if-gt p1, v0, :cond_0

    .line 271
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTokenValidDurationMs:J

    .line 273
    monitor-exit p0

    .line 274
    return-void

    .line 273
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Token max duration is 600000 (called with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/contextualsearch/ContextualSearchManagerService;
    .end local p1    # "durationMs":I
    throw v0

    .line 273
    .restart local p0    # "this":Lcom/android/server/contextualsearch/ContextualSearchManagerService;
    .restart local p1    # "durationMs":I
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
