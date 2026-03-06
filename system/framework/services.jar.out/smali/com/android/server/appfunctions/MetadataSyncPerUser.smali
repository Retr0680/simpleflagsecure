.class public final Lcom/android/server/appfunctions/MetadataSyncPerUser;
.super Ljava/lang/Object;
.source "MetadataSyncPerUser.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sLock:Ljava/lang/Object;

.field private static final sPerUserMetadataSyncAdapter:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/appfunctions/MetadataSyncAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/android/server/appfunctions/MetadataSyncPerUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appfunctions/MetadataSyncPerUser;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/appfunctions/MetadataSyncPerUser;->sPerUserMetadataSyncAdapter:Landroid/util/SparseArray;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/appfunctions/MetadataSyncPerUser;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPerUserMetadataSyncAdapter(Landroid/os/UserHandle;Landroid/content/Context;)Lcom/android/server/appfunctions/MetadataSyncAdapter;
    .locals 6
    .param p0, "user"    # Landroid/os/UserHandle;
    .param p1, "userContext"    # Landroid/content/Context;

    .line 49
    sget-object v0, Lcom/android/server/appfunctions/MetadataSyncPerUser;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/android/server/appfunctions/MetadataSyncPerUser;->sPerUserMetadataSyncAdapter:Landroid/util/SparseArray;

    .line 51
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appfunctions/MetadataSyncAdapter;

    .line 52
    .local v1, "metadataSyncAdapter":Lcom/android/server/appfunctions/MetadataSyncAdapter;
    if-nez v1, :cond_0

    .line 53
    const-class v2, Landroid/app/appsearch/AppSearchManager;

    .line 54
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/appsearch/AppSearchManager;

    .line 55
    .local v2, "perUserAppSearchManager":Landroid/app/appsearch/AppSearchManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 56
    .local v3, "perUserPackageManager":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 57
    new-instance v4, Lcom/android/server/appfunctions/MetadataSyncAdapter;

    invoke-direct {v4, v3, v2}, Lcom/android/server/appfunctions/MetadataSyncAdapter;-><init>(Landroid/content/pm/PackageManager;Landroid/app/appsearch/AppSearchManager;)V

    .line 59
    .end local v1    # "metadataSyncAdapter":Lcom/android/server/appfunctions/MetadataSyncAdapter;
    .local v4, "metadataSyncAdapter":Lcom/android/server/appfunctions/MetadataSyncAdapter;
    sget-object v1, Lcom/android/server/appfunctions/MetadataSyncPerUser;->sPerUserMetadataSyncAdapter:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    monitor-exit v0

    return-object v4

    .line 64
    .end local v2    # "perUserAppSearchManager":Landroid/app/appsearch/AppSearchManager;
    .end local v3    # "perUserPackageManager":Landroid/content/pm/PackageManager;
    .end local v4    # "metadataSyncAdapter":Lcom/android/server/appfunctions/MetadataSyncAdapter;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 63
    .restart local v1    # "metadataSyncAdapter":Lcom/android/server/appfunctions/MetadataSyncAdapter;
    :cond_0
    monitor-exit v0

    return-object v1

    .line 64
    .end local v1    # "metadataSyncAdapter":Lcom/android/server/appfunctions/MetadataSyncAdapter;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static removeUserSyncAdapter(Landroid/os/UserHandle;)V
    .locals 4
    .param p0, "user"    # Landroid/os/UserHandle;

    .line 73
    sget-object v0, Lcom/android/server/appfunctions/MetadataSyncPerUser;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/android/server/appfunctions/MetadataSyncPerUser;->sPerUserMetadataSyncAdapter:Landroid/util/SparseArray;

    .line 75
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appfunctions/MetadataSyncAdapter;

    .line 76
    .local v1, "metadataSyncAdapter":Lcom/android/server/appfunctions/MetadataSyncAdapter;
    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v1}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->shutDown()V

    .line 78
    sget-object v2, Lcom/android/server/appfunctions/MetadataSyncPerUser;->sPerUserMetadataSyncAdapter:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 80
    .end local v1    # "metadataSyncAdapter":Lcom/android/server/appfunctions/MetadataSyncAdapter;
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 81
    return-void

    .line 80
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
