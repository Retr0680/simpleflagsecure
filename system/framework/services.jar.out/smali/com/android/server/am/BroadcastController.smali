.class Lcom/android/server/am/BroadcastController;
.super Ljava/lang/Object;
.source "BroadcastController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BroadcastController$StickyBroadcast;
    }
.end annotation


# static fields
.field private static final DYNAMIC_RECEIVER_EXPLICIT_EXPORT_REQUIRED:J = 0x99ae1c7L

.field private static final MAX_RECEIVERS_ALLOWED_PER_APP:I = 0x3e8

.field private static final TAG_BROADCAST:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private volatile mAreStickyCachesInvalidated:Z

.field private mBackgroundLaunchBroadcasts:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

.field private final mContext:Landroid/content/Context;

.field mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

.field mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

.field final mReceiverResolver:Lcom/android/server/IntentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/IntentResolver<",
            "Lcom/android/server/am/BroadcastFilter;",
            "Lcom/android/server/am/BroadcastFilter;",
            ">;"
        }
    .end annotation
.end field

.field final mRegisteredReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/am/ReceiverList;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field final mStickyBroadcasts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastController$StickyBroadcast;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueue;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "queue"    # Lcom/android/server/am/BroadcastQueue;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastController;->mRegisteredReceivers:Ljava/util/HashMap;

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastController;->mAreStickyCachesInvalidated:Z

    .line 218
    new-instance v0, Lcom/android/server/am/BroadcastController$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/BroadcastController$1;-><init>(Lcom/android/server/am/BroadcastController;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastController;->mReceiverResolver:Lcom/android/server/IntentResolver;

    .line 259
    iput-object p1, p0, Lcom/android/server/am/BroadcastController;->mContext:Landroid/content/Context;

    .line 260
    iput-object p2, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 261
    iput-object p3, p0, Lcom/android/server/am/BroadcastController;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    .line 262
    return-void
.end method

.method private checkBroadcastFromSystem(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IZLjava/util/List;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "callerPackage"    # Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "isProtectedBroadcast"    # Z
    .param p6, "receivers"    # Ljava/util/List;

    .line 2129
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2131
    return-void

    .line 2134
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2135
    .local v0, "action":Ljava/lang/String;
    nop

    nop

    if-nez p5, :cond_b

    .line 2136
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-nez v1, :cond_b

    .line 2137
    const-string v1, "com.android.intent.action.DISMISS_KEYBOARD_SHORTCUTS"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-nez v1, :cond_b

    .line 2138
    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-nez v1, :cond_b

    .line 2139
    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-nez v1, :cond_b

    .line 2140
    const-string v1, "com.android.intent.action.SHOW_KEYBOARD_SHORTCUTS"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-nez v1, :cond_b

    .line 2141
    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-nez v1, :cond_b

    .line 2142
    const-string v1, "android.intent.action.FACTORY_RESET"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-nez v1, :cond_b

    .line 2143
    const-string v1, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-nez v1, :cond_b

    .line 2144
    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-nez v1, :cond_b

    .line 2145
    const-string v1, "com.android.omadm.service.CONFIGURATION_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-nez v1, :cond_b

    .line 2146
    const-string v1, "android.text.style.SUGGESTION_PICKED"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-nez v1, :cond_b

    .line 2147
    const-string v1, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-nez v1, :cond_b

    .line 2148
    const-string v1, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_5

    .line 2159
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 2160
    :cond_2
    if-eqz p6, :cond_3

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    goto/16 :goto_4

    .line 2169
    :cond_4
    const/4 v1, 0x1

    .line 2170
    .local v1, "allProtected":Z
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_8

    .line 2171
    invoke-interface {p6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 2172
    .local v3, "target":Ljava/lang/Object;
    instance-of v4, v3, Landroid/content/pm/ResolveInfo;

    if-eqz v4, :cond_6

    .line 2173
    move-object v4, v3

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 2174
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v5, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v5, :cond_5

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-nez v5, :cond_5

    .line 2175
    const/4 v1, 0x0

    .line 2176
    goto :goto_2

    .line 2178
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_5
    goto :goto_1

    .line 2179
    :cond_6
    move-object v4, v3

    check-cast v4, Lcom/android/server/am/BroadcastFilter;

    .line 2180
    .local v4, "bf":Lcom/android/server/am/BroadcastFilter;
    iget-boolean v5, v4, Lcom/android/server/am/BroadcastFilter;->exported:Z

    if-eqz v5, :cond_7

    iget-object v5, v4, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    if-nez v5, :cond_7

    .line 2181
    const/4 v1, 0x0

    .line 2182
    goto :goto_2

    .line 2170
    .end local v3    # "target":Ljava/lang/Object;
    .end local v4    # "bf":Lcom/android/server/am/BroadcastFilter;
    :cond_7
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2186
    .end local v2    # "i":I
    :cond_8
    :goto_2
    if-eqz v1, :cond_9

    .line 2188
    return-void

    .line 2195
    .end local v1    # "allProtected":Z
    :cond_9
    const-string v1, " pkg "

    const-string v2, "Sending non-protected broadcast "

    const-string v3, "ActivityManager"

    if-eqz p2, :cond_a

    .line 2196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from system "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2197
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 2196
    invoke-static {v3, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 2200
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from system uid "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2201
    invoke-static {p4}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 2200
    invoke-static {v3, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2205
    :goto_3
    return-void

    .line 2167
    :goto_4
    return-void

    .line 2151
    :cond_b
    :goto_5
    return-void
.end method

.method private collectReceiverComponents(Landroid/content/Intent;Ljava/lang/String;II[I[I)Ljava/util/List;
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "users"    # [I
    .param p6, "broadcastAllowList"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II[I[I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 2026
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    const-wide/32 v6, 0x10000400

    .line 2028
    .local v6, "pmFlags":J
    const/4 v3, 0x0

    .line 2029
    .local v3, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    .line 2030
    .local v4, "singleUserReceivers":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    const/4 v5, 0x0

    .line 2031
    .local v5, "scannedFirstReceivers":Z
    array-length v12, v1

    const/4 v8, 0x0

    move-object v13, v3

    move-object v14, v4

    move v15, v5

    move v3, v8

    .end local v3    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "singleUserReceivers":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .end local v5    # "scannedFirstReceivers":Z
    .local v13, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v14, "singleUserReceivers":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .local v15, "scannedFirstReceivers":Z
    :goto_0
    if-ge v3, v12, :cond_10

    aget v9, v1, v3

    .line 2033
    .local v9, "user":I
    const/16 v4, 0x7d0

    move/from16 v10, p3

    nop

    if-ne v10, v4, :cond_0

    iget-object v4, v0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 2034
    const-string/jumbo v5, "no_debugging_features"

    invoke-virtual {v4, v5, v9}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2036
    move/from16 v16, v3

    goto/16 :goto_9

    .line 2038
    :cond_0
    iget-object v4, v0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v11, 0x1

    move-object/from16 v5, p2

    move/from16 v16, v3

    move-object v3, v4

    move v8, v10

    move-object/from16 v4, p1

    move v10, v9

    move/from16 v9, p4

    .end local v9    # "user":I
    .local v10, "user":I
    invoke-virtual/range {v3 .. v11}, Landroid/content/pm/PackageManagerInternal;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JIIIZ)Ljava/util/List;

    move-result-object v3

    .line 2040
    move v9, v10

    .end local v10    # "user":I
    .local v3, "newReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v9    # "user":I
    if-eqz v9, :cond_2

    if-eqz v3, :cond_2

    .line 2043
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 2044
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 2045
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v10, 0x20000000

    and-int/2addr v8, v10

    if-eqz v8, :cond_1

    .line 2046
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2047
    add-int/lit8 v4, v4, -0x1

    .line 2043
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2052
    .end local v4    # "i":I
    :cond_2
    if-eqz v3, :cond_6

    .line 2053
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .restart local v4    # "i":I
    :goto_2
    if-ltz v4, :cond_5

    .line 2054
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 2055
    .restart local v5    # "ri":Landroid/content/pm/ResolveInfo;
    iget-object v8, v0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mComponentAliasResolver:Lcom/android/server/am/ComponentAliasResolver;

    .line 2056
    move/from16 v10, p3

    move/from16 v11, p4

    move-object v0, v3

    move v1, v4

    move-object v3, v8

    move-object/from16 v4, p1

    move-wide v7, v6

    move-object/from16 v6, p2

    .end local v3    # "newReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "i":I
    .end local v6    # "pmFlags":J
    .local v0, "newReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v1, "i":I
    .local v7, "pmFlags":J
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/ComponentAliasResolver;->resolveReceiver(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/String;JIII)Lcom/android/server/am/ComponentAliasResolver$Resolution;

    move-result-object v3

    .line 2058
    move-wide v6, v7

    .end local v7    # "pmFlags":J
    .local v3, "resolution":Lcom/android/server/am/ComponentAliasResolver$Resolution;, "Lcom/android/server/am/ComponentAliasResolver$Resolution<Landroid/content/pm/ResolveInfo;>;"
    .restart local v6    # "pmFlags":J
    if-nez v3, :cond_3

    .line 2060
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2061
    goto :goto_3

    .line 2063
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/am/ComponentAliasResolver$Resolution;->isAlias()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2064
    invoke-virtual {v3}, Lcom/android/server/am/ComponentAliasResolver$Resolution;->getTarget()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-interface {v0, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2053
    .end local v3    # "resolution":Lcom/android/server/am/ComponentAliasResolver$Resolution;, "Lcom/android/server/am/ComponentAliasResolver$Resolution<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    :goto_3
    add-int/lit8 v4, v1, -0x1

    move-object/from16 v1, p5

    move-object v3, v0

    move-object/from16 v0, p0

    .end local v1    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    .end local v0    # "newReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v3, "newReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_5
    move-object v0, v3

    move v1, v4

    .end local v3    # "newReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "i":I
    .restart local v0    # "newReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v1    # "i":I
    goto :goto_4

    .line 2052
    .end local v0    # "newReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "i":I
    .restart local v3    # "newReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_6
    move-object v0, v3

    .line 2068
    .end local v3    # "newReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v0    # "newReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_4
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_7

    .line 2069
    const/4 v3, 0x0

    .end local v0    # "newReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3    # "newReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_5

    .line 2072
    .end local v3    # "newReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v0    # "newReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_7
    move-object v3, v0

    .end local v0    # "newReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3    # "newReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_5
    if-nez v13, :cond_8

    .line 2073
    move-object v0, v3

    move-object v13, v0

    .end local v13    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v0, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto/16 :goto_9

    .line 2074
    .end local v0    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v13    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_8
    if-eqz v3, :cond_f

    .line 2079
    const/high16 v0, 0x40000000    # 2.0f

    if-nez v15, :cond_b

    .line 2081
    const/4 v15, 0x1

    .line 2082
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    .line 2083
    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 2084
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/2addr v5, v0

    if-eqz v5, :cond_a

    .line 2085
    new-instance v5, Landroid/content/ComponentName;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v8, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2087
    .local v5, "cn":Landroid/content/ComponentName;
    if-nez v14, :cond_9

    .line 2088
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    move-object v14, v8

    .line 2090
    :cond_9
    invoke-virtual {v14, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2082
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v5    # "cn":Landroid/content/ComponentName;
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2096
    .end local v1    # "i":I
    :cond_b
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_f

    .line 2097
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 2098
    .restart local v4    # "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/2addr v5, v0

    if-eqz v5, :cond_e

    .line 2099
    new-instance v5, Landroid/content/ComponentName;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v8, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2101
    .restart local v5    # "cn":Landroid/content/ComponentName;
    if-nez v14, :cond_c

    .line 2102
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    move-object v14, v8

    .line 2104
    :cond_c
    invoke-virtual {v14, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 2105
    invoke-virtual {v14, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2106
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2108
    .end local v5    # "cn":Landroid/content/ComponentName;
    :cond_d
    goto :goto_8

    .line 2109
    :cond_e
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2096
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2031
    .end local v1    # "i":I
    .end local v3    # "newReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "user":I
    :cond_f
    :goto_9
    add-int/lit8 v3, v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    goto/16 :goto_0

    .line 2114
    :cond_10
    if-eqz v13, :cond_12

    if-eqz v2, :cond_12

    .line 2115
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_12

    .line 2116
    nop

    .line 2117
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2116
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 2118
    .local v1, "receiverAppId":I
    const/16 v3, 0x2710

    if-lt v1, v3, :cond_11

    .line 2119
    invoke-static {v2, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-gez v3, :cond_11

    .line 2120
    invoke-interface {v13, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2115
    .end local v1    # "receiverAppId":I
    :cond_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 2124
    .end local v0    # "i":I
    :cond_12
    return-object v13
.end method

.method private enforceBroadcastOptionPermissionsInternal(Landroid/app/BroadcastOptions;I)V
    .locals 3
    .param p1, "options"    # Landroid/app/BroadcastOptions;
    .param p2, "callingUid"    # I

    .line 2216
    if-eqz p1, :cond_2

    const/16 v0, 0x3e8

    if-eq p2, v0, :cond_2

    .line 2217
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->isAlarmBroadcast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2218
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    if-eqz v0, :cond_0

    .line 2219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Non-system caller "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " may not flag broadcast as alarm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Non-system callers may not flag broadcasts as alarm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2225
    :cond_1
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2226
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.BROADCAST_OPTION_INTERACTIVE"

    const-string/jumbo v2, "setInteractive"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2231
    :cond_2
    return-void
.end method

.method private getBackgroundLaunchBroadcasts()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1980
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mBackgroundLaunchBroadcasts:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 1981
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowImplicitBroadcasts()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastController;->mBackgroundLaunchBroadcasts:Landroid/util/ArraySet;

    .line 1983
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mBackgroundLaunchBroadcasts:Landroid/util/ArraySet;

    return-object v0
.end method

.method private static getIntArg(Ljava/io/PrintWriter;[Ljava/lang/String;II)I
    .locals 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "invalidValue"    # I

    .line 2439
    array-length v0, p1

    if-le p2, v0, :cond_0

    .line 2440
    const-string v0, "Missing argument"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2441
    return p3

    .line 2443
    :cond_0
    aget-object v0, p1, p2

    .line 2445
    .local v0, "arg":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2446
    :catch_0
    move-exception v1

    .line 2447
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Non-numeric argument at index %d: %s\n"

    invoke-virtual {p0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2448
    return p3
.end method

.method private getRealProcessStateLocked(Lcom/android/server/am/ProcessRecord;I)I
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "pid"    # I

    .line 1773
    if-nez p1, :cond_0

    .line 1774
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    .line 1775
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v1, p2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    move-object p1, v1

    .line 1776
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1778
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1779
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    return v0

    .line 1781
    :cond_1
    const/16 v0, 0x14

    return v0
.end method

.method private getRealUidStateLocked(Lcom/android/server/am/ProcessRecord;I)I
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "pid"    # I

    .line 1786
    if-nez p1, :cond_0

    .line 1787
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    .line 1788
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v1, p2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    move-object p1, v1

    .line 1789
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1791
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1792
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 1793
    .local v0, "uidRecord":Lcom/android/server/am/UidRecord;
    if-eqz v0, :cond_1

    .line 1794
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v1

    return v1

    .line 1797
    .end local v0    # "uidRecord":Lcom/android/server/am/UidRecord;
    :cond_1
    const/16 v0, 0x14

    return v0
.end method

.method private getUidFromIntent(Landroid/content/Intent;)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1893
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 1894
    return v0

    .line 1896
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1897
    .local v1, "intentExtras":Landroid/os/Bundle;
    const-string v2, "android.intent.extra.UID"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1898
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    nop

    .line 1897
    :goto_0
    return v0
.end method

.method private getWearRemoteIntentAction()Ljava/lang/String;
    .locals 2

    .line 2014
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isInstantApp(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "record"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 1987
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 1988
    return v2

    .line 1991
    :cond_0
    if-eqz p1, :cond_1

    .line 1992
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    return v0

    .line 1995
    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1997
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    if-nez p2, :cond_3

    .line 1998
    :try_start_0
    invoke-interface {v0, p3}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 1999
    .local v1, "packageNames":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v3, v1

    if-eqz v3, :cond_2

    .line 2003
    aget-object v2, v1, v2

    move-object p2, v2

    goto :goto_0

    .line 2007
    .end local v1    # "packageNames":[Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 2000
    .restart local v1    # "packageNames":[Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to determine caller package name"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .end local p0    # "this":Lcom/android/server/am/BroadcastController;
    .end local p1    # "record":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "callerPackage":Ljava/lang/String;
    .end local p3    # "uid":I
    throw v2

    .line 2005
    .end local v1    # "packageNames":[Ljava/lang/String;
    .restart local v0    # "pm":Landroid/content/pm/IPackageManager;
    .restart local p0    # "this":Lcom/android/server/am/BroadcastController;
    .restart local p1    # "record":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "callerPackage":Ljava/lang/String;
    .restart local p3    # "uid":I
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v1, p3, p2}, Lcom/android/server/appop/AppOpsService;->checkPackage(ILjava/lang/String;)I

    .line 2006
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-interface {v0, p2, v1}, Landroid/content/pm/IPackageManager;->isInstantApp(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2007
    :goto_1
    nop

    .line 2008
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error looking up if "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is an instant app."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2009
    const/4 v2, 0x1

    return v2
.end method

.method private isShellOrRoot(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 1741
    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private registerReceiverWithFeatureTraced(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;
    .locals 62
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "callerFeatureId"    # Ljava/lang/String;
    .param p4, "receiverId"    # Ljava/lang/String;
    .param p5, "receiver"    # Landroid/content/IIntentReceiver;
    .param p6, "filter"    # Landroid/content/IntentFilter;
    .param p7, "permission"    # Ljava/lang/String;
    .param p8, "userId"    # I
    .param p9, "flags"    # I

    .line 319
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    move-object/from16 v11, p6

    move/from16 v12, p9

    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "registerReceiver"

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 321
    iget-boolean v0, v1, Lcom/android/server/am/BroadcastController;->mAreStickyCachesInvalidated:Z

    const/4 v13, 0x1

    if-nez v0, :cond_0

    .line 322
    invoke-static {}, Landroid/app/BroadcastStickyCache;->invalidateAllCaches()V

    .line 323
    iput-boolean v13, v1, Lcom/android/server/am/BroadcastController;->mAreStickyCachesInvalidated:Z

    .line 325
    :cond_0
    const/4 v14, 0x0

    .line 326
    .local v14, "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    const/4 v3, 0x0

    .line 327
    .local v3, "callerApp":Lcom/android/server/am/ProcessRecord;
    and-int/lit8 v0, v12, 0x1

    if-eqz v0, :cond_1

    move v0, v13

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move/from16 v16, v0

    .line 333
    .local v16, "visibleToInstantApps":Z
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v4

    .line 334
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_13

    move-object v3, v0

    .line 335
    const/4 v5, 0x0

    if-nez v3, :cond_2

    .line 336
    :try_start_1
    const-string v0, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "registerReceiverWithFeature: no app for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-object v5

    .line 348
    :catchall_0
    move-exception v0

    move-object v10, v6

    move/from16 v13, v16

    goto/16 :goto_24

    .line 339
    :cond_2
    :try_start_2
    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_12

    if-nez v0, :cond_4

    .line 340
    :try_start_3
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 341
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Given caller package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not running in process "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v3    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v14    # "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v16    # "visibleToInstantApps":Z
    .end local p0    # "this":Lcom/android/server/am/BroadcastController;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "callerPackage":Ljava/lang/String;
    .end local p3    # "callerFeatureId":Ljava/lang/String;
    .end local p4    # "receiverId":Ljava/lang/String;
    .end local p5    # "receiver":Landroid/content/IIntentReceiver;
    .end local p6    # "filter":Landroid/content/IntentFilter;
    .end local p7    # "permission":Ljava/lang/String;
    .end local p8    # "userId":I
    .end local p9    # "flags":I
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 344
    .restart local v3    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v14    # "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v16    # "visibleToInstantApps":Z
    .restart local p0    # "this":Lcom/android/server/am/BroadcastController;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "callerPackage":Ljava/lang/String;
    .restart local p3    # "callerFeatureId":Ljava/lang/String;
    .restart local p4    # "receiverId":Ljava/lang/String;
    .restart local p5    # "receiver":Landroid/content/IIntentReceiver;
    .restart local p6    # "filter":Landroid/content/IntentFilter;
    .restart local p7    # "permission":Ljava/lang/String;
    .restart local p8    # "userId":I
    .restart local p9    # "flags":I
    :cond_4
    :goto_1
    :try_start_4
    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 345
    .local v9, "callingUid":I
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v8

    .line 347
    .local v8, "callingPid":I
    invoke-direct {v1, v3, v6, v9}, Lcom/android/server/am/BroadcastController;->isInstantApp(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)Z

    move-result v0

    move/from16 v17, v0

    .line 348
    .local v17, "instantApp":Z
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 349
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move v4, v8

    .end local v8    # "callingPid":I
    .local v4, "callingPid":I
    const/4 v8, 0x2

    move v10, v9

    .end local v9    # "callingUid":I
    .local v10, "callingUid":I
    const-string/jumbo v9, "registerReceiver"

    const/4 v7, 0x1

    move-object/from16 v19, v3

    move-object v15, v5

    move v5, v10

    move-object v3, v0

    move-object v10, v6

    move/from16 v6, p8

    .end local v3    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v10    # "callingUid":I
    .local v5, "callingUid":I
    .local v19, "callerApp":Lcom/android/server/am/ProcessRecord;
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 355
    move v8, v4

    move v4, v5

    move-object v3, v10

    .end local v5    # "callingUid":I
    .end local p8    # "userId":I
    .local v4, "callingUid":I
    .restart local v8    # "callingPid":I
    .local v20, "userId":I
    invoke-static {v4}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    const/16 v5, 0x3e8

    if-eqz v0, :cond_b

    .line 356
    invoke-virtual {v11}, Landroid/content/IntentFilter;->getPriority()I

    move-result v0

    .line 357
    .local v0, "priority":I
    if-ge v0, v5, :cond_5

    const/16 v6, -0x3e8

    if-gt v0, v6, :cond_6

    :cond_5
    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    :goto_2
    move v6, v13

    .line 359
    .local v6, "systemPriority":Z
    :goto_3
    if-nez v6, :cond_b

    .line 360
    invoke-virtual {v11}, Landroid/content/IntentFilter;->countActions()I

    move-result v7

    .line 361
    .local v7, "N":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    if-ge v9, v7, :cond_b

    .line 363
    invoke-virtual {v11, v9}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v10

    .line 364
    .local v10, "action":Ljava/lang/String;
    const-string v15, "android.intent.action.USER_"

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    nop

    if-nez v15, :cond_8

    const-string v15, "android.intent.action.PACKAGE_"

    .line 365
    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    nop

    if-nez v15, :cond_8

    const-string v15, "android.intent.action.UID_"

    .line 366
    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    nop

    if-nez v15, :cond_8

    const-string v15, "android.intent.action.EXTERNAL_"

    .line 367
    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    nop

    if-nez v15, :cond_8

    const-string v15, "android.bluetooth."

    .line 368
    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    nop

    if-nez v15, :cond_8

    const-string v15, "android.intent.action.ACTION_SHUTDOWN"

    .line 369
    invoke-virtual {v10, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    goto :goto_5

    .line 361
    .end local v10    # "action":Ljava/lang/String;
    :cond_7
    add-int/lit8 v9, v9, 0x1

    const/4 v15, 0x0

    goto :goto_4

    .line 370
    .restart local v10    # "action":Ljava/lang/String;
    :cond_8
    :goto_5
    sget-boolean v15, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v15, :cond_9

    .line 371
    const-string v15, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "System internals registering for "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v11}, Landroid/content/IntentFilter;->toLongString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " with app priority; this will race with apps!"

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v13, Ljava/lang/Throwable;

    invoke-direct {v13}, Ljava/lang/Throwable;-><init>()V

    .line 371
    invoke-static {v15, v5, v13}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    :cond_9
    if-nez v0, :cond_a

    .line 381
    const/16 v5, 0x3e8

    invoke-virtual {v11, v5}, Landroid/content/IntentFilter;->setPriority(I)V

    goto :goto_6

    .line 380
    :cond_a
    const/16 v5, 0x3e8

    .line 389
    .end local v0    # "priority":I
    .end local v6    # "systemPriority":Z
    .end local v7    # "N":I
    .end local v9    # "i":I
    .end local v10    # "action":Ljava/lang/String;
    :cond_b
    :goto_6
    invoke-virtual {v11}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 390
    .local v0, "actions":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-nez v0, :cond_c

    .line 391
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 392
    .local v6, "noAction":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v21, v0

    goto :goto_7

    .line 390
    .end local v6    # "noAction":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c
    move-object/from16 v21, v0

    .line 395
    .end local v0    # "actions":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local v21, "actions":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_7
    const/4 v0, 0x1

    .line 399
    .local v0, "onlyProtectedBroadcasts":Z
    const/4 v6, -0x1

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    filled-new-array {v6, v7}, [I

    move-result-object v6

    move-object v13, v6

    .line 400
    .local v13, "userIds":[I
    iget-object v6, v1, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    monitor-enter v6

    move-object v15, v14

    move v14, v0

    .line 401
    .end local v0    # "onlyProtectedBroadcasts":Z
    .local v14, "onlyProtectedBroadcasts":Z
    .local v15, "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    :goto_8
    :try_start_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_10

    if-eqz v0, :cond_12

    .line 402
    :try_start_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 403
    .local v7, "action":Ljava/lang/String;
    array-length v0, v13

    const/4 v9, 0x0

    :goto_9
    if-ge v9, v0, :cond_10

    aget v10, v13, v9

    .line 404
    .local v10, "id":I
    iget-object v5, v1, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    .line 405
    invoke-virtual {v5, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 406
    .local v5, "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    if-eqz v5, :cond_f

    .line 407
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    move-object/from16 v23, v22

    .line 408
    .local v23, "broadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    if-eqz v23, :cond_e

    .line 409
    if-nez v15, :cond_d

    .line 410
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v15, v22

    .end local v15    # "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .local v22, "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    goto :goto_a

    .line 426
    .end local v5    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    .end local v7    # "action":Ljava/lang/String;
    .end local v10    # "id":I
    .end local v22    # "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v23    # "broadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v15    # "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    :catchall_1
    move-exception v0

    move-object v10, v3

    move v9, v4

    move-object/from16 v18, v13

    move/from16 v13, v16

    move/from16 v3, v17

    move/from16 v7, v20

    goto/16 :goto_23

    .line 412
    .restart local v5    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    .restart local v7    # "action":Ljava/lang/String;
    .restart local v10    # "id":I
    .restart local v23    # "broadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    :cond_d
    :goto_a
    move/from16 v22, v0

    move-object/from16 v0, v23

    .end local v23    # "broadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .local v0, "broadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_b

    .line 408
    .end local v0    # "broadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v23    # "broadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    :cond_e
    move/from16 v22, v0

    move-object/from16 v0, v23

    .end local v23    # "broadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v0    # "broadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    goto :goto_b

    .line 406
    .end local v0    # "broadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    :cond_f
    move/from16 v22, v0

    .line 403
    .end local v5    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    .end local v10    # "id":I
    :goto_b
    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v22

    const/16 v5, 0x3e8

    goto :goto_9

    .line 416
    :cond_10
    if-eqz v14, :cond_11

    .line 418
    nop

    .line 419
    :try_start_7
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/content/pm/IPackageManager;->isProtectedBroadcast(Ljava/lang/String;)Z

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    and-int/2addr v0, v14

    .line 423
    .end local v14    # "onlyProtectedBroadcasts":Z
    .local v0, "onlyProtectedBroadcasts":Z
    move v14, v0

    goto :goto_c

    .line 420
    .end local v0    # "onlyProtectedBroadcasts":Z
    .restart local v14    # "onlyProtectedBroadcasts":Z
    :catch_0
    move-exception v0

    nop

    .line 421
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v14, 0x0

    .line 422
    :try_start_8
    const-string v5, "ActivityManager"

    const-string v9, "Remote exception"

    invoke-static {v5, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 425
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v7    # "action":Ljava/lang/String;
    :cond_11
    :goto_c
    const/16 v5, 0x3e8

    goto :goto_8

    .line 426
    :cond_12
    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_10

    .line 428
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 429
    const-class v0, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    .line 430
    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    .line 431
    .local v0, "sdkSandboxManagerLocal":Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;
    if-eqz v0, :cond_14

    .line 435
    invoke-interface {v0, v11, v12, v14}, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;->canRegisterBroadcastReceiver(Landroid/content/IntentFilter;IZ)Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_d

    .line 437
    :cond_13
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SDK sandbox not allowed to register receiver with the given IntentFilter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v11}, Landroid/content/IntentFilter;->toLongString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 432
    :cond_14
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "SdkSandboxManagerLocal not found when checking whether SDK sandbox uid can register to broadcast receivers."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 446
    .end local v0    # "sdkSandboxManagerLocal":Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;
    :cond_15
    :goto_d
    and-int/lit8 v0, v12, 0x6

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_e

    :cond_16
    const/4 v0, 0x0

    :goto_e
    move/from16 v22, v0

    .line 448
    .local v22, "explicitExportStateDefined":Z
    and-int/lit8 v0, v12, 0x2

    if-eqz v0, :cond_17

    and-int/lit8 v0, v12, 0x4

    if-nez v0, :cond_18

    :cond_17
    goto :goto_f

    .line 450
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Receiver can\'t specify both RECEIVER_EXPORTED and RECEIVER_NOT_EXPORTEDflag"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :goto_f
    const-wide/32 v5, 0x99ae1c7

    invoke-static {v5, v6, v4}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v23

    .line 462
    .local v23, "requireExplicitFlagForDynamicReceivers":Z
    and-int/lit8 v0, v12, 0x1

    if-eqz v0, :cond_19

    and-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_10

    :cond_19
    const/4 v0, 0x0

    :goto_10
    move/from16 v24, v0

    .line 465
    .local v24, "unexportedReceiverVisibleToInstantApps":Z
    if-eqz v24, :cond_1a

    if-nez v23, :cond_1b

    :cond_1a
    goto :goto_11

    .line 466
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Receiver can\'t specify both RECEIVER_VISIBLE_TO_INSTANT_APPS and RECEIVER_NOT_EXPORTED flag"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :goto_11
    if-nez v14, :cond_1f

    .line 472
    if-nez p5, :cond_1c

    if-nez v22, :cond_1c

    .line 474
    or-int/lit8 v0, v12, 0x2

    move/from16 v25, v0

    .end local p9    # "flags":I
    .local v0, "flags":I
    goto :goto_13

    .line 475
    .end local v0    # "flags":I
    .restart local p9    # "flags":I
    :cond_1c
    if-eqz v23, :cond_1d

    if-eqz v22, :cond_1e

    :cond_1d
    goto :goto_12

    .line 476
    :cond_1e
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": One of RECEIVER_EXPORTED or RECEIVER_NOT_EXPORTED should be specified when a receiver isn\'t being registered exclusively for system broadcasts"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :goto_12
    if-nez v23, :cond_20

    and-int/lit8 v0, v12, 0x4

    if-nez v0, :cond_20

    .line 484
    or-int/lit8 v0, v12, 0x2

    move/from16 v25, v0

    .end local p9    # "flags":I
    .restart local v0    # "flags":I
    goto :goto_13

    .line 486
    .end local v0    # "flags":I
    .restart local p9    # "flags":I
    :cond_1f
    and-int/lit8 v0, v12, 0x4

    if-nez v0, :cond_20

    .line 487
    or-int/lit8 v0, v12, 0x2

    move/from16 v25, v0

    .end local p9    # "flags":I
    .restart local v0    # "flags":I
    goto :goto_13

    .line 491
    .end local v0    # "flags":I
    .restart local p9    # "flags":I
    :cond_20
    move/from16 v25, v12

    .end local p9    # "flags":I
    .local v25, "flags":I
    :goto_13
    and-int/lit8 v0, v25, 0x2

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    goto :goto_14

    :cond_21
    const/4 v0, 0x0

    :goto_14
    move/from16 v26, v0

    .line 493
    .local v26, "exported":Z
    const/4 v0, 0x0

    .line 494
    .local v0, "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    if-eqz v15, :cond_26

    .line 495
    iget-object v5, v1, Lcom/android/server/am/BroadcastController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    .line 497
    .local v27, "resolver":Landroid/content/ContentResolver;
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "N":I
    :goto_15
    if-ge v5, v6, :cond_25

    .line 498
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    .line 499
    .local v7, "broadcast":Lcom/android/server/am/BroadcastController$StickyBroadcast;
    iget-object v9, v7, Lcom/android/server/am/BroadcastController$StickyBroadcast;->intent:Landroid/content/Intent;

    .line 501
    .local v9, "intent":Landroid/content/Intent;
    if-eqz v17, :cond_22

    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v10

    const/high16 v12, 0x200000

    and-int/2addr v10, v12

    if-nez v10, :cond_22

    .line 503
    move-object v2, v3

    move/from16 v33, v4

    move/from16 v32, v5

    move/from16 v29, v6

    move-object v3, v11

    move-object/from16 p8, v13

    move/from16 v28, v14

    move v13, v8

    goto :goto_16

    .line 510
    :cond_22
    nop

    .line 511
    move v10, v4

    .end local v4    # "callingUid":I
    .local v10, "callingUid":I
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    move v12, v5

    .end local v5    # "i":I
    .local v12, "i":I
    iget-object v5, v7, Lcom/android/server/am/BroadcastController$StickyBroadcast;->resolvedDataType:Ljava/lang/String;

    .line 512
    move/from16 v28, v6

    .end local v6    # "N":I
    .local v28, "N":I
    invoke-virtual {v9}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v29, v7

    .end local v7    # "broadcast":Lcom/android/server/am/BroadcastController$StickyBroadcast;
    .local v29, "broadcast":Lcom/android/server/am/BroadcastController$StickyBroadcast;
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    move/from16 v30, v8

    .end local v8    # "callingPid":I
    .local v30, "callingPid":I
    invoke-virtual {v9}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    move-object/from16 v31, v9

    .end local v9    # "intent":Landroid/content/Intent;
    .local v31, "intent":Landroid/content/Intent;
    const-string v9, "ActivityManager"

    .line 514
    move/from16 v32, v12

    .end local v12    # "i":I
    .local v32, "i":I
    invoke-virtual/range {v31 .. v31}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 511
    move/from16 v33, v10

    .end local v10    # "callingUid":I
    .local v33, "callingUid":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 p8, v28

    move/from16 v28, v14

    move-object/from16 v14, v29

    move/from16 v29, p8

    move-object v2, v3

    move-object/from16 p8, v13

    move/from16 v13, v30

    move-object/from16 v3, p6

    .end local v30    # "callingPid":I
    .local v13, "callingPid":I
    .local v14, "broadcast":Lcom/android/server/am/BroadcastController$StickyBroadcast;
    .local v28, "onlyProtectedBroadcasts":Z
    .local v29, "N":I
    .local p8, "userIds":[I
    invoke-virtual/range {v3 .. v12}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/util/Collection;Landroid/os/Bundle;)I

    move-result v4

    .line 518
    .local v4, "match":I
    if-ltz v4, :cond_24

    .line 519
    if-nez v0, :cond_23

    .line 520
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    .line 522
    :cond_23
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    .end local v4    # "match":I
    .end local v14    # "broadcast":Lcom/android/server/am/BroadcastController$StickyBroadcast;
    .end local v31    # "intent":Landroid/content/Intent;
    :cond_24
    :goto_16
    add-int/lit8 v5, v32, 0x1

    move-object v11, v3

    move v8, v13

    move/from16 v14, v28

    move/from16 v6, v29

    move/from16 v4, v33

    move-object/from16 v13, p8

    move-object v3, v2

    move-object/from16 v2, p1

    .end local v32    # "i":I
    .restart local v5    # "i":I
    goto :goto_15

    .end local v28    # "onlyProtectedBroadcasts":Z
    .end local v29    # "N":I
    .end local v33    # "callingUid":I
    .end local p8    # "userIds":[I
    .local v4, "callingUid":I
    .restart local v6    # "N":I
    .restart local v8    # "callingPid":I
    .local v13, "userIds":[I
    .local v14, "onlyProtectedBroadcasts":Z
    :cond_25
    move-object v2, v3

    move/from16 v33, v4

    move/from16 v32, v5

    move/from16 v29, v6

    move-object v3, v11

    move-object/from16 p8, v13

    move/from16 v28, v14

    move v13, v8

    .end local v4    # "callingUid":I
    .end local v5    # "i":I
    .end local v6    # "N":I
    .end local v8    # "callingPid":I
    .end local v14    # "onlyProtectedBroadcasts":Z
    .local v13, "callingPid":I
    .restart local v28    # "onlyProtectedBroadcasts":Z
    .restart local v29    # "N":I
    .restart local v32    # "i":I
    .restart local v33    # "callingUid":I
    .restart local p8    # "userIds":[I
    move-object v4, v0

    goto :goto_17

    .line 494
    .end local v27    # "resolver":Landroid/content/ContentResolver;
    .end local v28    # "onlyProtectedBroadcasts":Z
    .end local v29    # "N":I
    .end local v32    # "i":I
    .end local v33    # "callingUid":I
    .end local p8    # "userIds":[I
    .restart local v4    # "callingUid":I
    .restart local v8    # "callingPid":I
    .local v13, "userIds":[I
    .restart local v14    # "onlyProtectedBroadcasts":Z
    :cond_26
    move-object v2, v3

    move/from16 v33, v4

    move-object v3, v11

    move-object/from16 p8, v13

    move/from16 v28, v14

    move v13, v8

    .end local v4    # "callingUid":I
    .end local v8    # "callingPid":I
    .end local v14    # "onlyProtectedBroadcasts":Z
    .local v13, "callingPid":I
    .restart local v28    # "onlyProtectedBroadcasts":Z
    .restart local v33    # "callingUid":I
    .restart local p8    # "userIds":[I
    move-object v4, v0

    .line 528
    .end local v0    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .local v4, "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    :goto_17
    if-eqz v4, :cond_27

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    iget-object v5, v0, Lcom/android/server/am/BroadcastController$StickyBroadcast;->intent:Landroid/content/Intent;

    goto :goto_18

    :cond_27
    const/4 v5, 0x0

    :goto_18
    move-object v12, v5

    .line 529
    .local v12, "sticky":Landroid/content/Intent;
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_28

    const-string v0, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Register receiver "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_28
    if-nez p5, :cond_29

    .line 531
    return-object v12

    .line 536
    :cond_29
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-eq v13, v0, :cond_2b

    .line 537
    const-string v0, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    nop

    if-nez v0, :cond_2a

    const-string v0, "com.android.server.net.action.SNOOZE_RAPID"

    .line 538
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 539
    :cond_2a
    const-string v0, "177931370"

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, ""

    filled-new-array {v0, v5, v6}, [Ljava/lang/Object;

    move-result-object v0

    const v5, 0x534e4554

    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 543
    :cond_2b
    iget-object v14, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v14

    .line 545
    :try_start_a
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    move-object v5, v0

    .local v5, "thread":Landroid/app/IApplicationThread;
    if-eqz v0, :cond_3a

    .line 546
    invoke-interface {v5}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-eq v0, v6, :cond_2c

    move-object/from16 v18, p8

    move-object v10, v2

    move-object v11, v3

    move-object v2, v4

    move-object/from16 p8, v12

    move v8, v13

    move/from16 v13, v16

    move/from16 v3, v17

    move/from16 v7, v20

    move/from16 v9, v33

    move-object/from16 v20, v14

    move-object/from16 v17, v15

    move/from16 v14, v26

    goto/16 :goto_21

    .line 550
    .end local v5    # "thread":Landroid/app/IApplicationThread;
    :cond_2c
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mRegisteredReceivers:Ljava/util/HashMap;

    invoke-interface/range {p5 .. p5}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ReceiverList;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_e

    .line 551
    .local v0, "rl":Lcom/android/server/am/ReceiverList;
    if-nez v0, :cond_2f

    .line 552
    :try_start_b
    new-instance v5, Lcom/android/server/am/ReceiverList;

    iget-object v6, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-object/from16 v11, p5

    move v8, v13

    move-object/from16 v7, v19

    move/from16 v10, v20

    move/from16 v9, v33

    .end local v13    # "callingPid":I
    .end local v19    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v20    # "userId":I
    .end local v33    # "callingUid":I
    .local v7, "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "callingPid":I
    .local v9, "callingUid":I
    .local v10, "userId":I
    :try_start_c
    invoke-direct/range {v5 .. v11}, Lcom/android/server/am/ReceiverList;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;IIILandroid/content/IIntentReceiver;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-object v6, v7

    move-object v7, v5

    move-object v5, v6

    move v6, v8

    move v11, v10

    move v10, v9

    .line 556
    .end local v0    # "rl":Lcom/android/server/am/ReceiverList;
    .end local v8    # "callingPid":I
    .end local v9    # "callingUid":I
    .local v5, "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v6, "callingPid":I
    .local v7, "rl":Lcom/android/server/am/ReceiverList;
    .local v10, "callingUid":I
    .local v11, "userId":I
    move-object/from16 v8, p4

    :try_start_d
    invoke-virtual {v7, v8}, Lcom/android/server/am/ReceiverList;->setReceiverId(Ljava/lang/String;)V

    .line 558
    iget-object v0, v7, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_2e

    .line 559
    iget-object v0, v7, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessReceiverRecord;->numberOfReceivers()I

    move-result v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 560
    .local v0, "totalReceiversForApp":I
    const/16 v9, 0x3e8

    if-ge v0, v9, :cond_2d

    .line 570
    :try_start_e
    iget-object v9, v7, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v9, v7}, Lcom/android/server/am/ProcessReceiverRecord;->addReceiver(Lcom/android/server/am/ReceiverList;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 571
    .end local v0    # "totalReceiversForApp":I
    goto/16 :goto_1a

    .line 643
    .end local v7    # "rl":Lcom/android/server/am/ReceiverList;
    :catchall_2
    move-exception v0

    move-object/from16 v18, p8

    move-object/from16 v19, v5

    move v8, v6

    move v9, v10

    move v7, v11

    move-object/from16 v20, v14

    move/from16 v13, v16

    move/from16 v14, v26

    move-object v10, v2

    move-object v11, v3

    move-object v2, v4

    move/from16 v3, v17

    :goto_19
    move-object/from16 v17, v15

    goto/16 :goto_22

    .line 563
    .restart local v0    # "totalReceiversForApp":I
    .restart local v7    # "rl":Lcom/android/server/am/ReceiverList;
    :cond_2d
    :try_start_f
    sget-object v9, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_AM_DEBUG_HELPER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v9}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/INtAmDebugHelper;

    iget-object v13, v7, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v13, v13, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    .line 564
    invoke-interface {v9, v13}, Lcom/android/server/am/INtAmDebugHelper;->recordExceedReceivers(Lcom/android/server/am/ProcessReceiverRecord;)V

    .line 566
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many receivers, total of "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", registered for pid: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callerPackage: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "callingPid":I
    .end local v10    # "callingUid":I
    .end local v11    # "userId":I
    .end local v12    # "sticky":Landroid/content/Intent;
    .end local v15    # "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v16    # "visibleToInstantApps":Z
    .end local v17    # "instantApp":Z
    .end local v21    # "actions":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v22    # "explicitExportStateDefined":Z
    .end local v23    # "requireExplicitFlagForDynamicReceivers":Z
    .end local v24    # "unexportedReceiverVisibleToInstantApps":Z
    .end local v25    # "flags":I
    .end local v26    # "exported":Z
    .end local v28    # "onlyProtectedBroadcasts":Z
    .end local p0    # "this":Lcom/android/server/am/BroadcastController;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "callerPackage":Ljava/lang/String;
    .end local p3    # "callerFeatureId":Ljava/lang/String;
    .end local p4    # "receiverId":Ljava/lang/String;
    .end local p5    # "receiver":Landroid/content/IIntentReceiver;
    .end local p6    # "filter":Landroid/content/IntentFilter;
    .end local p7    # "permission":Ljava/lang/String;
    .end local p8    # "userIds":[I
    throw v9
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 643
    .end local v0    # "totalReceiversForApp":I
    .end local v7    # "rl":Lcom/android/server/am/ReceiverList;
    .restart local v4    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "callingPid":I
    .restart local v10    # "callingUid":I
    .restart local v11    # "userId":I
    .restart local v12    # "sticky":Landroid/content/Intent;
    .restart local v15    # "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v16    # "visibleToInstantApps":Z
    .restart local v17    # "instantApp":Z
    .restart local v21    # "actions":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v22    # "explicitExportStateDefined":Z
    .restart local v23    # "requireExplicitFlagForDynamicReceivers":Z
    .restart local v24    # "unexportedReceiverVisibleToInstantApps":Z
    .restart local v25    # "flags":I
    .restart local v26    # "exported":Z
    .restart local v28    # "onlyProtectedBroadcasts":Z
    .restart local p0    # "this":Lcom/android/server/am/BroadcastController;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "callerPackage":Ljava/lang/String;
    .restart local p3    # "callerFeatureId":Ljava/lang/String;
    .restart local p4    # "receiverId":Ljava/lang/String;
    .restart local p5    # "receiver":Landroid/content/IIntentReceiver;
    .restart local p6    # "filter":Landroid/content/IntentFilter;
    .restart local p7    # "permission":Ljava/lang/String;
    .restart local p8    # "userIds":[I
    :catchall_3
    move-exception v0

    move-object/from16 v18, p8

    move-object/from16 v19, v5

    move v8, v6

    move v9, v10

    move v7, v11

    move-object/from16 v20, v14

    move/from16 v13, v16

    move/from16 v3, v17

    move/from16 v14, v26

    move-object/from16 v11, p6

    move-object v10, v2

    move-object v2, v4

    goto :goto_19

    .line 573
    .restart local v7    # "rl":Lcom/android/server/am/ReceiverList;
    :cond_2e
    :try_start_10
    invoke-interface/range {p5 .. p5}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v7, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 576
    nop

    .line 577
    const/4 v3, 0x1

    :try_start_11
    iput-boolean v3, v7, Lcom/android/server/am/ReceiverList;->linkedToDeath:Z

    .line 579
    :goto_1a
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mRegisteredReceivers:Ljava/util/HashMap;

    invoke-interface/range {p5 .. p5}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v7

    goto/16 :goto_1b

    .line 574
    :catch_1
    move-exception v0

    nop

    .line 575
    .local v0, "e":Landroid/os/RemoteException;
    monitor-exit v14
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v12

    .line 643
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "callingPid":I
    .end local v11    # "userId":I
    .local v7, "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "callingPid":I
    .restart local v9    # "callingUid":I
    .local v10, "userId":I
    :catchall_4
    move-exception v0

    move-object v5, v7

    move v6, v8

    move v11, v10

    move-object/from16 v8, p4

    move v10, v9

    move-object/from16 v18, p8

    move-object/from16 v19, v5

    move v8, v6

    move v7, v11

    move-object/from16 v20, v14

    move/from16 v13, v16

    move/from16 v3, v17

    move/from16 v14, v26

    move-object/from16 v11, p6

    move-object v10, v2

    move-object v2, v4

    move-object/from16 v17, v15

    .end local v7    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "callingPid":I
    .end local v9    # "callingUid":I
    .restart local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "callingPid":I
    .local v10, "callingUid":I
    .restart local v11    # "userId":I
    goto/16 :goto_22

    .end local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "callingPid":I
    .end local v10    # "callingUid":I
    .end local v11    # "userId":I
    .restart local v13    # "callingPid":I
    .restart local v19    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v20    # "userId":I
    .restart local v33    # "callingUid":I
    :catchall_5
    move-exception v0

    move-object/from16 v8, p4

    move v6, v13

    move-object/from16 v5, v19

    move/from16 v11, v20

    move/from16 v10, v33

    move-object/from16 v18, p8

    move v8, v6

    move v9, v10

    move v7, v11

    move-object/from16 v20, v14

    move/from16 v13, v16

    move/from16 v3, v17

    move/from16 v14, v26

    move-object/from16 v11, p6

    move-object v10, v2

    move-object v2, v4

    move-object/from16 v17, v15

    .end local v13    # "callingPid":I
    .end local v19    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v20    # "userId":I
    .end local v33    # "callingUid":I
    .restart local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "callingPid":I
    .restart local v10    # "callingUid":I
    .restart local v11    # "userId":I
    goto/16 :goto_22

    .line 580
    .end local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "callingPid":I
    .end local v10    # "callingUid":I
    .end local v11    # "userId":I
    .local v0, "rl":Lcom/android/server/am/ReceiverList;
    .restart local v13    # "callingPid":I
    .restart local v19    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v20    # "userId":I
    .restart local v33    # "callingUid":I
    :cond_2f
    move-object/from16 v8, p4

    move v6, v13

    move-object/from16 v5, v19

    move/from16 v11, v20

    move/from16 v10, v33

    .end local v13    # "callingPid":I
    .end local v19    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v20    # "userId":I
    .end local v33    # "callingUid":I
    .restart local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "callingPid":I
    .restart local v10    # "callingUid":I
    .restart local v11    # "userId":I
    :try_start_12
    iget v3, v0, Lcom/android/server/am/ReceiverList;->uid:I

    if-ne v3, v10, :cond_39

    .line 585
    iget v3, v0, Lcom/android/server/am/ReceiverList;->pid:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_d

    if-ne v3, v6, :cond_38

    .line 590
    :try_start_13
    iget v3, v0, Lcom/android/server/am/ReceiverList;->userId:I

    if-ne v3, v11, :cond_37

    .line 596
    :goto_1b
    new-instance v3, Lcom/android/server/am/BroadcastFilter;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    move-object v7, v15

    .end local v15    # "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .local v7, "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    :try_start_14
    iget-object v15, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    move-object/from16 v18, p8

    move-object/from16 v19, v5

    move/from16 v30, v6

    move-object/from16 p8, v12

    move-object/from16 v20, v14

    move/from16 v13, v16

    move/from16 v12, v17

    move/from16 v14, v26

    move-object v5, v0

    move-object v6, v2

    move-object v2, v4

    move-object/from16 v17, v7

    move-object/from16 v16, v9

    move-object/from16 v7, p3

    move-object/from16 v4, p6

    move-object/from16 v9, p7

    .end local v0    # "rl":Lcom/android/server/am/ReceiverList;
    .end local v4    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v6    # "callingPid":I
    .end local v7    # "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v16    # "visibleToInstantApps":Z
    .end local v26    # "exported":Z
    .local v2, "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .local v5, "rl":Lcom/android/server/am/ReceiverList;
    .local v12, "instantApp":Z
    .local v13, "visibleToInstantApps":Z
    .local v14, "exported":Z
    .local v17, "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .local v18, "userIds":[I
    .restart local v19    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v30    # "callingPid":I
    .local p8, "sticky":Landroid/content/Intent;
    :try_start_15
    invoke-direct/range {v3 .. v16}, Lcom/android/server/am/BroadcastFilter;-><init>(Landroid/content/IntentFilter;Lcom/android/server/am/ReceiverList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZLandroid/content/pm/ApplicationInfo;Lcom/android/server/compat/PlatformCompat;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    move-object v0, v3

    move v9, v10

    move v7, v11

    move v3, v12

    move-object v11, v4

    move-object v10, v6

    .line 599
    .end local v10    # "callingUid":I
    .end local v11    # "userId":I
    .end local v12    # "instantApp":Z
    .local v0, "bf":Lcom/android/server/am/BroadcastFilter;
    .local v3, "instantApp":Z
    .local v7, "userId":I
    .restart local v9    # "callingUid":I
    :try_start_16
    invoke-virtual {v5, v11}, Lcom/android/server/am/ReceiverList;->containsFilter(Landroid/content/IntentFilter;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 600
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Receiver with filter "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " already registered for pid "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", callerPackage is "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 643
    .end local v0    # "bf":Lcom/android/server/am/BroadcastFilter;
    .end local v5    # "rl":Lcom/android/server/am/ReceiverList;
    :catchall_6
    move-exception v0

    move-object/from16 v12, p8

    move/from16 v8, v30

    goto/16 :goto_22

    .line 604
    .restart local v0    # "bf":Lcom/android/server/am/BroadcastFilter;
    .restart local v5    # "rl":Lcom/android/server/am/ReceiverList;
    :cond_30
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-virtual {v0}, Landroid/content/IntentFilter;->debugCheck()Z

    move-result v4

    if-nez v4, :cond_31

    .line 606
    const-string v4, "ActivityManager"

    const-string v6, "==> For Dynamic broadcast"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_31
    iget-object v4, v1, Lcom/android/server/am/BroadcastController;->mReceiverResolver:Lcom/android/server/IntentResolver;

    iget-object v6, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManagerInternal;->snapshot()Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    move-result-object v6

    invoke-virtual {v4, v6, v0}, Lcom/android/server/IntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/Object;)V

    .line 613
    :goto_1c
    if-eqz v2, :cond_36

    .line 614
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 615
    .local v4, "receivers":Ljava/util/ArrayList;
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 616
    const/4 v12, 0x0

    .line 618
    .end local p8    # "sticky":Landroid/content/Intent;
    .local v12, "sticky":Landroid/content/Intent;
    :try_start_17
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 619
    .local v6, "stickyCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1d
    if-ge v8, v6, :cond_35

    .line 620
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    .line 621
    .local v15, "broadcast":Lcom/android/server/am/BroadcastController$StickyBroadcast;
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 p9, v0

    .end local v0    # "bf":Lcom/android/server/am/BroadcastFilter;
    .local p9, "bf":Lcom/android/server/am/BroadcastFilter;
    move-object/from16 v0, v16

    check-cast v0, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    iget v0, v0, Lcom/android/server/am/BroadcastController$StickyBroadcast;->originalCallingUid:I

    .line 624
    .local v0, "originalStickyCallingUid":I
    if-nez v12, :cond_34

    if-nez v14, :cond_33

    if-eq v0, v9, :cond_33

    .line 625
    invoke-static {v0}, Landroid/app/ActivityManager;->canAccessUnexportedComponents(I)Z

    move-result v16

    if-eqz v16, :cond_32

    goto :goto_1e

    :cond_32
    move/from16 v56, v0

    goto :goto_1f

    .line 643
    .end local v0    # "originalStickyCallingUid":I
    .end local v4    # "receivers":Ljava/util/ArrayList;
    .end local v5    # "rl":Lcom/android/server/am/ReceiverList;
    .end local v6    # "stickyCount":I
    .end local v8    # "i":I
    .end local v15    # "broadcast":Lcom/android/server/am/BroadcastController$StickyBroadcast;
    .end local p9    # "bf":Lcom/android/server/am/BroadcastFilter;
    :catchall_7
    move-exception v0

    move/from16 v8, v30

    goto/16 :goto_22

    .line 627
    .restart local v0    # "originalStickyCallingUid":I
    .restart local v4    # "receivers":Ljava/util/ArrayList;
    .restart local v5    # "rl":Lcom/android/server/am/ReceiverList;
    .restart local v6    # "stickyCount":I
    .restart local v8    # "i":I
    .restart local v15    # "broadcast":Lcom/android/server/am/BroadcastController$StickyBroadcast;
    .restart local p9    # "bf":Lcom/android/server/am/BroadcastFilter;
    :cond_33
    :goto_1e
    move/from16 v56, v0

    .end local v0    # "originalStickyCallingUid":I
    .local v56, "originalStickyCallingUid":I
    iget-object v0, v15, Lcom/android/server/am/BroadcastController$StickyBroadcast;->intent:Landroid/content/Intent;

    move-object v12, v0

    .end local v12    # "sticky":Landroid/content/Intent;
    .local v0, "sticky":Landroid/content/Intent;
    goto :goto_1f

    .line 624
    .end local v56    # "originalStickyCallingUid":I
    .local v0, "originalStickyCallingUid":I
    .restart local v12    # "sticky":Landroid/content/Intent;
    :cond_34
    move/from16 v56, v0

    .line 629
    .end local v0    # "originalStickyCallingUid":I
    .restart local v56    # "originalStickyCallingUid":I
    :goto_1f
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    move-object/from16 v32, v0

    .line 630
    .local v32, "queue":Lcom/android/server/am/BroadcastQueue;
    new-instance v31, Lcom/android/server/am/BroadcastRecord;

    iget-object v0, v15, Lcom/android/server/am/BroadcastController$StickyBroadcast;->intent:Landroid/content/Intent;

    move-object/from16 v33, v0

    iget-boolean v0, v15, Lcom/android/server/am/BroadcastController$StickyBroadcast;->deferUntilActive:Z

    .line 632
    invoke-static {v0}, Landroid/app/BroadcastOptions;->makeWithDeferUntilActive(Z)Landroid/app/BroadcastOptions;

    move-result-object v45

    sget-object v57, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    iget v0, v15, Lcom/android/server/am/BroadcastController$StickyBroadcast;->originalCallingAppProcessState:I

    move/from16 v60, v0

    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, -0x1

    const/16 v38, -0x1

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, -0x1

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x1

    const/16 v54, 0x1

    const/16 v55, -0x1

    const/16 v58, 0x0

    const/16 v59, 0x0

    move-object/from16 v61, v0

    move-object/from16 v46, v4

    .end local v4    # "receivers":Ljava/util/ArrayList;
    .local v46, "receivers":Ljava/util/ArrayList;
    invoke-direct/range {v31 .. v61}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZIILandroid/app/BackgroundStartPrivileges;ZLjava/util/function/BiFunction;ILcom/android/server/compat/PlatformCompat;)V

    move-object/from16 v0, v32

    .end local v32    # "queue":Lcom/android/server/am/BroadcastQueue;
    .local v0, "queue":Lcom/android/server/am/BroadcastQueue;
    move-object/from16 v4, v31

    .line 638
    .local v4, "r":Lcom/android/server/am/BroadcastRecord;
    invoke-virtual {v0, v4}, Lcom/android/server/am/BroadcastQueue;->enqueueBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 619
    .end local v0    # "queue":Lcom/android/server/am/BroadcastQueue;
    .end local v4    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v15    # "broadcast":Lcom/android/server/am/BroadcastController$StickyBroadcast;
    .end local v56    # "originalStickyCallingUid":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p9

    move-object/from16 v4, v46

    goto/16 :goto_1d

    .end local v46    # "receivers":Ljava/util/ArrayList;
    .end local p9    # "bf":Lcom/android/server/am/BroadcastFilter;
    .local v0, "bf":Lcom/android/server/am/BroadcastFilter;
    .local v4, "receivers":Ljava/util/ArrayList;
    :cond_35
    move-object/from16 p9, v0

    move-object/from16 v46, v4

    .end local v0    # "bf":Lcom/android/server/am/BroadcastFilter;
    .end local v4    # "receivers":Ljava/util/ArrayList;
    .restart local v46    # "receivers":Ljava/util/ArrayList;
    .restart local p9    # "bf":Lcom/android/server/am/BroadcastFilter;
    goto :goto_20

    .line 613
    .end local v6    # "stickyCount":I
    .end local v8    # "i":I
    .end local v12    # "sticky":Landroid/content/Intent;
    .end local v46    # "receivers":Ljava/util/ArrayList;
    .end local p9    # "bf":Lcom/android/server/am/BroadcastFilter;
    .restart local v0    # "bf":Lcom/android/server/am/BroadcastFilter;
    .restart local p8    # "sticky":Landroid/content/Intent;
    :cond_36
    move-object/from16 p9, v0

    .end local v0    # "bf":Lcom/android/server/am/BroadcastFilter;
    .restart local p9    # "bf":Lcom/android/server/am/BroadcastFilter;
    move-object/from16 v12, p8

    .line 642
    .end local p8    # "sticky":Landroid/content/Intent;
    .restart local v12    # "sticky":Landroid/content/Intent;
    :goto_20
    monitor-exit v20
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v12

    .line 643
    .end local v3    # "instantApp":Z
    .end local v5    # "rl":Lcom/android/server/am/ReceiverList;
    .end local v7    # "userId":I
    .end local v9    # "callingUid":I
    .end local p9    # "bf":Lcom/android/server/am/BroadcastFilter;
    .restart local v10    # "callingUid":I
    .restart local v11    # "userId":I
    .local v12, "instantApp":Z
    .restart local p8    # "sticky":Landroid/content/Intent;
    :catchall_8
    move-exception v0

    move v9, v10

    move v7, v11

    move v3, v12

    move-object v11, v4

    move-object v10, v6

    move-object/from16 v12, p8

    move/from16 v8, v30

    .end local v10    # "callingUid":I
    .end local v11    # "userId":I
    .end local v12    # "instantApp":Z
    .restart local v3    # "instantApp":Z
    .restart local v7    # "userId":I
    .restart local v9    # "callingUid":I
    goto/16 :goto_22

    .end local v2    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v3    # "instantApp":Z
    .end local v9    # "callingUid":I
    .end local v13    # "visibleToInstantApps":Z
    .end local v14    # "exported":Z
    .end local v18    # "userIds":[I
    .end local v19    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v30    # "callingPid":I
    .local v4, "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .local v5, "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v6, "callingPid":I
    .local v7, "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v10    # "callingUid":I
    .restart local v11    # "userId":I
    .local v12, "sticky":Landroid/content/Intent;
    .restart local v16    # "visibleToInstantApps":Z
    .local v17, "instantApp":Z
    .restart local v26    # "exported":Z
    .local p8, "userIds":[I
    :catchall_9
    move-exception v0

    move-object/from16 v18, p8

    move-object/from16 v19, v5

    move/from16 v30, v6

    move v9, v10

    move-object/from16 p8, v12

    move-object/from16 v20, v14

    move/from16 v13, v16

    move/from16 v3, v17

    move/from16 v14, v26

    move-object v10, v2

    move-object v2, v4

    move-object/from16 v17, v7

    move v7, v11

    move-object/from16 v11, p6

    move/from16 v8, v30

    .end local v4    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "callingPid":I
    .end local v10    # "callingUid":I
    .end local v11    # "userId":I
    .end local v12    # "sticky":Landroid/content/Intent;
    .end local v16    # "visibleToInstantApps":Z
    .end local v26    # "exported":Z
    .restart local v2    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v3    # "instantApp":Z
    .local v7, "userId":I
    .restart local v9    # "callingUid":I
    .restart local v13    # "visibleToInstantApps":Z
    .restart local v14    # "exported":Z
    .local v17, "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v18    # "userIds":[I
    .restart local v19    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v30    # "callingPid":I
    .local p8, "sticky":Landroid/content/Intent;
    goto/16 :goto_22

    .end local v2    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v3    # "instantApp":Z
    .end local v7    # "userId":I
    .end local v9    # "callingUid":I
    .end local v13    # "visibleToInstantApps":Z
    .end local v14    # "exported":Z
    .end local v18    # "userIds":[I
    .end local v19    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v30    # "callingPid":I
    .restart local v4    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "callingPid":I
    .restart local v10    # "callingUid":I
    .restart local v11    # "userId":I
    .restart local v12    # "sticky":Landroid/content/Intent;
    .local v15, "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v16    # "visibleToInstantApps":Z
    .local v17, "instantApp":Z
    .restart local v26    # "exported":Z
    .local p8, "userIds":[I
    :catchall_a
    move-exception v0

    move-object/from16 v18, p8

    move-object/from16 v19, v5

    move/from16 v30, v6

    move v9, v10

    move v7, v11

    move-object/from16 p8, v12

    move-object/from16 v20, v14

    move/from16 v13, v16

    move/from16 v3, v17

    move/from16 v14, v26

    move-object/from16 v11, p6

    move-object v10, v2

    move-object v2, v4

    move-object/from16 v17, v15

    move/from16 v8, v30

    .end local v4    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "callingPid":I
    .end local v10    # "callingUid":I
    .end local v11    # "userId":I
    .end local v12    # "sticky":Landroid/content/Intent;
    .end local v15    # "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v16    # "visibleToInstantApps":Z
    .end local v26    # "exported":Z
    .restart local v2    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v3    # "instantApp":Z
    .restart local v7    # "userId":I
    .restart local v9    # "callingUid":I
    .restart local v13    # "visibleToInstantApps":Z
    .restart local v14    # "exported":Z
    .local v17, "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v18    # "userIds":[I
    .restart local v19    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v30    # "callingPid":I
    .local p8, "sticky":Landroid/content/Intent;
    goto/16 :goto_22

    .line 591
    .end local v2    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v3    # "instantApp":Z
    .end local v7    # "userId":I
    .end local v9    # "callingUid":I
    .end local v13    # "visibleToInstantApps":Z
    .end local v14    # "exported":Z
    .end local v18    # "userIds":[I
    .end local v19    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v30    # "callingPid":I
    .local v0, "rl":Lcom/android/server/am/ReceiverList;
    .restart local v4    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "callingPid":I
    .restart local v10    # "callingUid":I
    .restart local v11    # "userId":I
    .restart local v12    # "sticky":Landroid/content/Intent;
    .restart local v15    # "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v16    # "visibleToInstantApps":Z
    .local v17, "instantApp":Z
    .restart local v26    # "exported":Z
    .local p8, "userIds":[I
    :cond_37
    move-object/from16 v18, p8

    move-object/from16 v19, v5

    move/from16 v30, v6

    move v9, v10

    move v7, v11

    move-object/from16 p8, v12

    move-object/from16 v20, v14

    move/from16 v13, v16

    move/from16 v3, v17

    move/from16 v14, v26

    move-object/from16 v11, p6

    move-object v10, v2

    move-object v2, v4

    move-object/from16 v17, v15

    .end local v4    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "callingPid":I
    .end local v10    # "callingUid":I
    .end local v11    # "userId":I
    .end local v12    # "sticky":Landroid/content/Intent;
    .end local v15    # "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v16    # "visibleToInstantApps":Z
    .end local v26    # "exported":Z
    .restart local v2    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v3    # "instantApp":Z
    .restart local v7    # "userId":I
    .restart local v9    # "callingUid":I
    .restart local v13    # "visibleToInstantApps":Z
    .restart local v14    # "exported":Z
    .local v17, "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v18    # "userIds":[I
    .restart local v19    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v30    # "callingPid":I
    .local p8, "sticky":Landroid/content/Intent;
    :try_start_18
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receiver requested to register for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " was previously registered for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/am/ReceiverList;->userId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " callerPackage is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v3    # "instantApp":Z
    .end local v7    # "userId":I
    .end local v9    # "callingUid":I
    .end local v13    # "visibleToInstantApps":Z
    .end local v14    # "exported":Z
    .end local v17    # "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v18    # "userIds":[I
    .end local v19    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v21    # "actions":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v22    # "explicitExportStateDefined":Z
    .end local v23    # "requireExplicitFlagForDynamicReceivers":Z
    .end local v24    # "unexportedReceiverVisibleToInstantApps":Z
    .end local v25    # "flags":I
    .end local v28    # "onlyProtectedBroadcasts":Z
    .end local v30    # "callingPid":I
    .end local p0    # "this":Lcom/android/server/am/BroadcastController;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "callerPackage":Ljava/lang/String;
    .end local p3    # "callerFeatureId":Ljava/lang/String;
    .end local p4    # "receiverId":Ljava/lang/String;
    .end local p5    # "receiver":Landroid/content/IIntentReceiver;
    .end local p6    # "filter":Landroid/content/IntentFilter;
    .end local p7    # "permission":Ljava/lang/String;
    .end local p8    # "sticky":Landroid/content/Intent;
    throw v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    .line 586
    .restart local v4    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "callingPid":I
    .restart local v10    # "callingUid":I
    .restart local v11    # "userId":I
    .restart local v12    # "sticky":Landroid/content/Intent;
    .restart local v15    # "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v16    # "visibleToInstantApps":Z
    .local v17, "instantApp":Z
    .restart local v21    # "actions":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v22    # "explicitExportStateDefined":Z
    .restart local v23    # "requireExplicitFlagForDynamicReceivers":Z
    .restart local v24    # "unexportedReceiverVisibleToInstantApps":Z
    .restart local v25    # "flags":I
    .restart local v26    # "exported":Z
    .restart local v28    # "onlyProtectedBroadcasts":Z
    .restart local p0    # "this":Lcom/android/server/am/BroadcastController;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "callerPackage":Ljava/lang/String;
    .restart local p3    # "callerFeatureId":Ljava/lang/String;
    .restart local p4    # "receiverId":Ljava/lang/String;
    .restart local p5    # "receiver":Landroid/content/IIntentReceiver;
    .restart local p6    # "filter":Landroid/content/IntentFilter;
    .restart local p7    # "permission":Ljava/lang/String;
    .local p8, "userIds":[I
    :cond_38
    move-object/from16 v18, p8

    move-object/from16 v19, v5

    move/from16 v30, v6

    move v9, v10

    move v7, v11

    move-object/from16 p8, v12

    move-object/from16 v20, v14

    move/from16 v13, v16

    move/from16 v3, v17

    move/from16 v14, v26

    move-object/from16 v11, p6

    move-object v10, v2

    move-object v2, v4

    move-object/from16 v17, v15

    .end local v4    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "callingPid":I
    .end local v10    # "callingUid":I
    .end local v11    # "userId":I
    .end local v12    # "sticky":Landroid/content/Intent;
    .end local v15    # "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v16    # "visibleToInstantApps":Z
    .end local v26    # "exported":Z
    .restart local v2    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v3    # "instantApp":Z
    .restart local v7    # "userId":I
    .restart local v9    # "callingUid":I
    .restart local v13    # "visibleToInstantApps":Z
    .restart local v14    # "exported":Z
    .local v17, "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v18    # "userIds":[I
    .restart local v19    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v30    # "callingPid":I
    .local p8, "sticky":Landroid/content/Intent;
    :try_start_19
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receiver requested to register for pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    move/from16 v8, v30

    .end local v30    # "callingPid":I
    .local v8, "callingPid":I
    :try_start_1a
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " was previously registered for pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " callerPackage is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v3    # "instantApp":Z
    .end local v7    # "userId":I
    .end local v8    # "callingPid":I
    .end local v9    # "callingUid":I
    .end local v13    # "visibleToInstantApps":Z
    .end local v14    # "exported":Z
    .end local v17    # "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v18    # "userIds":[I
    .end local v19    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v21    # "actions":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v22    # "explicitExportStateDefined":Z
    .end local v23    # "requireExplicitFlagForDynamicReceivers":Z
    .end local v24    # "unexportedReceiverVisibleToInstantApps":Z
    .end local v25    # "flags":I
    .end local v28    # "onlyProtectedBroadcasts":Z
    .end local p0    # "this":Lcom/android/server/am/BroadcastController;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "callerPackage":Ljava/lang/String;
    .end local p3    # "callerFeatureId":Ljava/lang/String;
    .end local p4    # "receiverId":Ljava/lang/String;
    .end local p5    # "receiver":Landroid/content/IIntentReceiver;
    .end local p6    # "filter":Landroid/content/IntentFilter;
    .end local p7    # "permission":Ljava/lang/String;
    .end local p8    # "sticky":Landroid/content/Intent;
    throw v4

    .line 643
    .end local v0    # "rl":Lcom/android/server/am/ReceiverList;
    .restart local v2    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v3    # "instantApp":Z
    .restart local v7    # "userId":I
    .restart local v8    # "callingPid":I
    .restart local v9    # "callingUid":I
    .restart local v13    # "visibleToInstantApps":Z
    .restart local v14    # "exported":Z
    .restart local v17    # "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v18    # "userIds":[I
    .restart local v19    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v21    # "actions":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v22    # "explicitExportStateDefined":Z
    .restart local v23    # "requireExplicitFlagForDynamicReceivers":Z
    .restart local v24    # "unexportedReceiverVisibleToInstantApps":Z
    .restart local v25    # "flags":I
    .restart local v28    # "onlyProtectedBroadcasts":Z
    .restart local p0    # "this":Lcom/android/server/am/BroadcastController;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "callerPackage":Ljava/lang/String;
    .restart local p3    # "callerFeatureId":Ljava/lang/String;
    .restart local p4    # "receiverId":Ljava/lang/String;
    .restart local p5    # "receiver":Landroid/content/IIntentReceiver;
    .restart local p6    # "filter":Landroid/content/IntentFilter;
    .restart local p7    # "permission":Ljava/lang/String;
    .restart local p8    # "sticky":Landroid/content/Intent;
    :catchall_b
    move-exception v0

    move-object/from16 v12, p8

    goto/16 :goto_22

    .end local v8    # "callingPid":I
    .restart local v30    # "callingPid":I
    :catchall_c
    move-exception v0

    move/from16 v8, v30

    move-object/from16 v12, p8

    .end local v30    # "callingPid":I
    .restart local v8    # "callingPid":I
    goto/16 :goto_22

    .end local v2    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v3    # "instantApp":Z
    .end local v7    # "userId":I
    .end local v8    # "callingPid":I
    .end local v9    # "callingUid":I
    .end local v13    # "visibleToInstantApps":Z
    .end local v14    # "exported":Z
    .end local v18    # "userIds":[I
    .end local v19    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "callingPid":I
    .restart local v10    # "callingUid":I
    .restart local v11    # "userId":I
    .restart local v12    # "sticky":Landroid/content/Intent;
    .restart local v15    # "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v16    # "visibleToInstantApps":Z
    .local v17, "instantApp":Z
    .restart local v26    # "exported":Z
    .local p8, "userIds":[I
    :catchall_d
    move-exception v0

    move-object/from16 v18, p8

    move-object/from16 v19, v5

    move v8, v6

    move v9, v10

    move v7, v11

    move-object/from16 p8, v12

    move-object/from16 v20, v14

    move/from16 v13, v16

    move/from16 v3, v17

    move/from16 v14, v26

    move-object/from16 v11, p6

    move-object v10, v2

    move-object v2, v4

    move-object/from16 v17, v15

    .end local v4    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "callingPid":I
    .end local v10    # "callingUid":I
    .end local v11    # "userId":I
    .end local v12    # "sticky":Landroid/content/Intent;
    .end local v15    # "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v16    # "visibleToInstantApps":Z
    .end local v26    # "exported":Z
    .restart local v2    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v3    # "instantApp":Z
    .restart local v7    # "userId":I
    .restart local v8    # "callingPid":I
    .restart local v9    # "callingUid":I
    .restart local v13    # "visibleToInstantApps":Z
    .restart local v14    # "exported":Z
    .local v17, "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v18    # "userIds":[I
    .restart local v19    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local p8, "sticky":Landroid/content/Intent;
    goto/16 :goto_22

    .line 581
    .end local v2    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v3    # "instantApp":Z
    .end local v7    # "userId":I
    .end local v8    # "callingPid":I
    .end local v9    # "callingUid":I
    .end local v13    # "visibleToInstantApps":Z
    .end local v14    # "exported":Z
    .end local v18    # "userIds":[I
    .end local v19    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v0    # "rl":Lcom/android/server/am/ReceiverList;
    .restart local v4    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "callingPid":I
    .restart local v10    # "callingUid":I
    .restart local v11    # "userId":I
    .restart local v12    # "sticky":Landroid/content/Intent;
    .restart local v15    # "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v16    # "visibleToInstantApps":Z
    .local v17, "instantApp":Z
    .restart local v26    # "exported":Z
    .local p8, "userIds":[I
    :cond_39
    move-object/from16 v18, p8

    move-object/from16 v19, v5

    move v8, v6

    move v9, v10

    move v7, v11

    move-object/from16 p8, v12

    move-object/from16 v20, v14

    move/from16 v13, v16

    move/from16 v3, v17

    move/from16 v14, v26

    move-object/from16 v11, p6

    move-object v10, v2

    move-object v2, v4

    move-object/from16 v17, v15

    .end local v4    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "callingPid":I
    .end local v10    # "callingUid":I
    .end local v11    # "userId":I
    .end local v12    # "sticky":Landroid/content/Intent;
    .end local v15    # "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v16    # "visibleToInstantApps":Z
    .end local v26    # "exported":Z
    .restart local v2    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v3    # "instantApp":Z
    .restart local v7    # "userId":I
    .restart local v8    # "callingPid":I
    .restart local v9    # "callingUid":I
    .restart local v13    # "visibleToInstantApps":Z
    .restart local v14    # "exported":Z
    .local v17, "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v18    # "userIds":[I
    .restart local v19    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local p8, "sticky":Landroid/content/Intent;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receiver requested to register for uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " was previously registered for uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " callerPackage is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v3    # "instantApp":Z
    .end local v7    # "userId":I
    .end local v8    # "callingPid":I
    .end local v9    # "callingUid":I
    .end local v13    # "visibleToInstantApps":Z
    .end local v14    # "exported":Z
    .end local v17    # "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v18    # "userIds":[I
    .end local v19    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v21    # "actions":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v22    # "explicitExportStateDefined":Z
    .end local v23    # "requireExplicitFlagForDynamicReceivers":Z
    .end local v24    # "unexportedReceiverVisibleToInstantApps":Z
    .end local v25    # "flags":I
    .end local v28    # "onlyProtectedBroadcasts":Z
    .end local p0    # "this":Lcom/android/server/am/BroadcastController;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "callerPackage":Ljava/lang/String;
    .end local p3    # "callerFeatureId":Ljava/lang/String;
    .end local p4    # "receiverId":Ljava/lang/String;
    .end local p5    # "receiver":Landroid/content/IIntentReceiver;
    .end local p6    # "filter":Landroid/content/IntentFilter;
    .end local p7    # "permission":Ljava/lang/String;
    .end local p8    # "sticky":Landroid/content/Intent;
    throw v4

    .line 643
    .end local v0    # "rl":Lcom/android/server/am/ReceiverList;
    .restart local v4    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v12    # "sticky":Landroid/content/Intent;
    .local v13, "callingPid":I
    .restart local v15    # "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v16    # "visibleToInstantApps":Z
    .local v17, "instantApp":Z
    .restart local v19    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v20    # "userId":I
    .restart local v21    # "actions":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v22    # "explicitExportStateDefined":Z
    .restart local v23    # "requireExplicitFlagForDynamicReceivers":Z
    .restart local v24    # "unexportedReceiverVisibleToInstantApps":Z
    .restart local v25    # "flags":I
    .restart local v26    # "exported":Z
    .restart local v28    # "onlyProtectedBroadcasts":Z
    .restart local v33    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/am/BroadcastController;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "callerPackage":Ljava/lang/String;
    .restart local p3    # "callerFeatureId":Ljava/lang/String;
    .restart local p4    # "receiverId":Ljava/lang/String;
    .restart local p5    # "receiver":Landroid/content/IIntentReceiver;
    .restart local p6    # "filter":Landroid/content/IntentFilter;
    .restart local p7    # "permission":Ljava/lang/String;
    .local p8, "userIds":[I
    :catchall_e
    move-exception v0

    move-object/from16 v18, p8

    move-object v10, v2

    move-object v11, v3

    move-object v2, v4

    move-object/from16 p8, v12

    move v8, v13

    move/from16 v13, v16

    move/from16 v3, v17

    move/from16 v7, v20

    move/from16 v9, v33

    move-object/from16 v20, v14

    move-object/from16 v17, v15

    move/from16 v14, v26

    .end local v4    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v12    # "sticky":Landroid/content/Intent;
    .end local v15    # "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v16    # "visibleToInstantApps":Z
    .end local v20    # "userId":I
    .end local v26    # "exported":Z
    .end local v33    # "callingUid":I
    .restart local v2    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v3    # "instantApp":Z
    .restart local v7    # "userId":I
    .restart local v8    # "callingPid":I
    .restart local v9    # "callingUid":I
    .local v13, "visibleToInstantApps":Z
    .restart local v14    # "exported":Z
    .local v17, "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v18    # "userIds":[I
    .local p8, "sticky":Landroid/content/Intent;
    goto :goto_22

    .line 545
    .end local v2    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v3    # "instantApp":Z
    .end local v7    # "userId":I
    .end local v8    # "callingPid":I
    .end local v9    # "callingUid":I
    .end local v14    # "exported":Z
    .end local v18    # "userIds":[I
    .restart local v4    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .local v5, "thread":Landroid/app/IApplicationThread;
    .restart local v12    # "sticky":Landroid/content/Intent;
    .local v13, "callingPid":I
    .restart local v15    # "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v16    # "visibleToInstantApps":Z
    .local v17, "instantApp":Z
    .restart local v20    # "userId":I
    .restart local v26    # "exported":Z
    .restart local v33    # "callingUid":I
    .local p8, "userIds":[I
    :cond_3a
    move-object/from16 v18, p8

    move-object v10, v2

    move-object v11, v3

    move-object v2, v4

    move-object/from16 p8, v12

    move v8, v13

    move/from16 v13, v16

    move/from16 v3, v17

    move/from16 v7, v20

    move/from16 v9, v33

    move-object/from16 v20, v14

    move-object/from16 v17, v15

    move/from16 v14, v26

    .line 548
    .end local v4    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v12    # "sticky":Landroid/content/Intent;
    .end local v15    # "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v16    # "visibleToInstantApps":Z
    .end local v20    # "userId":I
    .end local v26    # "exported":Z
    .end local v33    # "callingUid":I
    .restart local v2    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v3    # "instantApp":Z
    .restart local v7    # "userId":I
    .restart local v8    # "callingPid":I
    .restart local v9    # "callingUid":I
    .local v13, "visibleToInstantApps":Z
    .restart local v14    # "exported":Z
    .local v17, "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v18    # "userIds":[I
    .local p8, "sticky":Landroid/content/Intent;
    :goto_21
    monitor-exit v20
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v15, 0x0

    return-object v15

    .line 643
    .end local v5    # "thread":Landroid/app/IApplicationThread;
    .end local p8    # "sticky":Landroid/content/Intent;
    .restart local v12    # "sticky":Landroid/content/Intent;
    :goto_22
    :try_start_1b
    monitor-exit v20
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_f
    move-exception v0

    goto :goto_22

    .line 426
    .end local v2    # "allSticky":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v3    # "instantApp":Z
    .end local v7    # "userId":I
    .end local v9    # "callingUid":I
    .end local v12    # "sticky":Landroid/content/Intent;
    .end local v18    # "userIds":[I
    .end local v22    # "explicitExportStateDefined":Z
    .end local v23    # "requireExplicitFlagForDynamicReceivers":Z
    .end local v24    # "unexportedReceiverVisibleToInstantApps":Z
    .end local v25    # "flags":I
    .end local v28    # "onlyProtectedBroadcasts":Z
    .local v4, "callingUid":I
    .local v13, "userIds":[I
    .local v14, "onlyProtectedBroadcasts":Z
    .restart local v15    # "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v16    # "visibleToInstantApps":Z
    .local v17, "instantApp":Z
    .restart local v20    # "userId":I
    .local p9, "flags":I
    :catchall_10
    move-exception v0

    move-object v10, v3

    move v9, v4

    move-object/from16 v18, v13

    move/from16 v28, v14

    move/from16 v13, v16

    move/from16 v3, v17

    move/from16 v7, v20

    move-object/from16 v17, v15

    .end local v4    # "callingUid":I
    .end local v16    # "visibleToInstantApps":Z
    .end local v17    # "instantApp":Z
    .end local v20    # "userId":I
    .restart local v3    # "instantApp":Z
    .restart local v7    # "userId":I
    .restart local v9    # "callingUid":I
    .local v13, "visibleToInstantApps":Z
    .restart local v18    # "userIds":[I
    :goto_23
    :try_start_1c
    monitor-exit v6
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_11

    throw v0

    :catchall_11
    move-exception v0

    goto :goto_23

    .line 348
    .end local v7    # "userId":I
    .end local v8    # "callingPid":I
    .end local v9    # "callingUid":I
    .end local v13    # "visibleToInstantApps":Z
    .end local v15    # "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v18    # "userIds":[I
    .end local v19    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v21    # "actions":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local v3, "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v14, "stickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v16    # "visibleToInstantApps":Z
    .local p8, "userId":I
    :catchall_12
    move-exception v0

    move-object/from16 v19, v3

    move-object v10, v6

    move/from16 v13, v16

    .end local v3    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v16    # "visibleToInstantApps":Z
    .restart local v13    # "visibleToInstantApps":Z
    .restart local v19    # "callerApp":Lcom/android/server/am/ProcessRecord;
    goto :goto_24

    .end local v13    # "visibleToInstantApps":Z
    .end local v19    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v16    # "visibleToInstantApps":Z
    :catchall_13
    move-exception v0

    move-object v10, v6

    move/from16 v13, v16

    .end local v16    # "visibleToInstantApps":Z
    .restart local v13    # "visibleToInstantApps":Z
    :goto_24
    :try_start_1d
    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :catchall_14
    move-exception v0

    goto :goto_24
.end method

.method private scheduleCanceledResultTo(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILandroid/app/BroadcastOptions;ILjava/lang/String;)V
    .locals 17
    .param p1, "resultToApp"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "resultTo"    # Landroid/content/IIntentReceiver;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "userId"    # I
    .param p5, "options"    # Landroid/app/BroadcastOptions;
    .param p6, "callingUid"    # I
    .param p7, "callingPackage"    # Ljava/lang/String;

    .line 1748
    if-nez p2, :cond_0

    .line 1749
    return-void

    .line 1751
    :cond_0
    move-object/from16 v1, p1

    .line 1752
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    const/4 v0, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getOnewayThread()Landroid/app/IApplicationThread;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    move-object v3, v2

    .line 1753
    .local v3, "thread":Landroid/app/IApplicationThread;
    if-eqz v3, :cond_5

    .line 1755
    const/4 v2, 0x1

    if-eqz p5, :cond_2

    :try_start_0
    invoke-virtual/range {p5 .. p5}, Landroid/app/BroadcastOptions;->isShareIdentityEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_1

    .line 1761
    :catch_0
    move-exception v0

    goto :goto_4

    .line 1755
    :cond_2
    const/4 v4, 0x0

    :goto_1
    move/from16 v16, v4

    .line 1756
    .local v16, "shareIdentity":Z
    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1758
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v13

    .line 1759
    if-eqz v16, :cond_3

    move/from16 v14, p6

    goto :goto_2

    :cond_3
    const/4 v4, -0x1

    move v14, v4

    .line 1760
    :goto_2
    if-eqz v16, :cond_4

    move-object/from16 v15, p7

    goto :goto_3

    :cond_4
    move-object v15, v0

    .line 1756
    :goto_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v12, p4

    invoke-interface/range {v3 .. v15}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1767
    .end local v16    # "shareIdentity":Z
    move-object/from16 v5, p3

    goto :goto_5

    .line 1761
    :goto_4
    nop

    .line 1762
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to schedule result of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " via "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1764
    .local v4, "msg":Ljava/lang/String;
    const/16 v6, 0xd

    const/16 v7, 0x1a

    const-string v8, "Can\'t schedule resultTo"

    invoke-virtual {v1, v8, v6, v7, v2}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 1766
    const-string v2, "ActivityManager"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1753
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "msg":Ljava/lang/String;
    :cond_5
    move-object/from16 v5, p3

    .line 1769
    :goto_5
    return-void
.end method

.method private sendPackageBroadcastLocked(I[Ljava/lang/String;I)V
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2019
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ProcessList;->sendPackageBroadcastLocked(I[Ljava/lang/String;I)V

    .line 2020
    return-void
.end method

.method private static traceBroadcastIntentBegin(Landroid/content/Intent;Landroid/content/IIntentReceiver;ZZIII)I
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "resultTo"    # Landroid/content/IIntentReceiver;
    .param p2, "ordered"    # Z
    .param p3, "sticky"    # Z
    .param p4, "callingUid"    # I
    .param p5, "realCallingUid"    # I
    .param p6, "userId"    # I

    .line 852
    nop

    .line 855
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "broadcastIntent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 857
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 858
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 859
    .local v2, "action":Ljava/lang/String;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 860
    const-string v3, "0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 861
    const-string v3, "_"

    if-eqz p2, :cond_1

    const-string v4, "O"

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    if-eqz p3, :cond_2

    const-string v4, "S"

    goto :goto_2

    :cond_2
    move-object v4, v3

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    if-eqz p1, :cond_3

    const-string v3, "C"

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 865
    const/16 v3, 0x75

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 866
    if-eq p4, p5, :cond_4

    .line 867
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 868
    const-string/jumbo v1, "sender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 870
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 872
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "action":Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private static traceBroadcastIntentEnd(I)V
    .locals 2
    .param p0, "cookie"    # I

    .line 876
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    invoke-static {p0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    .line 879
    :cond_0
    return-void
.end method

.method private static traceRegistrationBegin(Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;I)V
    .locals 8
    .param p0, "receiverId"    # Ljava/lang/String;
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "userId"    # I

    .line 282
    nop

    .line 285
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "registerReceiver: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    const-string/jumbo v4, "null"

    if-nez p0, :cond_0

    move-object v5, v4

    goto :goto_0

    :cond_0
    move-object v5, p0

    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 289
    const-string/jumbo v5, "p:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/IntentFilter;->getPriority()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {p2}, Landroid/content/IntentFilter;->safeCountActions()I

    move-result v5

    .line 291
    .local v5, "actionsCount":I
    if-lez v5, :cond_3

    .line 292
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_2

    .line 293
    invoke-virtual {p2, v6}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    add-int/lit8 v7, v5, -0x1

    if-eq v6, v7, :cond_1

    const/16 v7, 0x2c

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    nop

    .end local v6    # "i":I
    goto :goto_2

    .line 297
    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    const/16 v6, 0x75

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {p1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 304
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "actionsCount":I
    :cond_5
    return-void
.end method

.method private static traceRegistrationEnd()V
    .locals 3

    .line 307
    nop

    .line 310
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 313
    :cond_0
    return-void
.end method

.method private static traceUnregistrationBegin(Landroid/content/IIntentReceiver;)V
    .locals 4
    .param p0, "receiver"    # Landroid/content/IIntentReceiver;

    .line 656
    nop

    .line 659
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 660
    nop

    .line 661
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 662
    if-nez p0, :cond_0

    const-string/jumbo v3, "null"

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 661
    const-string/jumbo v3, "unregisterReceiver: %d/%s"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 660
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 664
    :cond_1
    return-void
.end method

.method private static traceUnregistrationEnd()V
    .locals 3

    .line 667
    nop

    .line 670
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 671
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 673
    :cond_0
    return-void
.end method

.method private unregisterReceiverTraced(Landroid/content/IIntentReceiver;)V
    .locals 14
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;

    .line 676
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregister receiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 680
    .local v1, "origId":J
    const/4 v3, 0x0

    .line 681
    .local v3, "doTrim":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 682
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mRegisteredReceivers:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ReceiverList;

    .line 683
    .local v0, "rl":Lcom/android/server/am/ReceiverList;
    const/4 v5, 0x0

    if-eqz v0, :cond_3

    .line 684
    iget-object v6, v0, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 685
    .local v6, "r":Lcom/android/server/am/BroadcastRecord;
    if-eqz v6, :cond_1

    .line 686
    iget-object v7, v6, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v8, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget v9, v6, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v10, v6, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v11, v6, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v12, v6, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    move-result v7

    .line 689
    .local v7, "doNext":Z
    if-eqz v7, :cond_1

    .line 690
    const/4 v3, 0x1

    goto :goto_0

    .line 709
    .end local v0    # "rl":Lcom/android/server/am/ReceiverList;
    .end local v6    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v7    # "doNext":Z
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 693
    .restart local v0    # "rl":Lcom/android/server/am/ReceiverList;
    .restart local v6    # "r":Lcom/android/server/am/BroadcastRecord;
    :cond_1
    :goto_0
    iget-object v7, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_2

    .line 694
    iget-object v7, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessReceiverRecord;->removeReceiver(Lcom/android/server/am/ReceiverList;)V

    .line 696
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastController;->removeReceiverLocked(Lcom/android/server/am/ReceiverList;)V

    .line 697
    iget-boolean v7, v0, Lcom/android/server/am/ReceiverList;->linkedToDeath:Z

    if-eqz v7, :cond_3

    .line 698
    iput-boolean v5, v0, Lcom/android/server/am/ReceiverList;->linkedToDeath:Z

    .line 699
    iget-object v7, v0, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v7}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {v7, v0, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 705
    .end local v6    # "r":Lcom/android/server/am/BroadcastRecord;
    :cond_3
    if-eqz v3, :cond_4

    .line 706
    iget-object v6, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x2

    invoke-virtual {v6, v5, v7}, Lcom/android/server/am/ActivityManagerService;->trimApplicationsLocked(ZI)V

    .line 707
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 712
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 707
    return-void

    .line 705
    :cond_4
    nop

    .line 709
    .end local v0    # "rl":Lcom/android/server/am/ReceiverList;
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 712
    .end local v3    # "doTrim":Z
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 713
    nop

    .line 714
    return-void

    .line 712
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 709
    .restart local v3    # "doTrim":Z
    :goto_1
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local v1    # "origId":J
    .end local p0    # "this":Lcom/android/server/am/BroadcastController;
    .end local p1    # "receiver":Landroid/content/IIntentReceiver;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 712
    .end local v3    # "doTrim":Z
    .restart local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/am/BroadcastController;
    .restart local p1    # "receiver":Landroid/content/IIntentReceiver;
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 713
    throw v0
.end method


# virtual methods
.method final addBackgroundCheckViolationLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "targetPackage"    # Ljava/lang/String;

    .line 1921
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastController;->rotateBroadcastStatsIfNeededLocked()V

    .line 1922
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/BroadcastStats;->addBackgroundCheckViolation(Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    return-void
.end method

.method final addBroadcastStatLocked(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "srcPackage"    # Ljava/lang/String;
    .param p3, "receiveCount"    # I
    .param p4, "skipCount"    # I
    .param p5, "dispatchTime"    # J

    .line 1916
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastController;->rotateBroadcastStatsIfNeededLocked()V

    .line 1917
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    .end local p1    # "action":Ljava/lang/String;
    .end local p2    # "srcPackage":Ljava/lang/String;
    .end local p3    # "receiveCount":I
    .end local p4    # "skipCount":I
    .end local p5    # "dispatchTime":J
    .local v1, "action":Ljava/lang/String;
    .local v2, "srcPackage":Ljava/lang/String;
    .local v3, "receiveCount":I
    .local v4, "skipCount":I
    .local v5, "dispatchTime":J
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastStats;->addBroadcast(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 1918
    return-void
.end method

.method broadcastIntentInPackage(Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZILandroid/app/BackgroundStartPrivileges;[I)I
    .locals 30
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "realCallingUid"    # I
    .param p5, "realCallingPid"    # I
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "resolvedType"    # Ljava/lang/String;
    .param p8, "resultToApp"    # Lcom/android/server/am/ProcessRecord;
    .param p9, "resultTo"    # Landroid/content/IIntentReceiver;
    .param p10, "resultCode"    # I
    .param p11, "resultData"    # Ljava/lang/String;
    .param p12, "resultExtras"    # Landroid/os/Bundle;
    .param p13, "requiredPermission"    # Ljava/lang/String;
    .param p14, "bOptions"    # Landroid/os/Bundle;
    .param p15, "serialized"    # Z
    .param p16, "sticky"    # Z
    .param p17, "userId"    # I
    .param p18, "backgroundStartPrivileges"    # Landroid/app/BackgroundStartPrivileges;
    .param p19, "broadcastAllowList"    # [I

    .line 795
    move-object/from16 v2, p0

    iget-object v1, v2, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 796
    move-object/from16 v3, p6

    :try_start_0
    invoke-virtual {v2, v3}, Lcom/android/server/am/BroadcastController;->verifyBroadcastLocked(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 798
    .end local p6    # "intent":Landroid/content/Intent;
    .local v6, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    move-wide/from16 v28, v3

    .line 799
    .local v28, "origId":J
    if-nez p13, :cond_0

    const/4 v0, 0x0

    move-object v13, v0

    goto :goto_0

    .line 800
    :cond_0
    filled-new-array/range {p13 .. p13}, [Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v13, v0

    :goto_0
    nop

    .line 802
    .local v13, "requiredPermissions":[Ljava/lang/String;
    const/16 v20, -0x1

    const/16 v27, 0x0

    const/4 v3, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v21, p3

    move/from16 v22, p4

    move/from16 v23, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    move/from16 v24, p17

    move-object/from16 v25, p18

    move-object/from16 v26, p19

    :try_start_2
    invoke-virtual/range {v2 .. v27}, Lcom/android/server/am/BroadcastController;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIIILandroid/app/BackgroundStartPrivileges;[ILjava/util/function/BiFunction;)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 809
    .local v0, "result":I
    :try_start_3
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 810
    nop

    .line 811
    .end local v13    # "requiredPermissions":[Ljava/lang/String;
    .end local v28    # "origId":J
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 813
    if-eqz p16, :cond_1

    if-nez v0, :cond_1

    .line 814
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/BroadcastStickyCache;->invalidateCache(Ljava/lang/String;)V

    .line 816
    :cond_1
    return v0

    .line 811
    .end local v0    # "result":I
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 809
    .restart local v13    # "requiredPermissions":[Ljava/lang/String;
    .restart local v28    # "origId":J
    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 810
    nop

    .end local v6    # "intent":Landroid/content/Intent;
    .end local p0    # "this":Lcom/android/server/am/BroadcastController;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "featureId":Ljava/lang/String;
    .end local p3    # "uid":I
    .end local p4    # "realCallingUid":I
    .end local p5    # "realCallingPid":I
    .end local p7    # "resolvedType":Ljava/lang/String;
    .end local p8    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local p9    # "resultTo":Landroid/content/IIntentReceiver;
    .end local p10    # "resultCode":I
    .end local p11    # "resultData":Ljava/lang/String;
    .end local p12    # "resultExtras":Landroid/os/Bundle;
    .end local p13    # "requiredPermission":Ljava/lang/String;
    .end local p14    # "bOptions":Landroid/os/Bundle;
    .end local p15    # "serialized":Z
    .end local p16    # "sticky":Z
    .end local p17    # "userId":I
    .end local p18    # "backgroundStartPrivileges":Landroid/app/BackgroundStartPrivileges;
    .end local p19    # "broadcastAllowList":[I
    throw v0

    .line 811
    .end local v13    # "requiredPermissions":[Ljava/lang/String;
    .end local v28    # "origId":J
    .restart local p0    # "this":Lcom/android/server/am/BroadcastController;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "featureId":Ljava/lang/String;
    .restart local p3    # "uid":I
    .restart local p4    # "realCallingUid":I
    .restart local p5    # "realCallingPid":I
    .restart local p6    # "intent":Landroid/content/Intent;
    .restart local p7    # "resolvedType":Ljava/lang/String;
    .restart local p8    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local p9    # "resultTo":Landroid/content/IIntentReceiver;
    .restart local p10    # "resultCode":I
    .restart local p11    # "resultData":Ljava/lang/String;
    .restart local p12    # "resultExtras":Landroid/os/Bundle;
    .restart local p13    # "requiredPermission":Ljava/lang/String;
    .restart local p14    # "bOptions":Landroid/os/Bundle;
    .restart local p15    # "serialized":Z
    .restart local p16    # "sticky":Z
    .restart local p17    # "userId":I
    .restart local p18    # "backgroundStartPrivileges":Landroid/app/BackgroundStartPrivileges;
    .restart local p19    # "broadcastAllowList":[I
    :catchall_2
    move-exception v0

    move-object v6, v3

    .end local p6    # "intent":Landroid/content/Intent;
    .restart local v6    # "intent":Landroid/content/Intent;
    :goto_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method final broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIIILandroid/app/BackgroundStartPrivileges;[ILjava/util/function/BiFunction;)I
    .locals 30
    .param p1, "callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "callerFeatureId"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "resultToApp"    # Lcom/android/server/am/ProcessRecord;
    .param p7, "resultTo"    # Landroid/content/IIntentReceiver;
    .param p8, "resultCode"    # I
    .param p9, "resultData"    # Ljava/lang/String;
    .param p10, "resultExtras"    # Landroid/os/Bundle;
    .param p11, "requiredPermissions"    # [Ljava/lang/String;
    .param p12, "excludedPermissions"    # [Ljava/lang/String;
    .param p13, "excludedPackages"    # [Ljava/lang/String;
    .param p14, "appOp"    # I
    .param p15, "bOptions"    # Landroid/os/Bundle;
    .param p16, "ordered"    # Z
    .param p17, "sticky"    # Z
    .param p18, "callingPid"    # I
    .param p19, "callingUid"    # I
    .param p20, "realCallingUid"    # I
    .param p21, "realCallingPid"    # I
    .param p22, "userId"    # I
    .param p23, "backgroundStartPrivileges"    # Landroid/app/BackgroundStartPrivileges;
    .param p24, "broadcastAllowList"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ProcessRecord;",
            "Landroid/content/IIntentReceiver;",
            "I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Bundle;",
            "ZZIIIII",
            "Landroid/app/BackgroundStartPrivileges;",
            "[I",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ">;)I"
        }
    .end annotation

    .line 830
    .local p25, "filterExtrasForReceiver":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;>;"
    move-object/from16 v1, p4

    move-object/from16 v2, p7

    move/from16 v3, p16

    move/from16 v4, p17

    move/from16 v5, p19

    move/from16 v6, p20

    move/from16 v7, p22

    invoke-static/range {v1 .. v7}, Lcom/android/server/am/BroadcastController;->traceBroadcastIntentBegin(Landroid/content/Intent;Landroid/content/IIntentReceiver;ZZIII)I

    move-result v29

    .line 833
    .local v29, "cookie":I
    :try_start_0
    new-instance v28, Lcom/android/server/am/BroadcastSentEventRecord;

    invoke-direct/range {v28 .. v28}, Lcom/android/server/am/BroadcastSentEventRecord;-><init>()V

    .line 835
    .local v28, "broadcastSentEventRecord":Lcom/android/server/am/BroadcastSentEventRecord;
    nop

    .line 838
    invoke-static/range {p15 .. p15}, Landroid/app/BroadcastOptions;->fromBundleNullable(Landroid/os/Bundle;)Landroid/app/BroadcastOptions;

    move-result-object v17

    .line 835
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v16, p14

    move/from16 v18, p16

    move/from16 v19, p17

    move/from16 v20, p18

    move/from16 v21, p19

    move/from16 v22, p20

    move/from16 v23, p21

    move/from16 v24, p22

    move-object/from16 v25, p23

    move-object/from16 v26, p24

    move-object/from16 v27, p25

    invoke-virtual/range {v2 .. v28}, Lcom/android/server/am/BroadcastController;->broadcastIntentLockedTraced(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;ZZIIIIILandroid/app/BackgroundStartPrivileges;[ILjava/util/function/BiFunction;Lcom/android/server/am/BroadcastSentEventRecord;)I

    move-result v0

    move-object/from16 v1, v28

    .line 842
    .end local v28    # "broadcastSentEventRecord":Lcom/android/server/am/BroadcastSentEventRecord;
    .local v0, "res":I
    .local v1, "broadcastSentEventRecord":Lcom/android/server/am/BroadcastSentEventRecord;
    invoke-virtual {v1, v0}, Lcom/android/server/am/BroadcastSentEventRecord;->setResult(I)V

    .line 843
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastSentEventRecord;->logToStatsd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 844
    nop

    .line 846
    invoke-static/range {v29 .. v29}, Lcom/android/server/am/BroadcastController;->traceBroadcastIntentEnd(I)V

    .line 844
    return v0

    .line 846
    .end local v0    # "res":I
    .end local v1    # "broadcastSentEventRecord":Lcom/android/server/am/BroadcastSentEventRecord;
    :catchall_0
    move-exception v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/am/BroadcastController;->traceBroadcastIntentEnd(I)V

    .line 847
    throw v0
.end method

.method final broadcastIntentLockedTraced(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;ZZIIIIILandroid/app/BackgroundStartPrivileges;[ILjava/util/function/BiFunction;Lcom/android/server/am/BroadcastSentEventRecord;)I
    .locals 44
    .param p1, "callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "callerFeatureId"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "resultToApp"    # Lcom/android/server/am/ProcessRecord;
    .param p7, "resultTo"    # Landroid/content/IIntentReceiver;
    .param p8, "resultCode"    # I
    .param p9, "resultData"    # Ljava/lang/String;
    .param p10, "resultExtras"    # Landroid/os/Bundle;
    .param p11, "requiredPermissions"    # [Ljava/lang/String;
    .param p12, "excludedPermissions"    # [Ljava/lang/String;
    .param p13, "excludedPackages"    # [Ljava/lang/String;
    .param p14, "appOp"    # I
    .param p15, "brOptions"    # Landroid/app/BroadcastOptions;
    .param p16, "ordered"    # Z
    .param p17, "sticky"    # Z
    .param p18, "callingPid"    # I
    .param p19, "callingUid"    # I
    .param p20, "realCallingUid"    # I
    .param p21, "realCallingPid"    # I
    .param p22, "userId"    # I
    .param p23, "backgroundStartPrivileges"    # Landroid/app/BackgroundStartPrivileges;
    .param p24, "broadcastAllowList"    # [I
    .param p26, "broadcastSentEventRecord"    # Lcom/android/server/am/BroadcastSentEventRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ProcessRecord;",
            "Landroid/content/IIntentReceiver;",
            "I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Landroid/app/BroadcastOptions;",
            "ZZIIIII",
            "Landroid/app/BackgroundStartPrivileges;",
            "[I",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ">;",
            "Lcom/android/server/am/BroadcastSentEventRecord;",
            ")I"
        }
    .end annotation

    .line 894
    .local p25, "filterExtrasForReceiver":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;>;"
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v8, p2

    move-object/from16 v0, p4

    move/from16 v2, p16

    move/from16 v3, p17

    move/from16 v6, p18

    move/from16 v7, p19

    move/from16 v4, p20

    move/from16 v5, p21

    move/from16 v13, p22

    move-object/from16 v10, p26

    invoke-static {}, Lcom/android/server/am/BroadcastLoopers;->addMyLooper()V

    .line 896
    invoke-static {v4}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 897
    const-class v11, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    invoke-static {v11}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    .line 899
    .local v11, "sdkSandboxManagerLocal":Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;
    if-eqz v11, :cond_1

    .line 903
    invoke-interface {v11, v0}, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;->canSendBroadcast(Landroid/content/Intent;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_0

    .line 904
    :cond_0
    new-instance v12, Ljava/lang/SecurityException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Intent "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " may not be broadcast from an SDK sandbox uid. Given caller package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " (pid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", realCallingUid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", callingUid= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 900
    :cond_1
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v14, "SdkSandboxManagerLocal not found when sending a broadcast from an SDK sandbox uid."

    invoke-direct {v12, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 912
    .end local v11    # "sdkSandboxManagerLocal":Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;
    :cond_2
    :goto_0
    const/16 v11, 0x3e8

    if-eqz p7, :cond_4

    if-nez p6, :cond_4

    .line 913
    invoke-interface/range {p7 .. p7}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    instance-of v12, v12, Landroid/os/BinderProxy;

    if-eqz v12, :cond_3

    .line 915
    const-string v12, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Sending broadcast "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " with resultTo requires resultToApp"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/Throwable;

    invoke-direct {v15}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v12, v14, v15}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 920
    :cond_3
    iget-object v12, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v14, "system"

    invoke-virtual {v12, v14, v11}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v12

    move-object/from16 v18, v12

    .end local p6    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .local v12, "resultToApp":Lcom/android/server/am/ProcessRecord;
    goto :goto_2

    .line 924
    .end local v12    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local p6    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    :cond_4
    :goto_1
    move-object/from16 v18, p6

    .end local p6    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .local v18, "resultToApp":Lcom/android/server/am/ProcessRecord;
    :goto_2
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 925
    .end local p4    # "intent":Landroid/content/Intent;
    .local v12, "intent":Landroid/content/Intent;
    invoke-virtual {v10, v12}, Lcom/android/server/am/BroadcastSentEventRecord;->setIntent(Landroid/content/Intent;)V

    .line 926
    invoke-virtual {v12}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/server/am/BroadcastSentEventRecord;->setOriginalIntentFlags(I)V

    .line 927
    invoke-virtual {v10, v7}, Lcom/android/server/am/BroadcastSentEventRecord;->setSenderUid(I)V

    .line 928
    invoke-virtual {v10, v4}, Lcom/android/server/am/BroadcastSentEventRecord;->setRealSenderUid(I)V

    .line 929
    invoke-virtual {v10, v3}, Lcom/android/server/am/BroadcastSentEventRecord;->setSticky(Z)V

    .line 930
    invoke-virtual {v10, v2}, Lcom/android/server/am/BroadcastSentEventRecord;->setOrdered(Z)V

    .line 931
    const/4 v14, 0x0

    if-eqz p7, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    move v0, v14

    :goto_3
    invoke-virtual {v10, v0}, Lcom/android/server/am/BroadcastSentEventRecord;->setResultRequested(Z)V

    .line 932
    invoke-direct {v1, v9, v5}, Lcom/android/server/am/BroadcastController;->getRealProcessStateLocked(Lcom/android/server/am/ProcessRecord;I)I

    move-result v15

    .line 933
    .local v15, "callerAppProcessState":I
    invoke-virtual {v10, v15}, Lcom/android/server/am/BroadcastSentEventRecord;->setSenderProcState(I)V

    .line 934
    invoke-direct {v1, v9, v5}, Lcom/android/server/am/BroadcastController;->getRealUidStateLocked(Lcom/android/server/am/ProcessRecord;I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/server/am/BroadcastSentEventRecord;->setSenderUidState(I)V

    .line 937
    invoke-direct {v1, v9, v8, v7}, Lcom/android/server/am/BroadcastController;->isInstantApp(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)Z

    move-result v19

    .line 939
    .local v19, "callerInstantApp":Z
    const v20, -0x200001

    if-eqz v19, :cond_6

    .line 940
    invoke-virtual {v12}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int v0, v0, v20

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 943
    :cond_6
    move/from16 v28, v15

    .end local v15    # "callerAppProcessState":I
    .local v28, "callerAppProcessState":I
    const/4 v15, -0x1

    if-ne v13, v15, :cond_7

    if-eqz p24, :cond_7

    .line 944
    const-string v0, "ActivityManager"

    const-string v11, "broadcastAllowList only applies when sending to individual users. Assuming restrictive whitelist."

    invoke-static {v0, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    new-array v0, v14, [I

    move-object/from16 v21, v0

    .end local p24    # "broadcastAllowList":[I
    .local v0, "broadcastAllowList":[I
    goto :goto_4

    .line 950
    .end local v0    # "broadcastAllowList":[I
    .restart local p24    # "broadcastAllowList":[I
    :cond_7
    move-object/from16 v21, p24

    .end local p24    # "broadcastAllowList":[I
    .local v21, "broadcastAllowList":[I
    :goto_4
    const/16 v0, 0x10

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 953
    iget-object v11, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v11, v11, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    const/high16 v22, 0x2000000

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v11, :cond_8

    .line 954
    invoke-virtual {v12}, Landroid/content/Intent;->getFlags()I

    move-result v11

    and-int v11, v11, v22

    if-nez v11, :cond_8

    .line 955
    invoke-virtual {v12, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 969
    :cond_8
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    if-nez v11, :cond_9

    sget-boolean v11, Landroid/os/Build;->DEBUG_NOTHING:Z

    if-eqz v11, :cond_c

    .line 970
    :cond_9
    const-string v11, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 971
    if-eqz p17, :cond_a

    const-string v17, "Broadcast sticky: "

    :goto_5
    move-object/from16 v14, v17

    goto :goto_6

    :cond_a
    const-string v17, "Broadcast: "

    goto :goto_5

    :goto_6
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " ordered="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, " userid="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " options="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    if-nez p15, :cond_b

    const-string/jumbo v14, "null"

    goto :goto_7

    :cond_b
    invoke-virtual/range {p15 .. p15}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v14

    :goto_7
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " from pid="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " uid="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 970
    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_c
    if-eqz p7, :cond_e

    if-nez v2, :cond_e

    .line 978
    invoke-static {v7}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_8

    .line 979
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unauthorized unordered resultTo broadcast "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " sent from uid "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 981
    .local v0, "msg":Ljava/lang/String;
    const-string v3, "ActivityManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 986
    .end local v0    # "msg":Ljava/lang/String;
    :cond_e
    :goto_8
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move v11, v15

    const/4 v15, 0x0

    const/16 v14, 0x3e8

    const-string v16, "broadcast"

    move/from16 v17, v14

    const/4 v14, 0x1

    move-object v10, v0

    move-object v4, v12

    move/from16 v0, v17

    move v12, v7

    move-object/from16 v17, v8

    move v7, v11

    const/4 v8, 0x1

    move v11, v6

    const/4 v6, 0x0

    .end local v12    # "intent":Landroid/content/Intent;
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual/range {v10 .. v17}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 991
    .end local p22    # "userId":I
    .local v10, "userId":I
    if-eq v10, v7, :cond_12

    iget-object v13, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v13, v10}, Lcom/android/server/am/UserController;->isUserOrItsParentRunning(I)Z

    move-result v13

    if-nez v13, :cond_12

    .line 993
    if-ne v12, v0, :cond_10

    .line 994
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int v0, v0, v22

    if-nez v0, :cond_f

    goto :goto_9

    :cond_f
    move/from16 v14, p20

    move v13, v2

    move-object/from16 p4, v4

    move v15, v5

    move/from16 v38, v10

    move v5, v12

    move-object/from16 v16, v18

    move/from16 v9, v28

    move-object/from16 v4, p2

    move-object/from16 v10, p5

    move-object/from16 v12, p11

    move-object/from16 v2, p15

    goto/16 :goto_a

    :cond_10
    :goto_9
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 995
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 996
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping broadcast of "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": user "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " and its parent (if any) are stopped"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    move-object/from16 v8, p2

    move-object/from16 v3, p7

    move-object/from16 v6, p15

    move/from16 v14, p20

    move v13, v2

    move v15, v5

    move v5, v10

    move v7, v12

    move-object/from16 v2, v18

    move/from16 v9, v28

    move-object/from16 v10, p5

    move-object/from16 v12, p11

    .end local v10    # "userId":I
    .end local v18    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v28    # "callerAppProcessState":I
    .local v2, "resultToApp":Lcom/android/server/am/ProcessRecord;
    .local v5, "userId":I
    .local v9, "callerAppProcessState":I
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BroadcastController;->scheduleCanceledResultTo(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILandroid/app/BroadcastOptions;ILjava/lang/String;)V

    .line 1000
    move-object/from16 v16, v2

    move-object v3, v4

    move/from16 v38, v5

    move-object v2, v6

    move v5, v7

    move-object v4, v8

    .end local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "userId":I
    .local v3, "intent":Landroid/content/Intent;
    .local v16, "resultToApp":Lcom/android/server/am/ProcessRecord;
    .local v38, "userId":I
    const/4 v0, -0x2

    return v0

    .line 995
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v9    # "callerAppProcessState":I
    .end local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v38    # "userId":I
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v10    # "userId":I
    .restart local v18    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v28    # "callerAppProcessState":I
    :cond_11
    move/from16 v14, p20

    move v13, v2

    move-object/from16 p4, v4

    move v15, v5

    move/from16 v38, v10

    move v5, v12

    move-object/from16 v16, v18

    move/from16 v9, v28

    move-object/from16 v4, p2

    move-object/from16 v10, p5

    move-object/from16 v12, p11

    move-object/from16 v2, p15

    .end local v4    # "intent":Landroid/content/Intent;
    .end local v10    # "userId":I
    .end local v18    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v28    # "callerAppProcessState":I
    .restart local v9    # "callerAppProcessState":I
    .restart local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "userId":I
    .restart local p4    # "intent":Landroid/content/Intent;
    goto :goto_a

    .line 991
    .end local v9    # "callerAppProcessState":I
    .end local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v38    # "userId":I
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v10    # "userId":I
    .restart local v18    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v28    # "callerAppProcessState":I
    :cond_12
    move/from16 v14, p20

    move v13, v2

    move-object/from16 p4, v4

    move v15, v5

    move/from16 v38, v10

    move v5, v12

    move-object/from16 v16, v18

    move/from16 v9, v28

    move-object/from16 v4, p2

    move-object/from16 v10, p5

    move-object/from16 v12, p11

    move-object/from16 v2, p15

    .line 1004
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v10    # "userId":I
    .end local v18    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v28    # "callerAppProcessState":I
    .restart local v9    # "callerAppProcessState":I
    .restart local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "userId":I
    .restart local p4    # "intent":Landroid/content/Intent;
    :goto_a
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 1005
    .local v6, "action":Ljava/lang/String;
    const-wide/16 v17, 0x0

    if-eqz v2, :cond_1e

    .line 1006
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v24

    cmp-long v22, v24, v17

    if-lez v22, :cond_14

    .line 1010
    const/16 p22, -0x60

    const-string v0, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    invoke-static {v0, v15, v14, v7, v8}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    nop

    if-eqz v0, :cond_15

    const-string v0, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    .line 1013
    invoke-static {v0, v15, v14, v7, v8}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    nop

    if-eqz v0, :cond_15

    const-string v0, "android.permission.START_FOREGROUND_SERVICES_FROM_BACKGROUND"

    .line 1016
    invoke-static {v0, v15, v14, v7, v8}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-nez v0, :cond_13

    goto :goto_b

    .line 1019
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " broadcast from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (pid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") requires "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " or "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " or "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.permission.START_FOREGROUND_SERVICES_FROM_BACKGROUND"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1026
    .restart local v0    # "msg":Ljava/lang/String;
    const-string v3, "ActivityManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1006
    .end local v0    # "msg":Ljava/lang/String;
    :cond_14
    const/16 p22, -0x60

    .line 1030
    :cond_15
    :goto_b
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->isDontSendToRestrictedApps()Z

    move-result v0

    nop

    if-eqz v0, :cond_16

    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1031
    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService;->isUidActiveLOSP(I)Z

    move-result v0

    nop

    if-nez v0, :cond_16

    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1032
    invoke-virtual {v0, v5, v4}, Lcom/android/server/am/ActivityManagerService;->isBackgroundRestrictedNoCheck(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1033
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not sending broadcast "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - app "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " has background restrictions"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    return p22

    .line 1037
    :cond_16
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->allowsBackgroundActivityStarts()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1041
    const-string v0, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    invoke-static {v0, v15, v14, v7, v8}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-nez v0, :cond_17

    .line 1054
    sget-object v0, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    .end local p23    # "backgroundStartPrivileges":Landroid/app/BackgroundStartPrivileges;
    .local v0, "backgroundStartPrivileges":Landroid/app/BackgroundStartPrivileges;
    goto :goto_c

    .line 1045
    .end local v0    # "backgroundStartPrivileges":Landroid/app/BackgroundStartPrivileges;
    .restart local p23    # "backgroundStartPrivileges":Landroid/app/BackgroundStartPrivileges;
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " broadcast from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (pid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") requires "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1050
    .local v0, "msg":Ljava/lang/String;
    const-string v3, "ActivityManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1037
    .end local v0    # "msg":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p23

    .line 1058
    .end local p23    # "backgroundStartPrivileges":Landroid/app/BackgroundStartPrivileges;
    .local v0, "backgroundStartPrivileges":Landroid/app/BackgroundStartPrivileges;
    :goto_c
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getIdForResponseEvent()J

    move-result-wide v24

    cmp-long v22, v24, v17

    if-lez v22, :cond_19

    .line 1059
    iget-object v8, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v7, "android.permission.ACCESS_BROADCAST_RESPONSE_STATS"

    const-string/jumbo v3, "recordResponseEventWhileInBackground"

    invoke-virtual {v8, v7, v11, v5, v3}, Lcom/android/server/am/ActivityManagerService;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1064
    :cond_19
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->isDebugLogEnabled()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1065
    invoke-direct {v1, v5}, Lcom/android/server/am/BroadcastController;->isShellOrRoot(I)Z

    move-result v3

    if-nez v3, :cond_1c

    if-eqz p1, :cond_1b

    .line 1066
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActiveInstrumentation()Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_d

    :cond_1a
    const/4 v3, 0x0

    goto :goto_e

    .line 1067
    :cond_1b
    :goto_d
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/BroadcastOptions;->setDebugLogEnabled(Z)Landroid/app/BroadcastOptions;

    goto :goto_e

    .line 1065
    :cond_1c
    const/4 v3, 0x0

    goto :goto_e

    .line 1064
    :cond_1d
    const/4 v3, 0x0

    .line 1076
    :goto_e
    move-object/from16 v25, v0

    goto :goto_f

    .line 1005
    .end local v0    # "backgroundStartPrivileges":Landroid/app/BackgroundStartPrivileges;
    .restart local p23    # "backgroundStartPrivileges":Landroid/app/BackgroundStartPrivileges;
    :cond_1e
    const/16 p22, -0x60

    const/4 v3, 0x0

    move-object/from16 v25, p23

    .line 1076
    .end local p23    # "backgroundStartPrivileges":Landroid/app/BackgroundStartPrivileges;
    .local v25, "backgroundStartPrivileges":Landroid/app/BackgroundStartPrivileges;
    :goto_f
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/content/pm/IPackageManager;->isProtectedBroadcast(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    move/from16 v23, v0

    .line 1082
    .local v23, "isProtectedBroadcast":Z
    nop

    .line 1085
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1096
    if-eqz p1, :cond_1f

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_10

    :cond_1f
    move v0, v3

    :goto_10
    move/from16 v40, v0

    .local v0, "isCallerSystem":Z
    goto :goto_11

    .line 1093
    .end local v0    # "isCallerSystem":Z
    :sswitch_0
    const/4 v0, 0x1

    .line 1094
    .restart local v0    # "isCallerSystem":Z
    move/from16 v40, v0

    .line 1102
    .end local v0    # "isCallerSystem":Z
    .local v40, "isCallerSystem":Z
    :goto_11
    if-nez v40, :cond_26

    .line 1103
    if-nez v23, :cond_25

    .line 1110
    const-string v0, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    if-nez v0, :cond_21

    const-string v0, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 1111
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_12

    :cond_20
    move-object/from16 v7, p4

    goto/16 :goto_13

    .line 1116
    :cond_21
    :goto_12
    if-eqz v4, :cond_24

    .line 1121
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 1124
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    move-object/from16 v7, p4

    goto/16 :goto_13

    .line 1126
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: not allowed to send broadcast "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1130
    .local v0, "msg":Ljava/lang/String;
    const-string v3, "ActivityManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1135
    .end local v0    # "msg":Ljava/lang/String;
    :cond_23
    move-object/from16 v7, p4

    .end local p4    # "intent":Landroid/content/Intent;
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {v7, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_13

    .line 1117
    .end local v7    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: not allowed to send broadcast "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from unknown caller."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1119
    .restart local v0    # "msg":Ljava/lang/String;
    const-string v3, "ActivityManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1104
    .end local v0    # "msg":Ljava/lang/String;
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: not allowed to send broadcast "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from pid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1107
    .restart local v0    # "msg":Ljava/lang/String;
    const-string v3, "ActivityManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1102
    .end local v0    # "msg":Ljava/lang/String;
    :cond_26
    move-object/from16 v7, p4

    .line 1140
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    :goto_13
    const/16 v26, 0x0

    .line 1142
    .local v26, "timeoutExempt":Z
    if-eqz v6, :cond_4b

    .line 1143
    invoke-direct {v1}, Lcom/android/server/am/BroadcastController;->getBackgroundLaunchBroadcasts()Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1144
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    if-eqz v0, :cond_27

    .line 1145
    const-string v0, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcast action "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " forcing include-background"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    :cond_27
    const/high16 v0, 0x1000000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1151
    :cond_28
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1152
    invoke-direct {v1}, Lcom/android/server/am/BroadcastController;->getWearRemoteIntentAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1153
    if-eqz p1, :cond_29

    .line 1154
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    goto :goto_14

    .line 1155
    :cond_29
    const/16 v0, 0x14

    :goto_14
    nop

    .line 1156
    .local v0, "callerProcState":I
    invoke-static {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v8

    const/16 v3, 0x64

    if-le v8, v3, :cond_2a

    .line 1158
    return p22

    .line 1162
    .end local v0    # "callerProcState":I
    :cond_2a
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v28, 0x6

    const/16 v3, 0xd

    const/16 v41, 0x2

    sparse-switch v0, :sswitch_data_1

    :cond_2b
    goto/16 :goto_15

    :sswitch_1
    const-string v0, "android.security.action.TRUST_STORE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/16 v0, 0x11

    goto/16 :goto_16

    :sswitch_2
    const-string v0, "android.net.action.CLEAR_DNS_CACHE"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    move v0, v3

    goto/16 :goto_16

    :sswitch_3
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/16 v0, 0x9

    goto/16 :goto_16

    :sswitch_4
    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x7

    goto/16 :goto_16

    :sswitch_5
    const-string v0, "android.hardware.action.NEW_PICTURE"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/16 v0, 0xf

    goto/16 :goto_16

    :sswitch_6
    const-string v0, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    goto/16 :goto_16

    :sswitch_7
    const-string v0, "android.intent.action.PRE_BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/16 v0, 0x13

    goto/16 :goto_16

    :sswitch_8
    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/16 v0, 0x12

    goto/16 :goto_16

    :sswitch_9
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    move/from16 v0, v41

    goto/16 :goto_16

    :sswitch_a
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/16 v0, 0xc

    goto/16 :goto_16

    :sswitch_b
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/16 v0, 0xb

    goto/16 :goto_16

    :sswitch_c
    const-string v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/16 v0, 0xa

    goto :goto_16

    :sswitch_d
    const-string v0, "android.intent.action.PROXY_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/16 v0, 0xe

    goto :goto_16

    :sswitch_e
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x3

    goto :goto_16

    :sswitch_f
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/16 v0, 0x14

    goto :goto_16

    :sswitch_10
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/16 v0, 0x8

    goto :goto_16

    :sswitch_11
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    move/from16 v0, v28

    goto :goto_16

    :sswitch_12
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x5

    goto :goto_16

    :sswitch_13
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x4

    goto :goto_16

    :sswitch_14
    const-string v0, "android.intent.action.UID_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_16

    :sswitch_15
    const-string v0, "android.hardware.action.NEW_VIDEO"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/16 v0, 0x10

    goto :goto_16

    :goto_15
    const/4 v0, -0x1

    :goto_16
    move/from16 p4, v9

    .end local v9    # "callerAppProcessState":I
    .local p4, "callerAppProcessState":I
    const-wide/16 v8, 0x400

    packed-switch v0, :pswitch_data_0

    move-object v8, v4

    move-object v9, v6

    move-object v4, v7

    const/4 v15, 0x0

    move v7, v5

    move/from16 v5, v38

    goto/16 :goto_28

    .line 1448
    :pswitch_0
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v11, v5, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->checkCanCloseSystemDialogs(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 1450
    move-object/from16 v3, p7

    move-object v8, v4

    move-object v9, v6

    move-object v4, v7

    const/16 v27, 0x0

    move-object v6, v2

    move v7, v5

    move-object/from16 v2, v16

    move/from16 v5, v38

    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v38    # "userId":I
    .restart local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "userId":I
    .local v9, "action":Ljava/lang/String;
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BroadcastController;->scheduleCanceledResultTo(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILandroid/app/BroadcastOptions;ILjava/lang/String;)V

    .line 1453
    return v27

    .line 1448
    .end local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "userId":I
    .end local v9    # "action":Ljava/lang/String;
    .restart local v6    # "action":Ljava/lang/String;
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "userId":I
    :cond_2c
    move-object v9, v6

    move-object v4, v7

    move-object/from16 v2, v16

    move/from16 v5, v38

    const/16 v27, 0x0

    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v38    # "userId":I
    .restart local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "userId":I
    .restart local v9    # "action":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move/from16 v7, p19

    move/from16 v15, v27

    goto/16 :goto_28

    .line 1445
    .end local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "userId":I
    .end local v9    # "action":Ljava/lang/String;
    .restart local v6    # "action":Ljava/lang/String;
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "userId":I
    :pswitch_1
    move-object v9, v6

    move-object v4, v7

    move-object/from16 v2, v16

    move/from16 v5, v38

    const/16 v27, 0x0

    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v38    # "userId":I
    .restart local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "userId":I
    .restart local v9    # "action":Ljava/lang/String;
    const/16 v26, 0x1

    .line 1446
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move/from16 v7, p19

    move/from16 v15, v27

    goto/16 :goto_28

    .line 1439
    .end local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "userId":I
    .end local v9    # "action":Ljava/lang/String;
    .restart local v6    # "action":Ljava/lang/String;
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "userId":I
    :pswitch_2
    move-object v9, v6

    move-object v4, v7

    move-object/from16 v2, v16

    move/from16 v5, v38

    const/16 v27, 0x0

    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v38    # "userId":I
    .restart local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "userId":I
    .restart local v9    # "action":Ljava/lang/String;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcast "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " no longer supported. It will not be delivered."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move-object/from16 v3, p7

    move-object/from16 v6, p15

    move/from16 v7, p19

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BroadcastController;->scheduleCanceledResultTo(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILandroid/app/BroadcastOptions;ILjava/lang/String;)V

    .line 1443
    return v27

    .line 1434
    .end local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "userId":I
    .end local v9    # "action":Ljava/lang/String;
    .restart local v6    # "action":Ljava/lang/String;
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "userId":I
    :pswitch_3
    move-object v9, v6

    move-object v4, v7

    move-object/from16 v2, v16

    move/from16 v5, v38

    const/16 v27, 0x0

    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v38    # "userId":I
    .restart local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "userId":I
    .restart local v9    # "action":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0x3f

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1435
    move-object/from16 v8, p2

    move/from16 v7, p19

    move/from16 v15, v27

    goto/16 :goto_28

    .line 1431
    .end local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "userId":I
    .end local v9    # "action":Ljava/lang/String;
    .restart local v6    # "action":Ljava/lang/String;
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "userId":I
    :pswitch_4
    move-object v9, v6

    move-object v4, v7

    move-object/from16 v2, v16

    move/from16 v5, v38

    const/16 v27, 0x0

    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v38    # "userId":I
    .restart local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "userId":I
    .restart local v9    # "action":Ljava/lang/String;
    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1432
    move-object/from16 v8, p2

    move/from16 v7, p19

    move/from16 v15, v27

    goto/16 :goto_28

    .line 1421
    .end local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "userId":I
    .end local v9    # "action":Ljava/lang/String;
    .restart local v6    # "action":Ljava/lang/String;
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "userId":I
    :pswitch_5
    move-object v9, v6

    move-object v4, v7

    move-object/from16 v2, v16

    move/from16 v5, v38

    const/high16 v6, 0x40000000    # 2.0f

    const/16 v27, 0x0

    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v38    # "userId":I
    .restart local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "userId":I
    .restart local v9    # "action":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v3, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v7, 0x1d

    invoke-virtual {v3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1423
    move-object/from16 v8, p2

    move/from16 v7, p19

    move/from16 v15, v27

    goto/16 :goto_28

    .line 1418
    .end local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "userId":I
    .end local v9    # "action":Ljava/lang/String;
    .restart local v6    # "action":Ljava/lang/String;
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "userId":I
    :pswitch_6
    move-object v9, v6

    move-object v4, v7

    move-object/from16 v2, v16

    move/from16 v5, v38

    const/high16 v6, 0x40000000    # 2.0f

    const/16 v27, 0x0

    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v38    # "userId":I
    .restart local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "userId":I
    .restart local v9    # "action":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0x1c

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1419
    move-object/from16 v8, p2

    move/from16 v7, p19

    move/from16 v15, v27

    goto/16 :goto_28

    .line 1404
    .end local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "userId":I
    .end local v9    # "action":Ljava/lang/String;
    .restart local v6    # "action":Ljava/lang/String;
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "userId":I
    :pswitch_7
    move-object v9, v6

    move-object v4, v7

    move-object/from16 v2, v16

    move/from16 v5, v38

    const/high16 v6, 0x40000000    # 2.0f

    const/16 v27, 0x0

    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v38    # "userId":I
    .restart local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "userId":I
    .restart local v9    # "action":Ljava/lang/String;
    const/4 v0, -0x1

    .line 1405
    .local v0, "NO_EXTRA_VALUE_FOUND":I
    const-string v3, "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

    const/4 v7, -0x1

    invoke-virtual {v4, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1409
    .local v3, "timeFormatPreferenceMsgValue":I
    if-eq v3, v7, :cond_2d

    .line 1410
    iget-object v7, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    .line 1411
    const/16 v8, 0x29

    move/from16 v6, v27

    invoke-virtual {v7, v8, v3, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    .line 1413
    .local v7, "updateTimePreferenceMsg":Landroid/os/Message;
    iget-object v8, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_17

    .line 1409
    .end local v7    # "updateTimePreferenceMsg":Landroid/os/Message;
    :cond_2d
    move/from16 v6, v27

    .line 1415
    :goto_17
    iget-object v7, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v7}, Lcom/android/server/am/BatteryStatsService;->noteCurrentTimeChanged()V

    .line 1416
    move-object/from16 v8, p2

    move/from16 v7, p19

    move-object/from16 v16, v2

    move v15, v6

    goto/16 :goto_28

    .line 1398
    .end local v0    # "NO_EXTRA_VALUE_FOUND":I
    .end local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "timeFormatPreferenceMsgValue":I
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "userId":I
    .end local v9    # "action":Ljava/lang/String;
    .restart local v6    # "action":Ljava/lang/String;
    .local v7, "intent":Landroid/content/Intent;
    .restart local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "userId":I
    :pswitch_8
    move-object v9, v6

    move-object v4, v7

    move-object/from16 v2, v16

    move/from16 v5, v38

    const/4 v6, 0x0

    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v38    # "userId":I
    .restart local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "userId":I
    .restart local v9    # "action":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1399
    move-object/from16 v8, p2

    move/from16 v7, p19

    move v15, v6

    goto/16 :goto_28

    .line 1387
    .end local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "userId":I
    .end local v9    # "action":Ljava/lang/String;
    .restart local v6    # "action":Ljava/lang/String;
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "userId":I
    :pswitch_9
    move-object v9, v6

    move-object v4, v7

    move-object/from16 v2, v16

    move/from16 v5, v38

    const/4 v6, 0x0

    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v38    # "userId":I
    .restart local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "userId":I
    .restart local v9    # "action":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1389
    .local v0, "data":Landroid/net/Uri;
    nop

    nop

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    .local v7, "ssp":Ljava/lang/String;
    if-eqz v3, :cond_2e

    .line 1390
    iget-object v3, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v3, v7, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onPackageDataCleared(Ljava/lang/String;I)V

    move-object/from16 v8, p2

    move/from16 v7, p19

    move-object/from16 v16, v2

    move v15, v6

    goto/16 :goto_28

    .line 1389
    :cond_2e
    move-object/from16 v8, p2

    move/from16 v7, p19

    move-object/from16 v16, v2

    move v15, v6

    goto/16 :goto_28

    .end local v7    # "ssp":Ljava/lang/String;
    :cond_2f
    move-object/from16 v8, p2

    move/from16 v7, p19

    move-object/from16 v16, v2

    move v15, v6

    goto/16 :goto_28

    .line 1369
    .end local v0    # "data":Landroid/net/Uri;
    .end local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "userId":I
    .end local v9    # "action":Ljava/lang/String;
    .restart local v6    # "action":Ljava/lang/String;
    .local v7, "intent":Landroid/content/Intent;
    .restart local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "userId":I
    :pswitch_a
    move-object v4, v7

    move-object/from16 v2, v16

    move/from16 v5, v38

    const/4 v3, 0x0

    move-wide/from16 v42, v8

    move-object v9, v6

    move-wide/from16 v6, v42

    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v38    # "userId":I
    .restart local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "userId":I
    .restart local v9    # "action":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 1371
    .local v8, "data":Landroid/net/Uri;
    if-eqz v8, :cond_32

    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    move-object/from16 p6, v0

    .local p6, "ssp":Ljava/lang/String;
    if-eqz v0, :cond_31

    .line 1372
    const-string v0, "android.intent.extra.REPLACING"

    .line 1373
    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 1374
    .local v6, "replacing":Z
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-object/from16 v7, p6

    .end local p6    # "ssp":Ljava/lang/String;
    .local v7, "ssp":Ljava/lang/String;
    invoke-virtual {v0, v7, v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onPackageAdded(Ljava/lang/String;Z)V

    .line 1377
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1378
    const-wide/16 v14, 0x400

    invoke-interface {v0, v7, v14, v15, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1379
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v14, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1380
    if-eqz v0, :cond_30

    move-object v15, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .local v15, "intent":Landroid/content/Intent;
    :try_start_2
    iget-wide v3, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    goto :goto_18

    .line 1381
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    goto :goto_19

    .line 1380
    .end local v15    # "intent":Landroid/content/Intent;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_30
    move-object v15, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v15    # "intent":Landroid/content/Intent;
    move-wide/from16 v3, v17

    .line 1379
    :goto_18
    invoke-virtual {v14, v7, v3, v4}, Lcom/android/server/am/BatteryStatsService;->notePackageInstalled(Ljava/lang/String;J)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1382
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_19

    .line 1381
    .end local v15    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    move-object v15, v4

    .line 1383
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "replacing":Z
    .restart local v15    # "intent":Landroid/content/Intent;
    :goto_19
    move-object/from16 v8, p2

    move/from16 v7, p19

    move-object/from16 v16, v2

    move-object v4, v15

    const/4 v15, 0x0

    goto/16 :goto_28

    .line 1371
    .end local v7    # "ssp":Ljava/lang/String;
    .end local v15    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local p6    # "ssp":Ljava/lang/String;
    :cond_31
    move-object/from16 v7, p6

    move-object v15, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .end local p6    # "ssp":Ljava/lang/String;
    .restart local v7    # "ssp":Ljava/lang/String;
    .restart local v15    # "intent":Landroid/content/Intent;
    move-object/from16 v8, p2

    move/from16 v7, p19

    move-object/from16 v16, v2

    const/4 v15, 0x0

    goto/16 :goto_28

    .end local v7    # "ssp":Ljava/lang/String;
    .end local v15    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_32
    move-object v15, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v15    # "intent":Landroid/content/Intent;
    move-object/from16 v8, p2

    move/from16 v7, p19

    move-object/from16 v16, v2

    const/4 v15, 0x0

    goto/16 :goto_28

    .line 1343
    .end local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "userId":I
    .end local v8    # "data":Landroid/net/Uri;
    .end local v9    # "action":Ljava/lang/String;
    .end local v15    # "intent":Landroid/content/Intent;
    .local v6, "action":Ljava/lang/String;
    .local v7, "intent":Landroid/content/Intent;
    .restart local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "userId":I
    :pswitch_b
    move-object v9, v6

    move-object v15, v7

    move-object/from16 v2, v16

    move/from16 v5, v38

    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v38    # "userId":I
    .restart local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v5    # "userId":I
    .restart local v9    # "action":Ljava/lang/String;
    .restart local v15    # "intent":Landroid/content/Intent;
    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    .line 1345
    .local v14, "data":Landroid/net/Uri;
    if-eqz v14, :cond_35

    invoke-virtual {v14}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .local v3, "ssp":Ljava/lang/String;
    if-eqz v0, :cond_34

    .line 1346
    const/4 v4, 0x0

    .line 1348
    .local v4, "aInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1349
    const-wide/16 v6, 0x400

    invoke-interface {v0, v3, v6, v7, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v4, v0

    .line 1351
    goto :goto_1a

    .line 1350
    :catch_2
    move-exception v0

    move-object v0, v4

    .line 1352
    .end local v4    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .local v0, "aInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1a
    if-nez v0, :cond_33

    .line 1353
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dropping ACTION_PACKAGE_REPLACED for non-existent pkg: ssp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " data="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    move-object/from16 v8, p2

    move-object/from16 v6, p15

    move/from16 v7, p19

    move-object/from16 v16, v3

    move-object v4, v15

    const/4 v15, 0x0

    move-object/from16 v3, p7

    .end local v3    # "ssp":Ljava/lang/String;
    .end local v15    # "intent":Landroid/content/Intent;
    .local v4, "intent":Landroid/content/Intent;
    .local v16, "ssp":Ljava/lang/String;
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BroadcastController;->scheduleCanceledResultTo(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILandroid/app/BroadcastOptions;ILjava/lang/String;)V

    .line 1357
    return v15

    .line 1359
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v16    # "ssp":Ljava/lang/String;
    .restart local v3    # "ssp":Ljava/lang/String;
    .restart local v15    # "intent":Landroid/content/Intent;
    :cond_33
    move-object/from16 v8, p2

    move/from16 v7, p19

    move-object/from16 v16, v3

    move-object v4, v15

    const/4 v15, 0x0

    .end local v3    # "ssp":Ljava/lang/String;
    .end local v15    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v16    # "ssp":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->updateAssociationForApp(Landroid/content/pm/ApplicationInfo;)V

    .line 1360
    iget-object v3, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onPackageReplaced(Landroid/content/pm/ApplicationInfo;)V

    .line 1361
    iget-object v3, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActiveServices;->updateServiceApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 1362
    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    invoke-direct {v1, v6, v3, v5}, Lcom/android/server/am/BroadcastController;->sendPackageBroadcastLocked(I[Ljava/lang/String;I)V

    .line 1364
    .end local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v16, v2

    goto/16 :goto_28

    .line 1345
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v16    # "ssp":Ljava/lang/String;
    .restart local v3    # "ssp":Ljava/lang/String;
    .restart local v15    # "intent":Landroid/content/Intent;
    :cond_34
    move-object/from16 v8, p2

    move/from16 v7, p19

    move-object/from16 v16, v3

    move-object v4, v15

    const/4 v15, 0x0

    .end local v3    # "ssp":Ljava/lang/String;
    .end local v15    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v16    # "ssp":Ljava/lang/String;
    move-object/from16 v16, v2

    goto/16 :goto_28

    .end local v4    # "intent":Landroid/content/Intent;
    .end local v16    # "ssp":Ljava/lang/String;
    .restart local v15    # "intent":Landroid/content/Intent;
    :cond_35
    move-object/from16 v8, p2

    move/from16 v7, p19

    move-object v4, v15

    const/4 v15, 0x0

    .end local v15    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    move-object/from16 v16, v2

    goto/16 :goto_28

    .line 1181
    .end local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "userId":I
    .end local v9    # "action":Ljava/lang/String;
    .end local v14    # "data":Landroid/net/Uri;
    .restart local v6    # "action":Ljava/lang/String;
    .restart local v7    # "intent":Landroid/content/Intent;
    .local v16, "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "userId":I
    :pswitch_c
    move-object v8, v4

    move-object v9, v6

    move-object v4, v7

    move-object/from16 v2, v16

    const/4 v6, 0x3

    const/4 v15, 0x0

    move v7, v5

    move/from16 v5, v38

    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v38    # "userId":I
    .restart local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "userId":I
    .restart local v9    # "action":Ljava/lang/String;
    const-string v0, "android.permission.BROADCAST_PACKAGE_REMOVED"

    const/4 v3, 0x1

    const/4 v14, -0x1

    invoke-static {v0, v11, v7, v14, v3}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-nez v0, :cond_47

    .line 1193
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_2

    :cond_36
    goto :goto_1b

    :sswitch_16
    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    move/from16 v14, v28

    goto :goto_1c

    :sswitch_17
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    move v14, v6

    goto :goto_1c

    :sswitch_18
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v14, 0x4

    goto :goto_1c

    :sswitch_19
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v14, 0x5

    goto :goto_1c

    :sswitch_1a
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    move/from16 v14, v41

    goto :goto_1c

    :sswitch_1b
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v14, 0x1

    goto :goto_1c

    :sswitch_1c
    const-string v0, "android.intent.action.UID_REMOVED"

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    move v14, v15

    goto :goto_1c

    :goto_1b
    const/4 v14, -0x1

    :goto_1c
    packed-switch v14, :pswitch_data_1

    move-object/from16 v16, v2

    goto/16 :goto_27

    .line 1320
    :pswitch_d
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    .line 1321
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1320
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1322
    .local v0, "suspended":Z
    const-string v3, "android.intent.extra.changed_package_list"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1324
    .local v3, "packageNames":[Ljava/lang/String;
    const-string v6, "android.intent.extra.user_handle"

    const/16 v14, -0x2710

    invoke-virtual {v4, v6, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1327
    .local v6, "userIdExtra":I
    iget-object v14, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v14, v3, v0, v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onPackagesSuspendedChanged([Ljava/lang/String;ZI)V

    .line 1330
    const-string v14, "android.intent.extra.quarantined"

    invoke-virtual {v4, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 1332
    .local v14, "quarantined":Z
    if-eqz v0, :cond_38

    if-eqz v14, :cond_38

    if-eqz v3, :cond_38

    .line 1333
    const/16 v16, 0x0

    move/from16 v15, v16

    .local v15, "i":I
    :goto_1d
    move/from16 p6, v0

    .end local v0    # "suspended":Z
    .local p6, "suspended":Z
    array-length v0, v3

    if-ge v15, v0, :cond_37

    .line 1334
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v2

    .end local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    aget-object v2, v3, v15

    move-object/from16 p22, v3

    .end local v3    # "packageNames":[Ljava/lang/String;
    .local p22, "packageNames":[Ljava/lang/String;
    const-string/jumbo v3, "quarantined"

    move/from16 p23, v6

    const/4 v6, 0x1

    .end local v6    # "userIdExtra":I
    .local p23, "userIdExtra":I
    invoke-virtual {v0, v2, v5, v6, v3}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;IILjava/lang/String;)V

    .line 1333
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, p6

    move-object/from16 v3, p22

    move/from16 v6, p23

    move-object/from16 v2, v16

    goto :goto_1d

    .end local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local p22    # "packageNames":[Ljava/lang/String;
    .end local p23    # "userIdExtra":I
    .restart local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "packageNames":[Ljava/lang/String;
    .restart local v6    # "userIdExtra":I
    :cond_37
    move-object/from16 v16, v2

    move-object/from16 p22, v3

    move/from16 p23, v6

    .end local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "packageNames":[Ljava/lang/String;
    .end local v6    # "userIdExtra":I
    .restart local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local p22    # "packageNames":[Ljava/lang/String;
    .restart local p23    # "userIdExtra":I
    const/4 v15, 0x0

    goto/16 :goto_27

    .line 1332
    .end local v15    # "i":I
    .end local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local p6    # "suspended":Z
    .end local p22    # "packageNames":[Ljava/lang/String;
    .end local p23    # "userIdExtra":I
    .restart local v0    # "suspended":Z
    .restart local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "packageNames":[Ljava/lang/String;
    .restart local v6    # "userIdExtra":I
    :cond_38
    move/from16 p6, v0

    move-object/from16 v16, v2

    move-object/from16 p22, v3

    move/from16 p23, v6

    .end local v0    # "suspended":Z
    .end local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "packageNames":[Ljava/lang/String;
    .end local v6    # "userIdExtra":I
    .restart local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local p6    # "suspended":Z
    .restart local p22    # "packageNames":[Ljava/lang/String;
    .restart local p23    # "userIdExtra":I
    const/4 v15, 0x0

    goto/16 :goto_27

    .line 1229
    .end local v14    # "quarantined":Z
    .end local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local p6    # "suspended":Z
    .end local p22    # "packageNames":[Ljava/lang/String;
    .end local p23    # "userIdExtra":I
    .restart local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    :pswitch_e
    move-object/from16 v16, v2

    .end local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1231
    .local v2, "data":Landroid/net/Uri;
    if-eqz v2, :cond_42

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    .local v30, "ssp":Ljava/lang/String;
    if-eqz v0, :cond_41

    .line 1232
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1233
    .local v3, "removed":Z
    const-string v0, "android.intent.extra.REPLACING"

    .line 1234
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 1235
    .local v14, "replacing":Z
    const-string v0, "android.intent.extra.DONT_KILL_APP"

    .line 1236
    invoke-virtual {v4, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/16 v22, 0x1

    xor-int/lit8 v0, v0, 0x1

    move v6, v0

    .line 1237
    .local v6, "killProcess":Z
    if-eqz v3, :cond_39

    if-nez v14, :cond_39

    const/16 v36, 0x1

    goto :goto_1e

    :cond_39
    const/16 v36, 0x0

    .line 1239
    .local v36, "fullUninstall":Z
    :goto_1e
    if-eqz v3, :cond_3e

    .line 1240
    if-eqz v6, :cond_3a

    .line 1241
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v15, "android.intent.extra.UID"

    .line 1242
    move/from16 p6, v3

    const/4 v3, -0x1

    .end local v3    # "removed":Z
    .local p6, "removed":Z
    invoke-virtual {v4, v15, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 1241
    invoke-static {v15}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v31

    const/16 v37, 0x0

    const-string/jumbo v39, "pkg removed"

    const/16 v32, 0x0

    const/16 v33, 0x1

    const/16 v34, 0x1

    const/16 v35, 0x0

    move-object/from16 v29, v0

    move/from16 v38, v5

    .end local v5    # "userId":I
    .restart local v38    # "userId":I
    invoke-virtual/range {v29 .. v39}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZZILjava/lang/String;)Z

    .line 1245
    move-object/from16 v3, v30

    move/from16 v15, v36

    .end local v30    # "ssp":Ljava/lang/String;
    .end local v36    # "fullUninstall":Z
    .end local v38    # "userId":I
    .local v3, "ssp":Ljava/lang/String;
    .restart local v5    # "userId":I
    .local v15, "fullUninstall":Z
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 1246
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManagerInternal;->onPackageProcessKilledForUninstall(Ljava/lang/String;)V

    move/from16 p22, v6

    move/from16 p23, v14

    goto :goto_1f

    .line 1250
    .end local v15    # "fullUninstall":Z
    .end local p6    # "removed":Z
    .local v3, "removed":Z
    .restart local v30    # "ssp":Ljava/lang/String;
    .restart local v36    # "fullUninstall":Z
    :cond_3a
    move/from16 p6, v3

    move-object/from16 v3, v30

    move/from16 v15, v36

    .end local v30    # "ssp":Ljava/lang/String;
    .end local v36    # "fullUninstall":Z
    .local v3, "ssp":Ljava/lang/String;
    .restart local v15    # "fullUninstall":Z
    .restart local p6    # "removed":Z
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 p22, v6

    .end local v6    # "killProcess":Z
    .local p22, "killProcess":Z
    const-string v6, "android.intent.extra.UID"

    .line 1251
    move/from16 p23, v14

    const/4 v14, -0x1

    .end local v14    # "replacing":Z
    .local p23, "replacing":Z
    invoke-virtual {v4, v6, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1250
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    invoke-virtual {v0, v3, v6, v5}, Lcom/android/server/am/ActivityManagerService;->forceStopAppZygoteLocked(Ljava/lang/String;II)V

    .line 1254
    :goto_1f
    if-eqz p22, :cond_3b

    .line 1255
    const/4 v14, 0x0

    goto :goto_20

    .line 1256
    :cond_3b
    move/from16 v14, v41

    :goto_20
    nop

    .line 1257
    .local v14, "cmd":I
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v14, v0, v5}, Lcom/android/server/am/BroadcastController;->sendPackageBroadcastLocked(I[Ljava/lang/String;I)V

    .line 1259
    if-eqz v15, :cond_3d

    .line 1261
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    move/from16 v17, v14

    const/4 v6, 0x0

    const/4 v14, 0x1

    .end local v14    # "cmd":I
    .local v17, "cmd":I
    invoke-interface {v0, v3, v5, v14, v6}, Lcom/android/server/uri/UriGrantsManagerInternal;->removeUriPermissionsForPackage(Ljava/lang/String;IZZ)V

    .line 1264
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v3, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->removeRecentTasksByPackageName(Ljava/lang/String;I)V

    .line 1267
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v0, v3, v5}, Lcom/android/server/am/ActiveServices;->forceStopPackageLocked(Ljava/lang/String;I)V

    .line 1268
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v3, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onPackageUninstalled(Ljava/lang/String;I)V

    .line 1269
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0, v3}, Lcom/android/server/am/BatteryStatsService;->notePackageUninstalled(Ljava/lang/String;)V

    .line 1273
    invoke-virtual {v4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3c

    .line 1274
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_DUAL_APPS_SERVICE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/server/ext/INtDualAppsService;

    const-string v6, "android.intent.extra.UID"

    .line 1275
    const/4 v14, -0x1

    invoke-virtual {v4, v6, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-interface {v0, v6, v3, v4}, Lcom/nothing/server/ext/INtDualAppsService;->onPackageUninstalled(ILjava/lang/String;Landroid/content/Intent;)V

    .line 1277
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_PRIVATE_SPACE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/server/ext/INtPrivateSpaceService;

    const-string v6, "android.intent.extra.UID"

    .line 1278
    invoke-virtual {v4, v6, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-interface {v0, v6, v3, v4}, Lcom/nothing/server/ext/INtPrivateSpaceService;->onPackageUninstalled(ILjava/lang/String;Landroid/content/Intent;)V

    .line 1283
    :cond_3c
    invoke-static {}, Lcom/android/server/wm/NtStartingWindowHelper;->getInstance()Lcom/android/server/wm/NtStartingWindowHelper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/NtStartingWindowHelper;->onPackageUninstalled(Landroid/net/Uri;)V

    goto :goto_21

    .line 1259
    .end local v17    # "cmd":I
    .restart local v14    # "cmd":I
    :cond_3d
    move/from16 v17, v14

    .line 1286
    .end local v14    # "cmd":I
    :goto_21
    move-object/from16 v17, v2

    goto/16 :goto_25

    .line 1287
    .end local v15    # "fullUninstall":Z
    .end local p6    # "removed":Z
    .end local p22    # "killProcess":Z
    .end local p23    # "replacing":Z
    .local v3, "removed":Z
    .restart local v6    # "killProcess":Z
    .local v14, "replacing":Z
    .restart local v30    # "ssp":Ljava/lang/String;
    .restart local v36    # "fullUninstall":Z
    :cond_3e
    move/from16 p6, v3

    move/from16 p22, v6

    move/from16 p23, v14

    move-object/from16 v3, v30

    move/from16 v15, v36

    .end local v6    # "killProcess":Z
    .end local v14    # "replacing":Z
    .end local v30    # "ssp":Ljava/lang/String;
    .end local v36    # "fullUninstall":Z
    .local v3, "ssp":Ljava/lang/String;
    .restart local v15    # "fullUninstall":Z
    .restart local p6    # "removed":Z
    .restart local p22    # "killProcess":Z
    .restart local p23    # "replacing":Z
    if-eqz p22, :cond_40

    .line 1290
    if-eqz p23, :cond_3f

    .line 1291
    const/16 v0, 0x10

    .line 1292
    .local v0, "reason":I
    const/4 v6, 0x0

    move/from16 v34, v0

    move/from16 v35, v6

    .local v6, "subReason":I
    goto :goto_22

    .line 1294
    .end local v0    # "reason":I
    .end local v6    # "subReason":I
    :cond_3f
    const/16 v0, 0xf

    .line 1296
    .restart local v0    # "reason":I
    const/4 v6, 0x0

    move/from16 v34, v0

    move/from16 v35, v6

    .line 1299
    .end local v0    # "reason":I
    .local v34, "reason":I
    .local v35, "subReason":I
    :goto_22
    const-string v0, "android.intent.extra.UID"

    const/4 v14, -0x1

    invoke-virtual {v4, v0, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1301
    .local v6, "extraUid":I
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v14

    .line 1302
    :try_start_4
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1303
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v31

    move-object/from16 v29, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v17, v2

    .end local v2    # "data":Landroid/net/Uri;
    .local v17, "data":Landroid/net/Uri;
    :try_start_5
    const-string v2, "change "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1302
    const/16 v33, -0x2710

    move-object/from16 v30, v3

    move/from16 v32, v5

    .end local v3    # "ssp":Ljava/lang/String;
    .end local v5    # "userId":I
    .restart local v30    # "ssp":Ljava/lang/String;
    .local v32, "userId":I
    :try_start_6
    invoke-virtual/range {v29 .. v36}, Lcom/android/server/am/ProcessList;->killPackageProcessesLSP(Ljava/lang/String;IIIIILjava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1308
    .end local v30    # "ssp":Ljava/lang/String;
    .end local v32    # "userId":I
    .restart local v3    # "ssp":Ljava/lang/String;
    .restart local v5    # "userId":I
    :try_start_7
    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_24

    :catchall_0
    move-exception v0

    goto :goto_23

    .end local v3    # "ssp":Ljava/lang/String;
    .end local v5    # "userId":I
    .restart local v30    # "ssp":Ljava/lang/String;
    .restart local v32    # "userId":I
    :catchall_1
    move-exception v0

    move-object/from16 v3, v30

    move/from16 v5, v32

    .end local v30    # "ssp":Ljava/lang/String;
    .end local v32    # "userId":I
    .restart local v3    # "ssp":Ljava/lang/String;
    .restart local v5    # "userId":I
    goto :goto_23

    .end local v17    # "data":Landroid/net/Uri;
    .restart local v2    # "data":Landroid/net/Uri;
    :catchall_2
    move-exception v0

    move-object/from16 v17, v2

    .end local v2    # "data":Landroid/net/Uri;
    .restart local v17    # "data":Landroid/net/Uri;
    :goto_23
    :try_start_8
    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    .line 1287
    .end local v6    # "extraUid":I
    .end local v17    # "data":Landroid/net/Uri;
    .end local v34    # "reason":I
    .end local v35    # "subReason":I
    .restart local v2    # "data":Landroid/net/Uri;
    :cond_40
    move-object/from16 v17, v2

    .line 1310
    .end local v2    # "data":Landroid/net/Uri;
    .restart local v17    # "data":Landroid/net/Uri;
    :goto_24
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.intent.extra.changed_component_name_list"

    .line 1311
    invoke-virtual {v4, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1310
    invoke-virtual {v0, v3, v5, v2}, Lcom/android/server/am/ActivityManagerService;->cleanupDisabledPackageComponentsLocked(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 1313
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v0, v3, v5}, Lcom/android/server/am/ActiveServices;->schedulePendingServiceStartLocked(Ljava/lang/String;I)V

    .line 1316
    .end local v15    # "fullUninstall":Z
    .end local p6    # "removed":Z
    .end local p22    # "killProcess":Z
    .end local p23    # "replacing":Z
    :goto_25
    const/4 v15, 0x0

    goto/16 :goto_27

    .line 1231
    .end local v3    # "ssp":Ljava/lang/String;
    .end local v17    # "data":Landroid/net/Uri;
    .restart local v2    # "data":Landroid/net/Uri;
    .restart local v30    # "ssp":Ljava/lang/String;
    :cond_41
    move-object/from16 v17, v2

    move-object/from16 v3, v30

    .end local v2    # "data":Landroid/net/Uri;
    .end local v30    # "ssp":Ljava/lang/String;
    .restart local v3    # "ssp":Ljava/lang/String;
    .restart local v17    # "data":Landroid/net/Uri;
    const/4 v15, 0x0

    goto/16 :goto_27

    .end local v3    # "ssp":Ljava/lang/String;
    .end local v17    # "data":Landroid/net/Uri;
    .restart local v2    # "data":Landroid/net/Uri;
    :cond_42
    move-object/from16 v17, v2

    .end local v2    # "data":Landroid/net/Uri;
    .restart local v17    # "data":Landroid/net/Uri;
    const/4 v15, 0x0

    goto/16 :goto_27

    .line 1225
    .end local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v17    # "data":Landroid/net/Uri;
    .local v2, "resultToApp":Lcom/android/server/am/ProcessRecord;
    :pswitch_f
    move-object/from16 v16, v2

    .end local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v14, -0x1

    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityTaskManagerInternal;->cleanupRecentTasksForUser(I)V

    .line 1226
    const/4 v15, 0x0

    goto/16 :goto_27

    .line 1210
    .end local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    :pswitch_10
    move-object/from16 v16, v2

    .end local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1212
    .local v0, "list":[Ljava/lang/String;
    if-eqz v0, :cond_44

    array-length v2, v0

    if-lez v2, :cond_44

    .line 1213
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_26
    array-length v3, v0

    if-ge v2, v3, :cond_43

    .line 1214
    iget-object v3, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    aget-object v30, v0, v2

    const/16 v37, 0x0

    const-string/jumbo v39, "storage unmount"

    const/16 v31, -0x1

    const/16 v32, 0x0

    const/16 v33, 0x1

    const/16 v34, 0x1

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v29, v3

    move/from16 v38, v5

    .end local v5    # "userId":I
    .restart local v38    # "userId":I
    invoke-virtual/range {v29 .. v39}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZZILjava/lang/String;)Z

    .line 1213
    .end local v38    # "userId":I
    .restart local v5    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_43
    nop

    .line 1217
    .end local v2    # "i":I
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v14, -0x1

    invoke-virtual {v2, v14}, Lcom/android/server/wm/ActivityTaskManagerInternal;->cleanupRecentTasksForUser(I)V

    .line 1219
    const/4 v6, 0x1

    invoke-direct {v1, v6, v0, v5}, Lcom/android/server/am/BroadcastController;->sendPackageBroadcastLocked(I[Ljava/lang/String;I)V

    const/4 v15, 0x0

    goto :goto_27

    .line 1212
    :cond_44
    const/4 v15, 0x0

    goto :goto_27

    .line 1195
    .end local v0    # "list":[Ljava/lang/String;
    .end local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .local v2, "resultToApp":Lcom/android/server/am/ProcessRecord;
    :pswitch_11
    move-object/from16 v16, v2

    .end local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    invoke-direct {v1, v4}, Lcom/android/server/am/BroadcastController;->getUidFromIntent(Landroid/content/Intent;)I

    move-result v0

    .line 1196
    .local v0, "uid":I
    if-ltz v0, :cond_46

    .line 1197
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v2, v0}, Lcom/android/server/am/BatteryStatsService;->removeUid(I)V

    .line 1198
    const-string v2, "android.intent.extra.REPLACING"

    const/4 v15, 0x0

    invoke-virtual {v4, v2, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1199
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const-string v6, "android.intent.extra.PACKAGE_NAME"

    .line 1200
    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1199
    invoke-virtual {v2, v3, v6}, Lcom/android/server/appop/AppOpsService;->resetAllModes(ILjava/lang/String;)V

    goto :goto_27

    .line 1202
    :cond_45
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v2, v0}, Lcom/android/server/appop/AppOpsService;->uidRemoved(I)V

    .line 1203
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActiveServices;->onUidRemovedLocked(I)V

    goto :goto_27

    .line 1196
    :cond_46
    const/4 v15, 0x0

    .line 1341
    .end local v0    # "uid":I
    :goto_27
    goto :goto_28

    .line 1185
    .end local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    :cond_47
    move-object/from16 v16, v2

    .end local v2    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " broadcast from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") requires "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.permission.BROADCAST_PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1190
    .local v0, "msg":Ljava/lang/String;
    const-string v2, "ActivityManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1164
    .end local v0    # "msg":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "userId":I
    .end local v9    # "action":Ljava/lang/String;
    .local v6, "action":Ljava/lang/String;
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v38    # "userId":I
    :pswitch_12
    move-object v8, v4

    move-object v9, v6

    move-object v4, v7

    const/4 v15, 0x0

    move v7, v5

    move/from16 v5, v38

    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v38    # "userId":I
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "userId":I
    .restart local v9    # "action":Ljava/lang/String;
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 1166
    .local v0, "umInternal":Lcom/android/server/pm/UserManagerInternal;
    invoke-virtual {v0, v5}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1167
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_48

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 1168
    invoke-virtual {v0, v5}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v3

    move v5, v3

    .line 1458
    .end local v0    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_48
    :goto_28
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    if-nez v0, :cond_4a

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 1459
    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    if-nez v0, :cond_4a

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 1460
    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    goto :goto_29

    :cond_49
    const/4 v14, -0x1

    goto :goto_2a

    .line 1461
    :cond_4a
    :goto_29
    invoke-direct {v1, v4}, Lcom/android/server/am/BroadcastController;->getUidFromIntent(Landroid/content/Intent;)I

    move-result v0

    .line 1462
    .local v0, "uid":I
    const/4 v14, -0x1

    if-eq v0, v14, :cond_4c

    .line 1463
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessList;->getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    .line 1464
    .local v2, "uidRec":Lcom/android/server/am/UidRecord;
    if-eqz v2, :cond_4c

    .line 1465
    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->updateHasInternetPermission()V

    goto :goto_2a

    .line 1142
    .end local v0    # "uid":I
    .end local v2    # "uidRec":Lcom/android/server/am/UidRecord;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "userId":I
    .end local p4    # "callerAppProcessState":I
    .restart local v6    # "action":Ljava/lang/String;
    .restart local v7    # "intent":Landroid/content/Intent;
    .local v9, "callerAppProcessState":I
    .restart local v38    # "userId":I
    :cond_4b
    move v15, v3

    move-object v8, v4

    move-object v4, v7

    move/from16 p4, v9

    const/4 v14, -0x1

    move v7, v5

    move-object v9, v6

    move/from16 v5, v38

    .line 1472
    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v38    # "userId":I
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "userId":I
    .local v9, "action":Ljava/lang/String;
    .restart local p4    # "callerAppProcessState":I
    :cond_4c
    :goto_2a
    if-eqz p17, :cond_5a

    .line 1473
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.BROADCAST_STICKY"

    invoke-virtual {v0, v2, v11, v7}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_59

    .line 1487
    if-eqz v12, :cond_4d

    array-length v0, v12

    if-lez v0, :cond_4d

    .line 1488
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t broadcast sticky intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " and enforce permissions "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1489
    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1488
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    move-object/from16 v3, p7

    move-object/from16 v6, p15

    move-object/from16 v2, v16

    .end local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .local v2, "resultToApp":Lcom/android/server/am/ProcessRecord;
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BroadcastController;->scheduleCanceledResultTo(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILandroid/app/BroadcastOptions;ILjava/lang/String;)V

    .line 1492
    move-object v8, v3

    move v2, v5

    move v5, v7

    move-object v7, v1

    move-object v1, v6

    .end local v5    # "userId":I
    .local v2, "userId":I
    .restart local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    return v14

    .line 1487
    .end local v2    # "userId":I
    .restart local v5    # "userId":I
    :cond_4d
    move-object/from16 v8, p7

    move v2, v5

    move v5, v7

    move-object v7, v1

    move-object/from16 v1, p15

    .line 1494
    .end local v5    # "userId":I
    .restart local v2    # "userId":I
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_58

    .line 1498
    iget-object v3, v7, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1501
    if-eq v2, v14, :cond_52

    .line 1505
    :try_start_9
    iget-object v0, v7, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1507
    .local v0, "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    if-eqz v0, :cond_51

    .line 1508
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1509
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    if-eqz v6, :cond_50

    .line 1510
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 p6, v17

    .line 1512
    .local p6, "N":I
    const/16 v17, 0x0

    move/from16 v15, v17

    .local v15, "i":I
    :goto_2b
    move/from16 v14, p6

    .end local p6    # "N":I
    .local v14, "N":I
    if-ge v15, v14, :cond_4f

    .line 1513
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 p6, v0

    .end local v0    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    .local p6, "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    move-object/from16 v0, v17

    check-cast v0, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    iget-object v0, v0, Lcom/android/server/am/BroadcastController$StickyBroadcast;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 1512
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p6

    move/from16 p6, v14

    const/4 v14, -0x1

    goto :goto_2b

    .line 1514
    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    move-object/from16 p22, v6

    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .local p22, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object/from16 v17, v9

    .end local v9    # "action":Ljava/lang/String;
    .local v17, "action":Ljava/lang/String;
    :try_start_a
    const-string v9, "Sticky broadcast "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " for user "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " conflicts with existing global broadcast"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "userId":I
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v17    # "action":Ljava/lang/String;
    .end local v19    # "callerInstantApp":Z
    .end local v21    # "broadcastAllowList":[I
    .end local v23    # "isProtectedBroadcast":Z
    .end local v25    # "backgroundStartPrivileges":Landroid/app/BackgroundStartPrivileges;
    .end local v26    # "timeoutExempt":Z
    .end local v40    # "isCallerSystem":Z
    .end local p0    # "this":Lcom/android/server/am/BroadcastController;
    .end local p1    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "callerPackage":Ljava/lang/String;
    .end local p3    # "callerFeatureId":Ljava/lang/String;
    .end local p4    # "callerAppProcessState":I
    .end local p5    # "resolvedType":Ljava/lang/String;
    .end local p7    # "resultTo":Landroid/content/IIntentReceiver;
    .end local p8    # "resultCode":I
    .end local p9    # "resultData":Ljava/lang/String;
    .end local p10    # "resultExtras":Landroid/os/Bundle;
    .end local p11    # "requiredPermissions":[Ljava/lang/String;
    .end local p12    # "excludedPermissions":[Ljava/lang/String;
    .end local p13    # "excludedPackages":[Ljava/lang/String;
    .end local p14    # "appOp":I
    .end local p15    # "brOptions":Landroid/app/BroadcastOptions;
    .end local p16    # "ordered":Z
    .end local p17    # "sticky":Z
    .end local p18    # "callingPid":I
    .end local p19    # "callingUid":I
    .end local p20    # "realCallingUid":I
    .end local p21    # "realCallingPid":I
    .end local p25    # "filterExtrasForReceiver":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;>;"
    .end local p26    # "broadcastSentEventRecord":Lcom/android/server/am/BroadcastSentEventRecord;
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1551
    .end local v14    # "N":I
    .end local v15    # "i":I
    .end local p6    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    .end local p22    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v2    # "userId":I
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v17    # "action":Ljava/lang/String;
    .restart local v19    # "callerInstantApp":Z
    .restart local v21    # "broadcastAllowList":[I
    .restart local v23    # "isProtectedBroadcast":Z
    .restart local v25    # "backgroundStartPrivileges":Landroid/app/BackgroundStartPrivileges;
    .restart local v26    # "timeoutExempt":Z
    .restart local v40    # "isCallerSystem":Z
    .restart local p0    # "this":Lcom/android/server/am/BroadcastController;
    .restart local p1    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "callerPackage":Ljava/lang/String;
    .restart local p3    # "callerFeatureId":Ljava/lang/String;
    .restart local p4    # "callerAppProcessState":I
    .restart local p5    # "resolvedType":Ljava/lang/String;
    .restart local p7    # "resultTo":Landroid/content/IIntentReceiver;
    .restart local p8    # "resultCode":I
    .restart local p9    # "resultData":Ljava/lang/String;
    .restart local p10    # "resultExtras":Landroid/os/Bundle;
    .restart local p11    # "requiredPermissions":[Ljava/lang/String;
    .restart local p12    # "excludedPermissions":[Ljava/lang/String;
    .restart local p13    # "excludedPackages":[Ljava/lang/String;
    .restart local p14    # "appOp":I
    .restart local p15    # "brOptions":Landroid/app/BroadcastOptions;
    .restart local p16    # "ordered":Z
    .restart local p17    # "sticky":Z
    .restart local p18    # "callingPid":I
    .restart local p19    # "callingUid":I
    .restart local p20    # "realCallingUid":I
    .restart local p21    # "realCallingPid":I
    .restart local p25    # "filterExtrasForReceiver":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;>;"
    .restart local p26    # "broadcastSentEventRecord":Lcom/android/server/am/BroadcastSentEventRecord;
    :catchall_3
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v3, p4

    goto/16 :goto_2f

    .end local v17    # "action":Ljava/lang/String;
    .restart local v9    # "action":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v17, v9

    move-object/from16 v18, v3

    move/from16 v3, p4

    .end local v9    # "action":Ljava/lang/String;
    .restart local v17    # "action":Ljava/lang/String;
    goto/16 :goto_2f

    .line 1512
    .end local v17    # "action":Ljava/lang/String;
    .restart local v0    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    .restart local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v9    # "action":Ljava/lang/String;
    .restart local v14    # "N":I
    .restart local v15    # "i":I
    :cond_4f
    move-object/from16 p6, v0

    move-object/from16 p22, v6

    move-object/from16 v17, v9

    .end local v0    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v9    # "action":Ljava/lang/String;
    .restart local v17    # "action":Ljava/lang/String;
    .restart local p6    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    .restart local p22    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    goto :goto_2c

    .line 1509
    .end local v14    # "N":I
    .end local v15    # "i":I
    .end local v17    # "action":Ljava/lang/String;
    .end local p6    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    .end local p22    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v0    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    .restart local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v9    # "action":Ljava/lang/String;
    :cond_50
    move-object/from16 p6, v0

    move-object/from16 p22, v6

    move-object/from16 v17, v9

    .end local v0    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v9    # "action":Ljava/lang/String;
    .restart local v17    # "action":Ljava/lang/String;
    .restart local p6    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    .restart local p22    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    goto :goto_2c

    .line 1507
    .end local v17    # "action":Ljava/lang/String;
    .end local p6    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    .end local p22    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v0    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    .restart local v9    # "action":Ljava/lang/String;
    :cond_51
    move-object/from16 p6, v0

    move-object/from16 v17, v9

    .end local v0    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    .end local v9    # "action":Ljava/lang/String;
    .restart local v17    # "action":Ljava/lang/String;
    .restart local p6    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    goto :goto_2c

    .line 1501
    .end local v17    # "action":Ljava/lang/String;
    .end local p6    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    .restart local v9    # "action":Ljava/lang/String;
    :cond_52
    move-object/from16 v17, v9

    .line 1522
    .end local v9    # "action":Ljava/lang/String;
    .restart local v17    # "action":Ljava/lang/String;
    :goto_2c
    :try_start_b
    iget-object v0, v7, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    .line 1523
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 1524
    .restart local v0    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    if-nez v0, :cond_53

    .line 1525
    :try_start_c
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v6

    .line 1526
    iget-object v6, v7, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v6, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1528
    :cond_53
    :try_start_d
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 1529
    .restart local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    if-nez v6, :cond_54

    .line 1530
    :try_start_e
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v9

    .line 1531
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 1533
    :cond_54
    nop

    .line 1535
    :try_start_f
    invoke-static {v4, v1}, Lcom/android/server/am/BroadcastRecord;->calculateUrgent(Landroid/content/Intent;Landroid/app/BroadcastOptions;)Z

    move-result v9

    .line 1533
    invoke-static {v5, v1, v8, v13, v9}, Lcom/android/server/am/BroadcastRecord;->calculateDeferUntilActive(ILandroid/app/BroadcastOptions;Landroid/content/IIntentReceiver;ZZ)Z

    move-result v9

    .line 1536
    .local v9, "deferUntilActive":Z
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1538
    .local v14, "stickiesCount":I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_2d
    if-ge v15, v14, :cond_56

    .line 1539
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v28, v0

    .end local v0    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    .local v28, "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    move-object/from16 v0, v18

    check-cast v0, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    iget-object v0, v0, Lcom/android/server/am/BroadcastController$StickyBroadcast;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1541
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    move-object/from16 v18, v3

    move/from16 v3, p4

    .end local p4    # "callerAppProcessState":I
    .local v3, "callerAppProcessState":I
    :try_start_10
    invoke-static {v0, v9, v5, v3, v10}, Lcom/android/server/am/BroadcastController$StickyBroadcast;->create(Landroid/content/Intent;ZIILjava/lang/String;)Lcom/android/server/am/BroadcastController$StickyBroadcast;

    move-result-object v0

    invoke-virtual {v6, v15, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1543
    goto :goto_2e

    .line 1551
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v9    # "deferUntilActive":Z
    .end local v14    # "stickiesCount":I
    .end local v15    # "i":I
    .end local v28    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    :catchall_5
    move-exception v0

    goto :goto_2f

    .end local v3    # "callerAppProcessState":I
    .restart local p4    # "callerAppProcessState":I
    :catchall_6
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v3, p4

    .end local p4    # "callerAppProcessState":I
    .restart local v3    # "callerAppProcessState":I
    goto :goto_2f

    .line 1538
    .end local v3    # "callerAppProcessState":I
    .restart local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v9    # "deferUntilActive":Z
    .restart local v14    # "stickiesCount":I
    .restart local v15    # "i":I
    .restart local v28    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    .restart local p4    # "callerAppProcessState":I
    :cond_55
    move-object/from16 v18, v3

    move/from16 v3, p4

    .end local p4    # "callerAppProcessState":I
    .restart local v3    # "callerAppProcessState":I
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v18

    move-object/from16 v0, v28

    goto :goto_2d

    .end local v3    # "callerAppProcessState":I
    .end local v28    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    .restart local v0    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    .restart local p4    # "callerAppProcessState":I
    :cond_56
    move-object/from16 v28, v0

    move-object/from16 v18, v3

    move/from16 v3, p4

    .line 1546
    .end local v0    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    .end local p4    # "callerAppProcessState":I
    .restart local v3    # "callerAppProcessState":I
    .restart local v28    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    :goto_2e
    if-lt v15, v14, :cond_57

    .line 1547
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-static {v0, v9, v5, v3, v10}, Lcom/android/server/am/BroadcastController$StickyBroadcast;->create(Landroid/content/Intent;ZIILjava/lang/String;)Lcom/android/server/am/BroadcastController$StickyBroadcast;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1550
    :cond_57
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/BroadcastStickyCache;->invalidateCache(Ljava/lang/String;)V

    .line 1551
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v9    # "deferUntilActive":Z
    .end local v14    # "stickiesCount":I
    .end local v15    # "i":I
    .end local v28    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    monitor-exit v18

    goto :goto_30

    :goto_2f
    monitor-exit v18
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw v0

    .line 1495
    .end local v3    # "callerAppProcessState":I
    .end local v17    # "action":Ljava/lang/String;
    .local v9, "action":Ljava/lang/String;
    .restart local p4    # "callerAppProcessState":I
    :cond_58
    new-instance v0, Ljava/lang/SecurityException;

    const-string v6, "Sticky broadcasts can\'t target a specific component"

    invoke-direct {v0, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1476
    .end local v2    # "userId":I
    .restart local v5    # "userId":I
    :cond_59
    move v2, v5

    move v5, v7

    .end local v5    # "userId":I
    .restart local v2    # "userId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: broadcastIntent() requesting a sticky broadcast from pid="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", uid="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " requires "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "android.permission.BROADCAST_STICKY"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1484
    .local v0, "msg":Ljava/lang/String;
    const-string v6, "ActivityManager"

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1472
    .end local v0    # "msg":Ljava/lang/String;
    .end local v2    # "userId":I
    .restart local v5    # "userId":I
    :cond_5a
    move/from16 v3, p4

    move-object/from16 v8, p7

    move v2, v5

    move v5, v7

    move-object/from16 v17, v9

    move-object v7, v1

    move-object/from16 v1, p15

    .line 1555
    .end local v5    # "userId":I
    .end local v9    # "action":Ljava/lang/String;
    .end local p4    # "callerAppProcessState":I
    .restart local v2    # "userId":I
    .restart local v3    # "callerAppProcessState":I
    .restart local v17    # "action":Ljava/lang/String;
    :goto_30
    const/4 v14, -0x1

    if-ne v2, v14, :cond_5b

    .line 1557
    iget-object v0, v7, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getStartedUserArray()[I

    move-result-object v0

    move-object v9, v0

    .local v0, "users":[I
    goto :goto_31

    .line 1560
    .end local v0    # "users":[I
    :cond_5b
    filled-new-array {v2}, [I

    move-result-object v0

    move-object v9, v0

    .line 1563
    .local v9, "users":[I
    :goto_31
    new-instance v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;

    move/from16 v28, v3

    .end local v3    # "callerAppProcessState":I
    .local v28, "callerAppProcessState":I
    const/4 v3, 0x1

    move-object v15, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .local v15, "intent":Landroid/content/Intent;
    const/4 v4, 0x1

    move v6, v11

    move-object v1, v15

    move v11, v2

    move-object v2, v10

    const/high16 v10, 0x40000000    # 2.0f

    .end local v2    # "userId":I
    .end local v15    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    .local v11, "userId":I
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;-><init>(Landroid/content/Intent;Ljava/lang/String;ZZII)V

    move-object v4, v1

    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    move-object v14, v0

    .line 1565
    .local v14, "args":Lcom/android/server/pm/SaferIntentUtils$IntentArgs;
    iget-object v0, v7, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iput-object v0, v14, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->platformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 1568
    const-string/jumbo v0, "queryReceivers"

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v30

    .line 1569
    .local v30, "cookie":I
    const/4 v0, 0x0

    .line 1570
    .local v0, "receivers":Ljava/util/List;
    const/4 v15, 0x0

    .line 1572
    .local v15, "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v1, v10

    if-nez v1, :cond_5c

    .line 1573
    move-object/from16 v3, p5

    move/from16 v5, p18

    move-object v2, v4

    move-object v1, v7

    move-object v6, v9

    move-object/from16 v7, v21

    move/from16 v4, p19

    .end local v4    # "intent":Landroid/content/Intent;
    .end local v9    # "users":[I
    .end local v21    # "broadcastAllowList":[I
    .local v2, "intent":Landroid/content/Intent;
    .local v6, "users":[I
    .local v7, "broadcastAllowList":[I
    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BroadcastController;->collectReceiverComponents(Landroid/content/Intent;Ljava/lang/String;II[I[I)Ljava/util/List;

    move-result-object v0

    move-object v9, v7

    move-object v7, v1

    move-object v1, v6

    move v6, v4

    move-object v4, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .end local v6    # "users":[I
    .end local v7    # "broadcastAllowList":[I
    .local v1, "users":[I
    .restart local v4    # "intent":Landroid/content/Intent;
    .local v9, "broadcastAllowList":[I
    goto :goto_32

    .line 1572
    .end local v1    # "users":[I
    .local v9, "users":[I
    .restart local v21    # "broadcastAllowList":[I
    :cond_5c
    move/from16 v6, p19

    move-object v1, v9

    move-object/from16 v9, v21

    .line 1576
    .end local v21    # "broadcastAllowList":[I
    .restart local v1    # "users":[I
    .local v9, "broadcastAllowList":[I
    :goto_32
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_63

    .line 1577
    iget-object v2, v7, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManagerInternal;->snapshot()Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    move-result-object v2

    .line 1578
    .local v2, "snapshot":Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    const/4 v3, -0x1

    if-ne v11, v3, :cond_61

    const/16 v3, 0x7d0

    if-ne v6, v3, :cond_61

    .line 1580
    const/4 v3, 0x0

    move-object/from16 v42, v15

    move v15, v3

    move-object/from16 v3, v42

    .local v3, "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    .local v15, "i":I
    :goto_33
    array-length v5, v1

    if-ge v15, v5, :cond_60

    .line 1581
    iget-object v5, v7, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move/from16 p24, v10

    const-string/jumbo v10, "no_debugging_features"

    move-object/from16 p4, v0

    .end local v0    # "receivers":Ljava/util/List;
    .local p4, "receivers":Ljava/util/List;
    aget v0, v1, v15

    invoke-virtual {v5, v10, v0}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1583
    move-object/from16 v10, p4

    move-object/from16 v31, v1

    move-object v1, v2

    move-object v6, v3

    goto :goto_34

    .line 1585
    :cond_5d
    iget-object v0, v7, Lcom/android/server/am/BroadcastController;->mReceiverResolver:Lcom/android/server/IntentResolver;

    aget v5, v1, v15

    .line 1586
    move-object v10, v1

    move-object v1, v2

    move-object v2, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .local v1, "snapshot":Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .local v2, "intent":Landroid/content/Intent;
    .local v10, "users":[I
    const/4 v4, 0x0

    move-object v6, v3

    move-object/from16 v31, v10

    move-object/from16 v10, p4

    move-object/from16 v3, p5

    .end local v3    # "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    .end local p4    # "receivers":Ljava/util/List;
    .local v6, "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    .local v10, "receivers":Ljava/util/List;
    .local v31, "users":[I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    .line 1588
    move-object v4, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .local v0, "registeredReceiversForUser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    .restart local v4    # "intent":Landroid/content/Intent;
    if-nez v6, :cond_5e

    .line 1589
    move-object v2, v0

    move-object v3, v2

    .end local v6    # "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    .local v2, "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    goto :goto_35

    .line 1590
    .end local v2    # "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    .restart local v6    # "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    :cond_5e
    if-eqz v0, :cond_5f

    .line 1591
    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1580
    .end local v0    # "registeredReceiversForUser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    .end local v6    # "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    .end local v10    # "receivers":Ljava/util/List;
    .end local v31    # "users":[I
    .local v1, "users":[I
    .local v2, "snapshot":Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .restart local v3    # "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    .restart local p4    # "receivers":Ljava/util/List;
    :cond_5f
    :goto_34
    move-object v3, v6

    .end local v2    # "snapshot":Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .end local p4    # "receivers":Ljava/util/List;
    .local v1, "snapshot":Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .restart local v10    # "receivers":Ljava/util/List;
    .restart local v31    # "users":[I
    :goto_35
    add-int/lit8 v15, v15, 0x1

    move/from16 v6, p19

    move-object v2, v1

    move-object v0, v10

    move-object/from16 v1, v31

    move/from16 v10, p24

    goto :goto_33

    .end local v10    # "receivers":Ljava/util/List;
    .end local v31    # "users":[I
    .local v0, "receivers":Ljava/util/List;
    .local v1, "users":[I
    .restart local v2    # "snapshot":Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    :cond_60
    move-object/from16 v31, v1

    move-object v1, v2

    move-object v6, v3

    move/from16 p24, v10

    move-object v10, v0

    .end local v0    # "receivers":Ljava/util/List;
    .end local v2    # "snapshot":Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .end local v3    # "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    .local v1, "snapshot":Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .restart local v6    # "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    .restart local v10    # "receivers":Ljava/util/List;
    .restart local v31    # "users":[I
    move-object v15, v6

    move/from16 v24, v11

    .end local v15    # "i":I
    goto :goto_36

    .line 1578
    .end local v6    # "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    .end local v10    # "receivers":Ljava/util/List;
    .end local v31    # "users":[I
    .restart local v0    # "receivers":Ljava/util/List;
    .local v1, "users":[I
    .restart local v2    # "snapshot":Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .local v15, "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    :cond_61
    move-object/from16 v31, v1

    move-object v1, v2

    move/from16 p24, v10

    move-object v10, v0

    .line 1595
    .end local v0    # "receivers":Ljava/util/List;
    .end local v2    # "snapshot":Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .local v1, "snapshot":Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .restart local v10    # "receivers":Ljava/util/List;
    .restart local v31    # "users":[I
    iget-object v0, v7, Lcom/android/server/am/BroadcastController;->mReceiverResolver:Lcom/android/server/IntentResolver;

    move-object v2, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    const/4 v4, 0x0

    move-object/from16 v3, p5

    move v5, v11

    .end local v11    # "userId":I
    .restart local v5    # "userId":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    move-object v4, v2

    move/from16 v24, v5

    move-object v15, v0

    .line 1598
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "userId":I
    .restart local v4    # "intent":Landroid/content/Intent;
    .local v24, "userId":I
    :goto_36
    if-eqz v15, :cond_62

    .line 1599
    invoke-static {v14, v15}, Lcom/android/server/pm/SaferIntentUtils;->blockNullAction(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    .line 1602
    .end local v1    # "snapshot":Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    :cond_62
    move-object v0, v15

    goto :goto_37

    .line 1576
    .end local v10    # "receivers":Ljava/util/List;
    .end local v24    # "userId":I
    .end local v31    # "users":[I
    .restart local v0    # "receivers":Ljava/util/List;
    .local v1, "users":[I
    .restart local v11    # "userId":I
    :cond_63
    move-object/from16 v31, v1

    move/from16 p24, v10

    move/from16 v24, v11

    move-object v10, v0

    .end local v0    # "receivers":Ljava/util/List;
    .end local v1    # "users":[I
    .end local v11    # "userId":I
    .restart local v10    # "receivers":Ljava/util/List;
    .restart local v24    # "userId":I
    .restart local v31    # "users":[I
    move-object v0, v15

    .line 1602
    .end local v15    # "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    .local v0, "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    :goto_37
    invoke-static/range {v30 .. v30}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    .line 1604
    nop

    .line 1605
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_64

    const/4 v1, 0x1

    goto :goto_38

    :cond_64
    const/4 v1, 0x0

    :goto_38
    move v11, v1

    .line 1607
    .local v11, "replacePending":Z
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v1, :cond_65

    .line 1608
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enqueueing broadcast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " replacePending="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    :cond_65
    if-eqz v0, :cond_67

    if-eqz v9, :cond_67

    .line 1614
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v22, 0x1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_39
    if-ltz v1, :cond_67

    .line 1615
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastFilter;

    iget v2, v2, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1616
    .local v2, "owningAppId":I
    const/16 v3, 0x2710

    if-lt v2, v3, :cond_66

    .line 1617
    invoke-static {v9, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-gez v3, :cond_66

    .line 1618
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1614
    .end local v2    # "owningAppId":I
    :cond_66
    add-int/lit8 v1, v1, -0x1

    goto :goto_39

    .line 1623
    .end local v1    # "i":I
    :cond_67
    if-eqz v0, :cond_68

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_3a

    :cond_68
    const/4 v1, 0x0

    :goto_3a
    move v15, v1

    .line 1626
    .local v15, "NR":I
    const/4 v1, 0x0

    .line 1627
    .local v1, "ir":I
    if-eqz v10, :cond_75

    .line 1634
    const/4 v2, 0x0

    .line 1635
    .local v2, "skipPackages":[Ljava/lang/String;
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    if-nez v3, :cond_6b

    const-string v3, "android.intent.action.PACKAGE_RESTARTED"

    .line 1636
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    if-nez v3, :cond_6b

    const-string v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 1637
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    goto :goto_3c

    .line 1645
    :cond_69
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 1646
    const-string v3, "android.intent.extra.changed_package_list"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_3d

    .line 1645
    :cond_6a
    :goto_3b
    goto :goto_3d

    .line 1638
    :cond_6b
    :goto_3c
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1639
    .local v3, "data":Landroid/net/Uri;
    if-eqz v3, :cond_6a

    .line 1640
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 1641
    .local v5, "pkgName":Ljava/lang/String;
    if-eqz v5, :cond_6a

    .line 1642
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    goto :goto_3b

    .line 1648
    .end local v3    # "data":Landroid/net/Uri;
    .end local v5    # "pkgName":Ljava/lang/String;
    :goto_3d
    if-eqz v2, :cond_70

    array-length v3, v2

    if-lez v3, :cond_70

    .line 1649
    array-length v3, v2

    const/4 v5, 0x0

    :goto_3e
    if-ge v5, v3, :cond_6f

    aget-object v6, v2, v5

    .line 1650
    .local v6, "skipPackage":Ljava/lang/String;
    if-eqz v6, :cond_6e

    .line 1651
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v18

    .line 1652
    .local v18, "NT":I
    const/16 v21, 0x0

    move/from16 p4, v1

    move-object/from16 p6, v2

    move/from16 v1, v18

    move/from16 v2, v21

    .end local v18    # "NT":I
    .local v1, "NT":I
    .local v2, "it":I
    .local p4, "ir":I
    .local p6, "skipPackages":[Ljava/lang/String;
    :goto_3f
    if-ge v2, v1, :cond_6d

    .line 1653
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v21, v1

    .end local v1    # "NT":I
    .local v21, "NT":I
    move-object/from16 v1, v18

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1654
    .local v1, "curt":Landroid/content/pm/ResolveInfo;
    move/from16 v18, v3

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 1655
    invoke-interface {v10, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1656
    add-int/lit8 v2, v2, -0x1

    .line 1657
    add-int/lit8 v3, v21, -0x1

    move v1, v3

    .end local v21    # "NT":I
    .local v3, "NT":I
    goto :goto_40

    .line 1654
    .end local v3    # "NT":I
    .restart local v21    # "NT":I
    :cond_6c
    move/from16 v1, v21

    .line 1652
    .end local v21    # "NT":I
    .local v1, "NT":I
    :goto_40
    const/16 v22, 0x1

    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v18

    goto :goto_3f

    :cond_6d
    move/from16 v21, v1

    move/from16 v18, v3

    const/16 v22, 0x1

    .end local v1    # "NT":I
    .restart local v21    # "NT":I
    goto :goto_41

    .line 1650
    .end local v21    # "NT":I
    .end local p4    # "ir":I
    .end local p6    # "skipPackages":[Ljava/lang/String;
    .local v1, "ir":I
    .local v2, "skipPackages":[Ljava/lang/String;
    :cond_6e
    move/from16 p4, v1

    move-object/from16 p6, v2

    move/from16 v18, v3

    const/16 v22, 0x1

    .line 1649
    .end local v1    # "ir":I
    .end local v2    # "skipPackages":[Ljava/lang/String;
    .end local v6    # "skipPackage":Ljava/lang/String;
    .restart local p4    # "ir":I
    .restart local p6    # "skipPackages":[Ljava/lang/String;
    :goto_41
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, p4

    move-object/from16 v2, p6

    move/from16 v3, v18

    goto :goto_3e

    .end local p4    # "ir":I
    .end local p6    # "skipPackages":[Ljava/lang/String;
    .restart local v1    # "ir":I
    .restart local v2    # "skipPackages":[Ljava/lang/String;
    :cond_6f
    move/from16 p4, v1

    move-object/from16 p6, v2

    .end local v1    # "ir":I
    .end local v2    # "skipPackages":[Ljava/lang/String;
    .restart local p4    # "ir":I
    .restart local p6    # "skipPackages":[Ljava/lang/String;
    goto :goto_42

    .line 1648
    .end local p4    # "ir":I
    .end local p6    # "skipPackages":[Ljava/lang/String;
    .restart local v1    # "ir":I
    .restart local v2    # "skipPackages":[Ljava/lang/String;
    :cond_70
    move/from16 p4, v1

    move-object/from16 p6, v2

    .line 1664
    .end local v1    # "ir":I
    .end local v2    # "skipPackages":[Ljava/lang/String;
    .restart local p4    # "ir":I
    .restart local p6    # "skipPackages":[Ljava/lang/String;
    :goto_42
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    .line 1665
    .local v1, "NT":I
    const/4 v2, 0x0

    .line 1666
    .local v2, "it":I
    const/4 v3, 0x0

    .line 1667
    .local v3, "curt":Landroid/content/pm/ResolveInfo;
    const/4 v5, 0x0

    move-object v6, v5

    move-object v5, v3

    move v3, v2

    move/from16 v2, p4

    .line 1668
    .end local p4    # "ir":I
    .local v2, "ir":I
    .local v3, "it":I
    .local v5, "curt":Landroid/content/pm/ResolveInfo;
    .local v6, "curr":Lcom/android/server/am/BroadcastFilter;
    :goto_43
    if-ge v3, v1, :cond_74

    if-ge v2, v15, :cond_74

    .line 1669
    if-nez v5, :cond_71

    .line 1670
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v5, v18

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 1672
    :cond_71
    if-nez v6, :cond_72

    .line 1673
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v6, v18

    check-cast v6, Lcom/android/server/am/BroadcastFilter;

    .line 1675
    :cond_72
    move/from16 v18, v1

    .end local v1    # "NT":I
    .restart local v18    # "NT":I
    invoke-virtual {v6}, Landroid/content/IntentFilter;->getPriority()I

    move-result v1

    move/from16 v21, v2

    .end local v2    # "ir":I
    .local v21, "ir":I
    iget v2, v5, Landroid/content/pm/ResolveInfo;->priority:I

    if-lt v1, v2, :cond_73

    .line 1677
    invoke-interface {v10, v3, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1678
    add-int/lit8 v2, v21, 0x1

    .line 1679
    .end local v21    # "ir":I
    .restart local v2    # "ir":I
    const/4 v6, 0x0

    .line 1680
    add-int/lit8 v3, v3, 0x1

    .line 1681
    add-int/lit8 v1, v18, 0x1

    .end local v18    # "NT":I
    .restart local v1    # "NT":I
    goto :goto_43

    .line 1684
    .end local v1    # "NT":I
    .end local v2    # "ir":I
    .restart local v18    # "NT":I
    .restart local v21    # "ir":I
    :cond_73
    add-int/lit8 v3, v3, 0x1

    .line 1685
    const/4 v5, 0x0

    move/from16 v1, v18

    move/from16 v2, v21

    goto :goto_43

    .line 1668
    .end local v18    # "NT":I
    .end local v21    # "ir":I
    .restart local v1    # "NT":I
    .restart local v2    # "ir":I
    :cond_74
    move/from16 v18, v1

    move/from16 v21, v2

    .line 1689
    .end local v1    # "NT":I
    .end local v2    # "ir":I
    .end local v3    # "it":I
    .end local v5    # "curt":Landroid/content/pm/ResolveInfo;
    .end local v6    # "curr":Lcom/android/server/am/BroadcastFilter;
    .end local p6    # "skipPackages":[Ljava/lang/String;
    .restart local v21    # "ir":I
    move/from16 v1, v21

    goto :goto_44

    .line 1627
    .end local v21    # "ir":I
    .local v1, "ir":I
    :cond_75
    move/from16 p4, v1

    .line 1689
    :goto_44
    if-ge v1, v15, :cond_78

    .line 1691
    if-eqz v19, :cond_76

    .line 1692
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int v2, v2, v20

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1694
    :cond_76
    if-nez v10, :cond_77

    .line 1695
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v2

    .line 1697
    :cond_77
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1698
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 1701
    :cond_78
    if-eqz v40, :cond_79

    .line 1702
    move-object/from16 v3, p1

    move/from16 v5, p19

    move/from16 v32, v1

    move-object v2, v4

    move-object v1, v7

    move-object v7, v10

    move/from16 v6, v23

    move-object/from16 v4, p2

    .end local v1    # "ir":I
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v10    # "receivers":Ljava/util/List;
    .end local v23    # "isProtectedBroadcast":Z
    .local v2, "intent":Landroid/content/Intent;
    .local v6, "isProtectedBroadcast":Z
    .local v7, "receivers":Ljava/util/List;
    .local v32, "ir":I
    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BroadcastController;->checkBroadcastFromSystem(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IZLjava/util/List;)V

    move-object v4, v2

    move/from16 v33, v6

    .end local v2    # "intent":Landroid/content/Intent;
    .end local v6    # "isProtectedBroadcast":Z
    .restart local v4    # "intent":Landroid/content/Intent;
    .local v33, "isProtectedBroadcast":Z
    goto :goto_45

    .line 1701
    .end local v7    # "receivers":Ljava/util/List;
    .end local v32    # "ir":I
    .end local v33    # "isProtectedBroadcast":Z
    .restart local v1    # "ir":I
    .restart local v10    # "receivers":Ljava/util/List;
    .restart local v23    # "isProtectedBroadcast":Z
    :cond_79
    move/from16 v32, v1

    move-object v1, v7

    move-object v7, v10

    move/from16 v33, v23

    .line 1706
    .end local v1    # "ir":I
    .end local v10    # "receivers":Ljava/util/List;
    .end local v23    # "isProtectedBroadcast":Z
    .restart local v7    # "receivers":Ljava/util/List;
    .restart local v32    # "ir":I
    .restart local v33    # "isProtectedBroadcast":Z
    :goto_45
    if-eqz v7, :cond_7a

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_7b

    :cond_7a
    if-eqz v8, :cond_7e

    .line 1708
    :cond_7b
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    .line 1709
    .local v2, "queue":Lcom/android/server/am/BroadcastQueue;
    invoke-static {v14, v7}, Lcom/android/server/pm/SaferIntentUtils;->filterNonExportedComponents(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    .line 1710
    move-object v3, v0

    .end local v0    # "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    .local v3, "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    new-instance v0, Lcom/android/server/am/BroadcastRecord;

    iget-object v5, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const/16 v23, 0x0

    move/from16 v18, p8

    move-object/from16 v20, p10

    move/from16 v22, p17

    move/from16 v6, p18

    move-object/from16 v27, p25

    move-object v1, v2

    move-object/from16 v38, v3

    move-object v2, v4

    move-object/from16 v29, v5

    move-object/from16 v35, v9

    move/from16 v39, v11

    move-object v10, v12

    move/from16 v21, v13

    move-object/from16 v37, v14

    move/from16 v41, v15

    move-object/from16 v36, v17

    const/16 v34, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v9, p5

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move/from16 v13, p14

    move-object/from16 v14, p15

    move-object v15, v7

    move-object/from16 v17, v8

    move/from16 v8, v19

    move-object/from16 v19, p9

    move/from16 v7, p19

    .end local v3    # "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "receivers":Ljava/util/List;
    .end local v9    # "broadcastAllowList":[I
    .end local v11    # "replacePending":Z
    .end local v14    # "args":Lcom/android/server/pm/SaferIntentUtils$IntentArgs;
    .end local v17    # "action":Ljava/lang/String;
    .end local v19    # "callerInstantApp":Z
    .local v1, "queue":Lcom/android/server/am/BroadcastQueue;
    .local v2, "intent":Landroid/content/Intent;
    .local v8, "callerInstantApp":Z
    .local v15, "receivers":Ljava/util/List;
    .local v35, "broadcastAllowList":[I
    .local v36, "action":Ljava/lang/String;
    .local v37, "args":Lcom/android/server/pm/SaferIntentUtils$IntentArgs;
    .local v38, "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    .local v39, "replacePending":Z
    .local v41, "NR":I
    invoke-direct/range {v0 .. v29}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZILandroid/app/BackgroundStartPrivileges;ZLjava/util/function/BiFunction;ILcom/android/server/compat/PlatformCompat;)V

    move v9, v8

    move-object v10, v15

    move-object v15, v2

    .line 1717
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v8    # "callerInstantApp":Z
    .local v0, "r":Lcom/android/server/am/BroadcastRecord;
    .local v9, "callerInstantApp":Z
    .restart local v10    # "receivers":Ljava/util/List;
    .local v15, "intent":Landroid/content/Intent;
    move-object/from16 v11, p26

    invoke-virtual {v11, v0}, Lcom/android/server/am/BroadcastSentEventRecord;->setBroadcastRecord(Lcom/android/server/am/BroadcastRecord;)V

    .line 1719
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-nez v2, :cond_7c

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastRecord;->debugLog()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 1720
    :cond_7c
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enqueueing broadcast "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    :cond_7d
    invoke-virtual {v1, v0}, Lcom/android/server/am/BroadcastQueue;->enqueueBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1723
    .end local v0    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v1    # "queue":Lcom/android/server/am/BroadcastQueue;
    goto :goto_46

    .line 1726
    .end local v10    # "receivers":Ljava/util/List;
    .end local v35    # "broadcastAllowList":[I
    .end local v36    # "action":Ljava/lang/String;
    .end local v37    # "args":Lcom/android/server/pm/SaferIntentUtils$IntentArgs;
    .end local v38    # "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    .end local v39    # "replacePending":Z
    .end local v41    # "NR":I
    .local v0, "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v7    # "receivers":Ljava/util/List;
    .local v9, "broadcastAllowList":[I
    .restart local v11    # "replacePending":Z
    .restart local v14    # "args":Lcom/android/server/pm/SaferIntentUtils$IntentArgs;
    .local v15, "NR":I
    .restart local v17    # "action":Ljava/lang/String;
    .restart local v19    # "callerInstantApp":Z
    :cond_7e
    move-object/from16 v38, v0

    move-object v10, v7

    move-object/from16 v35, v9

    move/from16 v39, v11

    move-object/from16 v37, v14

    move/from16 v41, v15

    move-object/from16 v36, v17

    move/from16 v9, v19

    const/16 v34, 0x0

    move-object/from16 v11, p26

    move-object v15, v4

    .end local v0    # "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "receivers":Ljava/util/List;
    .end local v11    # "replacePending":Z
    .end local v14    # "args":Lcom/android/server/pm/SaferIntentUtils$IntentArgs;
    .end local v17    # "action":Ljava/lang/String;
    .end local v19    # "callerInstantApp":Z
    .local v9, "callerInstantApp":Z
    .restart local v10    # "receivers":Ljava/util/List;
    .local v15, "intent":Landroid/content/Intent;
    .restart local v35    # "broadcastAllowList":[I
    .restart local v36    # "action":Ljava/lang/String;
    .restart local v37    # "args":Lcom/android/server/pm/SaferIntentUtils$IntentArgs;
    .restart local v38    # "registeredReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    .restart local v39    # "replacePending":Z
    .restart local v41    # "NR":I
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_7f

    invoke-virtual {v15}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7f

    .line 1727
    invoke-virtual {v15}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int v0, v0, p24

    if-nez v0, :cond_7f

    .line 1729
    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BroadcastController;->addBroadcastStatLocked(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 1731
    :cond_7f
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-nez v0, :cond_80

    invoke-static/range {p15 .. p15}, Lcom/android/server/am/BroadcastRecord;->debugLog(Landroid/app/BroadcastOptions;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 1732
    :cond_80
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Lcom/android/server/am/BroadcastRecord;->intentToString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " due to no receivers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    :cond_81
    :goto_46
    return v34

    .line 1077
    .end local v10    # "receivers":Ljava/util/List;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v24    # "userId":I
    .end local v26    # "timeoutExempt":Z
    .end local v28    # "callerAppProcessState":I
    .end local v30    # "cookie":I
    .end local v31    # "users":[I
    .end local v32    # "ir":I
    .end local v33    # "isProtectedBroadcast":Z
    .end local v35    # "broadcastAllowList":[I
    .end local v36    # "action":Ljava/lang/String;
    .end local v37    # "args":Lcom/android/server/pm/SaferIntentUtils$IntentArgs;
    .end local v39    # "replacePending":Z
    .end local v40    # "isCallerSystem":Z
    .end local v41    # "NR":I
    .local v6, "action":Ljava/lang/String;
    .local v9, "callerAppProcessState":I
    .restart local v19    # "callerInstantApp":Z
    .local v21, "broadcastAllowList":[I
    .local v38, "userId":I
    .local p4, "intent":Landroid/content/Intent;
    :catch_3
    move-exception v0

    move-object/from16 v15, p4

    move-object/from16 v11, p26

    move/from16 v34, v3

    move-object/from16 v36, v6

    move/from16 v28, v9

    move/from16 v9, v19

    move-object/from16 v35, v21

    move/from16 v5, v38

    .line 1078
    .end local v6    # "action":Ljava/lang/String;
    .end local v19    # "callerInstantApp":Z
    .end local v21    # "broadcastAllowList":[I
    .end local v38    # "userId":I
    .end local p4    # "intent":Landroid/content/Intent;
    .local v0, "e":Landroid/os/RemoteException;
    .local v5, "userId":I
    .local v9, "callerInstantApp":Z
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v28    # "callerAppProcessState":I
    .restart local v35    # "broadcastAllowList":[I
    .restart local v36    # "action":Ljava/lang/String;
    const-string v1, "ActivityManager"

    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1079
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move-object/from16 v3, p7

    move-object/from16 v6, p15

    move/from16 v7, p19

    move-object v4, v15

    move-object/from16 v2, v16

    .end local v15    # "intent":Landroid/content/Intent;
    .end local v16    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .local v2, "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BroadcastController;->scheduleCanceledResultTo(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILandroid/app/BroadcastOptions;ILjava/lang/String;)V

    .line 1081
    return v34

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_0
        0x403 -> :sswitch_0
        0x42c -> :sswitch_0
        0x431 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7d14f855 -> :sswitch_15
        -0x6849e2b4 -> :sswitch_14
        -0x53ae571d -> :sswitch_13
        -0x4fc097e4 -> :sswitch_12
        -0x3bb3e592 -> :sswitch_11
        -0x304ed112 -> :sswitch_10
        -0x1808c879 -> :sswitch_f
        0xa480416 -> :sswitch_e
        0xaf62806 -> :sswitch_d
        0xff13fb5 -> :sswitch_c
        0x1df32313 -> :sswitch_b
        0x1e1f7f95 -> :sswitch_a
        0x1f50b9c2 -> :sswitch_9
        0x2114f460 -> :sswitch_8
        0x2f126fdf -> :sswitch_7
        0x32c98ebd -> :sswitch_6
        0x36db402e -> :sswitch_5
        0x4cef8b35 -> :sswitch_4
        0x5c1076e2 -> :sswitch_3
        0x6331ebb2 -> :sswitch_2
        0x6f08f706 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x6849e2b4 -> :sswitch_1c
        -0x53ae571d -> :sswitch_1b
        -0x4fc097e4 -> :sswitch_1a
        -0x3bb3e592 -> :sswitch_19
        0xa480416 -> :sswitch_18
        0x1f50b9c2 -> :sswitch_17
        0x4cef8b35 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    .locals 33
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/content/IIntentReceiver;
    .param p6, "resultCode"    # I
    .param p7, "resultData"    # Ljava/lang/String;
    .param p8, "resultExtras"    # Landroid/os/Bundle;
    .param p9, "requiredPermissions"    # [Ljava/lang/String;
    .param p10, "excludedPermissions"    # [Ljava/lang/String;
    .param p11, "excludedPackages"    # [Ljava/lang/String;
    .param p12, "appOp"    # I
    .param p13, "bOptions"    # Landroid/os/Bundle;
    .param p14, "serialized"    # Z
    .param p15, "sticky"    # Z
    .param p16, "userId"    # I

    .line 744
    move-object/from16 v2, p0

    iget-object v0, v2, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "broadcastIntent"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 747
    iget-object v1, v2, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 748
    move-object/from16 v3, p3

    :try_start_0
    invoke-virtual {v2, v3}, Lcom/android/server/am/BroadcastController;->verifyBroadcastLocked(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 750
    .end local p3    # "intent":Landroid/content/Intent;
    .local v6, "intent":Landroid/content/Intent;
    :try_start_1
    iget-object v0, v2, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    move-object v8, v0

    .line 751
    .local v8, "callerApp":Lcom/android/server/am/ProcessRecord;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v20

    .line 752
    .local v20, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v21

    move/from16 v4, v21

    .line 755
    .local v4, "callingUid":I
    move-object v5, v8

    .line 758
    .local v5, "resultToApp":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v7, p13

    invoke-virtual {v2, v7, v4}, Lcom/android/server/am/BroadcastController;->enforceBroadcastOptionPermissionsInternal(Landroid/os/Bundle;I)V

    .line 760
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    move-object/from16 v28, v0

    .line 762
    .local v28, "cn":Landroid/content/ComponentName;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "broadcastIntent:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    nop

    nop

    if-eqz v28, :cond_0

    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 778
    .end local v4    # "callingUid":I
    .end local v5    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v20    # "callingPid":I
    .end local v28    # "cn":Landroid/content/ComponentName;
    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 764
    .restart local v4    # "callingUid":I
    .restart local v5    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v20    # "callingPid":I
    .restart local v28    # "cn":Landroid/content/ComponentName;
    :cond_0
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    :goto_0
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 762
    const-wide/16 v9, 0x40

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 766
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide/from16 v29, v11

    .line 768
    .local v29, "origId":J
    nop

    .line 769
    if-eqz v8, :cond_1

    :try_start_2
    iget-object v0, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 775
    :catchall_1
    move-exception v0

    move/from16 v21, v4

    move-object v3, v8

    move-wide/from16 v31, v9

    move-object v8, v5

    goto :goto_2

    .line 769
    :cond_1
    const/4 v0, 0x0

    :goto_1
    :try_start_3
    sget-object v25, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 768
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v22, v4

    move/from16 v23, v20

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move/from16 v16, p12

    move/from16 v18, p14

    move/from16 v19, p15

    move/from16 v24, p16

    move/from16 v21, v4

    move-object/from16 v17, v7

    move-object v3, v8

    move-wide/from16 v31, v9

    move-object/from16 v7, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-object v4, v0

    move-object v8, v5

    move-object/from16 v5, p2

    .end local v4    # "callingUid":I
    .end local v5    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .local v3, "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v8, "resultToApp":Lcom/android/server/am/ProcessRecord;
    .local v21, "callingUid":I
    :try_start_4
    invoke-virtual/range {v2 .. v27}, Lcom/android/server/am/BroadcastController;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIIILandroid/app/BackgroundStartPrivileges;[ILjava/util/function/BiFunction;)I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 775
    .local v0, "result":I
    :try_start_5
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 776
    invoke-static/range {v31 .. v32}, Landroid/os/Trace;->traceEnd(J)V

    .line 777
    nop

    .line 778
    .end local v3    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v20    # "callingPid":I
    .end local v21    # "callingUid":I
    .end local v28    # "cn":Landroid/content/ComponentName;
    .end local v29    # "origId":J
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 780
    if-eqz p15, :cond_2

    if-nez v0, :cond_2

    .line 781
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/BroadcastStickyCache;->invalidateCache(Ljava/lang/String;)V

    .line 783
    :cond_2
    return v0

    .line 775
    .end local v0    # "result":I
    .restart local v3    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v20    # "callingPid":I
    .restart local v21    # "callingUid":I
    .restart local v28    # "cn":Landroid/content/ComponentName;
    .restart local v29    # "origId":J
    :catchall_2
    move-exception v0

    goto :goto_2

    .end local v3    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v21    # "callingUid":I
    .restart local v4    # "callingUid":I
    .restart local v5    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .local v8, "callerApp":Lcom/android/server/am/ProcessRecord;
    :catchall_3
    move-exception v0

    move/from16 v21, v4

    move-object v3, v8

    move-wide/from16 v31, v9

    move-object v8, v5

    .end local v4    # "callingUid":I
    .end local v5    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v8, "resultToApp":Lcom/android/server/am/ProcessRecord;
    .restart local v21    # "callingUid":I
    :goto_2
    :try_start_6
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 776
    invoke-static/range {v31 .. v32}, Landroid/os/Trace;->traceEnd(J)V

    .line 777
    nop

    .end local v6    # "intent":Landroid/content/Intent;
    .end local p0    # "this":Lcom/android/server/am/BroadcastController;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p2    # "callingFeatureId":Ljava/lang/String;
    .end local p4    # "resolvedType":Ljava/lang/String;
    .end local p5    # "resultTo":Landroid/content/IIntentReceiver;
    .end local p6    # "resultCode":I
    .end local p7    # "resultData":Ljava/lang/String;
    .end local p8    # "resultExtras":Landroid/os/Bundle;
    .end local p9    # "requiredPermissions":[Ljava/lang/String;
    .end local p10    # "excludedPermissions":[Ljava/lang/String;
    .end local p11    # "excludedPackages":[Ljava/lang/String;
    .end local p12    # "appOp":I
    .end local p13    # "bOptions":Landroid/os/Bundle;
    .end local p14    # "serialized":Z
    .end local p15    # "sticky":Z
    .end local p16    # "userId":I
    throw v0

    .line 778
    .end local v3    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "resultToApp":Lcom/android/server/am/ProcessRecord;
    .end local v20    # "callingPid":I
    .end local v21    # "callingUid":I
    .end local v28    # "cn":Landroid/content/ComponentName;
    .end local v29    # "origId":J
    .restart local p0    # "this":Lcom/android/server/am/BroadcastController;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p2    # "callingFeatureId":Ljava/lang/String;
    .restart local p3    # "intent":Landroid/content/Intent;
    .restart local p4    # "resolvedType":Ljava/lang/String;
    .restart local p5    # "resultTo":Landroid/content/IIntentReceiver;
    .restart local p6    # "resultCode":I
    .restart local p7    # "resultData":Ljava/lang/String;
    .restart local p8    # "resultExtras":Landroid/os/Bundle;
    .restart local p9    # "requiredPermissions":[Ljava/lang/String;
    .restart local p10    # "excludedPermissions":[Ljava/lang/String;
    .restart local p11    # "excludedPackages":[Ljava/lang/String;
    .restart local p12    # "appOp":I
    .restart local p13    # "bOptions":Landroid/os/Bundle;
    .restart local p14    # "serialized":Z
    .restart local p15    # "sticky":Z
    .restart local p16    # "userId":I
    :catchall_4
    move-exception v0

    move-object v6, v3

    .end local p3    # "intent":Landroid/content/Intent;
    .restart local v6    # "intent":Landroid/content/Intent;
    :goto_3
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method dumpBroadcastStatsCheckinLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "fullCheckin"    # Z
    .param p6, "dumpPackage"    # Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2489
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    if-nez v0, :cond_0

    .line 2490
    return-void

    .line 2493
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2494
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

    invoke-virtual {v0, p2, p6}, Lcom/android/server/am/BroadcastStats;->dumpCheckinStats(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2495
    if-eqz p5, :cond_1

    .line 2496
    iput-object v1, p0, Lcom/android/server/am/BroadcastController;->mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

    .line 2497
    return-void

    .line 2500
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    invoke-virtual {v0, p2, p6}, Lcom/android/server/am/BroadcastStats;->dumpCheckinStats(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2501
    if-eqz p5, :cond_2

    .line 2502
    iput-object v1, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    .line 2504
    :cond_2
    return-void
.end method

.method dumpBroadcastStatsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V
    .locals 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "dumpAll"    # Z
    .param p6, "dumpPackage"    # Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2455
    move-object/from16 v0, p6

    iget-object v1, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    if-nez v1, :cond_0

    .line 2456
    return-void

    .line 2459
    :cond_0
    const-string v1, "ACTIVITY MANAGER BROADCAST STATS STATE (dumpsys activity broadcast-stats)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2460
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 2461
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/am/BroadcastController;->mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

    const-string v4, "    (nothing)"

    const-string v5, "    "

    const-string v6, " uptime):"

    if-eqz v3, :cond_2

    .line 2462
    const-string v3, "  Last stats (from "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2463
    iget-object v3, p0, Lcom/android/server/am/BroadcastController;->mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

    iget-wide v7, v3, Lcom/android/server/am/BroadcastStats;->mStartRealtime:J

    invoke-static {v7, v8, v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2464
    const-string v3, " to "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2465
    iget-object v3, p0, Lcom/android/server/am/BroadcastController;->mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

    iget-wide v7, v3, Lcom/android/server/am/BroadcastStats;->mEndRealtime:J

    invoke-static {v7, v8, v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2466
    const-string v3, ", "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2467
    iget-object v3, p0, Lcom/android/server/am/BroadcastController;->mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

    iget-wide v7, v3, Lcom/android/server/am/BroadcastStats;->mEndUptime:J

    iget-object v3, p0, Lcom/android/server/am/BroadcastController;->mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

    iget-wide v9, v3, Lcom/android/server/am/BroadcastStats;->mStartUptime:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2469
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2470
    iget-object v3, p0, Lcom/android/server/am/BroadcastController;->mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

    invoke-virtual {v3, p2, v5, v0}, Lcom/android/server/am/BroadcastStats;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2471
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2473
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2475
    :cond_2
    const-string v3, "  Current stats (from "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2476
    iget-object v3, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    iget-wide v7, v3, Lcom/android/server/am/BroadcastStats;->mStartRealtime:J

    invoke-static {v7, v8, v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2477
    const-string v3, " to now, "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2478
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v3, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    iget-wide v9, v3, Lcom/android/server/am/BroadcastStats;->mStartUptime:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2480
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2481
    iget-object v3, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    invoke-virtual {v3, p2, v5, v0}, Lcom/android/server/am/BroadcastStats;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2482
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2484
    :cond_3
    return-void
.end method

.method dumpBroadcastsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V
    .locals 27
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "dumpAll"    # Z
    .param p6, "dumpPackage"    # Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2255
    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v9, p3

    move/from16 v0, p4

    move-object/from16 v2, p6

    const/4 v10, 0x1

    .line 2256
    .local v10, "dumpConstants":Z
    const/4 v11, 0x1

    .line 2257
    .local v11, "dumpHistory":Z
    const/4 v4, 0x0

    .line 2258
    .local v4, "needSep":Z
    const/4 v5, 0x0

    .line 2259
    .local v5, "onlyHistory":Z
    const/4 v6, 0x0

    .line 2260
    .local v6, "printedAnything":Z
    const/4 v7, 0x0

    .line 2261
    .local v7, "onlyReceivers":Z
    const/4 v8, -0x1

    .line 2262
    .local v8, "filteredUid":I
    const/4 v12, 0x0

    .line 2263
    .local v12, "onlyFilter":Z
    const/4 v13, 0x0

    .line 2265
    .local v13, "dumpIntentAction":Ljava/lang/String;
    const-string/jumbo v14, "history"

    invoke-virtual {v14, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 2266
    array-length v14, v9

    if-ge v0, v14, :cond_0

    const-string v14, "-s"

    aget-object v15, v9, v0

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 2267
    const/4 v14, 0x0

    .end local p5    # "dumpAll":Z
    .local v14, "dumpAll":Z
    goto :goto_0

    .line 2269
    .end local v14    # "dumpAll":Z
    .restart local p5    # "dumpAll":Z
    :cond_0
    move/from16 v14, p5

    .end local p5    # "dumpAll":Z
    .restart local v14    # "dumpAll":Z
    :goto_0
    const/4 v5, 0x1

    .line 2270
    const/4 v2, 0x0

    move v15, v8

    move/from16 v18, v11

    move/from16 v17, v12

    move-object v11, v13

    move v9, v14

    move v12, v0

    move v13, v5

    move v0, v6

    move v14, v7

    move-object v6, v2

    .end local p6    # "dumpPackage":Ljava/lang/String;
    .local v2, "dumpPackage":Ljava/lang/String;
    goto/16 :goto_4

    .line 2271
    .end local v2    # "dumpPackage":Ljava/lang/String;
    .end local v14    # "dumpAll":Z
    .restart local p5    # "dumpAll":Z
    .restart local p6    # "dumpPackage":Ljava/lang/String;
    :cond_1
    const-string/jumbo v14, "receivers"

    invoke-virtual {v14, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 2272
    const/4 v7, 0x1

    .line 2273
    const/4 v2, 0x0

    .line 2274
    .end local p6    # "dumpPackage":Ljava/lang/String;
    .restart local v2    # "dumpPackage":Ljava/lang/String;
    add-int/lit8 v14, v0, 0x2

    array-length v15, v9

    if-gt v14, v15, :cond_5

    .line 2275
    move/from16 v14, p4

    .local v14, "i":I
    :goto_1
    array-length v15, v9

    if-ge v14, v15, :cond_4

    .line 2276
    aget-object v15, v9, v14

    .line 2277
    .local v15, "arg":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/Object;->hashCode()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    :cond_2
    goto :goto_2

    :pswitch_0
    const-string v0, "--uid"

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_3

    :goto_2
    const/4 v0, -0x1

    :goto_3
    packed-switch v0, :pswitch_data_1

    .line 2285
    const-string v0, "Invalid argument at index %d: %s\n"

    move-object/from16 p6, v2

    .end local v2    # "dumpPackage":Ljava/lang/String;
    .restart local p6    # "dumpPackage":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2, v15}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2286
    return-void

    .line 2279
    .end local p6    # "dumpPackage":Ljava/lang/String;
    .restart local v2    # "dumpPackage":Ljava/lang/String;
    :pswitch_1
    move-object/from16 p6, v2

    .end local v2    # "dumpPackage":Ljava/lang/String;
    .restart local p6    # "dumpPackage":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    const/4 v0, -0x1

    invoke-static {v3, v9, v14, v0}, Lcom/android/server/am/BroadcastController;->getIntArg(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result v8

    .line 2280
    if-ne v8, v0, :cond_3

    .line 2281
    return-void

    .line 2280
    :cond_3
    nop

    .line 2275
    .end local v15    # "arg":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move/from16 v0, p4

    move-object/from16 v2, p6

    goto :goto_1

    .end local p6    # "dumpPackage":Ljava/lang/String;
    .restart local v2    # "dumpPackage":Ljava/lang/String;
    :cond_4
    move-object/from16 p6, v2

    .end local v2    # "dumpPackage":Ljava/lang/String;
    .restart local p6    # "dumpPackage":Ljava/lang/String;
    move/from16 v9, p5

    move v0, v6

    move v14, v7

    move v15, v8

    move/from16 v18, v11

    move/from16 v17, v12

    move-object v11, v13

    move/from16 v12, p4

    move-object/from16 v6, p6

    move v13, v5

    .end local v14    # "i":I
    goto/16 :goto_4

    .line 2274
    .end local p6    # "dumpPackage":Ljava/lang/String;
    .restart local v2    # "dumpPackage":Ljava/lang/String;
    :cond_5
    move-object/from16 p6, v2

    .end local v2    # "dumpPackage":Ljava/lang/String;
    .restart local p6    # "dumpPackage":Ljava/lang/String;
    move/from16 v9, p5

    move v0, v6

    move v14, v7

    move v15, v8

    move/from16 v18, v11

    move/from16 v17, v12

    move-object v11, v13

    move/from16 v12, p4

    move-object/from16 v6, p6

    move v13, v5

    goto/16 :goto_4

    .line 2290
    :cond_6
    const-string v0, "filter"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2291
    const/4 v12, 0x1

    .line 2292
    const/4 v0, 0x0

    .line 2293
    .end local p6    # "dumpPackage":Ljava/lang/String;
    .local v0, "dumpPackage":Ljava/lang/String;
    add-int/lit8 v2, p4, 0x2

    array-length v14, v9

    if-gt v2, v14, :cond_9

    .line 2294
    const-string v2, "--action"

    add-int/lit8 v14, p4, 0x1

    .end local p4    # "opti":I
    .local v14, "opti":I
    aget-object v15, v9, p4

    invoke-virtual {v2, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2295
    add-int/lit8 v2, v14, 0x1

    .end local v14    # "opti":I
    .local v2, "opti":I
    aget-object v13, v9, v14

    .line 2296
    if-nez v13, :cond_7

    .line 2297
    const-string v14, "Missing argument for --action option\n"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v3, v14, v15}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2298
    return-void

    .line 2296
    :cond_7
    move v9, v6

    move-object v6, v0

    move v0, v9

    move/from16 v9, p5

    move v14, v7

    move v15, v8

    move/from16 v18, v11

    move/from16 v17, v12

    move-object v11, v13

    move v12, v2

    move v13, v5

    goto :goto_4

    .line 2301
    .end local v2    # "opti":I
    .restart local v14    # "opti":I
    :cond_8
    const-string v2, "Unknown argument: %s\n"

    aget-object v15, v9, v14

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v3, v2, v15}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2302
    return-void

    .line 2293
    .end local v14    # "opti":I
    .restart local p4    # "opti":I
    :cond_9
    move v9, v6

    move-object v6, v0

    move v0, v9

    move/from16 v9, p5

    move v14, v7

    move v15, v8

    move/from16 v18, v11

    move/from16 v17, v12

    move-object v11, v13

    move/from16 v12, p4

    move v13, v5

    goto :goto_4

    .line 2290
    .end local v0    # "dumpPackage":Ljava/lang/String;
    .restart local p6    # "dumpPackage":Ljava/lang/String;
    :cond_a
    move/from16 v9, p5

    move v0, v6

    move v14, v7

    move v15, v8

    move/from16 v18, v11

    move/from16 v17, v12

    move-object v11, v13

    move/from16 v12, p4

    move-object v6, v2

    move v13, v5

    .line 2307
    .end local v5    # "onlyHistory":Z
    .end local v7    # "onlyReceivers":Z
    .end local v8    # "filteredUid":I
    .end local p4    # "opti":I
    .end local p5    # "dumpAll":Z
    .end local p6    # "dumpPackage":Ljava/lang/String;
    .local v0, "printedAnything":Z
    .local v6, "dumpPackage":Ljava/lang/String;
    .local v9, "dumpAll":Z
    .local v11, "dumpIntentAction":Ljava/lang/String;
    .local v12, "opti":I
    .local v13, "onlyHistory":Z
    .local v14, "onlyReceivers":Z
    .local v15, "filteredUid":I
    .local v17, "onlyFilter":Z
    .local v18, "dumpHistory":Z
    :goto_4
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v2, :cond_b

    .line 2308
    const-string v2, "ActivityManager"

    const-string v5, "dumpBroadcastsLocked(): dumpPackage=%s, onlyHistory=%b, onlyReceivers=%b, filteredUid=%d"

    .line 2309
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 2310
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move/from16 p4, v0

    .end local v0    # "printedAnything":Z
    .local p4, "printedAnything":Z
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v6, v7, v8, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 2308
    invoke-static {v2, v5, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 2307
    .end local p4    # "printedAnything":Z
    .restart local v0    # "printedAnything":Z
    :cond_b
    move/from16 p4, v0

    .line 2313
    .end local v0    # "printedAnything":Z
    .restart local p4    # "printedAnything":Z
    :goto_5
    const-string v0, "ACTIVITY MANAGER BROADCAST STATE (dumpsys activity broadcasts)"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2314
    if-nez v13, :cond_16

    if-nez v17, :cond_16

    if-eqz v9, :cond_16

    .line 2315
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mRegisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 2316
    const/4 v0, 0x0

    .line 2317
    .local v0, "printed":Z
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mRegisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move/from16 v5, p4

    .line 2318
    .end local p4    # "printedAnything":Z
    .local v2, "it":Ljava/util/Iterator;
    .local v5, "printedAnything":Z
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 2319
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ReceiverList;

    .line 2320
    .local v7, "r":Lcom/android/server/am/ReceiverList;
    nop

    nop

    if-eqz v6, :cond_d

    iget-object v8, v7, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    nop

    if-eqz v8, :cond_c

    iget-object v8, v7, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2321
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 2322
    move/from16 p4, v0

    move-object/from16 p5, v2

    move/from16 p6, v4

    move/from16 v19, v5

    goto :goto_7

    .line 2320
    :cond_c
    move/from16 p4, v0

    move-object/from16 p5, v2

    move/from16 p6, v4

    move/from16 v19, v5

    goto :goto_7

    .line 2324
    :cond_d
    const/4 v8, -0x1

    if-eq v15, v8, :cond_f

    iget-object v8, v7, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget v8, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v15, v8, :cond_f

    .line 2325
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v8, :cond_e

    .line 2326
    const-string v8, "ActivityManager"

    move/from16 p4, v0

    .end local v0    # "printed":Z
    .local p4, "printed":Z
    const-string v0, "dumpBroadcastsLocked(): skipping receiver whose uid (%d) is not %d: %s"

    move-object/from16 p5, v2

    .end local v2    # "it":Ljava/util/Iterator;
    .local p5, "it":Ljava/util/Iterator;
    iget-object v2, v7, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2327
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move/from16 p6, v4

    .end local v4    # "needSep":Z
    .local p6, "needSep":Z
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move/from16 v19, v5

    .end local v5    # "printedAnything":Z
    .local v19, "printedAnything":Z
    iget-object v5, v7, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    filled-new-array {v2, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 2326
    invoke-static {v8, v0, v2}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 2325
    .end local v19    # "printedAnything":Z
    .end local p4    # "printed":Z
    .end local p5    # "it":Ljava/util/Iterator;
    .end local p6    # "needSep":Z
    .restart local v0    # "printed":Z
    .restart local v2    # "it":Ljava/util/Iterator;
    .restart local v4    # "needSep":Z
    .restart local v5    # "printedAnything":Z
    :cond_e
    move/from16 p4, v0

    move-object/from16 p5, v2

    move/from16 p6, v4

    move/from16 v19, v5

    .line 2318
    .end local v7    # "r":Lcom/android/server/am/ReceiverList;
    :goto_7
    move/from16 v0, p4

    move-object/from16 v2, p5

    move/from16 v4, p6

    move/from16 v5, v19

    .end local v0    # "printed":Z
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v4    # "needSep":Z
    .end local v5    # "printedAnything":Z
    .restart local v19    # "printedAnything":Z
    .restart local p4    # "printed":Z
    .restart local p5    # "it":Ljava/util/Iterator;
    .restart local p6    # "needSep":Z
    goto :goto_6

    .line 2324
    .end local v19    # "printedAnything":Z
    .end local p4    # "printed":Z
    .end local p5    # "it":Ljava/util/Iterator;
    .end local p6    # "needSep":Z
    .restart local v0    # "printed":Z
    .restart local v2    # "it":Ljava/util/Iterator;
    .restart local v4    # "needSep":Z
    .restart local v5    # "printedAnything":Z
    .restart local v7    # "r":Lcom/android/server/am/ReceiverList;
    :cond_f
    move/from16 p4, v0

    move-object/from16 p5, v2

    move/from16 p6, v4

    move/from16 v19, v5

    .line 2331
    .end local v0    # "printed":Z
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v4    # "needSep":Z
    .end local v5    # "printedAnything":Z
    .restart local v19    # "printedAnything":Z
    .restart local p4    # "printed":Z
    .restart local p5    # "it":Ljava/util/Iterator;
    .restart local p6    # "needSep":Z
    if-nez p4, :cond_10

    .line 2332
    const-string v0, "  Registered Receivers:"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2333
    const/4 v0, 0x1

    .line 2334
    .end local p6    # "needSep":Z
    .local v0, "needSep":Z
    const/4 v2, 0x1

    .line 2335
    .end local p4    # "printed":Z
    .local v2, "printed":Z
    const/4 v4, 0x1

    move v5, v4

    move v4, v0

    move v0, v2

    .end local v19    # "printedAnything":Z
    .local v4, "printedAnything":Z
    goto :goto_8

    .line 2331
    .end local v0    # "needSep":Z
    .end local v2    # "printed":Z
    .end local v4    # "printedAnything":Z
    .restart local v19    # "printedAnything":Z
    .restart local p4    # "printed":Z
    .restart local p6    # "needSep":Z
    :cond_10
    move/from16 v0, p4

    move/from16 v4, p6

    move/from16 v5, v19

    .line 2337
    .end local v19    # "printedAnything":Z
    .end local p4    # "printed":Z
    .end local p6    # "needSep":Z
    .local v0, "printed":Z
    .local v4, "needSep":Z
    .restart local v5    # "printedAnything":Z
    :goto_8
    const-string v2, "  * "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2338
    const-string v2, "    "

    invoke-virtual {v7, v3, v2}, Lcom/android/server/am/ReceiverList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2339
    .end local v7    # "r":Lcom/android/server/am/ReceiverList;
    move-object/from16 v2, p5

    goto/16 :goto_6

    .line 2318
    .end local p5    # "it":Ljava/util/Iterator;
    .local v2, "it":Ljava/util/Iterator;
    :cond_11
    move/from16 p4, v0

    move-object/from16 p5, v2

    move/from16 p6, v4

    move/from16 v19, v5

    .line 2340
    .end local v0    # "printed":Z
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v4    # "needSep":Z
    .end local v5    # "printedAnything":Z
    .restart local v19    # "printedAnything":Z
    .restart local p6    # "needSep":Z
    move/from16 v0, p6

    goto :goto_9

    .line 2341
    .end local v19    # "printedAnything":Z
    .end local p6    # "needSep":Z
    .restart local v4    # "needSep":Z
    .local p4, "printedAnything":Z
    :cond_12
    if-eqz v14, :cond_13

    .line 2342
    const-string v0, "  (no registered receivers)"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2346
    :cond_13
    move/from16 v19, p4

    move v0, v4

    .end local v4    # "needSep":Z
    .end local p4    # "printedAnything":Z
    .local v0, "needSep":Z
    .restart local v19    # "printedAnything":Z
    :goto_9
    if-nez v14, :cond_15

    .line 2347
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mReceiverResolver:Lcom/android/server/IntentResolver;

    if-eqz v0, :cond_14

    .line 2348
    const-string v4, "\n  Receiver Resolver Table:"

    goto :goto_a

    :cond_14
    const-string v4, "  Receiver Resolver Table:"

    :goto_a
    const-string v5, "    "

    .line 2347
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/IntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2350
    const/4 v4, 0x1

    .line 2351
    .end local v0    # "needSep":Z
    .restart local v4    # "needSep":Z
    const/4 v0, 0x1

    .end local v19    # "printedAnything":Z
    .local v0, "printedAnything":Z
    goto :goto_b

    .line 2356
    .end local v4    # "needSep":Z
    .local v0, "needSep":Z
    .restart local v19    # "printedAnything":Z
    :cond_15
    move v4, v0

    move/from16 v0, v19

    goto :goto_b

    .end local v0    # "needSep":Z
    .end local v19    # "printedAnything":Z
    .restart local v4    # "needSep":Z
    .restart local p4    # "printedAnything":Z
    :cond_16
    move/from16 v0, p4

    .end local p4    # "printedAnything":Z
    .local v0, "printedAnything":Z
    :goto_b
    if-nez v14, :cond_17

    .line 2357
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move v7, v10

    move/from16 v8, v18

    move-object v10, v6

    move v6, v12

    move v12, v4

    move-object/from16 v4, p2

    .end local v4    # "needSep":Z
    .end local v18    # "dumpHistory":Z
    .local v6, "opti":I
    .local v7, "dumpConstants":Z
    .local v8, "dumpHistory":Z
    .local v10, "dumpPackage":Ljava/lang/String;
    .local v12, "needSep":Z
    invoke-virtual/range {v2 .. v12}, Lcom/android/server/am/BroadcastQueue;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 2359
    move-object v3, v4

    move v4, v6

    move-object v6, v10

    .end local v8    # "dumpHistory":Z
    .end local v10    # "dumpPackage":Ljava/lang/String;
    .end local v12    # "needSep":Z
    .local v2, "needSep":Z
    .local v4, "opti":I
    .local v6, "dumpPackage":Ljava/lang/String;
    .restart local v18    # "dumpHistory":Z
    or-int/2addr v0, v2

    move v12, v2

    move v2, v0

    goto :goto_c

    .line 2356
    .end local v2    # "needSep":Z
    .end local v7    # "dumpConstants":Z
    .local v4, "needSep":Z
    .local v10, "dumpConstants":Z
    .local v12, "opti":I
    :cond_17
    move v3, v12

    move v12, v4

    move v4, v3

    move-object/from16 v3, p2

    move v7, v10

    .end local v10    # "dumpConstants":Z
    .local v4, "opti":I
    .restart local v7    # "dumpConstants":Z
    .local v12, "needSep":Z
    move v2, v0

    .line 2362
    .end local v0    # "printedAnything":Z
    .local v2, "printedAnything":Z
    :goto_c
    const/4 v5, 0x1

    .line 2364
    .end local v12    # "needSep":Z
    .local v5, "needSep":Z
    iget-object v8, v1, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    monitor-enter v8

    .line 2365
    if-nez v13, :cond_1f

    if-nez v14, :cond_1f

    if-nez v17, :cond_1f

    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    if-eqz v0, :cond_1f

    if-nez v6, :cond_1f

    .line 2367
    const/4 v0, 0x0

    .local v0, "user":I
    :goto_d
    iget-object v10, v1, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-ge v0, v10, :cond_1e

    .line 2368
    if-eqz v5, :cond_18

    .line 2369
    :try_start_1
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_e

    .line 2411
    .end local v0    # "user":I
    :catchall_0
    move-exception v0

    move/from16 v25, v4

    goto/16 :goto_15

    .line 2371
    .restart local v0    # "user":I
    :cond_18
    :goto_e
    const/4 v5, 0x1

    .line 2372
    const/4 v2, 0x1

    .line 2373
    :try_start_2
    const-string v10, "  Sticky broadcasts for user "

    invoke-virtual {v3, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2374
    iget-object v10, v1, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v3, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 2375
    const-string v10, ":"

    invoke-virtual {v3, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2376
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v12, 0x80

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2378
    .local v10, "sb":Ljava/lang/StringBuilder;
    iget-object v12, v1, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 2379
    .local v16, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    move/from16 p4, v0

    .end local v0    # "user":I
    .local p4, "user":I
    const-string v0, "  * Sticky action "

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2380
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2381
    if-eqz v9, :cond_1c

    .line 2382
    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2383
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2384
    .local v0, "broadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move/from16 p5, v19

    .line 2385
    .local p5, "N":I
    const/16 v19, 0x0

    move/from16 p6, v2

    move/from16 v2, v19

    .local v2, "i":I
    .local p6, "printedAnything":Z
    :goto_10
    move/from16 v25, v4

    move/from16 v4, p5

    .end local p5    # "N":I
    .local v4, "N":I
    .local v25, "opti":I
    if-ge v2, v4, :cond_1b

    .line 2386
    :try_start_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 p5, v4

    .end local v4    # "N":I
    .restart local p5    # "N":I
    move-object/from16 v4, v19

    check-cast v4, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    iget-object v4, v4, Lcom/android/server/am/BroadcastController$StickyBroadcast;->intent:Landroid/content/Intent;

    move-object/from16 v19, v4

    .line 2387
    .local v19, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    iget-boolean v4, v4, Lcom/android/server/am/BroadcastController$StickyBroadcast;->deferUntilActive:Z

    .line 2388
    .local v4, "deferUntilActive":Z
    move/from16 v26, v4

    const/4 v4, 0x0

    .end local v4    # "deferUntilActive":Z
    .local v26, "deferUntilActive":Z
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2389
    const-string v4, "    Intent: "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2390
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v20, v10

    .end local v10    # "sb":Ljava/lang/StringBuilder;
    .local v20, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {v19 .. v24}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 2391
    .end local v20    # "sb":Ljava/lang/StringBuilder;
    .restart local v10    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2392
    if-eqz v26, :cond_19

    .line 2393
    const-string v4, " [D]"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_11

    .line 2411
    .end local v0    # "broadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v2    # "i":I
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    .end local v16    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v26    # "deferUntilActive":Z
    .end local p4    # "user":I
    .end local p5    # "N":I
    :catchall_1
    move-exception v0

    move/from16 v2, p6

    goto/16 :goto_15

    .line 2395
    .restart local v0    # "broadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v2    # "i":I
    .restart local v10    # "sb":Ljava/lang/StringBuilder;
    .restart local v16    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    .restart local v19    # "intent":Landroid/content/Intent;
    .restart local v26    # "deferUntilActive":Z
    .restart local p4    # "user":I
    .restart local p5    # "N":I
    :cond_19
    :goto_11
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 2396
    const-string v4, "      originalCallingUid: "

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2397
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    iget v4, v4, Lcom/android/server/am/BroadcastController$StickyBroadcast;->originalCallingUid:I

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2398
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 2399
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 2400
    .local v4, "bundle":Landroid/os/Bundle;
    if-eqz v4, :cond_1a

    .line 2401
    move-object/from16 v20, v0

    .end local v0    # "broadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .local v20, "broadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    const-string v0, "      extras: "

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2402
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_12

    .line 2400
    .end local v20    # "broadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v0    # "broadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    :cond_1a
    move-object/from16 v20, v0

    .line 2385
    .end local v0    # "broadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v26    # "deferUntilActive":Z
    .restart local v20    # "broadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    :goto_12
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v20

    move/from16 v4, v25

    goto :goto_10

    .end local v20    # "broadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local p5    # "N":I
    .restart local v0    # "broadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .local v4, "N":I
    :cond_1b
    move-object/from16 v20, v0

    move/from16 p5, v4

    .line 2405
    .end local v0    # "broadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v2    # "i":I
    .end local v4    # "N":I
    goto :goto_13

    .line 2411
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    .end local v16    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    .end local v25    # "opti":I
    .end local p4    # "user":I
    .end local p6    # "printedAnything":Z
    .local v2, "printedAnything":Z
    .local v4, "opti":I
    :catchall_2
    move-exception v0

    move/from16 p6, v2

    move/from16 v25, v4

    .end local v2    # "printedAnything":Z
    .end local v4    # "opti":I
    .restart local v25    # "opti":I
    .restart local p6    # "printedAnything":Z
    goto/16 :goto_15

    .line 2406
    .end local v25    # "opti":I
    .end local p6    # "printedAnything":Z
    .restart local v2    # "printedAnything":Z
    .restart local v4    # "opti":I
    .restart local v10    # "sb":Ljava/lang/StringBuilder;
    .restart local v16    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    .restart local p4    # "user":I
    :cond_1c
    move/from16 p6, v2

    move/from16 v25, v4

    .end local v2    # "printedAnything":Z
    .end local v4    # "opti":I
    .restart local v25    # "opti":I
    .restart local p6    # "printedAnything":Z
    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2408
    .end local v16    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    :goto_13
    move/from16 v0, p4

    move/from16 v2, p6

    move/from16 v4, v25

    goto/16 :goto_f

    .line 2378
    .end local v25    # "opti":I
    .end local p4    # "user":I
    .end local p6    # "printedAnything":Z
    .local v0, "user":I
    .restart local v2    # "printedAnything":Z
    .restart local v4    # "opti":I
    :cond_1d
    move/from16 p4, v0

    move/from16 p6, v2

    move/from16 v25, v4

    .line 2367
    .end local v0    # "user":I
    .end local v2    # "printedAnything":Z
    .end local v4    # "opti":I
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    .restart local v25    # "opti":I
    .restart local p4    # "user":I
    .restart local p6    # "printedAnything":Z
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "user":I
    .restart local v0    # "user":I
    goto/16 :goto_d

    .end local v25    # "opti":I
    .end local p6    # "printedAnything":Z
    .restart local v2    # "printedAnything":Z
    .restart local v4    # "opti":I
    :cond_1e
    move/from16 p4, v0

    move/from16 v25, v4

    .end local v0    # "user":I
    .end local v4    # "opti":I
    .restart local v25    # "opti":I
    .restart local p4    # "user":I
    goto :goto_14

    .line 2411
    .end local v25    # "opti":I
    .end local p4    # "user":I
    .restart local v4    # "opti":I
    :catchall_3
    move-exception v0

    move/from16 v25, v4

    .end local v4    # "opti":I
    .restart local v25    # "opti":I
    goto :goto_15

    .line 2365
    .end local v25    # "opti":I
    .restart local v4    # "opti":I
    :cond_1f
    move/from16 v25, v4

    .line 2411
    .end local v4    # "opti":I
    .restart local v25    # "opti":I
    :goto_14
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 2413
    if-nez v13, :cond_20

    if-nez v14, :cond_20

    if-nez v17, :cond_20

    if-eqz v9, :cond_20

    .line 2414
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 2415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Queue "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/BroadcastController;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/BroadcastController;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    .line 2416
    invoke-virtual {v4}, Lcom/android/server/am/BroadcastQueue;->describeStateLocked()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2415
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2417
    const-string v0, "  mHandler:"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2418
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v4, Landroid/util/PrintWriterPrinter;

    invoke-direct {v4, v3}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v8, "    "

    invoke-virtual {v0, v4, v8}, Landroid/os/Handler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 2419
    const/4 v2, 0x1

    .line 2422
    :cond_20
    if-nez v2, :cond_21

    .line 2423
    const-string v0, "  (nothing)"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2428
    :cond_21
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_AM_DEBUG_HELPER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/INtAmDebugHelper;

    invoke-interface {v0, v3}, Lcom/android/server/am/INtAmDebugHelper;->dumpBroadcastsLocked(Ljava/io/PrintWriter;)V

    .line 2430
    return-void

    .line 2411
    :catchall_4
    move-exception v0

    :goto_15
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2905ab0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method enforceBroadcastOptionPermissionsInternal(Landroid/os/Bundle;I)V
    .locals 1
    .param p1, "options"    # Landroid/os/Bundle;
    .param p2, "callingUid"    # I

    .line 2210
    invoke-static {p1}, Landroid/app/BroadcastOptions;->fromBundleNullable(Landroid/os/Bundle;)Landroid/app/BroadcastOptions;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/BroadcastController;->enforceBroadcastOptionPermissionsInternal(Landroid/app/BroadcastOptions;I)V

    .line 2212
    return-void
.end method

.method finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V
    .locals 11
    .param p1, "caller"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Ljava/lang/String;
    .param p4, "resultExtras"    # Landroid/os/Bundle;
    .param p5, "resultAbort"    # Z
    .param p6, "flags"    # I

    .line 1862
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish receiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    goto :goto_0

    .line 1866
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File descriptors passed in Bundle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1869
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1871
    .local v1, "origId":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1872
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/os/IBinder;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    move-object v5, v0

    .line 1873
    .local v5, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-nez v5, :cond_3

    .line 1874
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finishReceiver: no app for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1885
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1875
    return-void

    .line 1882
    .end local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1878
    .restart local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/BroadcastController;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    const/4 v10, 0x1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1881
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v6, 0x2

    invoke-virtual {v0, v4, v6}, Lcom/android/server/am/ActivityManagerService;->trimApplicationsLocked(ZI)V

    .line 1882
    .end local v5    # "callerApp":Lcom/android/server/am/ProcessRecord;
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1885
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1886
    nop

    .line 1887
    return-void

    .line 1885
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 1882
    :goto_1
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local v1    # "origId":J
    .end local p0    # "this":Lcom/android/server/am/BroadcastController;
    .end local p1    # "caller":Landroid/os/IBinder;
    .end local p2    # "resultCode":I
    .end local p3    # "resultData":Ljava/lang/String;
    .end local p4    # "resultExtras":Landroid/os/Bundle;
    .end local p5    # "resultAbort":Z
    .end local p6    # "flags":I
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1885
    .restart local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/am/BroadcastController;
    .restart local p1    # "caller":Landroid/os/IBinder;
    .restart local p2    # "resultCode":I
    .restart local p3    # "resultData":Ljava/lang/String;
    .restart local p4    # "resultExtras":Landroid/os/Bundle;
    .restart local p5    # "resultAbort":Z
    .restart local p6    # "flags":I
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1886
    throw v0
.end method

.method getRegisteredIntentFilters(Landroid/content/IIntentReceiver;)Ljava/util/List;
    .locals 6
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IIntentReceiver;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    .line 724
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 725
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastController;->mRegisteredReceivers:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ReceiverList;

    .line 726
    .local v1, "rl":Lcom/android/server/am/ReceiverList;
    if-nez v1, :cond_0

    .line 727
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x0

    return-object v0

    .line 735
    .end local v1    # "rl":Lcom/android/server/am/ReceiverList;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 729
    .restart local v1    # "rl":Lcom/android/server/am/ReceiverList;
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 730
    .local v2, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 731
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 732
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentFilter;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 734
    .end local v4    # "i":I
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 735
    .end local v1    # "rl":Lcom/android/server/am/ReceiverList;
    .end local v2    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    .end local v3    # "count":I
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getStickyBroadcastsForTest(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastController$StickyBroadcast;",
            ">;"
        }
    .end annotation

    .line 1802
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1803
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    .line 1804
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 1805
    .local v1, "stickyBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    if-nez v1, :cond_0

    .line 1806
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 1809
    .end local v1    # "stickyBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1808
    .restart local v1    # "stickyBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    :cond_0
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    monitor-exit v0

    return-object v2

    .line 1809
    .end local v1    # "stickyBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final notifyBroadcastFinishedLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 6
    .param p1, "original"    # Lcom/android/server/am/BroadcastRecord;

    .line 1926
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1927
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 1928
    .local v1, "callerPackage":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_2

    .line 1929
    iget-object v2, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget v3, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/4 v4, 0x0

    const/16 v5, 0x4a

    invoke-virtual {v2, v5, v3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1930
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1932
    :cond_2
    return-void
.end method

.method registerReceiverWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;
    .locals 1
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "callerFeatureId"    # Ljava/lang/String;
    .param p4, "receiverId"    # Ljava/lang/String;
    .param p5, "receiver"    # Landroid/content/IIntentReceiver;
    .param p6, "filter"    # Landroid/content/IntentFilter;
    .param p7, "permission"    # Ljava/lang/String;
    .param p8, "userId"    # I
    .param p9, "flags"    # I

    .line 271
    invoke-static {p4, p5, p6, p8}, Lcom/android/server/am/BroadcastController;->traceRegistrationBegin(Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;I)V

    .line 273
    :try_start_0
    invoke-direct/range {p0 .. p9}, Lcom/android/server/am/BroadcastController;->registerReceiverWithFeatureTraced(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    invoke-static {}, Lcom/android/server/am/BroadcastController;->traceRegistrationEnd()V

    .line 273
    return-object v0

    .line 276
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/android/server/am/BroadcastController;->traceRegistrationEnd()V

    .line 277
    throw v0
.end method

.method removeReceiverLocked(Lcom/android/server/am/ReceiverList;)V
    .locals 3
    .param p1, "rl"    # Lcom/android/server/am/ReceiverList;

    .line 717
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mRegisteredReceivers:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 719
    iget-object v1, p0, Lcom/android/server/am/BroadcastController;->mReceiverResolver:Lcom/android/server/IntentResolver;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v1, v2}, Lcom/android/server/IntentResolver;->removeFilter(Ljava/lang/Object;)V

    .line 718
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 721
    .end local v0    # "i":I
    return-void
.end method

.method removeStickyBroadcasts(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 2238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2239
    .local v0, "changedStickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    monitor-enter v1

    .line 2240
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    .line 2241
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 2242
    .local v2, "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    if-eqz v2, :cond_0

    .line 2243
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2246
    .end local v2    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 2245
    .restart local v2    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2246
    .end local v2    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2247
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 2248
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/app/BroadcastStickyCache;->invalidateCache(Ljava/lang/String;)V

    .line 2247
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    nop

    .line 2250
    .end local v1    # "i":I
    return-void

    .line 2246
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method final rotateBroadcastStatsIfNeededLocked()V
    .locals 6

    .line 1902
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1903
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    iget-wide v2, v2, Lcom/android/server/am/BroadcastStats;->mStartRealtime:J

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    .line 1905
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    iput-object v2, p0, Lcom/android/server/am/BroadcastController;->mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

    .line 1906
    iget-object v2, p0, Lcom/android/server/am/BroadcastController;->mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

    if-eqz v2, :cond_1

    .line 1907
    iget-object v2, p0, Lcom/android/server/am/BroadcastController;->mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/BroadcastStats;->mEndRealtime:J

    .line 1908
    iget-object v2, p0, Lcom/android/server/am/BroadcastController;->mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/BroadcastStats;->mEndUptime:J

    .line 1910
    :cond_1
    new-instance v2, Lcom/android/server/am/BroadcastStats;

    invoke-direct {v2}, Lcom/android/server/am/BroadcastStats;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    .line 1912
    :cond_2
    return-void
.end method

.method setBroadcastQueueForTest(Lcom/android/server/am/BroadcastQueue;)V
    .locals 0
    .param p1, "broadcastQueue"    # Lcom/android/server/am/BroadcastQueue;

    .line 265
    iput-object p1, p0, Lcom/android/server/am/BroadcastController;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    .line 266
    return-void
.end method

.method startBroadcastObservers()V
    .locals 2

    .line 2234
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    iget-object v1, p0, Lcom/android/server/am/BroadcastController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue;->start(Landroid/content/ContentResolver;)V

    .line 2235
    return-void
.end method

.method unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V
    .locals 9
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I

    .line 1814
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 1815
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File descriptors passed in Intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1818
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1819
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const-string/jumbo v7, "removeStickyBroadcast"

    .line 1818
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v4, p3

    .end local p3    # "userId":I
    .local v4, "userId":I
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 1822
    .end local v4    # "userId":I
    .restart local p3    # "userId":I
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.BROADCAST_STICKY"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    .line 1831
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 1832
    .local v1, "changedStickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1833
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1834
    .local v0, "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    if-eqz v0, :cond_6

    .line 1835
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1836
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    if-eqz v3, :cond_5

    .line 1837
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1839
    .local v4, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_3

    .line 1840
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    iget-object v6, v6, Lcom/android/server/am/BroadcastController$StickyBroadcast;->intent:Landroid/content/Intent;

    invoke-virtual {p2, v6}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1841
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1842
    goto :goto_2

    .line 1854
    .end local v0    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .end local v4    # "N":I
    .end local v5    # "i":I
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 1839
    .restart local v0    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    .restart local v4    # "N":I
    .restart local v5    # "i":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1845
    :cond_3
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_4

    .line 1846
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1848
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1850
    .end local v4    # "N":I
    .end local v5    # "i":I
    :cond_5
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-gtz v4, :cond_6

    .line 1851
    iget-object v4, p0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v4, p3}, Landroid/util/SparseArray;->remove(I)V

    .line 1854
    .end local v0    # "stickies":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;"
    :cond_6
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1855
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_3
    if-ltz v0, :cond_7

    .line 1856
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/app/BroadcastStickyCache;->invalidateCache(Ljava/lang/String;)V

    .line 1855
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_7
    nop

    .line 1858
    .end local v0    # "i":I
    return-void

    .line 1854
    :goto_4
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1824
    .end local v1    # "changedStickyBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: unbroadcastIntent() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1825
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1826
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.BROADCAST_STICKY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1828
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method unregisterReceiver(Landroid/content/IIntentReceiver;)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;

    .line 647
    invoke-static {p1}, Lcom/android/server/am/BroadcastController;->traceUnregistrationBegin(Landroid/content/IIntentReceiver;)V

    .line 649
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastController;->unregisterReceiverTraced(Landroid/content/IIntentReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    invoke-static {}, Lcom/android/server/am/BroadcastController;->traceUnregistrationEnd()V

    .line 652
    nop

    .line 653
    return-void

    .line 651
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/android/server/am/BroadcastController;->traceUnregistrationEnd()V

    .line 652
    throw v0
.end method

.method final verifyBroadcastLocked(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1935
    if-eqz p1, :cond_1

    .line 1937
    invoke-virtual {p1}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1941
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtendedFlags(I)V

    goto :goto_0

    .line 1938
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File descriptors passed in Intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1944
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 1946
    .local v0, "flags":I
    iget-object v1, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    const-string v2, "ActivityManager"

    if-nez v1, :cond_4

    .line 1949
    const/high16 v1, 0x4000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    goto :goto_1

    .line 1951
    :cond_2
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    goto :goto_1

    .line 1952
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to launch receivers of broadcast intent "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " before boot completion"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot broadcast before boot completed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1958
    :cond_4
    :goto_1
    const/high16 v1, 0x2000000

    and-int/2addr v1, v0

    if-nez v1, :cond_6

    .line 1963
    const/high16 v1, 0x400000

    and-int v3, v0, v1

    if-eqz v3, :cond_5

    .line 1964
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 1969
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing FLAG_RECEIVER_FROM_SHELL because caller is UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1970
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1969
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeFlags(I)V

    goto :goto_2

    .line 1967
    :sswitch_0
    nop

    .line 1976
    :cond_5
    :goto_2
    return-object p1

    .line 1959
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t use FLAG_RECEIVER_BOOT_UPGRADE here"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7d0 -> :sswitch_0
    .end sparse-switch
.end method

.method writeBroadcastsToProtoLocked(Landroid/util/proto/ProtoOutputStream;)V
    .locals 23
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 2507
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mRegisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2508
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mRegisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2509
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2510
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ReceiverList;

    .line 2511
    .local v2, "r":Lcom/android/server/am/ReceiverList;
    const-wide v4, 0x20b00000001L

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ReceiverList;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2512
    .end local v2    # "r":Lcom/android/server/am/ReceiverList;
    goto :goto_0

    .line 2514
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_0
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mReceiverResolver:Lcom/android/server/IntentResolver;

    const-wide v10, 0x10b00000002L

    invoke-virtual {v0, v3, v10, v11}, Lcom/android/server/IntentResolver;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2516
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    const-wide v4, 0x20b00000003L

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/am/BroadcastQueue;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2517
    iget-object v12, v1, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    monitor-enter v12

    .line 2518
    const/4 v0, 0x0

    .local v0, "user":I
    :goto_1
    :try_start_0
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const-wide v13, 0x10900000001L

    if-ge v0, v2, :cond_3

    .line 2519
    const-wide v4, 0x20b00000004L

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 2521
    .local v4, "token":J
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    const-wide v6, 0x10500000001L

    invoke-virtual {v3, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2523
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    move-object/from16 v16, v2

    .line 2524
    .local v16, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    const-wide v6, 0x20b00000002L

    invoke-virtual {v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 2525
    .local v6, "actionToken":J
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v13, v14, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2526
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    .line 2527
    .local v2, "broadcast":Lcom/android/server/am/BroadcastController$StickyBroadcast;
    move-object v8, v2

    .end local v2    # "broadcast":Lcom/android/server/am/BroadcastController$StickyBroadcast;
    .local v8, "broadcast":Lcom/android/server/am/BroadcastController$StickyBroadcast;
    iget-object v2, v8, Lcom/android/server/am/BroadcastController$StickyBroadcast;->intent:Landroid/content/Intent;

    move-object v9, v8

    .end local v8    # "broadcast":Lcom/android/server/am/BroadcastController$StickyBroadcast;
    .local v9, "broadcast":Lcom/android/server/am/BroadcastController$StickyBroadcast;
    const/4 v8, 0x1

    move-object/from16 v18, v9

    .end local v9    # "broadcast":Lcom/android/server/am/BroadcastController$StickyBroadcast;
    .local v18, "broadcast":Lcom/android/server/am/BroadcastController$StickyBroadcast;
    const/4 v9, 0x0

    move-wide/from16 v19, v4

    .end local v4    # "token":J
    .local v19, "token":J
    const-wide v4, 0x20b00000002L

    move-wide/from16 v21, v6

    .end local v6    # "actionToken":J
    .local v21, "actionToken":J
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-wide/from16 v10, v19

    move-wide/from16 v13, v21

    move-object/from16 v20, v18

    .end local v18    # "broadcast":Lcom/android/server/am/BroadcastController$StickyBroadcast;
    .end local v19    # "token":J
    .end local v21    # "actionToken":J
    .local v10, "token":J
    .local v13, "actionToken":J
    .local v20, "broadcast":Lcom/android/server/am/BroadcastController$StickyBroadcast;
    invoke-virtual/range {v2 .. v9}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    .line 2529
    .end local v20    # "broadcast":Lcom/android/server/am/BroadcastController$StickyBroadcast;
    move-wide v4, v10

    move-wide v6, v13

    const-wide v10, 0x10b00000002L

    const-wide v13, 0x10900000001L

    goto :goto_3

    .line 2534
    .end local v0    # "user":I
    .end local v10    # "token":J
    .end local v13    # "actionToken":J
    .end local v16    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 2530
    .restart local v0    # "user":I
    .restart local v4    # "token":J
    .restart local v6    # "actionToken":J
    .restart local v16    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    :cond_1
    move-wide v10, v4

    move-wide v13, v6

    .end local v4    # "token":J
    .end local v6    # "actionToken":J
    .restart local v10    # "token":J
    .restart local v13    # "actionToken":J
    invoke-virtual {v3, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2531
    .end local v13    # "actionToken":J
    .end local v16    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/BroadcastController$StickyBroadcast;>;>;"
    move-wide v4, v10

    const-wide v10, 0x10b00000002L

    const-wide v13, 0x10900000001L

    goto :goto_2

    .line 2532
    .end local v10    # "token":J
    .restart local v4    # "token":J
    :cond_2
    move-wide v10, v4

    .end local v4    # "token":J
    .restart local v10    # "token":J
    invoke-virtual {v3, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2518
    .end local v10    # "token":J
    add-int/lit8 v0, v0, 0x1

    const-wide v10, 0x10b00000002L

    goto/16 :goto_1

    :cond_3
    nop

    .line 2534
    .end local v0    # "user":I
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2536
    const-wide v4, 0x10b00000005L

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 2537
    .local v4, "handlerToken":J
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    .line 2538
    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2537
    const-wide v6, 0x10900000001L

    invoke-virtual {v3, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2539
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide v6, 0x10b00000002L

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Looper;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2541
    invoke-virtual {v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2542
    return-void

    .line 2534
    .end local v4    # "handlerToken":J
    :goto_4
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
