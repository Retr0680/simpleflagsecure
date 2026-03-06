.class public final Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "InputMethodManagerService.java"

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public static synthetic $r8$lambda$4H27nG5sHAQqHYzMQZqi4tBbCII(Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->lambda$onUserStarting$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$6T1tYl_GMGu03574D1VibaMubYk(Lcom/android/server/inputmethod/InputMethodManagerService;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$monUpdateResourceOverlay(Lcom/android/server/inputmethod/InputMethodManagerService;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NcHwasQrHcDWPnzfNFrrqshyKdA(Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->lambda$onUserUnlocking$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ykQTvnJIzX0sVvuWI6n1db_k78U(Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->lambda$initializeUsersAsync$2([I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1023
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->createServiceForProduction(Landroid/content/Context;)Lcom/android/server/inputmethod/InputMethodManagerService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;-><init>(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 1026
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/UserManagerInternal;->addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    .line 1030
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmIoHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 1031
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 1030
    invoke-static {p1, v0, v2}, Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor;->registerCallback(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$OnUpdateCallback;)V

    .line 1034
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->initializeUsersAsync([I)V

    .line 1035
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputMethodManagerService"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 1039
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 1040
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 1041
    return-void
.end method

.method private static createServiceForProduction(Landroid/content/Context;)Lcom/android/server/inputmethod/InputMethodManagerService;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 1056
    new-instance v0, Lcom/android/server/ServiceThread;

    const/4 v1, 0x0

    const-string v2, "android.imms"

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 1058
    .local v0, "thread":Lcom/android/server/ServiceThread;
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 1060
    new-instance v1, Lcom/android/server/ServiceThread;

    const-string v2, "android.imms2"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 1062
    .local v1, "ioThread":Lcom/android/server/ServiceThread;
    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->start()V

    .line 1064
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->setContentResolver(Landroid/content/ContentResolver;)V

    .line 1066
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 1067
    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldEnableConcurrentMultiUserMode(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    .line 1068
    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x0

    move-object v4, p0

    .end local p0    # "context":Landroid/content/Context;
    .local v4, "context":Landroid/content/Context;
    invoke-direct/range {v3 .. v8}, Lcom/android/server/inputmethod/InputMethodManagerService;-><init>(Landroid/content/Context;ZLandroid/os/Looper;Landroid/os/Handler;Ljava/util/function/IntFunction;)V

    .line 1066
    return-object v3
.end method

.method private initializeUsersAsync([I)V
    .locals 2
    .param p1, "userIds"    # [I

    .line 1186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Schedule initialization for users="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmIoHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1219
    return-void
.end method

.method private synthetic lambda$initializeUsersAsync$2([I)V
    .locals 17
    .param p1, "userIds"    # [I

    .line 1188
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 1189
    .local v2, "service":Lcom/android/server/inputmethod/InputMethodManagerService;
    iget-object v3, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1190
    .local v3, "context":Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v4

    .line 1192
    .local v4, "userManagerInternal":Lcom/android/server/pm/UserManagerInternal;
    array-length v5, v1

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_0

    aget v8, v1, v7

    .line 1193
    .local v8, "userId":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Start initialization for user="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "InputMethodManagerService"

    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    iget-object v9, v0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v9, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v9

    .line 1196
    .local v9, "userData":Lcom/android/server/inputmethod/UserData;
    invoke-static {v8}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->initializeIfNecessary(I)V

    .line 1197
    invoke-static {v8}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v11

    .line 1198
    .local v11, "additionalSubtypeMap":Lcom/android/server/inputmethod/AdditionalSubtypeMap;
    invoke-static {v3, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryRawInputMethodServiceMap(Landroid/content/Context;I)Lcom/android/server/inputmethod/RawInputMethodMap;

    move-result-object v12

    .line 1199
    .local v12, "rawMethodMap":Lcom/android/server/inputmethod/RawInputMethodMap;
    iget-object v13, v9, Lcom/android/server/inputmethod/UserData;->mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v13, v12}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1201
    invoke-virtual {v4, v8}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v13

    .line 1202
    .local v13, "unlocked":Z
    iget-object v14, v9, Lcom/android/server/inputmethod/UserData;->mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v14, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1203
    invoke-virtual {v12, v11, v6, v13}, Lcom/android/server/inputmethod/RawInputMethodMap;->toInputMethodMap(Lcom/android/server/inputmethod/AdditionalSubtypeMap;IZ)Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v14

    .line 1206
    .local v14, "methodMap":Lcom/android/server/inputmethod/InputMethodMap;
    invoke-static {v14, v8}, Lcom/android/server/inputmethod/InputMethodSettings;->create(Lcom/android/server/inputmethod/InputMethodMap;I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v15

    .line 1207
    .local v15, "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    invoke-static {v8, v15}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->put(ILcom/android/server/inputmethod/InputMethodSettings;)V

    .line 1209
    invoke-virtual {v4, v8}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v6

    .line 1210
    .local v6, "profileParentId":I
    nop

    .line 1211
    invoke-static {v3, v6}, Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor;->evaluate(Landroid/content/Context;I)Z

    move-result v0

    .line 1213
    .local v0, "value":Z
    iget-object v1, v9, Lcom/android/server/inputmethod/UserData;->mImeDrawsNavBar:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1215
    iget-object v1, v9, Lcom/android/server/inputmethod/UserData;->mBackgroundLoadLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v0

    .end local v0    # "value":Z
    .local v16, "value":Z
    const-string v0, "Complete initialization for user="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    .end local v6    # "profileParentId":I
    .end local v8    # "userId":I
    .end local v9    # "userData":Lcom/android/server/inputmethod/UserData;
    .end local v11    # "additionalSubtypeMap":Lcom/android/server/inputmethod/AdditionalSubtypeMap;
    .end local v12    # "rawMethodMap":Lcom/android/server/inputmethod/RawInputMethodMap;
    .end local v13    # "unlocked":Z
    .end local v14    # "methodMap":Lcom/android/server/inputmethod/InputMethodMap;
    .end local v15    # "settings":Lcom/android/server/inputmethod/InputMethodSettings;
    .end local v16    # "value":Z
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_0

    .line 1218
    :cond_0
    return-void
.end method

.method private synthetic lambda$onUserStarting$1(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 1176
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 1177
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-boolean v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-eqz v1, :cond_0

    .line 1178
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->onUserReadyLocked(I)V

    goto :goto_0

    .line 1180
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 1181
    return-void

    .line 1180
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$onUserUnlocking$0(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1157
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 1158
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-boolean v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v1, :cond_0

    .line 1159
    monitor-exit v0

    return-void

    .line 1166
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1162
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->postInputMethodSettingUpdatedLocked(ZI)V

    .line 1164
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(ZI)V

    .line 1166
    monitor-exit v0

    .line 1167
    return-void

    .line 1166
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 1107
    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->systemRunning()V

    .line 1110
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 1074
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mpublishLocalService(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 1076
    nop

    .line 1077
    new-instance v0, Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda214;

    invoke-direct {v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda214;-><init>(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {v0, v2, v1}, Lcom/android/server/inputmethod/ZeroJankProxy;-><init>(Ljava/util/concurrent/Executor;Lcom/android/server/inputmethod/ZeroJankProxy$Callback;)V

    .line 1081
    .local v0, "service":Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;
    nop

    .line 1082
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->create(Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;)Lcom/android/server/inputmethod/IInputMethodManagerImpl;

    move-result-object v1

    .line 1081
    const-string/jumbo v2, "input_method"

    const/4 v3, 0x0

    const/16 v4, 0x15

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1084
    nop

    .line 1085
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->registerImeRequestedChangedListener()V

    .line 1087
    return-void
.end method

.method public onUserCreated(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V
    .locals 2
    .param p1, "user"    # Landroid/content/pm/UserInfo;
    .param p2, "token"    # Ljava/lang/Object;

    .line 1115
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    .line 1116
    .local v0, "userId":I
    invoke-static {v0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->onUserCreated(I)V

    .line 1117
    filled-new-array {v0}, [I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->initializeUsersAsync([I)V

    .line 1118
    return-void
.end method

.method public onUserRemoved(Landroid/content/pm/UserInfo;)V
    .locals 6
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .line 1123
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    .line 1124
    .local v0, "userId":I
    invoke-static {v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->onUserRemoved(I)V

    .line 1125
    invoke-static {v0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->remove(I)V

    .line 1126
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->remove(I)V

    .line 1127
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmUserDataRepository(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/UserDataRepository;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/UserDataRepository;->remove(I)V

    .line 1128
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 1129
    :try_start_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmUserSwitchHandlerTask(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1130
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmUserSwitchHandlerTask(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    move-result-object v2

    iget v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mToUserId:I

    goto :goto_0

    .line 1140
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 1130
    :cond_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmCurrentImeUserId(Lcom/android/server/inputmethod/InputMethodManagerService;)I

    move-result v2

    :goto_0
    nop

    .line 1131
    .local v2, "nextOrCurrentUser":I
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmConcurrentMultiUserModeEnabled(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result v3

    if-nez v3, :cond_1

    if-ne v0, v2, :cond_1

    .line 1136
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v3

    .line 1137
    .local v3, "currentUserId":I
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    .line 1140
    .end local v2    # "nextOrCurrentUser":I
    .end local v3    # "currentUserId":I
    :cond_1
    monitor-exit v1

    .line 1141
    return-void

    .line 1140
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 1173
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    .line 1174
    .local v0, "userId":I
    invoke-static {v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->onUserStarting(I)V

    .line 1175
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmIoHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1182
    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .locals 7
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 1223
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    .line 1228
    .local v0, "userId":I
    invoke-static {v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->onUserStopped(I)V

    .line 1229
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    .line 1230
    .local v1, "userData":Lcom/android/server/inputmethod/UserData;
    invoke-static {v0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v2

    .line 1231
    .local v2, "additionalSubtypeMap":Lcom/android/server/inputmethod/AdditionalSubtypeMap;
    iget-object v3, v1, Lcom/android/server/inputmethod/UserData;->mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/RawInputMethodMap;

    .line 1232
    .local v3, "rawMethodMap":Lcom/android/server/inputmethod/RawInputMethodMap;
    const/4 v4, 0x0

    .line 1233
    .local v4, "userUnlocked":Z
    iget-object v5, v1, Lcom/android/server/inputmethod/UserData;->mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1234
    invoke-virtual {v3, v2, v6, v6}, Lcom/android/server/inputmethod/RawInputMethodMap;->toInputMethodMap(Lcom/android/server/inputmethod/AdditionalSubtypeMap;IZ)Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v5

    .line 1236
    .local v5, "methodMap":Lcom/android/server/inputmethod/InputMethodMap;
    nop

    .line 1237
    invoke-static {v5, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->create(Lcom/android/server/inputmethod/InputMethodMap;I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v6

    .line 1236
    invoke-static {v0, v6}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->put(ILcom/android/server/inputmethod/InputMethodSettings;)V

    .line 1238
    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 4
    .param p1, "from"    # Lcom/android/server/SystemService$TargetUser;
    .param p2, "to"    # Lcom/android/server/SystemService$TargetUser;

    .line 1092
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 1093
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmConcurrentMultiUserModeEnabled(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1096
    monitor-exit v0

    return-void

    .line 1100
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1098
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    .line 1100
    monitor-exit v0

    .line 1101
    return-void

    .line 1100
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 7
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 1146
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    .line 1147
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    .line 1148
    .local v1, "userData":Lcom/android/server/inputmethod/UserData;
    const/4 v2, 0x1

    .line 1149
    .local v2, "userUnlocked":Z
    iget-object v3, v1, Lcom/android/server/inputmethod/UserData;->mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1150
    invoke-static {v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->onUserUnlocking(I)V

    .line 1151
    iget-object v3, v1, Lcom/android/server/inputmethod/UserData;->mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/RawInputMethodMap;

    .line 1152
    invoke-static {v0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v5

    .line 1151
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4}, Lcom/android/server/inputmethod/RawInputMethodMap;->toInputMethodMap(Lcom/android/server/inputmethod/AdditionalSubtypeMap;IZ)Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v3

    .line 1154
    .local v3, "methodMap":Lcom/android/server/inputmethod/InputMethodMap;
    invoke-static {v3, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->create(Lcom/android/server/inputmethod/InputMethodMap;I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v4

    .line 1155
    .local v4, "newSettings":Lcom/android/server/inputmethod/InputMethodSettings;
    invoke-static {v0, v4}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->put(ILcom/android/server/inputmethod/InputMethodSettings;)V

    .line 1156
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmIoHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1168
    return-void
.end method
