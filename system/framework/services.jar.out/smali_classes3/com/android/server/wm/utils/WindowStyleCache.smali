.class public Lcom/android/server/wm/utils/WindowStyleCache;
.super Ljava/lang/Object;
.source "WindowStyleCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final mEntryFactory:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/content/res/TypedArray;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/content/res/TypedArray;",
            "TT;>;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/android/server/wm/utils/WindowStyleCache;, "Lcom/android/server/wm/utils/WindowStyleCache<TT;>;"
    .local p1, "entryFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/content/res/TypedArray;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/utils/WindowStyleCache;->mCache:Landroid/util/ArrayMap;

    .line 39
    iput-object p1, p0, Lcom/android/server/wm/utils/WindowStyleCache;->mEntryFactory:Ljava/util/function/Function;

    .line 40
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;II)Ljava/lang/Object;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "theme"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)TT;"
        }
    .end annotation

    .line 45
    .local p0, "this":Lcom/android/server/wm/utils/WindowStyleCache;, "Lcom/android/server/wm/utils/WindowStyleCache<TT;>;"
    iget-object v0, p0, Lcom/android/server/wm/utils/WindowStyleCache;->mCache:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/utils/WindowStyleCache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 47
    .local v1, "themeMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 49
    .local v2, "style":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_0

    .line 50
    monitor-exit v0

    return-object v2

    .line 53
    .end local v1    # "themeMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .end local v2    # "style":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v1

    goto :goto_2

    .restart local v1    # "themeMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v2

    .line 56
    .local v2, "attributeCache":Lcom/android/internal/policy/AttributeCache;
    const/4 v0, 0x0

    if-nez v2, :cond_1

    .line 57
    return-object v0

    .line 59
    :cond_1
    sget-object v3, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v2, p1, p2, v3, p3}, Lcom/android/internal/policy/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v3

    .line 61
    .local v3, "ent":Lcom/android/internal/policy/AttributeCache$Entry;
    if-nez v3, :cond_2

    .line 62
    return-object v0

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/utils/WindowStyleCache;->mEntryFactory:Ljava/util/function/Function;

    iget-object v4, v3, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    invoke-interface {v0, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 66
    .local v4, "style":Ljava/lang/Object;, "TT;"
    iget-object v5, p0, Lcom/android/server/wm/utils/WindowStyleCache;->mCache:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 67
    if-nez v1, :cond_3

    .line 68
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/utils/WindowStyleCache;->mCache:Landroid/util/ArrayMap;

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v6

    invoke-virtual {v0, p1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 71
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 70
    :cond_3
    :goto_0
    invoke-virtual {v1, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    monitor-exit v5

    .line 72
    return-object v4

    .line 71
    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 53
    .end local v1    # "themeMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .end local v2    # "attributeCache":Lcom/android/internal/policy/AttributeCache;
    .end local v3    # "ent":Lcom/android/internal/policy/AttributeCache$Entry;
    .end local v4    # "style":Ljava/lang/Object;, "TT;"
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public invalidatePackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 77
    .local p0, "this":Lcom/android/server/wm/utils/WindowStyleCache;, "Lcom/android/server/wm/utils/WindowStyleCache<TT;>;"
    iget-object v0, p0, Lcom/android/server/wm/utils/WindowStyleCache;->mCache:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/utils/WindowStyleCache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    monitor-exit v0

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
