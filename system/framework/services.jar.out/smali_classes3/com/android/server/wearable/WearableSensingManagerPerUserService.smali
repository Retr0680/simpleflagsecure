.class final Lcom/android/server/wearable/WearableSensingManagerPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "WearableSensingManagerPerUserService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/wearable/WearableSensingManagerPerUserService;",
        "Lcom/android/server/wearable/WearableSensingManagerService;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private final mMaxNumberOfConcurrentConnections:I

.field private final mNextConnectionId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

.field private mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

.field private final mSecureChannelLock:Ljava/lang/Object;

.field private final mSecureChannelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wearable/WearableSensingSecureChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$B3jMR-K2riKQ_EJvprMyZE51n3w(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Landroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->lambda$createWearableHotwordCallback$1(Landroid/content/ComponentName;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Blq_rVHlvU0wp6gY3n797gYVMqo(Lcom/android/server/wearable/WearableSensingManagerPerUserService;ILandroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->lambda$wrapCallbackWithSecureChannelMapCleanUp$0(ILandroid/os/RemoteCallback;Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmSecureChannel(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)Lcom/android/server/wearable/WearableSensingSecureChannel;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSecureChannelLock(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSecureChannelMap(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSecureChannel(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Lcom/android/server/wearable/WearableSensingSecureChannel;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

    return-void
.end method

.method static bridge synthetic -$$Nest$mensureRemoteServiceInitiated(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monValidatedByHotwordDetectionService(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onValidatedByHotwordDetectionService()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopActiveHotwordAudio(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->stopActiveHotwordAudio()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smisReadOnly(Landroid/os/ParcelFileDescriptor;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->isReadOnly(Landroid/os/ParcelFileDescriptor;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 74
    const-class v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "master"    # Lcom/android/server/wearable/WearableSensingManagerService;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "userId"    # I

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelLock:Ljava/lang/Object;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mNextConnectionId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 105
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 106
    nop

    .line 107
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 109
    const v1, 0x10e00ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mMaxNumberOfConcurrentConnections:I

    .line 111
    return-void
.end method

.method private createHotwordDetectionCallback()Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;
    .locals 1

    .line 659
    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;

    invoke-direct {v0, p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;-><init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V

    return-object v0
.end method

.method private createWearableHotwordCallback(Landroid/content/ComponentName;)Landroid/os/RemoteCallback;
    .locals 2
    .param p1, "targetVisComponentName"    # Landroid/content/ComponentName;

    .line 634
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Landroid/content/ComponentName;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    return-object v0
.end method

.method private ensureRemoteServiceInitiated()V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 138
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getUserId()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wearable/RemoteWearableSensingService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 140
    :cond_0
    return-void
.end method

.method private ensureVoiceInteractionManagerInternalInitiated()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    if-nez v0, :cond_0

    .line 145
    const-class v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 146
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isReadOnly(Landroid/os/ParcelFileDescriptor;)Z
    .locals 4
    .param p0, "parcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;

    .line 743
    nop

    .line 744
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->F_GETFL:I

    invoke-static {v1, v2, v0}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    sget v2, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr v1, v2

    .line 745
    .local v1, "readMode":I
    sget v2, Landroid/system/OsConstants;->O_RDONLY:I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 746
    .end local v1    # "readMode":I
    :catch_0
    move-exception v1

    .line 747
    .local v1, "ex":Landroid/system/ErrnoException;
    sget-object v2, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v3, "Error encountered when trying to determine if the parcelFileDescriptor is read-only. Treating it as not read-only"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 753
    .end local v1    # "ex":Landroid/system/ErrnoException;
    return v0
.end method

.method private synthetic lambda$createWearableHotwordCallback$1(Landroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "targetVisComponentName"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 636
    const-class v0, Landroid/service/voice/HotwordAudioStream;

    .line 637
    const-string v1, "android.app.wearable.HotwordAudioStreamBundleKey"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/service/voice/HotwordAudioStream;

    .line 639
    .local v1, "hotwordAudioStream":Landroid/service/voice/HotwordAudioStream;
    if-nez v1, :cond_0

    .line 640
    sget-object v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "No hotword audio stream received, unable to process hotword."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    return-void

    .line 643
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 645
    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 646
    invoke-virtual {v1}, Landroid/service/voice/HotwordAudioStream;->getAudioStreamParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 647
    invoke-virtual {v1}, Landroid/service/voice/HotwordAudioStream;->getAudioFormat()Landroid/media/AudioFormat;

    move-result-object v6

    .line 648
    invoke-virtual {v1}, Landroid/service/voice/HotwordAudioStream;->getMetadata()Landroid/os/PersistableBundle;

    move-result-object v7

    .line 650
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getUserId()I

    move-result v9

    .line 651
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->createHotwordDetectionCallback()Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 645
    move-object v8, p1

    .end local p1    # "targetVisComponentName":Landroid/content/ComponentName;
    .local v8, "targetVisComponentName":Landroid/content/ComponentName;
    :try_start_1
    invoke-virtual/range {v4 .. v10}, Landroid/service/voice/VoiceInteractionManagerInternal;->startListeningFromWearable(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/content/ComponentName;ILandroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 653
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 654
    nop

    .line 655
    return-void

    .line 653
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v8    # "targetVisComponentName":Landroid/content/ComponentName;
    .restart local p1    # "targetVisComponentName":Landroid/content/ComponentName;
    :catchall_1
    move-exception v0

    move-object v8, p1

    move-object p1, v0

    .end local p1    # "targetVisComponentName":Landroid/content/ComponentName;
    .restart local v8    # "targetVisComponentName":Landroid/content/ComponentName;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 654
    throw p1
.end method

.method private synthetic lambda$wrapCallbackWithSecureChannelMapCleanUp$0(ILandroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "connectionId"    # I
    .param p2, "statusCallback"    # Landroid/os/RemoteCallback;
    .param p3, "result"    # Landroid/os/Bundle;

    .line 406
    const-string v0, "android.app.wearable.WearableSensingStatusBundleKey"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 407
    .local v0, "status":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 408
    invoke-virtual {p0, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->removeConnection(I)Z

    .line 410
    :cond_0
    invoke-virtual {p2, p3}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 411
    return-void
.end method

.method public static notifyStatusCallback(Landroid/os/RemoteCallback;I)V
    .locals 2
    .param p0, "statusCallback"    # Landroid/os/RemoteCallback;
    .param p1, "statusCode"    # I

    .line 114
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 115
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.app.wearable.WearableSensingStatusBundleKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 117
    return-void
.end method

.method private onValidatedByHotwordDetectionService()V
    .locals 3

    .line 612
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 613
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 614
    sget-object v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "Wearable sensing service is not available at this moment."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    monitor-exit v0

    return-void

    .line 619
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 617
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 618
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    invoke-virtual {v1}, Lcom/android/server/wearable/RemoteWearableSensingService;->onValidatedByHotwordDetectionService()V

    .line 619
    monitor-exit v0

    .line 620
    return-void

    .line 619
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stopActiveHotwordAudio()V
    .locals 3

    .line 623
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 624
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 625
    sget-object v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "Wearable sensing service is not available at this moment."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    monitor-exit v0

    return-void

    .line 630
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 628
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 629
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    invoke-virtual {v1}, Lcom/android/server/wearable/RemoteWearableSensingService;->stopActiveHotwordAudio()V

    .line 630
    monitor-exit v0

    .line 631
    return-void

    .line 630
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private wrapCallbackWithSecureChannelMapCleanUp(Landroid/os/RemoteCallback;I)Landroid/os/RemoteCallback;
    .locals 2
    .param p1, "statusCallback"    # Landroid/os/RemoteCallback;
    .param p2, "connectionId"    # I

    .line 404
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;ILandroid/os/RemoteCallback;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    return-object v0
.end method

.method private wrapWearableSensingCallback(Landroid/app/wearable/IWearableSensingCallback;)Landroid/app/wearable/IWearableSensingCallback;
    .locals 7
    .param p1, "callbackFromAppProcess"    # Landroid/app/wearable/IWearableSensingCallback;

    .line 683
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 684
    return-object v0

    .line 686
    :cond_0
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    if-nez v1, :cond_1

    .line 687
    sget-object v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "Cannot create WearableSensingCallback because mComponentName is null."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    return-object v0

    .line 690
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 692
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 691
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 693
    sget-object v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "Caller does not belong to the package that provides the WearableSensingService implementation. Do not forward WearableSensingCallback to WearableSensingService."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    return-object v0

    .line 700
    :cond_2
    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;-><init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Landroid/app/wearable/IWearableSensingCallback;)V

    return-object v0
.end method


# virtual methods
.method destroyLocked()V
    .locals 2

    .line 120
    sget-object v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "Trying to cancel the remote request. Reason: Service destroyed."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    invoke-virtual {v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    .line 124
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 125
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 127
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

    invoke-virtual {v1}, Lcom/android/server/wearable/WearableSensingSecureChannel;->close()V

    goto :goto_1

    .line 131
    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v0

    .line 132
    return-void

    .line 131
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method protected dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 208
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/server/infra/AbstractPerUserSystemService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 210
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    const-string v1, ""

    new-instance v2, Landroid/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v2, p2, v3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 214
    :cond_0
    return-void

    .line 210
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getAvailableConnectionCount()I
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    monitor-enter v0

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mMaxNumberOfConcurrentConnections:I

    if-le v1, v2, :cond_0

    .line 220
    sget-object v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "mMaxNumberOfConcurrentConnections exceeded. This should not be possible!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 227
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 226
    :cond_0
    iget v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mMaxNumberOfConcurrentConnections:I

    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    sub-int/2addr v1, v2

    monitor-exit v0

    return v1

    .line 227
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method protected newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 7
    .param p1, "serviceComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 187
    const-string v0, "android.permission.BIND_WEARABLE_SENSING_SERVICE"

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    const-wide/16 v3, 0x0

    invoke-interface {v1, p1, v3, v4, v2}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 188
    .local v1, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_1

    .line 189
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 190
    .local v2, "permission":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Service %s requires %s permission. Found %s permission"

    .line 194
    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    filled-new-array {v5, v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 192
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wearable/WearableSensingManagerPerUserService;
    .end local p1    # "serviceComponent":Landroid/content/ComponentName;
    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v1    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v2    # "permission":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/wearable/WearableSensingManagerPerUserService;
    .restart local p1    # "serviceComponent":Landroid/content/ComponentName;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 202
    .restart local v1    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_1
    :goto_0
    nop

    .line 203
    return-object v1

    .line 199
    .end local v1    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :goto_1
    nop

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get service for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onProvideConcurrentConnection(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)I
    .locals 10
    .param p1, "wearableConnection"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "metadata"    # Landroid/os/PersistableBundle;
    .param p3, "wearableSensingCallback"    # Landroid/app/wearable/IWearableSensingCallback;
    .param p4, "statusCallback"    # Landroid/os/RemoteCallback;

    .line 309
    sget-object v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "onProvideConcurrentConnection in per user service."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 311
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 312
    :try_start_1
    sget-object v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v3, "Detection service is not available at this moment."

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v0, 0x3

    invoke-static {p4, v0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 315
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2

    .line 317
    :catchall_0
    move-exception v0

    move-object v5, p0

    move-object v6, p2

    move-object v7, p3

    goto/16 :goto_3

    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 318
    const/4 v1, 0x0

    .line 319
    .local v1, "isConcurrentConnectionLimitReached":Z
    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    monitor-enter v3

    .line 324
    :try_start_3
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v4, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mMaxNumberOfConcurrentConnections:I

    if-lt v0, v4, :cond_1

    .line 325
    const/4 v1, 0x1

    .line 327
    :cond_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 328
    const/16 v0, 0x9

    if-eqz v1, :cond_2

    .line 329
    sget-object v3, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v4, "Rejecting connection because max concurrent connections limit has been reached."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    nop

    .line 334
    invoke-static {p4, v0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 338
    return v2

    .line 340
    :cond_2
    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mNextConnectionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v9

    .line 341
    .local v9, "connectionId":I
    nop

    .line 342
    invoke-direct {p0, p4, v9}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->wrapCallbackWithSecureChannelMapCleanUp(Landroid/os/RemoteCallback;I)Landroid/os/RemoteCallback;

    move-result-object v8

    .line 345
    .local v8, "wrappedStatusCallback":Landroid/os/RemoteCallback;
    nop

    .line 347
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/companion/CompanionDeviceManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/CompanionDeviceManager;

    new-instance v4, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v5, p0

    move-object v6, p2

    move-object v7, p3

    .end local p2    # "metadata":Landroid/os/PersistableBundle;
    .end local p3    # "wearableSensingCallback":Landroid/app/wearable/IWearableSensingCallback;
    .local v6, "metadata":Landroid/os/PersistableBundle;
    .local v7, "wearableSensingCallback":Landroid/app/wearable/IWearableSensingCallback;
    :try_start_5
    invoke-direct/range {v4 .. v9}, Lcom/android/server/wearable/WearableSensingManagerPerUserService$2;-><init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Landroid/os/PersistableBundle;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;I)V

    .line 346
    invoke-static {v3, p1, v4}, Lcom/android/server/wearable/WearableSensingSecureChannel;->create(Landroid/companion/CompanionDeviceManager;Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;)Lcom/android/server/wearable/WearableSensingSecureChannel;

    move-result-object p2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 378
    .local p2, "secureChannel":Lcom/android/server/wearable/WearableSensingSecureChannel;
    nop

    .line 379
    iget-object p3, v5, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    monitor-enter p3

    .line 380
    :try_start_6
    iget-object v3, v5, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    iget v4, v5, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mMaxNumberOfConcurrentConnections:I

    if-lt v3, v4, :cond_3

    .line 381
    const/4 v1, 0x1

    goto :goto_0

    .line 383
    :cond_3
    iget-object v3, v5, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :goto_0
    monitor-exit p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 386
    if-eqz v1, :cond_4

    .line 387
    sget-object p3, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v3, "Rejecting connection because max concurrent connections limit has been reached."

    invoke-static {p3, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    nop

    .line 392
    invoke-static {p4, v0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 396
    invoke-virtual {p2}, Lcom/android/server/wearable/WearableSensingSecureChannel;->close()V

    .line 397
    return v2

    .line 399
    :cond_4
    return v9

    .line 385
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 374
    .end local p2    # "secureChannel":Lcom/android/server/wearable/WearableSensingSecureChannel;
    :catch_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    .end local v6    # "metadata":Landroid/os/PersistableBundle;
    .end local v7    # "wearableSensingCallback":Landroid/app/wearable/IWearableSensingCallback;
    .local p2, "metadata":Landroid/os/PersistableBundle;
    .restart local p3    # "wearableSensingCallback":Landroid/app/wearable/IWearableSensingCallback;
    :catch_1
    move-exception v0

    move-object v5, p0

    move-object v6, p2

    move-object v7, p3

    move-object p2, v0

    .line 375
    .end local p3    # "wearableSensingCallback":Landroid/app/wearable/IWearableSensingCallback;
    .restart local v6    # "metadata":Landroid/os/PersistableBundle;
    .restart local v7    # "wearableSensingCallback":Landroid/app/wearable/IWearableSensingCallback;
    .local p2, "ex":Ljava/io/IOException;
    :goto_1
    sget-object p3, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v0, "Unable to create the secure channel."

    invoke-static {p3, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    const/4 p3, 0x7

    invoke-static {p4, p3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 377
    return v2

    .line 327
    .end local v6    # "metadata":Landroid/os/PersistableBundle;
    .end local v7    # "wearableSensingCallback":Landroid/app/wearable/IWearableSensingCallback;
    .end local v8    # "wrappedStatusCallback":Landroid/os/RemoteCallback;
    .end local v9    # "connectionId":I
    .local p2, "metadata":Landroid/os/PersistableBundle;
    .restart local p3    # "wearableSensingCallback":Landroid/app/wearable/IWearableSensingCallback;
    :catchall_2
    move-exception v0

    move-object v5, p0

    move-object v6, p2

    move-object v7, p3

    move-object p2, v0

    .end local p2    # "metadata":Landroid/os/PersistableBundle;
    .end local p3    # "wearableSensingCallback":Landroid/app/wearable/IWearableSensingCallback;
    .restart local v6    # "metadata":Landroid/os/PersistableBundle;
    .restart local v7    # "wearableSensingCallback":Landroid/app/wearable/IWearableSensingCallback;
    :goto_2
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p2

    :catchall_3
    move-exception v0

    move-object p2, v0

    goto :goto_2

    .line 317
    .end local v1    # "isConcurrentConnectionLimitReached":Z
    .end local v6    # "metadata":Landroid/os/PersistableBundle;
    .end local v7    # "wearableSensingCallback":Landroid/app/wearable/IWearableSensingCallback;
    .restart local p2    # "metadata":Landroid/os/PersistableBundle;
    .restart local p3    # "wearableSensingCallback":Landroid/app/wearable/IWearableSensingCallback;
    :catchall_4
    move-exception v0

    move-object v5, p0

    move-object v6, p2

    move-object v7, p3

    .end local p2    # "metadata":Landroid/os/PersistableBundle;
    .end local p3    # "wearableSensingCallback":Landroid/app/wearable/IWearableSensingCallback;
    .restart local v6    # "metadata":Landroid/os/PersistableBundle;
    .restart local v7    # "wearableSensingCallback":Landroid/app/wearable/IWearableSensingCallback;
    :goto_3
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_3
.end method

.method public onProvideConnection(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    .locals 5
    .param p1, "wearableConnection"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "wearableSensingCallback"    # Landroid/app/wearable/IWearableSensingCallback;
    .param p3, "statusCallback"    # Landroid/os/RemoteCallback;

    .line 238
    sget-object v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "onProvideConnection in per user service."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    sget-object v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "Detection service is not available at this moment."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v1, 0x3

    invoke-static {p3, v1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 245
    monitor-exit v0

    return-void

    .line 248
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 247
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->wrapWearableSensingCallback(Landroid/app/wearable/IWearableSensingCallback;)Landroid/app/wearable/IWearableSensingCallback;

    move-result-object v1

    .line 248
    .local v1, "wrappedWearableSensingCallback":Landroid/app/wearable/IWearableSensingCallback;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelLock:Ljava/lang/Object;

    monitor-enter v2

    .line 250
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

    invoke-virtual {v0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 297
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 254
    :cond_1
    :goto_0
    :try_start_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 256
    .local v0, "currentSecureChannelRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/android/server/wearable/WearableSensingSecureChannel;>;"
    nop

    .line 258
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/companion/CompanionDeviceManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/CompanionDeviceManager;

    new-instance v4, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;

    invoke-direct {v4, p0, v1, p3, v0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService$1;-><init>(Lcom/android/server/wearable/WearableSensingManagerPerUserService;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 257
    invoke-static {v3, p1, v4}, Lcom/android/server/wearable/WearableSensingSecureChannel;->create(Landroid/companion/CompanionDeviceManager;Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingSecureChannel$SecureTransportListener;)Lcom/android/server/wearable/WearableSensingSecureChannel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

    .line 292
    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 296
    .end local v0    # "currentSecureChannelRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/android/server/wearable/WearableSensingSecureChannel;>;"
    goto :goto_1

    .line 293
    :catch_0
    move-exception v0

    nop

    .line 294
    .local v0, "ex":Ljava/io/IOException;
    :try_start_3
    sget-object v3, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v4, "Unable to create the secure channel."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    const/4 v3, 0x7

    invoke-static {p3, v3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 297
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_1
    monitor-exit v2

    .line 298
    return-void

    .line 297
    :goto_2
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 248
    .end local v1    # "wrappedWearableSensingCallback":Landroid/app/wearable/IWearableSensingCallback;
    :goto_3
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public onProvideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "parcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "wearableSensingCallback"    # Landroid/app/wearable/IWearableSensingCallback;
    .param p3, "statusCallback"    # Landroid/os/RemoteCallback;

    .line 477
    sget-object v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProvideDataStream in per user service. Is data stream read-only? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-static {p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->isReadOnly(Landroid/os/ParcelFileDescriptor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 477
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 482
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 483
    sget-object v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "Detection service is not available at this moment."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/4 v1, 0x3

    invoke-static {p3, v1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 486
    monitor-exit v0

    return-void

    .line 494
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 488
    :cond_0
    sget-object v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "calling over to remote servvice."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 490
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 492
    invoke-direct {p0, p2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->wrapWearableSensingCallback(Landroid/app/wearable/IWearableSensingCallback;)Landroid/app/wearable/IWearableSensingCallback;

    move-result-object v2

    .line 490
    invoke-virtual {v1, p1, v2, p3}, Lcom/android/server/wearable/RemoteWearableSensingService;->provideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    .line 494
    monitor-exit v0

    .line 495
    return-void

    .line 494
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onProvideReadOnlyParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "parcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "metadata"    # Landroid/os/PersistableBundle;
    .param p3, "statusCallback"    # Landroid/os/RemoteCallback;

    .line 453
    invoke-static {p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->isReadOnly(Landroid/os/ParcelFileDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 457
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 458
    sget-object v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "Detection service is not available at this moment."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v1, 0x3

    invoke-static {p3, v1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 461
    monitor-exit v0

    return-void

    .line 467
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 463
    :cond_0
    sget-object v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "calling over to remote servvice."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 465
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wearable/RemoteWearableSensingService;->provideReadOnlyParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/os/RemoteCallback;)V

    .line 467
    monitor-exit v0

    .line 468
    return-void

    .line 467
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 454
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided ParcelFileDescriptor is not read-only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onProvidedData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "data"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p3, "callback"    # Landroid/os/RemoteCallback;

    .line 500
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 501
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 502
    sget-object v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "Detection service is not available at this moment."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v1, 0x3

    invoke-static {p3, v1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 504
    monitor-exit v0

    return-void

    .line 511
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 506
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 507
    if-eqz p2, :cond_1

    .line 508
    sget v1, Landroid/system/OsConstants;->PROT_READ:I

    invoke-virtual {p2, v1}, Landroid/os/SharedMemory;->setProtect(I)Z

    .line 510
    :cond_1
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wearable/RemoteWearableSensingService;->provideData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V

    .line 511
    monitor-exit v0

    .line 512
    return-void

    .line 511
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onRegisterDataRequestObserver(ILandroid/os/RemoteCallback;ILjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 8
    .param p1, "dataType"    # I
    .param p2, "dataRequestObserver"    # Landroid/os/RemoteCallback;
    .param p3, "dataRequestObserverId"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "statusCallback"    # Landroid/os/RemoteCallback;

    .line 531
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 532
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    .line 533
    :try_start_1
    sget-object v0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "Detection service is not available at this moment."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/4 v0, 0x3

    invoke-static {p5, v0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 536
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 545
    :catchall_0
    move-exception v0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    goto :goto_0

    .line 538
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 539
    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .end local p1    # "dataType":I
    .end local p2    # "dataRequestObserver":Landroid/os/RemoteCallback;
    .end local p3    # "dataRequestObserverId":I
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "statusCallback":Landroid/os/RemoteCallback;
    .local v3, "dataType":I
    .local v4, "dataRequestObserver":Landroid/os/RemoteCallback;
    .local v5, "dataRequestObserverId":I
    .local v6, "packageName":Ljava/lang/String;
    .local v7, "statusCallback":Landroid/os/RemoteCallback;
    :try_start_3
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wearable/RemoteWearableSensingService;->registerDataRequestObserver(ILandroid/os/RemoteCallback;ILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 545
    monitor-exit v1

    .line 546
    return-void

    .line 545
    :catchall_1
    move-exception v0

    goto :goto_0

    .end local v3    # "dataType":I
    .end local v4    # "dataRequestObserver":Landroid/os/RemoteCallback;
    .end local v5    # "dataRequestObserverId":I
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "statusCallback":Landroid/os/RemoteCallback;
    .restart local p1    # "dataType":I
    .restart local p2    # "dataRequestObserver":Landroid/os/RemoteCallback;
    .restart local p3    # "dataRequestObserverId":I
    .restart local p4    # "packageName":Ljava/lang/String;
    .restart local p5    # "statusCallback":Landroid/os/RemoteCallback;
    :catchall_2
    move-exception v0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .end local p1    # "dataType":I
    .end local p2    # "dataRequestObserver":Landroid/os/RemoteCallback;
    .end local p3    # "dataRequestObserverId":I
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "statusCallback":Landroid/os/RemoteCallback;
    .restart local v3    # "dataType":I
    .restart local v4    # "dataRequestObserver":Landroid/os/RemoteCallback;
    .restart local v5    # "dataRequestObserverId":I
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "statusCallback":Landroid/os/RemoteCallback;
    :goto_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public onStartHotwordRecognition(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .locals 4
    .param p1, "targetVisComponentName"    # Landroid/content/ComponentName;
    .param p2, "statusCallback"    # Landroid/os/RemoteCallback;

    .line 578
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 579
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_0

    .line 580
    sget-object v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v3, "Detection service is not available at this moment."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-static {p2, v2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 583
    monitor-exit v0

    return-void

    .line 594
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 585
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureVoiceInteractionManagerInternalInitiated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 586
    sget-object v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v3, "Voice interaction manager is not available at this moment."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-static {p2, v2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 589
    monitor-exit v0

    return-void

    .line 591
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 592
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 593
    invoke-direct {p0, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->createWearableHotwordCallback(Landroid/content/ComponentName;)Landroid/os/RemoteCallback;

    move-result-object v2

    .line 592
    invoke-virtual {v1, v2, p2}, Lcom/android/server/wearable/RemoteWearableSensingService;->startHotwordRecognition(Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 594
    monitor-exit v0

    .line 595
    return-void

    .line 594
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStopHotwordRecognition(Landroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "statusCallback"    # Landroid/os/RemoteCallback;

    .line 599
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 600
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 601
    sget-object v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "Detection service is not available at this moment."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v1, 0x3

    invoke-static {p1, v1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 604
    monitor-exit v0

    return-void

    .line 608
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 606
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 607
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    invoke-virtual {v1, p1}, Lcom/android/server/wearable/RemoteWearableSensingService;->stopHotwordRecognition(Landroid/os/RemoteCallback;)V

    .line 608
    monitor-exit v0

    .line 609
    return-void

    .line 608
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUnregisterDataRequestObserver(IILjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "dataType"    # I
    .param p2, "dataRequestObserverId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "statusCallback"    # Landroid/os/RemoteCallback;

    .line 562
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 563
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 564
    sget-object v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "Detection service is not available at this moment."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/4 v1, 0x3

    invoke-static {p4, v1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 567
    monitor-exit v0

    return-void

    .line 572
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 569
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated()V

    .line 570
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wearable/RemoteWearableSensingService;->unregisterDataRequestObserver(IILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 572
    monitor-exit v0

    .line 573
    return-void

    .line 572
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAllConnections()V
    .locals 3

    .line 436
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    monitor-enter v0

    .line 437
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 438
    .local v1, "allChannels":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wearable/WearableSensingSecureChannel;>;"
    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 439
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wearable/WearableSensingSecureChannel;

    .line 441
    .local v2, "channel":Lcom/android/server/wearable/WearableSensingSecureChannel;
    invoke-virtual {v2}, Lcom/android/server/wearable/WearableSensingSecureChannel;->close()V

    .line 442
    .end local v2    # "channel":Lcom/android/server/wearable/WearableSensingSecureChannel;
    goto :goto_0

    .line 443
    :cond_0
    return-void

    .line 439
    .end local v1    # "allChannels":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wearable/WearableSensingSecureChannel;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeConnection(I)Z
    .locals 3
    .param p1, "connectionId"    # I

    .line 423
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    monitor-enter v0

    .line 424
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wearable/WearableSensingSecureChannel;

    .line 425
    .local v1, "removedChannel":Lcom/android/server/wearable/WearableSensingSecureChannel;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    if-eqz v1, :cond_0

    .line 427
    invoke-virtual {v1}, Lcom/android/server/wearable/WearableSensingSecureChannel;->close()V

    .line 428
    const/4 v0, 0x1

    return v0

    .line 430
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 425
    .end local v1    # "removedChannel":Lcom/android/server/wearable/WearableSensingSecureChannel;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method setUpServiceIfNeeded()Z
    .locals 6

    .line 164
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateServiceInfoLocked()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 168
    return v1

    .line 173
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5, v3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    nop

    .line 178
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 174
    .end local v0    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException while setting up service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return v1
.end method
