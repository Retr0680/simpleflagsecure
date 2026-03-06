.class public Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;
.super Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;
.source "RemoteContentSuggestionsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$Callbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService<",
        "Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;",
        "Landroid/service/contentsuggestions/IContentSuggestionsService;",
        ">;"
    }
.end annotation


# static fields
.field private static final TIMEOUT_REMOTE_REQUEST_MILLIS:J = 0x7d0L


# direct methods
.method public static synthetic $r8$lambda$LTUeFDmDF7kqMAEZYEfsJ6jeUws(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/contentsuggestions/IContentSuggestionsService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->lambda$notifyInteraction$3(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/contentsuggestions/IContentSuggestionsService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$On80J7VnhmH3jMEvHhDE5zj1mao(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;Landroid/service/contentsuggestions/IContentSuggestionsService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->lambda$suggestContentSelections$1(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;Landroid/service/contentsuggestions/IContentSuggestionsService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g6Un_nbUNkrxdJ9r2m-zHogGX_E(Landroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;Landroid/service/contentsuggestions/IContentSuggestionsService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->lambda$classifyContentSelections$2(Landroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;Landroid/service/contentsuggestions/IContentSuggestionsService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$scAORHn_UEw_9j0SGu4IWQdhyx4(ILandroid/window/TaskSnapshot;Landroid/os/Bundle;Landroid/service/contentsuggestions/IContentSuggestionsService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->lambda$provideContextImage$0(ILandroid/window/TaskSnapshot;Landroid/os/Bundle;Landroid/service/contentsuggestions/IContentSuggestionsService;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/contentsuggestions/RemoteContentSuggestionsService$Callbacks;ZZ)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "callbacks"    # Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$Callbacks;
    .param p5, "bindInstantServiceAllowed"    # Z
    .param p6, "verbose"    # Z

    .line 49
    nop

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v6

    .line 51
    if-eqz p5, :cond_0

    const/high16 v0, 0x400000

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 49
    :goto_1
    const-string v2, "android.service.contentsuggestions.ContentSuggestionsService"

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZI)V

    .line 53
    return-void
.end method

.method private static synthetic lambda$classifyContentSelections$2(Landroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;Landroid/service/contentsuggestions/IContentSuggestionsService;)V
    .locals 0
    .param p0, "classificationsRequest"    # Landroid/app/contentsuggestions/ClassificationsRequest;
    .param p1, "callback"    # Landroid/app/contentsuggestions/IClassificationsCallback;
    .param p2, "s"    # Landroid/service/contentsuggestions/IContentSuggestionsService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-interface {p2, p0, p1}, Landroid/service/contentsuggestions/IContentSuggestionsService;->classifyContentSelections(Landroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V

    return-void
.end method

.method private static synthetic lambda$notifyInteraction$3(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/contentsuggestions/IContentSuggestionsService;)V
    .locals 0
    .param p0, "requestId"    # Ljava/lang/String;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "s"    # Landroid/service/contentsuggestions/IContentSuggestionsService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    invoke-interface {p2, p0, p1}, Landroid/service/contentsuggestions/IContentSuggestionsService;->notifyInteraction(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static synthetic lambda$provideContextImage$0(ILandroid/window/TaskSnapshot;Landroid/os/Bundle;Landroid/service/contentsuggestions/IContentSuggestionsService;)V
    .locals 1
    .param p0, "taskId"    # I
    .param p1, "snapshot"    # Landroid/window/TaskSnapshot;
    .param p2, "imageContextRequestExtras"    # Landroid/os/Bundle;
    .param p3, "s"    # Landroid/service/contentsuggestions/IContentSuggestionsService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    invoke-interface {p3, p0, p1, p2}, Landroid/service/contentsuggestions/IContentSuggestionsService;->provideContextImage(ILandroid/window/TaskSnapshot;Landroid/os/Bundle;)V

    .line 74
    if-eqz p1, :cond_0

    .line 75
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/window/TaskSnapshot;->removeReference(I)V

    .line 77
    :cond_0
    return-void
.end method

.method private static synthetic lambda$suggestContentSelections$1(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;Landroid/service/contentsuggestions/IContentSuggestionsService;)V
    .locals 0
    .param p0, "selectionsRequest"    # Landroid/app/contentsuggestions/SelectionsRequest;
    .param p1, "selectionsCallback"    # Landroid/app/contentsuggestions/ISelectionsCallback;
    .param p2, "s"    # Landroid/service/contentsuggestions/IContentSuggestionsService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    invoke-interface {p2, p0, p1}, Landroid/service/contentsuggestions/IContentSuggestionsService;->suggestContentSelections(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V

    return-void
.end method


# virtual methods
.method classifyContentSelections(Landroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V
    .locals 1
    .param p1, "classificationsRequest"    # Landroid/app/contentsuggestions/ClassificationsRequest;
    .param p2, "callback"    # Landroid/app/contentsuggestions/IClassificationsCallback;

    .line 90
    new-instance v0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda0;-><init>(Landroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 91
    return-void
.end method

.method protected getRemoteRequestMillis()J
    .locals 2

    .line 67
    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method protected bridge synthetic getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->getServiceInterface(Landroid/os/IBinder;)Landroid/service/contentsuggestions/IContentSuggestionsService;

    move-result-object p1

    return-object p1
.end method

.method protected getServiceInterface(Landroid/os/IBinder;)Landroid/service/contentsuggestions/IContentSuggestionsService;
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .line 57
    invoke-static {p1}, Landroid/service/contentsuggestions/IContentSuggestionsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/contentsuggestions/IContentSuggestionsService;

    move-result-object v0

    return-object v0
.end method

.method protected getTimeoutIdleBindMillis()J
    .locals 2

    .line 62
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method notifyInteraction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 94
    new-instance v0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 95
    return-void
.end method

.method provideContextImage(ILandroid/window/TaskSnapshot;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "snapshot"    # Landroid/window/TaskSnapshot;
    .param p3, "imageContextRequestExtras"    # Landroid/os/Bundle;

    .line 72
    new-instance v0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda1;-><init>(ILandroid/window/TaskSnapshot;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 78
    return-void
.end method

.method suggestContentSelections(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V
    .locals 1
    .param p1, "selectionsRequest"    # Landroid/app/contentsuggestions/SelectionsRequest;
    .param p2, "selectionsCallback"    # Landroid/app/contentsuggestions/ISelectionsCallback;

    .line 83
    new-instance v0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda3;-><init>(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 85
    return-void
.end method
