.class public final Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;
.super Landroid/os/Binder;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntentCreatorToken"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;
    }
.end annotation


# instance fields
.field private final mKeyFields:Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

.field private final mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$iCC_HD38bZKMlcWa0bWj3mHK1QQ(Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->completeFinalize()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmRef(Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 2
    .param p1, "creatorUid"    # I
    .param p2, "creatorPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .line 20088
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20089
    new-instance v0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;-><init>(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/ActivityManagerService-IA;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mKeyFields:Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    .line 20090
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mRef:Ljava/lang/ref/WeakReference;

    .line 20091
    return-void
.end method

.method private completeFinalize()V
    .locals 4

    .line 20128
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$sfgetsIntentCreatorTokenCache()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 20129
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$sfgetsIntentCreatorTokenCache()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mKeyFields:Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 20131
    .local v1, "current":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;>;"
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mRef:Ljava/lang/ref/WeakReference;

    if-ne v1, v2, :cond_0

    .line 20132
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$sfgetsIntentCreatorTokenCache()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mKeyFields:Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 20134
    .end local v1    # "current":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;>;"
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 20135
    return-void

    .line 20134
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isValid(Landroid/content/Intent;)Z
    .locals 7
    .param p0, "intent"    # Landroid/content/Intent;

    .line 20107
    invoke-virtual {p0}, Landroid/content/Intent;->getCreatorToken()Landroid/os/IBinder;

    move-result-object v0

    .line 20108
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v1, 0x0

    .line 20109
    .local v1, "token":Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;
    instance-of v2, v0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;

    if-eqz v2, :cond_0

    .line 20110
    move-object v1, v0

    check-cast v1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;

    .line 20112
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mKeyFields:Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    new-instance v3, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mKeyFields:Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->-$$Nest$fgetmCreatorUid(Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;)I

    move-result v4

    iget-object v5, v1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mKeyFields:Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->-$$Nest$fgetmCreatorPackage(Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, p0, v6}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;-><init>(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/ActivityManagerService-IA;)V

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 20120
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$sfgetsCreatorTokenCacheCleaner()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20123
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 20124
    nop

    .line 20125
    return-void

    .line 20123
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 20124
    throw v0
.end method

.method public getCreatorPackage()Ljava/lang/String;
    .locals 1

    .line 20098
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mKeyFields:Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->-$$Nest$fgetmCreatorPackage(Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreatorUid()I
    .locals 1

    .line 20094
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mKeyFields:Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->-$$Nest$fgetmCreatorUid(Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;)I

    move-result v0

    return v0
.end method

.method public getKeyFields()Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;
    .locals 1

    .line 20103
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mKeyFields:Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    return-object v0
.end method
