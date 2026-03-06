.class final Lcom/android/server/wearable/RemoteWearableSensingService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "RemoteWearableSensingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/service/wearable/IWearableSensingService;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNextSecureConnectionContext:Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;

.field private final mSecureConnectionLock:Ljava/lang/Object;

.field private mSecureConnectionProvided:Z


# direct methods
.method public static synthetic $r8$lambda$1-5N0F0gjbEyxZ71J0m6Ti3Yz90(Landroid/os/RemoteCallback;Landroid/service/wearable/IWearableSensingService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wearable/RemoteWearableSensingService;->lambda$stopHotwordRecognition$9(Landroid/os/RemoteCallback;Landroid/service/wearable/IWearableSensingService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8I0GSJ00qILGEu1XsdNxj3TYsao(IILjava/lang/String;Landroid/os/RemoteCallback;Landroid/service/wearable/IWearableSensingService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wearable/RemoteWearableSensingService;->lambda$unregisterDataRequestObserver$7(IILjava/lang/String;Landroid/os/RemoteCallback;Landroid/service/wearable/IWearableSensingService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8c3n810BH_gtljb6ELo12NLhJ7w(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;Landroid/service/wearable/IWearableSensingService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wearable/RemoteWearableSensingService;->lambda$provideData$5(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;Landroid/service/wearable/IWearableSensingService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FOJMvCXjNFzAxksOivDb6nut1Qg(ILandroid/os/RemoteCallback;ILjava/lang/String;Landroid/os/RemoteCallback;Landroid/service/wearable/IWearableSensingService;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/wearable/RemoteWearableSensingService;->lambda$registerDataRequestObserver$6(ILandroid/os/RemoteCallback;ILjava/lang/String;Landroid/os/RemoteCallback;Landroid/service/wearable/IWearableSensingService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JGI7a4LvA6VDYnAsT1asKB5LTkw(Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;Landroid/service/wearable/IWearableSensingService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/wearable/RemoteWearableSensingService;->lambda$startHotwordRecognition$8(Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;Landroid/service/wearable/IWearableSensingService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MiuQfNw-o53mOy1qCkCT5ZjfD08(Landroid/service/wearable/IWearableSensingService;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wearable/RemoteWearableSensingService;->lambda$stopActiveHotwordAudio$11(Landroid/service/wearable/IWearableSensingService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RXZ3KXCBmWnqPr0JoOteGvyMrpU(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;Landroid/service/wearable/IWearableSensingService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wearable/RemoteWearableSensingService;->lambda$provideSecureConnectionInternal$1(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;Landroid/service/wearable/IWearableSensingService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TyR0tJRPhWbTNWryMYZs5ea5DcE(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;Landroid/service/wearable/IWearableSensingService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wearable/RemoteWearableSensingService;->lambda$provideConcurrentSecureConnection$0(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;Landroid/service/wearable/IWearableSensingService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iWw9lUnp_MLghsRZDTVKqT87wls(Landroid/service/wearable/IWearableSensingService;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wearable/RemoteWearableSensingService;->lambda$onValidatedByHotwordDetectionService$10(Landroid/service/wearable/IWearableSensingService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pomFs-RkrjlLI6miJ4MdXm_qa2A(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/os/RemoteCallback;Landroid/service/wearable/IWearableSensingService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wearable/RemoteWearableSensingService;->lambda$provideReadOnlyParcelFileDescriptor$3(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/os/RemoteCallback;Landroid/service/wearable/IWearableSensingService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t98-uh6zOVD85TjB6aI1ADNlRU8(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;Landroid/service/wearable/IWearableSensingService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wearable/RemoteWearableSensingService;->lambda$provideDataStream$4(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;Landroid/service/wearable/IWearableSensingService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z7O_VcqmQMfnLLhOA8QO8FJ2wqI(Landroid/service/wearable/IWearableSensingService;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wearable/RemoteWearableSensingService;->lambda$killWearableSensingServiceProcess$2(Landroid/service/wearable/IWearableSensingService;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wearable/RemoteWearableSensingService;->TAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.wearable.WearableSensingService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    new-instance v7, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda1;-><init>()V

    .line 58
    const v5, 0x4001000

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    .end local p1    # "context":Landroid/content/Context;
    .end local p3    # "userId":I
    .local v3, "context":Landroid/content/Context;
    .local v6, "userId":I
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 46
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, v2, Lcom/android/server/wearable/RemoteWearableSensingService;->mSecureConnectionLock:Ljava/lang/Object;

    .line 54
    const/4 p1, 0x0

    iput-boolean p1, v2, Lcom/android/server/wearable/RemoteWearableSensingService;->mSecureConnectionProvided:Z

    .line 66
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    .line 67
    return-void
.end method

.method private static synthetic lambda$killWearableSensingServiceProcess$2(Landroid/service/wearable/IWearableSensingService;)V
    .locals 0
    .param p0, "service"    # Landroid/service/wearable/IWearableSensingService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 189
    invoke-interface {p0}, Landroid/service/wearable/IWearableSensingService;->killProcess()V

    return-void
.end method

.method private static synthetic lambda$onValidatedByHotwordDetectionService$10(Landroid/service/wearable/IWearableSensingService;)V
    .locals 0
    .param p0, "service"    # Landroid/service/wearable/IWearableSensingService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 354
    invoke-interface {p0}, Landroid/service/wearable/IWearableSensingService;->onValidatedByHotwordDetectionService()V

    return-void
.end method

.method private static synthetic lambda$provideConcurrentSecureConnection$0(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;Landroid/service/wearable/IWearableSensingService;)V
    .locals 3
    .param p0, "secureWearableConnection"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "metadata"    # Landroid/os/PersistableBundle;
    .param p2, "wearableSensingCallback"    # Landroid/app/wearable/IWearableSensingCallback;
    .param p3, "statusCallback"    # Landroid/os/RemoteCallback;
    .param p4, "service"    # Landroid/service/wearable/IWearableSensingService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 133
    invoke-interface {p4, p0, p1, p2, p3}, Landroid/service/wearable/IWearableSensingService;->provideConcurrentSecureConnection(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    .line 141
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "ex":Ljava/io/IOException;
    sget-object v1, Lcom/android/server/wearable/RemoteWearableSensingService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to close the local parcelFileDescriptor."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private static synthetic lambda$provideData$5(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;Landroid/service/wearable/IWearableSensingService;)V
    .locals 0
    .param p0, "data"    # Landroid/os/PersistableBundle;
    .param p1, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p2, "callback"    # Landroid/os/RemoteCallback;
    .param p3, "service"    # Landroid/service/wearable/IWearableSensingService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 255
    invoke-interface {p3, p0, p1, p2}, Landroid/service/wearable/IWearableSensingService;->provideData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method private static synthetic lambda$provideDataStream$4(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;Landroid/service/wearable/IWearableSensingService;)V
    .locals 3
    .param p0, "parcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "wearableSensingCallback"    # Landroid/app/wearable/IWearableSensingCallback;
    .param p2, "callback"    # Landroid/os/RemoteCallback;
    .param p3, "service"    # Landroid/service/wearable/IWearableSensingService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 232
    invoke-interface {p3, p0, p1, p2}, Landroid/service/wearable/IWearableSensingService;->provideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    .line 236
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "ex":Ljava/io/IOException;
    sget-object v1, Lcom/android/server/wearable/RemoteWearableSensingService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to close the local parcelFileDescriptor."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private static synthetic lambda$provideReadOnlyParcelFileDescriptor$3(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/os/RemoteCallback;Landroid/service/wearable/IWearableSensingService;)V
    .locals 3
    .param p0, "parcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "metadata"    # Landroid/os/PersistableBundle;
    .param p2, "callback"    # Landroid/os/RemoteCallback;
    .param p3, "service"    # Landroid/service/wearable/IWearableSensingService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 203
    invoke-interface {p3, p0, p1, p2}, Landroid/service/wearable/IWearableSensingService;->provideReadOnlyParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/os/RemoteCallback;)V

    .line 207
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "ex":Ljava/io/IOException;
    sget-object v1, Lcom/android/server/wearable/RemoteWearableSensingService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to close the local parcelFileDescriptor."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private static synthetic lambda$provideSecureConnectionInternal$1(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;Landroid/service/wearable/IWearableSensingService;)V
    .locals 3
    .param p0, "secureWearableConnection"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "wearableSensingCallback"    # Landroid/app/wearable/IWearableSensingCallback;
    .param p2, "statusCallback"    # Landroid/os/RemoteCallback;
    .param p3, "service"    # Landroid/service/wearable/IWearableSensingService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 156
    invoke-interface {p3, p0, p1, p2}, Landroid/service/wearable/IWearableSensingService;->provideSecureConnection(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    .line 162
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "ex":Ljava/io/IOException;
    sget-object v1, Lcom/android/server/wearable/RemoteWearableSensingService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to close the local parcelFileDescriptor."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private static synthetic lambda$registerDataRequestObserver$6(ILandroid/os/RemoteCallback;ILjava/lang/String;Landroid/os/RemoteCallback;Landroid/service/wearable/IWearableSensingService;)V
    .locals 1
    .param p0, "dataType"    # I
    .param p1, "dataRequestCallback"    # Landroid/os/RemoteCallback;
    .param p2, "dataRequestObserverId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "statusCallback"    # Landroid/os/RemoteCallback;
    .param p5, "service"    # Landroid/service/wearable/IWearableSensingService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 281
    move-object v0, p1

    move p1, p0

    move-object p0, p5

    move-object p5, p4

    move-object p4, p3

    move p3, p2

    move-object p2, v0

    .local p0, "service":Landroid/service/wearable/IWearableSensingService;
    .local p1, "dataType":I
    .local p2, "dataRequestCallback":Landroid/os/RemoteCallback;
    .local p3, "dataRequestObserverId":I
    .local p4, "packageName":Ljava/lang/String;
    .local p5, "statusCallback":Landroid/os/RemoteCallback;
    invoke-interface/range {p0 .. p5}, Landroid/service/wearable/IWearableSensingService;->registerDataRequestObserver(ILandroid/os/RemoteCallback;ILjava/lang/String;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method private static synthetic lambda$startHotwordRecognition$8(Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;Landroid/service/wearable/IWearableSensingService;)V
    .locals 0
    .param p0, "wearableHotwordCallback"    # Landroid/os/RemoteCallback;
    .param p1, "statusCallback"    # Landroid/os/RemoteCallback;
    .param p2, "service"    # Landroid/service/wearable/IWearableSensingService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 330
    invoke-interface {p2, p0, p1}, Landroid/service/wearable/IWearableSensingService;->startHotwordRecognition(Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method private static synthetic lambda$stopActiveHotwordAudio$11(Landroid/service/wearable/IWearableSensingService;)V
    .locals 0
    .param p0, "service"    # Landroid/service/wearable/IWearableSensingService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 362
    invoke-interface {p0}, Landroid/service/wearable/IWearableSensingService;->stopActiveHotwordAudio()V

    return-void
.end method

.method private static synthetic lambda$stopHotwordRecognition$9(Landroid/os/RemoteCallback;Landroid/service/wearable/IWearableSensingService;)V
    .locals 0
    .param p0, "statusCallback"    # Landroid/os/RemoteCallback;
    .param p1, "service"    # Landroid/service/wearable/IWearableSensingService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 343
    invoke-interface {p1, p0}, Landroid/service/wearable/IWearableSensingService;->stopHotwordRecognition(Landroid/os/RemoteCallback;)V

    return-void
.end method

.method private static synthetic lambda$unregisterDataRequestObserver$7(IILjava/lang/String;Landroid/os/RemoteCallback;Landroid/service/wearable/IWearableSensingService;)V
    .locals 0
    .param p0, "dataType"    # I
    .param p1, "dataRequestObserverId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "statusCallback"    # Landroid/os/RemoteCallback;
    .param p4, "service"    # Landroid/service/wearable/IWearableSensingService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 309
    invoke-interface {p4, p0, p1, p2, p3}, Landroid/service/wearable/IWearableSensingService;->unregisterDataRequestObserver(IILjava/lang/String;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method private provideSecureConnectionInternal(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    .locals 2
    .param p1, "secureWearableConnection"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "wearableSensingCallback"    # Landroid/app/wearable/IWearableSensingCallback;
    .param p3, "statusCallback"    # Landroid/os/RemoteCallback;

    .line 152
    sget-object v0, Lcom/android/server/wearable/RemoteWearableSensingService;->TAG:Ljava/lang/String;

    const-string v1, "Providing secure wearable connection."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda5;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    .line 154
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 167
    .local v0, "unused":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 171
    invoke-super {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->binderDied()V

    .line 172
    iget-object v0, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mSecureConnectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mNextSecureConnectionContext:Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mNextSecureConnectionContext:Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;

    iget-object v1, v1, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;->mSecureConnection:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mNextSecureConnectionContext:Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;

    iget-object v2, v2, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;->mWearableSensingCallback:Landroid/app/wearable/IWearableSensingCallback;

    iget-object v3, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mNextSecureConnectionContext:Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;

    iget-object v3, v3, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;->mStatusCallback:Landroid/os/RemoteCallback;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wearable/RemoteWearableSensingService;->provideSecureConnectionInternal(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    .line 179
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mNextSecureConnectionContext:Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 181
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mSecureConnectionProvided:Z

    .line 182
    sget-object v1, Lcom/android/server/wearable/RemoteWearableSensingService;->TAG:Ljava/lang/String;

    const-string v2, "Binder died but there is no secure wearable connection to provide."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    monitor-exit v0

    .line 185
    return-void

    .line 184
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getAutoDisconnectTimeoutMs()J
    .locals 2

    .line 72
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public killWearableSensingServiceProcess()V
    .locals 1

    .line 189
    new-instance v0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 190
    .local v0, "unused":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    return-void
.end method

.method public onValidatedByHotwordDetectionService()V
    .locals 1

    .line 354
    new-instance v0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 355
    .local v0, "unused":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    return-void
.end method

.method public provideConcurrentSecureConnection(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    .locals 1
    .param p1, "secureWearableConnection"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "metadata"    # Landroid/os/PersistableBundle;
    .param p3, "wearableSensingCallback"    # Landroid/app/wearable/IWearableSensingCallback;
    .param p4, "statusCallback"    # Landroid/os/RemoteCallback;

    .line 130
    new-instance v0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda4;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    .line 131
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 146
    .local v0, "unused":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    return-void
.end method

.method public provideData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V
    .locals 1
    .param p1, "data"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p3, "callback"    # Landroid/os/RemoteCallback;

    .line 255
    new-instance v0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda10;-><init>(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 256
    return-void
.end method

.method public provideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    .locals 1
    .param p1, "parcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "wearableSensingCallback"    # Landroid/app/wearable/IWearableSensingCallback;
    .param p3, "callback"    # Landroid/os/RemoteCallback;

    .line 229
    new-instance v0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda3;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    .line 230
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 241
    .local v0, "unused":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    return-void
.end method

.method public provideReadOnlyParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/os/RemoteCallback;)V
    .locals 1
    .param p1, "parcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "metadata"    # Landroid/os/PersistableBundle;
    .param p3, "callback"    # Landroid/os/RemoteCallback;

    .line 200
    new-instance v0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda8;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/os/RemoteCallback;)V

    .line 201
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 212
    .local v0, "unused":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    return-void
.end method

.method public provideSecureConnection(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "secureWearableConnection"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "wearableSensingCallback"    # Landroid/app/wearable/IWearableSensingCallback;
    .param p3, "statusCallback"    # Landroid/os/RemoteCallback;

    .line 90
    iget-object v0, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mSecureConnectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mNextSecureConnectionContext:Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;

    if-eqz v1, :cond_0

    .line 94
    sget-object v1, Lcom/android/server/wearable/RemoteWearableSensingService;->TAG:Ljava/lang/String;

    const-string v2, "A new wearable connection is provided before the process restart triggered by the previous connection is complete. Discarding the previous connection."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mNextSecureConnectionContext:Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;

    iget-object v1, v1, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;->mStatusCallback:Landroid/os/RemoteCallback;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(Landroid/os/RemoteCallback;I)V

    .line 102
    new-instance v1, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    iput-object v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mNextSecureConnectionContext:Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;

    .line 105
    monitor-exit v0

    return-void

    .line 119
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 107
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mSecureConnectionProvided:Z

    if-nez v1, :cond_1

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wearable/RemoteWearableSensingService;->provideSecureConnectionInternal(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    .line 111
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mSecureConnectionProvided:Z

    .line 112
    monitor-exit v0

    return-void

    .line 114
    :cond_1
    new-instance v1, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    iput-object v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService;->mNextSecureConnectionContext:Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;

    .line 118
    invoke-virtual {p0}, Lcom/android/server/wearable/RemoteWearableSensingService;->killWearableSensingServiceProcess()V

    .line 119
    monitor-exit v0

    .line 120
    return-void

    .line 119
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerDataRequestObserver(ILandroid/os/RemoteCallback;ILjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 6
    .param p1, "dataType"    # I
    .param p2, "dataRequestCallback"    # Landroid/os/RemoteCallback;
    .param p3, "dataRequestObserverId"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "statusCallback"    # Landroid/os/RemoteCallback;

    .line 278
    new-instance v0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda6;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "dataType":I
    .end local p2    # "dataRequestCallback":Landroid/os/RemoteCallback;
    .end local p3    # "dataRequestObserverId":I
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "statusCallback":Landroid/os/RemoteCallback;
    .local v1, "dataType":I
    .local v2, "dataRequestCallback":Landroid/os/RemoteCallback;
    .local v3, "dataRequestObserverId":I
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "statusCallback":Landroid/os/RemoteCallback;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda6;-><init>(ILandroid/os/RemoteCallback;ILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 279
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    .line 287
    .local p1, "unused":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    return-void
.end method

.method public startHotwordRecognition(Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .locals 1
    .param p1, "wearableHotwordCallback"    # Landroid/os/RemoteCallback;
    .param p2, "statusCallback"    # Landroid/os/RemoteCallback;

    .line 327
    new-instance v0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda2;-><init>(Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 328
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 332
    .local v0, "unused":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    return-void
.end method

.method public stopActiveHotwordAudio()V
    .locals 1

    .line 362
    new-instance v0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 363
    .local v0, "unused":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    return-void
.end method

.method public stopHotwordRecognition(Landroid/os/RemoteCallback;)V
    .locals 1
    .param p1, "statusCallback"    # Landroid/os/RemoteCallback;

    .line 343
    new-instance v0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda7;-><init>(Landroid/os/RemoteCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 344
    .local v0, "unused":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    return-void
.end method

.method public unregisterDataRequestObserver(IILjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 1
    .param p1, "dataType"    # I
    .param p2, "dataRequestObserverId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "statusCallback"    # Landroid/os/RemoteCallback;

    .line 306
    new-instance v0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda11;-><init>(IILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 307
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 314
    .local v0, "unused":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    return-void
.end method
