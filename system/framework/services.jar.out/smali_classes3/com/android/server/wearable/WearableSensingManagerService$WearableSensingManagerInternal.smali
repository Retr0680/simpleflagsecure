.class final Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;
.super Landroid/app/wearable/IWearableSensingManager$Stub;
.source "WearableSensingManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wearable/WearableSensingManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WearableSensingManagerInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wearable/WearableSensingManagerService;


# direct methods
.method public static synthetic $r8$lambda$0H_E_qDjsxPZmOYFc9dvk030MYo(Landroid/content/ComponentName;Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->lambda$startHotwordRecognition$5(Landroid/content/ComponentName;Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EF-uIxqtuFTJSRw2XlHTCL6VxJk(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->lambda$provideDataStream$1(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FQPsiOmODaJwpoXqJrGspTXXVu0(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->lambda$provideData$2(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GD3SVVAzUzk7NYaRmvAnKLDJBjw(IILjava/lang/String;Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->lambda$unregisterDataRequestObserver$4(IILjava/lang/String;Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$StwI29O9xcoE36JIbnvRNo1wfXU(Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->lambda$stopHotwordRecognition$6(Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eb20XFBZxiozdMfF0WntWX1dEzo(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->lambda$provideConnection$0(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pJOeoRaVcsR_Urr4ycisbCEvlT4(ILandroid/os/RemoteCallback;ILandroid/app/PendingIntent;Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->lambda$registerDataRequestObserver$3(ILandroid/os/RemoteCallback;ILandroid/app/PendingIntent;Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/wearable/WearableSensingManagerService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 411
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-direct {p0}, Landroid/app/wearable/IWearableSensingManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wearable/WearableSensingManagerService;Lcom/android/server/wearable/WearableSensingManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;-><init>(Lcom/android/server/wearable/WearableSensingManagerService;)V

    return-void
.end method

.method private static synthetic lambda$provideConnection$0(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .locals 0
    .param p0, "wearableConnection"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "wearableSensingCallback"    # Landroid/app/wearable/IWearableSensingCallback;
    .param p2, "statusCallback"    # Landroid/os/RemoteCallback;
    .param p3, "service"    # Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 441
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onProvideConnection(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method private static synthetic lambda$provideData$2(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .locals 0
    .param p0, "data"    # Landroid/os/PersistableBundle;
    .param p1, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p2, "callback"    # Landroid/os/RemoteCallback;
    .param p3, "service"    # Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 541
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onProvidedData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method private static synthetic lambda$provideDataStream$1(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .locals 0
    .param p0, "parcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "wearableSensingCallback"    # Landroid/app/wearable/IWearableSensingCallback;
    .param p2, "statusCallback"    # Landroid/os/RemoteCallback;
    .param p3, "service"    # Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 521
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onProvideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method private static synthetic lambda$registerDataRequestObserver$3(ILandroid/os/RemoteCallback;ILandroid/app/PendingIntent;Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .locals 6
    .param p0, "dataType"    # I
    .param p1, "dataRequestCallback"    # Landroid/os/RemoteCallback;
    .param p2, "dataRequestObserverId"    # I
    .param p3, "dataRequestPendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "statusCallback"    # Landroid/os/RemoteCallback;
    .param p5, "service"    # Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 584
    nop

    .line 588
    invoke-virtual {p3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v4

    .line 584
    move v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p4

    move-object v0, p5

    .end local p0    # "dataType":I
    .end local p1    # "dataRequestCallback":Landroid/os/RemoteCallback;
    .end local p2    # "dataRequestObserverId":I
    .end local p4    # "statusCallback":Landroid/os/RemoteCallback;
    .end local p5    # "service":Lcom/android/server/wearable/WearableSensingManagerPerUserService;
    .local v0, "service":Lcom/android/server/wearable/WearableSensingManagerPerUserService;
    .local v1, "dataType":I
    .local v2, "dataRequestCallback":Landroid/os/RemoteCallback;
    .local v3, "dataRequestObserverId":I
    .local v5, "statusCallback":Landroid/os/RemoteCallback;
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onRegisterDataRequestObserver(ILandroid/os/RemoteCallback;ILjava/lang/String;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method private static synthetic lambda$startHotwordRecognition$5(Landroid/content/ComponentName;Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .locals 0
    .param p0, "targetVisComponentName"    # Landroid/content/ComponentName;
    .param p1, "statusCallback"    # Landroid/os/RemoteCallback;
    .param p2, "service"    # Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 649
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onStartHotwordRecognition(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method private static synthetic lambda$stopHotwordRecognition$6(Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .locals 0
    .param p0, "statusCallback"    # Landroid/os/RemoteCallback;
    .param p1, "service"    # Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 667
    invoke-virtual {p1, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onStopHotwordRecognition(Landroid/os/RemoteCallback;)V

    return-void
.end method

.method private static synthetic lambda$unregisterDataRequestObserver$4(IILjava/lang/String;Landroid/os/RemoteCallback;Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .locals 0
    .param p0, "dataType"    # I
    .param p1, "previousDataRequestObserverId"    # I
    .param p2, "pendingIntentCreatorPackage"    # Ljava/lang/String;
    .param p3, "statusCallback"    # Landroid/os/RemoteCallback;
    .param p4, "service"    # Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 626
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onUnregisterDataRequestObserver(IILjava/lang/String;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method private validateAndGetPerUserService(Landroid/os/RemoteCallback;)Lcom/android/server/wearable/WearableSensingManagerPerUserService;
    .locals 7
    .param p1, "statusCallback"    # Landroid/os/RemoteCallback;

    .line 685
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wearable/WearableSensingManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-nez v0, :cond_1

    .line 688
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Service not available."

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    if-eqz p1, :cond_0

    .line 690
    invoke-static {p1, v2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 693
    :cond_0
    return-object v1

    .line 695
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 697
    .local v0, "userId":I
    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v3}, Lcom/android/server/wearable/WearableSensingManagerService;->access$000(Lcom/android/server/wearable/WearableSensingManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 698
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v4, v0}, Lcom/android/server/wearable/WearableSensingManagerService;->access$100(Lcom/android/server/wearable/WearableSensingManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 699
    .local v4, "service":Lcom/android/server/wearable/WearableSensingManagerPerUserService;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    if-nez v4, :cond_3

    .line 701
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service not available for userId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    if-eqz p1, :cond_2

    .line 703
    invoke-static {p1, v2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 706
    :cond_2
    return-object v1

    .line 708
    :cond_3
    return-object v4

    .line 699
    .end local v4    # "service":Lcom/android/server/wearable/WearableSensingManagerPerUserService;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getAvailableConnectionCount()I
    .locals 2

    .line 415
    nop

    .line 416
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->validateAndGetPerUserService(Landroid/os/RemoteCallback;)Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    move-result-object v0

    .line 417
    .local v0, "service":Lcom/android/server/wearable/WearableSensingManagerPerUserService;
    if-nez v0, :cond_0

    .line 418
    const/4 v1, 0x0

    return v1

    .line 420
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->getAvailableConnectionCount()I

    move-result v1

    return v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 678
    new-instance v0, Lcom/android/server/wearable/WearableSensingShellCommand;

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wearable/WearableSensingShellCommand;-><init>(Lcom/android/server/wearable/WearableSensingManagerService;)V

    .line 679
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .end local p1    # "in":Ljava/io/FileDescriptor;
    .end local p2    # "out":Ljava/io/FileDescriptor;
    .end local p3    # "err":Ljava/io/FileDescriptor;
    .end local p4    # "args":[Ljava/lang/String;
    .end local p5    # "callback":Landroid/os/ShellCallback;
    .end local p6    # "resultReceiver":Landroid/os/ResultReceiver;
    .local v2, "in":Ljava/io/FileDescriptor;
    .local v3, "out":Ljava/io/FileDescriptor;
    .local v4, "err":Ljava/io/FileDescriptor;
    .local v5, "args":[Ljava/lang/String;
    .local v6, "callback":Landroid/os/ShellCallback;
    .local v7, "resultReceiver":Landroid/os/ResultReceiver;
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 680
    return-void
.end method

.method public provideConcurrentConnection(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)I
    .locals 2
    .param p1, "wearableConnection"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "metadata"    # Landroid/os/PersistableBundle;
    .param p3, "wearableSensingCallback"    # Landroid/app/wearable/IWearableSensingCallback;
    .param p4, "statusCallback"    # Landroid/os/RemoteCallback;

    .line 452
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableSensingManagerInternal provideConcurrentConnection."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 455
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    nop

    .line 458
    invoke-direct {p0, p4}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->validateAndGetPerUserService(Landroid/os/RemoteCallback;)Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    move-result-object v0

    .line 459
    .local v0, "service":Lcom/android/server/wearable/WearableSensingManagerPerUserService;
    if-nez v0, :cond_0

    .line 460
    const/4 v1, -0x1

    return v1

    .line 462
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onProvideConcurrentConnection(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)I

    move-result v1

    return v1
.end method

.method public provideConnection(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "wearableConnection"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "wearableSensingCallback"    # Landroid/app/wearable/IWearableSensingCallback;
    .param p3, "statusCallback"    # Landroid/os/RemoteCallback;

    .line 428
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableSensingManagerInternal provideConnection."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 430
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 431
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wearable/WearableSensingManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_0

    .line 434
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service not available."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v0, 0x3

    invoke-static {p3, v0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 437
    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    new-instance v1, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda1;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    invoke-static {v0, v1, p3}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    .line 444
    return-void
.end method

.method public provideData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "data"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p3, "callback"    # Landroid/os/RemoteCallback;

    .line 529
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableSensingManagerInternal provideData."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 531
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 532
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wearable/WearableSensingManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_0

    .line 535
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service not available."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/4 v0, 0x3

    invoke-static {p3, v0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 538
    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    new-instance v1, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda5;-><init>(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V

    invoke-static {v0, v1, p3}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    .line 542
    return-void
.end method

.method public provideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "parcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "wearableSensingCallback"    # Landroid/app/wearable/IWearableSensingCallback;
    .param p3, "statusCallback"    # Landroid/os/RemoteCallback;

    .line 508
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableSensingManagerInternal provideDataStream."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 510
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 511
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wearable/WearableSensingManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_0

    .line 514
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service not available."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/4 v0, 0x3

    invoke-static {p3, v0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 517
    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    new-instance v1, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda2;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    invoke-static {v0, v1, p3}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    .line 524
    return-void
.end method

.method public provideReadOnlyParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/os/RemoteCallback;)V
    .locals 2
    .param p1, "parcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "metadata"    # Landroid/os/PersistableBundle;
    .param p3, "statusCallback"    # Landroid/os/RemoteCallback;

    .line 493
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableSensingManagerInternal provideReadOnlyParcelFileDescriptor."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    nop

    .line 495
    invoke-direct {p0, p3}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->validateAndGetPerUserService(Landroid/os/RemoteCallback;)Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    move-result-object v0

    .line 496
    .local v0, "service":Lcom/android/server/wearable/WearableSensingManagerPerUserService;
    if-nez v0, :cond_0

    .line 497
    return-void

    .line 499
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onProvideReadOnlyParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/os/RemoteCallback;)V

    .line 501
    return-void
.end method

.method public registerDataRequestObserver(ILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    .locals 10
    .param p1, "dataType"    # I
    .param p2, "dataRequestPendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "statusCallback"    # Landroid/os/RemoteCallback;

    .line 549
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableSensingManagerInternal registerDataRequestObserver."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 551
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wearable/WearableSensingManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_0

    .line 554
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service not available."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v0, 0x3

    invoke-static {p3, v0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 557
    return-void

    .line 559
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 562
    .local v3, "userId":I
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmDataRequestObserverContexts(Lcom/android/server/wearable/WearableSensingManagerService;)Ljava/util/Set;

    move-result-object v7

    monitor-enter v7

    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 564
    invoke-static {v0, p1, v3, p2}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mgetDataRequestObserverContext(Lcom/android/server/wearable/WearableSensingManagerService;IILandroid/app/PendingIntent;)Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 565
    .local v0, "previousObserverContext":Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;
    if-eqz v0, :cond_1

    .line 566
    :try_start_1
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Received duplicate data request observer."

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v1, v0, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestRemoteCallback:Landroid/os/RemoteCallback;

    .line 568
    .local v1, "dataRequestCallback":Landroid/os/RemoteCallback;
    iget v4, v0, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestObserverId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v9, v3

    move-object v3, v1

    .local v4, "dataRequestObserverId":I
    goto :goto_0

    .line 581
    .end local v0    # "previousObserverContext":Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;
    .end local v1    # "dataRequestCallback":Landroid/os/RemoteCallback;
    .end local v4    # "dataRequestObserverId":I
    :catchall_0
    move-exception v0

    move v9, v3

    goto :goto_1

    .line 570
    .restart local v0    # "previousObserverContext":Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 571
    invoke-static {v1, p2, v3}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcreateDataRequestRemoteCallback(Lcom/android/server/wearable/WearableSensingManagerService;Landroid/app/PendingIntent;I)Landroid/os/RemoteCallback;

    move-result-object v6

    .line 572
    .local v6, "dataRequestCallback":Landroid/os/RemoteCallback;
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v1}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmNextDataRequestObserverId(Lcom/android/server/wearable/WearableSensingManagerService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    .line 573
    .restart local v4    # "dataRequestObserverId":I
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v1}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmDataRequestObserverContexts(Lcom/android/server/wearable/WearableSensingManagerService;)Ljava/util/Set;

    move-result-object v8

    new-instance v1, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;-><init>(IIILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v9, v3

    .end local v3    # "userId":I
    .local v9, "userId":I
    :try_start_3
    invoke-interface {v8, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v3, v6

    .line 581
    .end local v0    # "previousObserverContext":Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;
    .end local v6    # "dataRequestCallback":Landroid/os/RemoteCallback;
    .local v3, "dataRequestCallback":Landroid/os/RemoteCallback;
    :goto_0
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 582
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    new-instance v1, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda6;

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda6;-><init>(ILandroid/os/RemoteCallback;ILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V

    invoke-static {v0, v1, p3}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    .line 591
    return-void

    .line 581
    .end local v3    # "dataRequestCallback":Landroid/os/RemoteCallback;
    .end local v4    # "dataRequestObserverId":I
    :catchall_1
    move-exception v0

    goto :goto_1

    .end local v9    # "userId":I
    .local v3, "userId":I
    :catchall_2
    move-exception v0

    move v9, v3

    .end local v3    # "userId":I
    .restart local v9    # "userId":I
    :goto_1
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public removeAllConnections()V
    .locals 2

    .line 479
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableSensingManagerInternal removeAllConnections."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    nop

    .line 481
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->validateAndGetPerUserService(Landroid/os/RemoteCallback;)Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    move-result-object v0

    .line 482
    .local v0, "service":Lcom/android/server/wearable/WearableSensingManagerPerUserService;
    if-nez v0, :cond_0

    .line 483
    return-void

    .line 485
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->removeAllConnections()V

    .line 486
    return-void
.end method

.method public removeConnection(I)Z
    .locals 2
    .param p1, "connectionId"    # I

    .line 468
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableSensingManagerInternal removeConnection."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    nop

    .line 470
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->validateAndGetPerUserService(Landroid/os/RemoteCallback;)Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    move-result-object v0

    .line 471
    .local v0, "service":Lcom/android/server/wearable/WearableSensingManagerPerUserService;
    if-nez v0, :cond_0

    .line 472
    const/4 v1, 0x0

    return v1

    .line 474
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->removeConnection(I)Z

    move-result v1

    return v1
.end method

.method public startHotwordRecognition(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "targetVisComponentName"    # Landroid/content/ComponentName;
    .param p2, "statusCallback"    # Landroid/os/RemoteCallback;

    .line 637
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableSensingManagerInternal startHotwordRecognition."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 639
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wearable/WearableSensingManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_0

    .line 642
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service not available."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/4 v0, 0x3

    invoke-static {p2, v0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 645
    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    new-instance v1, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda3;-><init>(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    invoke-static {v0, v1, p2}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    .line 652
    return-void
.end method

.method public stopHotwordRecognition(Landroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "statusCallback"    # Landroid/os/RemoteCallback;

    .line 656
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableSensingManagerInternal stopHotwordRecognition."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 658
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wearable/WearableSensingManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_0

    .line 661
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service not available."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 664
    return-void

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    new-instance v1, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda4;-><init>(Landroid/os/RemoteCallback;)V

    invoke-static {v0, v1, p1}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    .line 668
    return-void
.end method

.method public unregisterDataRequestObserver(ILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    .locals 5
    .param p1, "dataType"    # I
    .param p2, "dataRequestPendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "statusCallback"    # Landroid/os/RemoteCallback;

    .line 598
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WearableSensingManagerInternal unregisterDataRequestObserver."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 600
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 601
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v0}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wearable/WearableSensingManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_WEARABLE_SENSING_SERVICE"

    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    iget-boolean v0, v0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    if-nez v0, :cond_0

    .line 604
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service not available."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/4 v0, 0x3

    invoke-static {p3, v0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 607
    return-void

    .line 609
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 612
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v1}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmDataRequestObserverContexts(Lcom/android/server/wearable/WearableSensingManagerService;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 613
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    .line 614
    invoke-static {v2, p1, v0, p2}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mgetDataRequestObserverContext(Lcom/android/server/wearable/WearableSensingManagerService;IILandroid/app/PendingIntent;)Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;

    move-result-object v2

    .line 615
    .local v2, "previousObserverContext":Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;
    if-nez v2, :cond_1

    .line 616
    invoke-static {}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Previous observer not found, cannot unregister."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    monitor-exit v1

    return-void

    .line 623
    .end local v2    # "previousObserverContext":Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 619
    .restart local v2    # "previousObserverContext":Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-static {v3}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$fgetmDataRequestObserverContexts(Lcom/android/server/wearable/WearableSensingManagerService;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 620
    iget v3, v2, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestObserverId:I

    .line 621
    .local v3, "previousDataRequestObserverId":I
    iget-object v4, v2, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestPendingIntent:Landroid/app/PendingIntent;

    .line 622
    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v4

    .line 623
    .end local v2    # "previousObserverContext":Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;
    .local v4, "pendingIntentCreatorPackage":Ljava/lang/String;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;->this$0:Lcom/android/server/wearable/WearableSensingManagerService;

    new-instance v2, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v3, v4, p3}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal$$ExternalSyntheticLambda0;-><init>(IILjava/lang/String;Landroid/os/RemoteCallback;)V

    invoke-static {v1, v2, p3}, Lcom/android/server/wearable/WearableSensingManagerService;->-$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V

    .line 632
    return-void

    .line 623
    .end local v3    # "previousDataRequestObserverId":I
    .end local v4    # "pendingIntentCreatorPackage":Ljava/lang/String;
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
