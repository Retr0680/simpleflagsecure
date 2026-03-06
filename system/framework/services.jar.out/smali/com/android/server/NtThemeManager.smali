.class public Lcom/android/server/NtThemeManager;
.super Ljava/lang/Object;
.source "NtThemeManager.java"


# static fields
.field private static final ACTION_EXTRA_DARK_CHANGED:Ljava/lang/String; = "com.android.systemui.action.EXTRA_DARK_CHANGED"

.field private static final EXTRA_EXTRA_DARK_STATE:Ljava/lang/String; = "extra_dark_state"

.field private static final SETTINGS_EXTRA_DARK:Ljava/lang/String; = "theme_extra_darkmode"

.field private static final SYSTEMUI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "NtThemeManager"

.field private static sInstance:Lcom/android/server/NtThemeManager;


# instance fields
.field private mAM:Landroid/app/ActivityManager;

.field private final mApplyExtraDarkTask:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mCurrentExtraDarkMode:Z

.field private mExtraDarkObserver:Landroid/database/ContentObserver;

.field private mLastRequestedEnableOverlay:Z

.field private mLastRequestedNeedConfiguration:Z

.field private final mLock:Ljava/lang/Object;

.field private final mMain:Landroid/os/Handler;

.field private final mOverlayService:Landroid/content/om/IOverlayManager;

.field private mWorker:Landroid/os/Handler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic $r8$lambda$-OyEaNQgPvvkIQcRcru7DtrUr-w(Lcom/android/server/NtThemeManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/NtThemeManager;->updateEffective()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmLastRequestedEnableOverlay(Lcom/android/server/NtThemeManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/NtThemeManager;->mLastRequestedEnableOverlay:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastRequestedNeedConfiguration(Lcom/android/server/NtThemeManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/NtThemeManager;->mLastRequestedNeedConfiguration:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/NtThemeManager;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/NtThemeManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mapplyExtraDarkOnWorker(Lcom/android/server/NtThemeManager;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/NtThemeManager;->applyExtraDarkOnWorker(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCurrentUser(Lcom/android/server/NtThemeManager;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/NtThemeManager;->getCurrentUser()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetExtraDark(Lcom/android/server/NtThemeManager;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/NtThemeManager;->setExtraDark(ZZ)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/NtThemeManager;->mMain:Landroid/os/Handler;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NtThemeManager;->mCurrentExtraDarkMode:Z

    .line 47
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/NtThemeManager;->mLock:Ljava/lang/Object;

    .line 48
    iput-boolean v0, p0, Lcom/android/server/NtThemeManager;->mLastRequestedEnableOverlay:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/server/NtThemeManager;->mLastRequestedNeedConfiguration:Z

    .line 50
    new-instance v0, Lcom/android/server/NtThemeManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/NtThemeManager$1;-><init>(Lcom/android/server/NtThemeManager;)V

    iput-object v0, p0, Lcom/android/server/NtThemeManager;->mApplyExtraDarkTask:Ljava/lang/Runnable;

    .line 65
    iput-object p1, p0, Lcom/android/server/NtThemeManager;->mContext:Landroid/content/Context;

    .line 66
    nop

    .line 67
    const-string/jumbo v0, "overlay"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 66
    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NtThemeManager;->mOverlayService:Landroid/content/om/IOverlayManager;

    .line 68
    iget-object v0, p0, Lcom/android/server/NtThemeManager;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/NtThemeManager;->mAM:Landroid/app/ActivityManager;

    .line 69
    return-void
.end method

.method private applyExtraDarkOnWorker(ZZ)V
    .locals 8
    .param p1, "enableOverlay"    # Z
    .param p2, "needConfiguration"    # Z

    .line 168
    iget-object v0, p0, Lcom/android/server/NtThemeManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/NtThemeManager;->getExtraDarkInstalledPackages(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 169
    .local v0, "extraDarkPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/NtThemeManager;->getCurrentUser()I

    move-result v1

    .line 171
    .local v1, "currentUser":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 172
    .local v3, "pkg":Ljava/lang/String;
    const-string v4, "com.android.settings.extradark.overlay"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    goto :goto_0

    .line 176
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/NtThemeManager;->mOverlayService:Landroid/content/om/IOverlayManager;

    invoke-interface {v4, v3, p1, v1}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    .line 177
    const-string v4, "NtThemeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Overlay "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    if-eqz p1, :cond_1

    const-string v6, "enabled"

    goto :goto_1

    .line 178
    :catch_0
    move-exception v4

    goto :goto_2

    .line 177
    :cond_1
    const-string v6, "disabled"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    goto :goto_3

    .line 178
    :goto_2
    nop

    .line 179
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "NtThemeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error toggling overlay for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    goto :goto_0

    .line 183
    :cond_2
    if-eqz p2, :cond_3

    .line 184
    iget-object v2, p0, Lcom/android/server/NtThemeManager;->mMain:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/NtThemeManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/NtThemeManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/NtThemeManager;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    iget-object v2, p0, Lcom/android/server/NtThemeManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 186
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, p0, Lcom/android/server/NtThemeManager;->mLastRequestedNeedConfiguration:Z

    .line 187
    monitor-exit v2

    goto :goto_4

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 189
    :cond_3
    :goto_4
    return-void
.end method

.method private broadcastExtraDarkState(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 235
    const-string v0, "NtThemeManager"

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.action.EXTRA_DARK_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.systemui"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v2, "extra_dark_state"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 239
    iget-object v2, p0, Lcom/android/server/NtThemeManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasted extra dark state to SystemUI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    nop

    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 241
    :catchall_0
    move-exception v1

    .line 242
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "Failed to broadcast extra dark state"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private getCurrentUser()I
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/android/server/NtThemeManager;->mAM:Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    .line 230
    .local v0, "user":I
    :goto_0
    return v0
.end method

.method private getExtraDarkInstalledPackages(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 195
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    .local v1, "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    goto :goto_0

    .line 196
    .end local v1    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catchall_0
    move-exception v1

    .line 197
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getInstalledPackages failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NtThemeManager"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 200
    .local v1, "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v2, "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 202
    .local v4, "info":Landroid/content/pm/PackageInfo;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 203
    .local v5, "pkgName":Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v6, "extradark.overlay"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 204
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 207
    :cond_1
    return-object v2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/NtThemeManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 72
    sget-object v0, Lcom/android/server/NtThemeManager;->sInstance:Lcom/android/server/NtThemeManager;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/android/server/NtThemeManager;

    invoke-direct {v0, p0}, Lcom/android/server/NtThemeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/NtThemeManager;->sInstance:Lcom/android/server/NtThemeManager;

    .line 75
    :cond_0
    sget-object v0, Lcom/android/server/NtThemeManager;->sInstance:Lcom/android/server/NtThemeManager;

    return-object v0
.end method

.method private scheduleApply(ZZ)V
    .locals 4
    .param p1, "enableOverlay"    # Z
    .param p2, "needConfiguration"    # Z

    .line 151
    iget-object v0, p0, Lcom/android/server/NtThemeManager;->mWorker:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 152
    const-string v0, "NtThemeManager"

    const-string v1, "Worker not initialized yet; applying on main thread as fallback."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/android/server/NtThemeManager;->applyExtraDarkOnWorker(ZZ)V

    .line 154
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/server/NtThemeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/NtThemeManager;->mLastRequestedEnableOverlay:Z

    .line 158
    iget-boolean v1, p0, Lcom/android/server/NtThemeManager;->mLastRequestedNeedConfiguration:Z

    if-nez v1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/NtThemeManager;->mLastRequestedNeedConfiguration:Z

    .line 159
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-object v0, p0, Lcom/android/server/NtThemeManager;->mWorker:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/NtThemeManager;->mApplyExtraDarkTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 161
    iget-object v0, p0, Lcom/android/server/NtThemeManager;->mWorker:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/NtThemeManager;->mApplyExtraDarkTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    return-void

    .line 159
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setExtraDark(ZZ)V
    .locals 7
    .param p1, "darkMode"    # Z
    .param p2, "needConfiguration"    # Z

    .line 125
    invoke-direct {p0}, Lcom/android/server/NtThemeManager;->getCurrentUser()I

    move-result v0

    .line 126
    .local v0, "currentUser":I
    iget-object v1, p0, Lcom/android/server/NtThemeManager;->mContext:Landroid/content/Context;

    .line 127
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 126
    const-string/jumbo v2, "theme_extra_darkmode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 128
    .local v1, "featureEnabled":Z
    :goto_0
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    move v3, v2

    .line 129
    .local v3, "enableOverlay":Z
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setExtraDark, currentUser:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", enableOverlay:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mCurrentExtraDarkMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/NtThemeManager;->mCurrentExtraDarkMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NtThemeManager"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-boolean v4, p0, Lcom/android/server/NtThemeManager;->mCurrentExtraDarkMode:Z

    if-ne v4, v3, :cond_3

    .line 132
    if-eqz p2, :cond_2

    .line 133
    invoke-direct {p0, v3, v2}, Lcom/android/server/NtThemeManager;->scheduleApply(ZZ)V

    .line 135
    :cond_2
    return-void

    .line 138
    :cond_3
    iput-boolean v3, p0, Lcom/android/server/NtThemeManager;->mCurrentExtraDarkMode:Z

    .line 139
    iget-boolean v2, p0, Lcom/android/server/NtThemeManager;->mCurrentExtraDarkMode:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "persist.sys.extradark"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-boolean v2, p0, Lcom/android/server/NtThemeManager;->mCurrentExtraDarkMode:Z

    invoke-direct {p0, v2}, Lcom/android/server/NtThemeManager;->broadcastExtraDarkState(Z)V

    .line 142
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NtThemeManager;->mOverlayService:Landroid/content/om/IOverlayManager;

    const-string v4, "com.android.settings.extradark.overlay"

    invoke-interface {v2, v4, v3, v0}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Overlay com.android.settings.extradark.overlay set to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    if-eqz v3, :cond_4

    const-string v4, "enabled"

    goto :goto_1

    .line 144
    :catch_0
    move-exception v2

    goto :goto_2

    .line 143
    :cond_4
    const-string v4, "disabled"

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    goto :goto_3

    .line 144
    :goto_2
    nop

    .line 145
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error toggling overlay for com.android.settings.extradark.overlay: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-direct {p0, v3, p2}, Lcom/android/server/NtThemeManager;->scheduleApply(ZZ)V

    .line 148
    return-void
.end method

.method private updateEffective()V
    .locals 4

    .line 217
    const-string v0, "NtThemeManager"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/NtThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 218
    .local v1, "currentConfig":Landroid/content/res/Configuration;
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 219
    .local v2, "newConfig":Landroid/content/res/Configuration;
    iget v3, v2, Landroid/content/res/Configuration;->assetsSeq:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/content/res/Configuration;->assetsSeq:I

    .line 220
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/app/IActivityTaskManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    nop

    .end local v1    # "currentConfig":Landroid/content/res/Configuration;
    .end local v2    # "newConfig":Landroid/content/res/Configuration;
    goto :goto_2

    .line 223
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 221
    :catch_0
    move-exception v1

    goto :goto_1

    .line 223
    :goto_0
    nop

    .line 224
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "updateEffective failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 221
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    nop

    .line 222
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "updateEffective RemoteException"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 226
    :goto_2
    return-void
.end method


# virtual methods
.method public init()V
    .locals 5

    .line 79
    const-string v0, "NtThemeManager"

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NtThemeManager-Worker"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/NtThemeManager;->mWorkerThread:Landroid/os/HandlerThread;

    .line 81
    iget-object v0, p0, Lcom/android/server/NtThemeManager;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 82
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/NtThemeManager;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/NtThemeManager;->mWorker:Landroid/os/Handler;

    .line 84
    const-string/jumbo v0, "theme_extra_darkmode"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 85
    .local v0, "uri":Landroid/net/Uri;
    const-string/jumbo v1, "persist.sys.extradark"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/NtThemeManager;->mCurrentExtraDarkMode:Z

    .line 86
    iget-boolean v1, p0, Lcom/android/server/NtThemeManager;->mCurrentExtraDarkMode:Z

    invoke-direct {p0, v1}, Lcom/android/server/NtThemeManager;->broadcastExtraDarkState(Z)V

    .line 87
    new-instance v1, Lcom/android/server/NtThemeManager$2;

    iget-object v2, p0, Lcom/android/server/NtThemeManager;->mMain:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/NtThemeManager$2;-><init>(Lcom/android/server/NtThemeManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/NtThemeManager;->mExtraDarkObserver:Landroid/database/ContentObserver;

    .line 95
    iget-object v1, p0, Lcom/android/server/NtThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/NtThemeManager;->mExtraDarkObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 96
    return-void
.end method

.method public isSystemInDarkMode()Z
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/android/server/NtThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    .line 212
    .local v0, "night":I
    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onUserSwitching(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 116
    iget-object v0, p0, Lcom/android/server/NtThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "theme_extra_darkmode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 117
    .local v0, "featureEnabled":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/NtThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 118
    .local v3, "isNightEnabled":Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    move v2, v1

    .line 119
    .local v2, "enableOverlay":Z
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/NtThemeManager;->mCurrentExtraDarkMode:Z

    .line 120
    iget-boolean v1, p0, Lcom/android/server/NtThemeManager;->mCurrentExtraDarkMode:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "persist.sys.extradark"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-boolean v1, p0, Lcom/android/server/NtThemeManager;->mCurrentExtraDarkMode:Z

    invoke-direct {p0, v1}, Lcom/android/server/NtThemeManager;->broadcastExtraDarkState(Z)V

    .line 122
    return-void
.end method

.method public setExtraDark(Z)V
    .locals 1
    .param p1, "darkMode"    # Z

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/NtThemeManager;->setExtraDark(ZZ)V

    .line 113
    return-void
.end method

.method public unInit()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/android/server/NtThemeManager;->mExtraDarkObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/server/NtThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/NtThemeManager;->mExtraDarkObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 101
    iput-object v1, p0, Lcom/android/server/NtThemeManager;->mExtraDarkObserver:Landroid/database/ContentObserver;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/server/NtThemeManager;->mWorkerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/android/server/NtThemeManager;->mWorker:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/android/server/NtThemeManager;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 106
    iput-object v1, p0, Lcom/android/server/NtThemeManager;->mWorkerThread:Landroid/os/HandlerThread;

    .line 107
    iput-object v1, p0, Lcom/android/server/NtThemeManager;->mWorker:Landroid/os/Handler;

    .line 109
    :cond_1
    return-void
.end method
