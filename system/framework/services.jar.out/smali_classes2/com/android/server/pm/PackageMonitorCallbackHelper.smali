.class public Lcom/android/server/pm/PackageMonitorCallbackHelper;
.super Ljava/lang/Object;
.source "PackageMonitorCallbackHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PackageMonitorCallbackHelper"


# instance fields
.field mActivityManager:Landroid/app/IActivityManager;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IRemoteCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$MNRzQYaV6JaxqeiTvi1sMiq30_4(ILjava/util/ArrayList;Landroid/os/IRemoteCallback;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->lambda$onUserRemoved$0(ILjava/util/ArrayList;Landroid/os/IRemoteCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z5BB8H8hZPb-NY_2ywaCcSJdk6w(Lcom/android/server/pm/PackageMonitorCallbackHelper;I[ILandroid/content/Intent;Ljava/util/function/BiFunction;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->lambda$doNotifyCallbacks$2(I[ILandroid/content/Intent;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aUWlqwCz-5h_-aMsuSrfdCoFYEM(I[ILandroid/content/Intent;Ljava/util/function/BiFunction;Ljava/util/ArrayList;Landroid/os/IRemoteCallback;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->lambda$doNotifyCallbacks$1(I[ILandroid/content/Intent;Ljava/util/function/BiFunction;Ljava/util/ArrayList;Landroid/os/IRemoteCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mLock:Ljava/lang/Object;

    .line 60
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method private doNotifyCallbacks(Landroid/content/Intent;I[ILandroid/os/Handler;Ljava/util/function/BiFunction;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .param p3, "allowUids"    # [I
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I[I",
            "Landroid/os/Handler;",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 228
    .local p5, "filterExtrasFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;>;"
    new-instance v0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v4, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p5

    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "userId":I
    .end local p3    # "allowUids":[I
    .end local p5    # "filterExtrasFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;>;"
    .local v2, "userId":I
    .local v3, "allowUids":[I
    .local v4, "intent":Landroid/content/Intent;
    .local v5, "filterExtrasFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;>;"
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageMonitorCallbackHelper;I[ILandroid/content/Intent;Ljava/util/function/BiFunction;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 274
    return-void
.end method

.method private doNotifyCallbacksByAction(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[ILandroid/util/SparseArray;Landroid/os/Handler;Ljava/util/function/BiFunction;)V
    .locals 11
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "userIds"    # [I
    .param p6, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "[I",
            "Landroid/util/SparseArray<",
            "[I>;",
            "Landroid/os/Handler;",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 207
    .local p5, "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .local p7, "filterExtrasFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;>;"
    move-object v0, p4

    move-object/from16 v1, p5

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget v6, v0, v3

    .line 208
    .local v6, "userId":I
    new-instance v5, Landroid/content/Intent;

    .line 209
    const/4 v4, 0x0

    if-eqz p2, :cond_0

    const-string/jumbo v7, "package"

    invoke-static {v7, p2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_1

    :cond_0
    move-object v7, v4

    :goto_1
    invoke-direct {v5, p1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 210
    .local v5, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_1

    .line 211
    invoke-virtual {v5, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 213
    :cond_1
    const/4 v7, -0x1

    const-string v8, "android.intent.extra.UID"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 214
    .local v7, "uid":I
    if-ltz v7, :cond_2

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-eq v9, v6, :cond_2

    .line 215
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    invoke-static {v6, v9}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    .line 216
    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move v10, v7

    goto :goto_2

    .line 218
    :cond_2
    move v10, v7

    .end local v7    # "uid":I
    .local v10, "uid":I
    :goto_2
    const-string v7, "android.intent.extra.user_handle"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    if-eqz v1, :cond_3

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    :cond_3
    move-object v7, v4

    .line 222
    .local v7, "allowUids":[I
    move-object v4, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->doNotifyCallbacks(Landroid/content/Intent;I[ILandroid/os/Handler;Ljava/util/function/BiFunction;)V

    .line 207
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "userId":I
    .end local v7    # "allowUids":[I
    .end local v10    # "uid":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 224
    :cond_4
    return-void
.end method

.method private doNotifyCallbacksByIntent(Landroid/content/Intent;I[ILandroid/os/Handler;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .param p3, "broadcastAllowList"    # [I
    .param p4, "handler"    # Landroid/os/Handler;

    .line 200
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "userId":I
    .end local p3    # "broadcastAllowList":[I
    .end local p4    # "handler":Landroid/os/Handler;
    .local v1, "intent":Landroid/content/Intent;
    .local v2, "userId":I
    .local v3, "broadcastAllowList":[I
    .local v4, "handler":Landroid/os/Handler;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->doNotifyCallbacks(Landroid/content/Intent;I[ILandroid/os/Handler;Ljava/util/function/BiFunction;)V

    .line 202
    return-void
.end method

.method private invokeCallback(Landroid/os/IRemoteCallback;Landroid/content/Intent;)V
    .locals 2
    .param p1, "callback"    # Landroid/os/IRemoteCallback;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 278
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 279
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.content.pm.extra.EXTRA_PACKAGE_MONITOR_CALLBACK_RESULT"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 281
    invoke-interface {p1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 285
    :goto_0
    return-void
.end method

.method private static isAllowedCallbackAction(Ljava/lang/String;)Z
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .line 184
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    if-nez v0, :cond_1

    .line 185
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    if-nez v0, :cond_1

    .line 186
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    if-nez v0, :cond_1

    .line 187
    const-string v0, "android.intent.action.UID_REMOVED"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    if-nez v0, :cond_1

    .line 188
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    if-nez v0, :cond_1

    .line 189
    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    if-nez v0, :cond_1

    .line 190
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    if-nez v0, :cond_1

    .line 191
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    if-nez v0, :cond_1

    .line 192
    const-string v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    if-nez v0, :cond_1

    .line 193
    const-string v0, "android.intent.action.PACKAGE_RESTARTED"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    if-nez v0, :cond_1

    .line 194
    const-string v0, "android.intent.action.PACKAGE_UNSTOPPED"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 184
    :goto_1
    return v0
.end method

.method private static synthetic lambda$doNotifyCallbacks$1(I[ILandroid/content/Intent;Ljava/util/function/BiFunction;Ljava/util/ArrayList;Landroid/os/IRemoteCallback;Ljava/lang/Object;)V
    .locals 6
    .param p0, "userId"    # I
    .param p1, "allowUids"    # [I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "filterExtrasFunction"    # Ljava/util/function/BiFunction;
    .param p4, "target"    # Ljava/util/ArrayList;
    .param p5, "callback"    # Landroid/os/IRemoteCallback;
    .param p6, "user"    # Ljava/lang/Object;

    .line 232
    move-object v0, p6

    check-cast v0, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;

    .line 233
    .local v0, "registerUser":Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;
    invoke-virtual {v0}, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;->getUserId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 234
    invoke-virtual {v0}, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;->getUserId()I

    move-result v1

    if-eq v1, p0, :cond_0

    .line 235
    return-void

    .line 237
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;->getUid()I

    move-result v1

    .line 238
    .local v1, "registerUid":I
    if-eqz p1, :cond_1

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 239
    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 244
    return-void

    .line 246
    :cond_1
    move-object v2, p2

    .line 247
    .local v2, "newIntent":Landroid/content/Intent;
    if-eqz p3, :cond_3

    .line 248
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 249
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_3

    .line 250
    nop

    .line 251
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v4, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 252
    .local v4, "filteredExtras":Landroid/os/Bundle;
    if-nez v4, :cond_2

    .line 260
    return-void

    .line 262
    :cond_2
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v2, v5

    .line 263
    invoke-virtual {v2, v4}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 266
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "filteredExtras":Landroid/os/Bundle;
    :cond_3
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    return-void
.end method

.method private synthetic lambda$doNotifyCallbacks$2(I[ILandroid/content/Intent;Ljava/util/function/BiFunction;)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "allowUids"    # [I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "filterExtrasFunction"    # Ljava/util/function/BiFunction;

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 230
    .local v6, "target":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/os/IRemoteCallback;Landroid/content/Intent;>;>;"
    iget-object v7, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "userId":I
    .end local p2    # "allowUids":[I
    .end local p3    # "intent":Landroid/content/Intent;
    .end local p4    # "filterExtrasFunction":Ljava/util/function/BiFunction;
    .local v2, "userId":I
    .local v3, "allowUids":[I
    .local v4, "intent":Landroid/content/Intent;
    .local v5, "filterExtrasFunction":Ljava/util/function/BiFunction;
    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda2;-><init>(I[ILandroid/content/Intent;Ljava/util/function/BiFunction;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/BiConsumer;)V

    .line 268
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    const/4 p1, 0x0

    .local p1, "i":I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 270
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    .line 271
    .local p2, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IRemoteCallback;Landroid/content/Intent;>;"
    iget-object p3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Landroid/os/IRemoteCallback;

    iget-object p4, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p4, Landroid/content/Intent;

    invoke-direct {p0, p3, p4}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->invokeCallback(Landroid/os/IRemoteCallback;Landroid/content/Intent;)V

    .line 269
    .end local p2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IRemoteCallback;Landroid/content/Intent;>;"
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 273
    .end local p1    # "i":I
    return-void

    .line 268
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .end local v2    # "userId":I
    .end local v3    # "allowUids":[I
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "filterExtrasFunction":Ljava/util/function/BiFunction;
    .local p1, "userId":I
    .local p2, "allowUids":[I
    .restart local p3    # "intent":Landroid/content/Intent;
    .restart local p4    # "filterExtrasFunction":Ljava/util/function/BiFunction;
    :catchall_1
    move-exception v0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object p1, v0

    .end local p1    # "userId":I
    .end local p2    # "allowUids":[I
    .end local p3    # "intent":Landroid/content/Intent;
    .end local p4    # "filterExtrasFunction":Ljava/util/function/BiFunction;
    .restart local v2    # "userId":I
    .restart local v3    # "allowUids":[I
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "filterExtrasFunction":Ljava/util/function/BiFunction;
    :goto_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private static synthetic lambda$onUserRemoved$0(ILjava/util/ArrayList;Landroid/os/IRemoteCallback;Ljava/lang/Object;)V
    .locals 2
    .param p0, "userId"    # I
    .param p1, "targetUnRegisteredCallbacks"    # Ljava/util/ArrayList;
    .param p2, "callback"    # Landroid/os/IRemoteCallback;
    .param p3, "user"    # Ljava/lang/Object;

    .line 80
    move-object v0, p3

    check-cast v0, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;

    .line 81
    .local v0, "registerUser":Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;
    invoke-virtual {v0}, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;->getUserId()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 82
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method public notifyPackageAddedForNewUsers(Ljava/lang/String;I[I[IZILandroid/util/SparseArray;Landroid/os/Handler;)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userIds"    # [I
    .param p4, "instantUserIds"    # [I
    .param p5, "isArchived"    # Z
    .param p6, "dataLoaderType"    # I
    .param p8, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[I[IZI",
            "Landroid/util/SparseArray<",
            "[I>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 98
    .local p7, "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    move-object v5, v0

    .line 101
    .local v5, "extras":Landroid/os/Bundle;
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    aget v0, p4, v1

    goto :goto_0

    :cond_0
    aget v0, p3, v1

    .line 100
    :goto_0
    invoke-static {v0, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 102
    .local v0, "uid":I
    const-string v1, "android.intent.extra.UID"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    if-eqz p5, :cond_1

    .line 104
    const-string v1, "android.intent.extra.ARCHIVAL"

    const/4 v2, 0x1

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 106
    :cond_1
    const-string v1, "android.content.pm.extra.DATA_LOADER_TYPE"

    move/from16 v11, p6

    invoke-virtual {v5, v1, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    const/4 v10, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Landroid/os/Handler;Ljava/util/function/BiFunction;)V

    .line 110
    return-void
.end method

.method public notifyPackageChanged(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Handler;)V
    .locals 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "dontKillApp"    # Z
    .param p4, "packageUid"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "userIds"    # [I
    .param p7, "instantUserIds"    # [I
    .param p9, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "[I[I",
            "Landroid/util/SparseArray<",
            "[I>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 130
    .local p3, "componentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p8, "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    new-instance v2, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(I)V

    move-object v7, v2

    .line 131
    .local v7, "extras":Landroid/os/Bundle;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "android.intent.extra.changed_component_name"

    invoke-virtual {v7, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 133
    .local v2, "nameList":[Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 134
    const-string v3, "android.intent.extra.changed_component_name_list"

    invoke-virtual {v7, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 135
    const-string v3, "android.intent.extra.DONT_KILL_APP"

    move/from16 v13, p2

    invoke-virtual {v7, v3, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 136
    const-string v3, "android.intent.extra.UID"

    move/from16 v14, p4

    invoke-virtual {v7, v3, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    if-eqz v1, :cond_0

    .line 138
    const-string v3, "android.intent.extra.REASON"

    invoke-virtual {v7, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    const/4 v12, 0x0

    move-object v4, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Landroid/os/Handler;Ljava/util/function/BiFunction;)V

    .line 142
    return-void
.end method

.method public notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Landroid/os/Handler;Ljava/util/function/BiFunction;)V
    .locals 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "userIds"    # [I
    .param p5, "instantUserIds"    # [I
    .param p7, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "[I[I",
            "Landroid/util/SparseArray<",
            "[I>;",
            "Landroid/os/Handler;",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 147
    .local p6, "broadcastAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .local p8, "filterExtras":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;>;"
    invoke-static {p1}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->isAllowedCallbackAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    return-void

    .line 152
    :cond_0
    if-nez p4, :cond_3

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mActivityManager:Landroid/app/IActivityManager;

    if-nez v0, :cond_1

    .line 154
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mActivityManager:Landroid/app/IActivityManager;

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    goto :goto_3

    .line 156
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mActivityManager:Landroid/app/IActivityManager;

    if-nez v0, :cond_2

    return-void

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v0

    move-object v5, v0

    .local v0, "resolvedUserIds":[I
    goto :goto_1

    .line 159
    .end local v0    # "resolvedUserIds":[I
    :cond_3
    move-object v0, p4

    move-object v5, v0

    .line 162
    .local v5, "resolvedUserIds":[I
    :goto_1
    invoke-static {p5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 163
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->doNotifyCallbacksByAction(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[ILandroid/util/SparseArray;Landroid/os/Handler;Ljava/util/function/BiFunction;)V

    move-object v0, v5

    .end local v5    # "resolvedUserIds":[I
    .restart local v0    # "resolvedUserIds":[I
    goto :goto_2

    .line 167
    .end local v0    # "resolvedUserIds":[I
    .restart local v5    # "resolvedUserIds":[I
    :cond_4
    move-object v0, v5

    .end local v5    # "resolvedUserIds":[I
    .restart local v0    # "resolvedUserIds":[I
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->doNotifyCallbacksByAction(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[ILandroid/util/SparseArray;Landroid/os/Handler;Ljava/util/function/BiFunction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v0    # "resolvedUserIds":[I
    :goto_2
    nop

    .line 173
    :goto_3
    return-void
.end method

.method notifyPackageMonitorWithIntent(Landroid/content/Intent;I[ILandroid/os/Handler;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .param p3, "broadcastAllowList"    # [I
    .param p4, "handler"    # Landroid/os/Handler;

    .line 177
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->isAllowedCallbackAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    return-void

    .line 180
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->doNotifyCallbacksByIntent(Landroid/content/Intent;I[ILandroid/os/Handler;)V

    .line 181
    return-void
.end method

.method public notifyResourcesChanged(ZZ[Ljava/lang/String;[ILandroid/os/Handler;)V
    .locals 10
    .param p1, "mediaStatus"    # Z
    .param p2, "replacing"    # Z
    .param p3, "pkgNames"    # [Ljava/lang/String;
    .param p4, "uids"    # [I
    .param p5, "handler"    # Landroid/os/Handler;

    .line 114
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v4, v0

    .line 115
    .local v4, "extras":Landroid/os/Bundle;
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v4, v0, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 116
    const-string v0, "android.intent.extra.changed_uid_list"

    invoke-virtual {v4, v0, p4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 117
    if-eqz p2, :cond_0

    .line 118
    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 120
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object v2, v0

    goto :goto_0

    .line 121
    :cond_1
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object v2, v0

    :goto_0
    nop

    .line 122
    .local v2, "action":Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v8, p5

    .end local p5    # "handler":Landroid/os/Handler;
    .local v8, "handler":Landroid/os/Handler;
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Landroid/os/Handler;Ljava/util/function/BiFunction;)V

    .line 125
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v0, "targetUnRegisteredCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IRemoteCallback;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v3, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, v0}, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda1;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/BiConsumer;)V

    .line 85
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 88
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 89
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IRemoteCallback;

    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->unregisterPackageMonitorCallback(Landroid/os/IRemoteCallback;)V

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 85
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public registerPackageMonitorCallback(Landroid/os/IRemoteCallback;II)V
    .locals 3
    .param p1, "callback"    # Landroid/os/IRemoteCallback;
    .param p2, "userId"    # I
    .param p3, "uid"    # I

    .line 65
    iget-object v0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v2, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;-><init>(Lcom/android/server/pm/PackageMonitorCallbackHelper;II)V

    invoke-virtual {v1, p1, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 67
    monitor-exit v0

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterPackageMonitorCallback(Landroid/os/IRemoteCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/os/IRemoteCallback;

    .line 71
    iget-object v0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 73
    monitor-exit v0

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
