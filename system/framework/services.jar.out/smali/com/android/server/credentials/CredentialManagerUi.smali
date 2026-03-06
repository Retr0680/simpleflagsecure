.class public Lcom/android/server/credentials/CredentialManagerUi;
.super Ljava/lang/Object;
.source "CredentialManagerUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/credentials/CredentialManagerUi$UiStatus;,
        Lcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;
    }
.end annotation


# static fields
.field private static final SESSION_ID_TRACK_ONE:Ljava/lang/String; = "com.android.server.credentials.CredentialManagerUi.SESSION_ID_TRACK_ONE"

.field private static final SESSION_ID_TRACK_TWO:Ljava/lang/String; = "com.android.server.credentials.CredentialManagerUi.SESSION_ID_TRACK_TWO"


# instance fields
.field private final mCallbacks:Lcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;

.field private final mContext:Landroid/content/Context;

.field private final mEnabledProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mResultReceiver:Landroid/os/ResultReceiver;

.field private mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

.field private final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$NpZC9t6beIPxE86X7-ZSuMuqTFk(Landroid/credentials/CredentialProviderInfo;)Landroid/credentials/selection/DisabledProviderData;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/credentials/CredentialManagerUi;->lambda$createPendingIntent$1(Landroid/credentials/CredentialProviderInfo;)Landroid/credentials/selection/DisabledProviderData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PaMmBJKd6vaxt_cqvRJOfj4tLH0(Landroid/credentials/CredentialProviderInfo;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/credentials/CredentialManagerUi;->lambda$createPendingIntent$0(Landroid/credentials/CredentialProviderInfo;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleUiResult(Lcom/android/server/credentials/CredentialManagerUi;ILandroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/credentials/CredentialManagerUi;->handleUiResult(ILandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;Ljava/util/Set;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "callbacks"    # Lcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 135
    .local p4, "enabledProviders":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/android/server/credentials/CredentialManagerUi$1;

    new-instance v1, Landroid/os/Handler;

    .line 75
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/server/credentials/CredentialManagerUi$1;-><init>(Lcom/android/server/credentials/CredentialManagerUi;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 136
    iput-object p1, p0, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    .line 137
    iput p2, p0, Lcom/android/server/credentials/CredentialManagerUi;->mUserId:I

    .line 138
    iput-object p3, p0, Lcom/android/server/credentials/CredentialManagerUi;->mCallbacks:Lcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;

    .line 139
    iput-object p4, p0, Lcom/android/server/credentials/CredentialManagerUi;->mEnabledProviders:Ljava/util/Set;

    .line 140
    sget-object v0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->IN_PROGRESS:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    iput-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 141
    return-void
.end method

.method private handleUiResult(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 84
    packed-switch p1, :pswitch_data_0

    .line 108
    sget-object v0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->IN_PROGRESS:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    iput-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 109
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mCallbacks:Lcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;

    invoke-interface {v0}, Lcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;->onUiSelectorInvocationFailure()V

    goto :goto_0

    .line 104
    :pswitch_0
    sget-object v0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->TERMINATED:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    iput-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 105
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mCallbacks:Lcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;

    invoke-interface {v0}, Lcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;->onUiSelectorInvocationFailure()V

    .line 106
    goto :goto_0

    .line 86
    :pswitch_1
    sget-object v0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->IN_PROGRESS:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    iput-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 87
    nop

    .line 88
    invoke-static {p2}, Landroid/credentials/selection/UserSelectionDialogResult;->fromResultData(Landroid/os/Bundle;)Landroid/credentials/selection/UserSelectionDialogResult;

    move-result-object v0

    .line 89
    .local v0, "selection":Landroid/credentials/selection/UserSelectionDialogResult;
    if-eqz v0, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/server/credentials/CredentialManagerUi;->mCallbacks:Lcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;

    invoke-interface {v1, v0}, Lcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;->onUiSelection(Landroid/credentials/selection/UserSelectionDialogResult;)V

    goto :goto_0

    .line 100
    .end local v0    # "selection":Landroid/credentials/selection/UserSelectionDialogResult;
    :pswitch_2
    sget-object v0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->TERMINATED:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    iput-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 101
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mCallbacks:Lcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;->onUiCancellation(Z)V

    .line 102
    goto :goto_0

    .line 95
    :pswitch_3
    sget-object v0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->TERMINATED:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    iput-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 96
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mCallbacks:Lcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/server/credentials/CredentialManagerUi$CredentialManagerUiCallback;->onUiCancellation(Z)V

    .line 97
    nop

    .line 112
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic lambda$createPendingIntent$0(Landroid/credentials/CredentialProviderInfo;)Z
    .locals 1
    .param p0, "provider"    # Landroid/credentials/CredentialProviderInfo;

    .line 174
    invoke-virtual {p0}, Landroid/credentials/CredentialProviderInfo;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static synthetic lambda$createPendingIntent$1(Landroid/credentials/CredentialProviderInfo;)Landroid/credentials/selection/DisabledProviderData;
    .locals 2
    .param p0, "disabledProvider"    # Landroid/credentials/CredentialProviderInfo;

    .line 175
    new-instance v0, Landroid/credentials/selection/DisabledProviderData;

    .line 176
    invoke-virtual {p0}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/credentials/selection/DisabledProviderData;-><init>(Ljava/lang/String;)V

    .line 175
    return-object v0
.end method


# virtual methods
.method public createCancelIntent(Landroid/os/IBinder;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "requestId"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/credentials/CredentialManagerUi;->mUserId:I

    invoke-static {v0, p1, v1, p2, v2}, Landroid/credentials/selection/IntentFactory;->createCancelUiIntent(Landroid/content/Context;Landroid/os/IBinder;ZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public createIntentForAutofill(Landroid/credentials/selection/RequestInfo;Lcom/android/server/credentials/metrics/RequestSessionMetric;)Landroid/content/Intent;
    .locals 4
    .param p1, "requestInfo"    # Landroid/credentials/selection/RequestInfo;
    .param p2, "requestSessionMetric"    # Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 212
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/credentials/CredentialManagerUi;->mResultReceiver:Landroid/os/ResultReceiver;

    iget v3, p0, Lcom/android/server/credentials/CredentialManagerUi;->mUserId:I

    .line 213
    invoke-static {v0, p1, v1, v2, v3}, Landroid/credentials/selection/IntentFactory;->createCredentialSelectorIntentForAutofill(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Landroid/os/ResultReceiver;I)Landroid/credentials/selection/IntentCreationResult;

    move-result-object v0

    .line 215
    .local v0, "intentCreationResult":Landroid/credentials/selection/IntentCreationResult;
    iget-object v1, p0, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/credentials/CredentialManagerUi;->mUserId:I

    invoke-virtual {p2, v1, v0, v2}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectUiConfigurationResults(Landroid/content/Context;Landroid/credentials/selection/IntentCreationResult;I)V

    .line 217
    invoke-virtual {v0}, Landroid/credentials/selection/IntentCreationResult;->getIntent()Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public createPendingIntent(Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Lcom/android/server/credentials/metrics/RequestSessionMetric;)Landroid/app/PendingIntent;
    .locals 11
    .param p1, "requestInfo"    # Landroid/credentials/selection/RequestInfo;
    .param p3, "requestSessionMetric"    # Lcom/android/server/credentials/metrics/RequestSessionMetric;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/credentials/selection/RequestInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/credentials/selection/ProviderData;",
            ">;",
            "Lcom/android/server/credentials/metrics/RequestSessionMetric;",
            ")",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .line 164
    .local p2, "providerDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/credentials/selection/ProviderData;>;"
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/credentials/CredentialManagerUi;->mUserId:I

    iget-object v2, p0, Lcom/android/server/credentials/CredentialManagerUi;->mEnabledProviders:Ljava/util/Set;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 165
    const/4 v4, 0x2

    invoke-static {v0, v1, v4, v2, v3}, Landroid/service/credentials/CredentialProviderInfoFactory;->getCredentialProviderServices(Landroid/content/Context;IILjava/util/Set;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    .line 173
    .local v0, "allProviders":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/CredentialProviderInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/credentials/CredentialManagerUi$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/credentials/CredentialManagerUi$$ExternalSyntheticLambda0;-><init>()V

    .line 174
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/credentials/CredentialManagerUi$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/credentials/CredentialManagerUi$$ExternalSyntheticLambda1;-><init>()V

    .line 175
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 176
    invoke-interface {v1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v1

    .line 178
    .local v1, "disabledProviderDataList":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/selection/DisabledProviderData;>;"
    iget-object v2, p0, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v6, p0, Lcom/android/server/credentials/CredentialManagerUi;->mResultReceiver:Landroid/os/ResultReceiver;

    iget v7, p0, Lcom/android/server/credentials/CredentialManagerUi;->mUserId:I

    .line 179
    move-object v3, p1

    move-object v4, p2

    .end local p1    # "requestInfo":Landroid/credentials/selection/RequestInfo;
    .end local p2    # "providerDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/credentials/selection/ProviderData;>;"
    .local v3, "requestInfo":Landroid/credentials/selection/RequestInfo;
    .local v4, "providerDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/credentials/selection/ProviderData;>;"
    invoke-static/range {v2 .. v7}, Landroid/credentials/selection/IntentFactory;->createCredentialSelectorIntentForCredMan(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/ResultReceiver;I)Landroid/credentials/selection/IntentCreationResult;

    move-result-object p1

    .line 181
    .local p1, "intentCreationResult":Landroid/credentials/selection/IntentCreationResult;
    iget-object p2, p0, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/credentials/CredentialManagerUi;->mUserId:I

    invoke-virtual {p3, p2, p1, v2}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectUiConfigurationResults(Landroid/content/Context;Landroid/credentials/selection/IntentCreationResult;I)V

    .line 183
    invoke-virtual {p1}, Landroid/credentials/selection/IntentCreationResult;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 184
    .local v7, "intent":Landroid/content/Intent;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    nop

    .line 186
    nop

    .line 187
    invoke-virtual {p3}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->getInitialPhaseMetric()Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getSessionIdCaller()I

    move-result p2

    .line 186
    const-string v2, "com.android.server.credentials.CredentialManagerUi.SESSION_ID_TRACK_ONE"

    invoke-virtual {v7, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    const-string p2, "com.android.server.credentials.CredentialManagerUi.SESSION_ID_TRACK_TWO"

    invoke-virtual {p3}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->getSessionIdTrackTwo()I

    move-result v2

    invoke-virtual {v7, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    iget-object v5, p0, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/android/server/credentials/CredentialManagerUi;->mUserId:I

    .line 195
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    .line 192
    const/4 v6, 0x0

    const/high16 v8, 0x2000000

    const/4 v9, 0x0

    invoke-static/range {v5 .. v10}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p2

    return-object p2
.end method

.method public getStatus()Lcom/android/server/credentials/CredentialManagerUi$UiStatus;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    return-object v0
.end method

.method public setStatus(Lcom/android/server/credentials/CredentialManagerUi$UiStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 145
    iput-object p1, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 146
    return-void
.end method
