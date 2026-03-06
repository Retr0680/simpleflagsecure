.class public Lcom/android/server/credentials/PrepareGetRequestSession;
.super Lcom/android/server/credentials/GetRequestSession;
.source "PrepareGetRequestSession.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CredentialManager"


# instance fields
.field private final mPrepareGetCredentialCallback:Landroid/credentials/IPrepareGetCredentialCallback;


# direct methods
.method public static synthetic $r8$lambda$-0CQtGfTShVctYyJ1iEj_6UrIqw(Landroid/credentials/selection/GetCredentialProviderData;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/credentials/PrepareGetRequestSession;->lambda$hasRemoteResults$1(Landroid/credentials/selection/GetCredentialProviderData;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HuLWy8LRkXrj9hkxoS-B-FySBgA(Landroid/credentials/selection/ProviderData;)Landroid/credentials/selection/GetCredentialProviderData;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/credentials/PrepareGetRequestSession;->lambda$hasAuthenticationResults$2(Landroid/credentials/selection/ProviderData;)Landroid/credentials/selection/GetCredentialProviderData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Jze0f_JthyeSqOdIvaCCsO0mnmY(Lcom/android/server/credentials/ProviderSession;)Lcom/android/server/credentials/ProviderGetSession;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/credentials/PrepareGetRequestSession;->lambda$getCredentialResultTypes$4(Lcom/android/server/credentials/ProviderSession;)Lcom/android/server/credentials/ProviderGetSession;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NpzfcPY27GOs30tJSwFfmPyMSjU(Lcom/android/server/credentials/ProviderGetSession;)Ljava/util/stream/Stream;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/credentials/PrepareGetRequestSession;->lambda$getCredentialResultTypes$5(Lcom/android/server/credentials/ProviderGetSession;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SM2dfiXALxAfPkoVa4oJa866xEo(Landroid/credentials/selection/ProviderData;)Landroid/credentials/selection/GetCredentialProviderData;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/credentials/PrepareGetRequestSession;->lambda$hasRemoteResults$0(Landroid/credentials/selection/ProviderData;)Landroid/credentials/selection/GetCredentialProviderData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_f5O0h24JrtNICOPmJRXuMQPfJM(Landroid/credentials/selection/GetCredentialProviderData;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/credentials/PrepareGetRequestSession;->lambda$hasAuthenticationResults$3(Landroid/credentials/selection/GetCredentialProviderData;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/credentials/RequestSession$SessionLifetime;Ljava/lang/Object;IILandroid/credentials/IGetCredentialCallback;Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Landroid/os/CancellationSignal;JLandroid/credentials/IPrepareGetCredentialCallback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sessionCallback"    # Lcom/android/server/credentials/RequestSession$SessionLifetime;
    .param p3, "lock"    # Ljava/lang/Object;
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I
    .param p6, "getCredCallback"    # Landroid/credentials/IGetCredentialCallback;
    .param p7, "request"    # Landroid/credentials/GetCredentialRequest;
    .param p8, "callingAppInfo"    # Landroid/service/credentials/CallingAppInfo;
    .param p10, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p11, "startedTimestamp"    # J
    .param p13, "prepareGetCredentialCallback"    # Landroid/credentials/IPrepareGetCredentialCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/credentials/RequestSession$SessionLifetime;",
            "Ljava/lang/Object;",
            "II",
            "Landroid/credentials/IGetCredentialCallback;",
            "Landroid/credentials/GetCredentialRequest;",
            "Landroid/service/credentials/CallingAppInfo;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;",
            "Landroid/os/CancellationSignal;",
            "J",
            "Landroid/credentials/IPrepareGetCredentialCallback;",
            ")V"
        }
    .end annotation

    .line 59
    .local p9, "enabledProviders":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct/range {p0 .. p12}, Lcom/android/server/credentials/GetRequestSession;-><init>(Landroid/content/Context;Lcom/android/server/credentials/RequestSession$SessionLifetime;Ljava/lang/Object;IILandroid/credentials/IGetCredentialCallback;Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Landroid/os/CancellationSignal;J)V

    .line 61
    invoke-virtual {p7}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda3;-><init>()V

    .line 62
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 63
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    .line 62
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 63
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 64
    .local v0, "numTypes":I
    nop

    .line 67
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    const/4 v2, 0x1

    invoke-virtual {v1, p7, v2}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectGetFlowInitialMetricInfo(Landroid/credentials/GetCredentialRequest;Z)V

    .line 70
    move-object/from16 v1, p13

    iput-object v1, p0, Lcom/android/server/credentials/PrepareGetRequestSession;->mPrepareGetCredentialCallback:Landroid/credentials/IPrepareGetCredentialCallback;

    .line 72
    const-string v2, "CredentialManager"

    const-string v3, "PrepareGetRequestSession constructed."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method private constructEmptyPendingResponseAndInvokeCallback(Z)V
    .locals 7
    .param p1, "hasQueryCandidatePermission"    # Z

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/android/server/credentials/PrepareGetRequestSession;->mPrepareGetCredentialCallback:Landroid/credentials/IPrepareGetCredentialCallback;

    new-instance v1, Landroid/credentials/PrepareGetCredentialResponseInternal;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v2, p1

    .end local p1    # "hasQueryCandidatePermission":Z
    .local v2, "hasQueryCandidatePermission":Z
    :try_start_1
    invoke-direct/range {v1 .. v6}, Landroid/credentials/PrepareGetCredentialResponseInternal;-><init>(ZLjava/util/Set;ZZLandroid/app/PendingIntent;)V

    invoke-interface {v0, v1}, Landroid/credentials/IPrepareGetCredentialCallback;->onResponse(Landroid/credentials/PrepareGetCredentialResponseInternal;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    goto :goto_1

    .line 151
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v2    # "hasQueryCandidatePermission":Z
    .restart local p1    # "hasQueryCandidatePermission":Z
    :catch_1
    move-exception v0

    move v2, p1

    move-object p1, v0

    .line 152
    .restart local v2    # "hasQueryCandidatePermission":Z
    .local p1, "e":Landroid/os/RemoteException;
    :goto_0
    const-string v0, "CredentialManager"

    const-string v1, "EXCEPTION while mPendingCallback.onResponse"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private constructPendingResponseAndInvokeCallback(ZLjava/util/Set;ZZLandroid/app/PendingIntent;)V
    .locals 7
    .param p1, "hasPermission"    # Z
    .param p3, "hasAuthenticationResults"    # Z
    .param p4, "hasRemoteResults"    # Z
    .param p5, "uiIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    .line 132
    .local p2, "credentialTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/credentials/PrepareGetRequestSession;->mPrepareGetCredentialCallback:Landroid/credentials/IPrepareGetCredentialCallback;

    new-instance v1, Landroid/credentials/PrepareGetCredentialResponseInternal;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .end local p1    # "hasPermission":Z
    .end local p2    # "credentialTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p3    # "hasAuthenticationResults":Z
    .end local p4    # "hasRemoteResults":Z
    .end local p5    # "uiIntent":Landroid/app/PendingIntent;
    .local v2, "hasPermission":Z
    .local v3, "credentialTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v4, "hasAuthenticationResults":Z
    .local v5, "hasRemoteResults":Z
    .local v6, "uiIntent":Landroid/app/PendingIntent;
    :try_start_1
    invoke-direct/range {v1 .. v6}, Landroid/credentials/PrepareGetCredentialResponseInternal;-><init>(ZLjava/util/Set;ZZLandroid/app/PendingIntent;)V

    invoke-interface {v0, v1}, Landroid/credentials/IPrepareGetCredentialCallback;->onResponse(Landroid/credentials/PrepareGetCredentialResponseInternal;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    goto :goto_1

    .line 136
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v2    # "hasPermission":Z
    .end local v3    # "credentialTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "hasAuthenticationResults":Z
    .end local v5    # "hasRemoteResults":Z
    .end local v6    # "uiIntent":Landroid/app/PendingIntent;
    .restart local p1    # "hasPermission":Z
    .restart local p2    # "credentialTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local p3    # "hasAuthenticationResults":Z
    .restart local p4    # "hasRemoteResults":Z
    .restart local p5    # "uiIntent":Landroid/app/PendingIntent;
    :catch_1
    move-exception v0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object p1, v0

    .line 137
    .end local p2    # "credentialTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p3    # "hasAuthenticationResults":Z
    .end local p4    # "hasRemoteResults":Z
    .end local p5    # "uiIntent":Landroid/app/PendingIntent;
    .restart local v2    # "hasPermission":Z
    .restart local v3    # "credentialTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "hasAuthenticationResults":Z
    .restart local v5    # "hasRemoteResults":Z
    .restart local v6    # "uiIntent":Landroid/app/PendingIntent;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_0
    const-string p2, "CredentialManager"

    const-string p3, "EXCEPTION while mPendingCallback.onResponse"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private getCredentialResultTypes(Z)Ljava/util/Set;
    .locals 2
    .param p1, "hasQueryCandidatePermission"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 180
    if-nez p1, :cond_0

    .line 181
    const/4 v0, 0x0

    return-object v0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda0;-><init>()V

    .line 184
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda1;-><init>()V

    .line 185
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 187
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 183
    return-object v0
.end method

.method private getUiIntent()Landroid/app/PendingIntent;
    .locals 8

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v0, "providerDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/credentials/selection/ProviderData;>;"
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/credentials/ProviderSession;

    .line 193
    .local v2, "session":Lcom/android/server/credentials/ProviderSession;
    invoke-virtual {v2}, Lcom/android/server/credentials/ProviderSession;->prepareUiData()Landroid/credentials/selection/ProviderData;

    move-result-object v3

    .line 194
    .local v3, "providerData":Landroid/credentials/selection/ProviderData;
    if-eqz v3, :cond_0

    .line 195
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .end local v2    # "session":Lcom/android/server/credentials/ProviderSession;
    .end local v3    # "providerData":Landroid/credentials/selection/ProviderData;
    :cond_0
    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 199
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mCredentialManagerUi:Lcom/android/server/credentials/CredentialManagerUi;

    iget-object v2, p0, Lcom/android/server/credentials/RequestSession;->mRequestId:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    check-cast v3, Landroid/credentials/GetCredentialRequest;

    iget-object v4, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 201
    invoke-virtual {v4}, Landroid/service/credentials/CallingAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/credentials/RequestSession;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 202
    invoke-virtual {v6}, Landroid/service/credentials/CallingAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.permission.CREDENTIAL_MANAGER_SET_ALLOWED_PROVIDERS"

    invoke-static {v5, v6, v7}, Landroid/service/credentials/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 200
    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/credentials/selection/RequestInfo;->newGetRequestInfo(Landroid/os/IBinder;Landroid/credentials/GetCredentialRequest;Ljava/lang/String;ZZ)Landroid/credentials/selection/RequestInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 199
    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/credentials/CredentialManagerUi;->createPendingIntent(Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Lcom/android/server/credentials/metrics/RequestSessionMetric;)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1

    .line 208
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private hasAuthenticationResults(Ljava/util/ArrayList;Z)Z
    .locals 2
    .param p2, "hasQueryCandidatePermission"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/credentials/selection/ProviderData;",
            ">;Z)Z"
        }
    .end annotation

    .line 169
    .local p1, "providerData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/credentials/selection/ProviderData;>;"
    if-nez p2, :cond_0

    .line 170
    const/4 v0, 0x0

    return v0

    .line 172
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda2;-><init>()V

    .line 173
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda3;-><init>()V

    .line 174
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 172
    return v0
.end method

.method private hasRemoteResults(Ljava/util/ArrayList;Z)Z
    .locals 2
    .param p2, "hasQueryCandidatePermission"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/credentials/selection/ProviderData;",
            ">;Z)Z"
        }
    .end annotation

    .line 158
    .local p1, "providerData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/credentials/selection/ProviderData;>;"
    if-nez p2, :cond_0

    .line 159
    const/4 v0, 0x0

    return v0

    .line 161
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda4;-><init>()V

    .line 162
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda5;-><init>()V

    .line 163
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 161
    return v0
.end method

.method private static synthetic lambda$getCredentialResultTypes$4(Lcom/android/server/credentials/ProviderSession;)Lcom/android/server/credentials/ProviderGetSession;
    .locals 1
    .param p0, "session"    # Lcom/android/server/credentials/ProviderSession;

    .line 184
    move-object v0, p0

    check-cast v0, Lcom/android/server/credentials/ProviderGetSession;

    return-object v0
.end method

.method private static synthetic lambda$getCredentialResultTypes$5(Lcom/android/server/credentials/ProviderGetSession;)Ljava/util/stream/Stream;
    .locals 1
    .param p0, "providerGetSession"    # Lcom/android/server/credentials/ProviderGetSession;

    .line 185
    nop

    .line 186
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession;->getCredentialEntryTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 185
    return-object v0
.end method

.method private static synthetic lambda$hasAuthenticationResults$2(Landroid/credentials/selection/ProviderData;)Landroid/credentials/selection/GetCredentialProviderData;
    .locals 1
    .param p0, "data"    # Landroid/credentials/selection/ProviderData;

    .line 173
    move-object v0, p0

    check-cast v0, Landroid/credentials/selection/GetCredentialProviderData;

    return-object v0
.end method

.method private static synthetic lambda$hasAuthenticationResults$3(Landroid/credentials/selection/GetCredentialProviderData;)Z
    .locals 1
    .param p0, "getCredentialProviderData"    # Landroid/credentials/selection/GetCredentialProviderData;

    .line 175
    invoke-virtual {p0}, Landroid/credentials/selection/GetCredentialProviderData;->getAuthenticationEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static synthetic lambda$hasRemoteResults$0(Landroid/credentials/selection/ProviderData;)Landroid/credentials/selection/GetCredentialProviderData;
    .locals 1
    .param p0, "data"    # Landroid/credentials/selection/ProviderData;

    .line 162
    move-object v0, p0

    check-cast v0, Landroid/credentials/selection/GetCredentialProviderData;

    return-object v0
.end method

.method private static synthetic lambda$hasRemoteResults$1(Landroid/credentials/selection/GetCredentialProviderData;)Z
    .locals 1
    .param p0, "getCredentialProviderData"    # Landroid/credentials/selection/GetCredentialProviderData;

    .line 164
    invoke-virtual {p0}, Landroid/credentials/selection/GetCredentialProviderData;->getRemoteEntry()Landroid/credentials/selection/Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onProviderStatusChanged(Lcom/android/server/credentials/ProviderSession$Status;Landroid/content/ComponentName;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V
    .locals 9
    .param p1, "status"    # Lcom/android/server/credentials/ProviderSession$Status;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "source"    # Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provider Status changed with status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", and source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget-object v0, Lcom/android/server/credentials/PrepareGetRequestSession$1;->$SwitchMap$com$android$server$credentials$ProviderSession$CredentialsSource:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 123
    const-string v0, "Unexpected source"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, p0

    goto :goto_1

    .line 115
    :pswitch_0
    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->NO_CREDENTIALS_FROM_AUTH_ENTRY:Lcom/android/server/credentials/ProviderSession$Status;

    if-ne p1, v0, :cond_0

    .line 117
    invoke-super {p0, p2}, Lcom/android/server/credentials/GetRequestSession;->handleEmptyAuthenticationSelection(Landroid/content/ComponentName;)V

    move-object v3, p0

    goto :goto_1

    .line 118
    :cond_0
    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->CREDENTIALS_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

    if-ne p1, v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->getProviderDataAndInitiateUi()V

    move-object v3, p0

    goto :goto_1

    .line 118
    :cond_1
    move-object v3, p0

    goto :goto_1

    .line 85
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->isAnyProviderPending()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    return-void

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 91
    invoke-virtual {v1}, Landroid/service/credentials/CallingAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 89
    const-string v2, "android.permission.CREDENTIAL_MANAGER_QUERY_CANDIDATE_CREDENTIALS"

    invoke-static {v0, v1, v2}, Landroid/service/credentials/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 93
    .local v4, "hasQueryCandidatePermission":Z
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->isUiInvocationNeeded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->getProviderDataForUi()Ljava/util/ArrayList;

    move-result-object v0

    .line 97
    .local v0, "providerData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/credentials/selection/ProviderData;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 98
    nop

    .line 99
    invoke-direct {p0, v4}, Lcom/android/server/credentials/PrepareGetRequestSession;->getCredentialResultTypes(Z)Ljava/util/Set;

    move-result-object v5

    .line 100
    invoke-direct {p0, v0, v4}, Lcom/android/server/credentials/PrepareGetRequestSession;->hasAuthenticationResults(Ljava/util/ArrayList;Z)Z

    move-result v6

    .line 102
    invoke-direct {p0, v0, v4}, Lcom/android/server/credentials/PrepareGetRequestSession;->hasRemoteResults(Ljava/util/ArrayList;Z)Z

    move-result v7

    .line 103
    invoke-direct {p0}, Lcom/android/server/credentials/PrepareGetRequestSession;->getUiIntent()Landroid/app/PendingIntent;

    move-result-object v8

    .line 98
    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/credentials/PrepareGetRequestSession;->constructPendingResponseAndInvokeCallback(ZLjava/util/Set;ZZLandroid/app/PendingIntent;)V

    .line 104
    return-void

    .line 97
    :cond_3
    move-object v3, p0

    goto :goto_0

    .line 93
    .end local v0    # "providerData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/credentials/selection/ProviderData;>;"
    :cond_4
    move-object v3, p0

    .line 108
    :goto_0
    invoke-direct {p0, v4}, Lcom/android/server/credentials/PrepareGetRequestSession;->constructEmptyPendingResponseAndInvokeCallback(Z)V

    .line 110
    nop

    .line 126
    .end local v4    # "hasQueryCandidatePermission":Z
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
