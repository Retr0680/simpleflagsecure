.class Lcom/android/server/power/hint/HintManagerService$HeadroomCache;
.super Ljava/lang/Object;
.source "HintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/hint/HintManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeadroomCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mItemExpDurationMillis:J

.field final mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/hint/HintManagerService$HeadroomCache<",
            "TK;TV;>.HeadroomCacheItem;>;"
        }
    .end annotation
.end field

.field final mKeyItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lcom/android/server/power/hint/HintManagerService$HeadroomCache<",
            "TK;TV;>.HeadroomCacheItem;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(IJ)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "expDurationMillis"    # J

    .line 277
    .local p0, "this":Lcom/android/server/power/hint/HintManagerService$HeadroomCache;, "Lcom/android/server/power/hint/HintManagerService$HeadroomCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mItemList:Ljava/util/List;

    .line 279
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, p1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mKeyItemMap:Ljava/util/Map;

    .line 280
    iput-wide p2, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mItemExpDurationMillis:J

    .line 281
    return-void
.end method


# virtual methods
.method add(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 257
    .local p0, "this":Lcom/android/server/power/hint/HintManagerService$HeadroomCache;, "Lcom/android/server/power/hint/HintManagerService$HeadroomCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mKeyItemMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mKeyItemMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;

    .line 259
    .local v0, "item":Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;, "Lcom/android/server/power/hint/HintManagerService$HeadroomCache<TK;TV;>.HeadroomCacheItem;"
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 261
    .end local v0    # "item":Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;, "Lcom/android/server/power/hint/HintManagerService$HeadroomCache<TK;TV;>.HeadroomCacheItem;"
    :cond_0
    new-instance v0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;-><init>(Lcom/android/server/power/hint/HintManagerService$HeadroomCache;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 262
    .restart local v0    # "item":Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;, "Lcom/android/server/power/hint/HintManagerService$HeadroomCache<TK;TV;>.HeadroomCacheItem;"
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mKeyItemMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    return-void
.end method

.method get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 267
    .local p0, "this":Lcom/android/server/power/hint/HintManagerService$HeadroomCache;, "Lcom/android/server/power/hint/HintManagerService$HeadroomCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    nop

    :goto_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;

    invoke-virtual {v0}, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mKeyItemMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;

    iget-object v1, v1, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;->mKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mKeyItemMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;

    .line 271
    .local v0, "item":Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;, "Lcom/android/server/power/hint/HintManagerService$HeadroomCache<TK;TV;>.HeadroomCacheItem;"
    if-nez v0, :cond_1

    .line 272
    const/4 v1, 0x0

    return-object v1

    .line 274
    :cond_1
    iget-object v1, v0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;->mValue:Ljava/lang/Object;

    return-object v1
.end method
