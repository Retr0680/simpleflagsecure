.class public final Lcom/android/server/audio/AudioService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/audio/AudioService;


# direct methods
.method public static synthetic $r8$lambda$6de2JXnKKk1CN0vVSo8fHCTAFzs(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/audio/AudioService$Lifecycle;->lambda$new$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .line 1428
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 1429
    new-instance v0, Lcom/android/server/audio/AudioService$Lifecycle$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/audio/AudioService$Lifecycle$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v12

    .line 1431
    .local v12, "audioserverLifecycleExecutor":Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v7, Lcom/android/server/audio/DefaultAudioPolicyFacade;

    invoke-direct {v7, v12}, Lcom/android/server/audio/DefaultAudioPolicyFacade;-><init>(Ljava/util/concurrent/Executor;)V

    .line 1432
    .local v7, "audioPolicyFacade":Lcom/android/server/audio/DefaultAudioPolicyFacade;
    new-instance v1, Lcom/android/server/audio/AudioService;

    .line 1433
    invoke-static {}, Lcom/android/server/audio/AudioSystemAdapter;->getDefaultAdapter()Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object v3

    .line 1434
    invoke-static {p1}, Lcom/android/server/audio/SystemServerAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/android/server/audio/SystemServerAdapter;

    move-result-object v4

    .line 1435
    invoke-static {}, Lcom/android/server/audio/SettingsAdapter;->getDefaultAdapter()Lcom/android/server/audio/SettingsAdapter;

    move-result-object v5

    new-instance v6, Lcom/android/server/audio/AudioService$AudioVolumeGroupHelper;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/android/server/audio/AudioService$AudioVolumeGroupHelper;-><init>(Lcom/android/server/audio/AudioService-IA;)V

    const-class v0, Landroid/app/AppOpsManager;

    .line 1439
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/AppOpsManager;

    .line 1440
    invoke-static {p1}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v10

    .line 1441
    nop

    .line 1442
    invoke-static {p1, v7, v12}, Lcom/android/server/audio/AudioService;->-$$Nest$sminitializeAudioServerPermissionProvider(Landroid/content/Context;Lcom/android/server/audio/AudioPolicyFacade;Ljava/util/concurrent/Executor;)Lcom/android/server/audio/AudioServerPermissionProvider;

    move-result-object v11

    .line 1444
    const/4 v8, 0x0

    move-object v2, p1

    .end local p1    # "context":Landroid/content/Context;
    .local v2, "context":Landroid/content/Context;
    invoke-direct/range {v1 .. v12}, Lcom/android/server/audio/AudioService;-><init>(Landroid/content/Context;Lcom/android/server/audio/AudioSystemAdapter;Lcom/android/server/audio/SystemServerAdapter;Lcom/android/server/audio/SettingsAdapter;Lcom/android/server/audio/AudioVolumeGroupHelperBase;Lcom/android/server/audio/AudioPolicyFacade;Landroid/os/Looper;Landroid/app/AppOpsManager;Landroid/os/PermissionEnforcer;Lcom/android/server/audio/AudioServerPermissionProvider;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/android/server/audio/AudioService$Lifecycle;->mService:Lcom/android/server/audio/AudioService;

    .line 1447
    return-void
.end method

.method private static synthetic lambda$new$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 1430
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "audioserver_lifecycle"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 1456
    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 1457
    iget-object v0, p0, Lcom/android/server/audio/AudioService$Lifecycle;->mService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->systemReady()V

    .line 1459
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1451
    const-string v0, "audio"

    iget-object v1, p0, Lcom/android/server/audio/AudioService$Lifecycle;->mService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1452
    return-void
.end method
