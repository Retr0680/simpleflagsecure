.class public Lorg/tukaani/xz/BasicArrayCache;
.super Lorg/tukaani/xz/ArrayCache;
.source "BasicArrayCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tukaani/xz/BasicArrayCache$CacheMap;,
        Lorg/tukaani/xz/BasicArrayCache$LazyHolder;,
        Lorg/tukaani/xz/BasicArrayCache$CyclicStack;
    }
.end annotation


# static fields
.field private static final CACHEABLE_SIZE_MIN:I = 0x8000

.field private static final ELEMENTS_PER_STACK:I = 0x200

.field private static final STACKS_MAX:I = 0x20


# instance fields
.field private final byteArrayCache:Lorg/tukaani/xz/BasicArrayCache$CacheMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/tukaani/xz/BasicArrayCache$CacheMap<",
            "[B>;"
        }
    .end annotation
.end field

.field private final intArrayCache:Lorg/tukaani/xz/BasicArrayCache$CacheMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/tukaani/xz/BasicArrayCache$CacheMap<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lorg/tukaani/xz/ArrayCache;-><init>()V

    .line 161
    new-instance v0, Lorg/tukaani/xz/BasicArrayCache$CacheMap;

    invoke-direct {v0}, Lorg/tukaani/xz/BasicArrayCache$CacheMap;-><init>()V

    iput-object v0, p0, Lorg/tukaani/xz/BasicArrayCache;->byteArrayCache:Lorg/tukaani/xz/BasicArrayCache$CacheMap;

    .line 166
    new-instance v0, Lorg/tukaani/xz/BasicArrayCache$CacheMap;

    invoke-direct {v0}, Lorg/tukaani/xz/BasicArrayCache$CacheMap;-><init>()V

    iput-object v0, p0, Lorg/tukaani/xz/BasicArrayCache;->intArrayCache:Lorg/tukaani/xz/BasicArrayCache$CacheMap;

    return-void
.end method

.method private static getArray(Lorg/tukaani/xz/BasicArrayCache$CacheMap;I)Ljava/lang/Object;
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/tukaani/xz/BasicArrayCache$CacheMap<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 175
    .local p0, "cache":Lorg/tukaani/xz/BasicArrayCache$CacheMap;, "Lorg/tukaani/xz/BasicArrayCache$CacheMap<TT;>;"
    const v0, 0x8000

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    .line 176
    return-object v1

    .line 180
    :cond_0
    monitor-enter p0

    .line 181
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;

    .line 182
    .local v0, "stack":Lorg/tukaani/xz/BasicArrayCache$CyclicStack;, "Lorg/tukaani/xz/BasicArrayCache$CyclicStack<Ljava/lang/ref/Reference<TT;>;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    if-nez v0, :cond_1

    .line 185
    return-object v1

    .line 190
    :cond_1
    invoke-virtual {v0}, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 191
    .local v2, "r":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    if-nez v2, :cond_2

    .line 192
    return-object v1

    .line 194
    :cond_2
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 195
    .local v2, "array":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_1

    .line 197
    return-object v2

    .line 182
    .end local v0    # "stack":Lorg/tukaani/xz/BasicArrayCache$CyclicStack;, "Lorg/tukaani/xz/BasicArrayCache$CyclicStack<Ljava/lang/ref/Reference<TT;>;>;"
    .end local v2    # "array":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getInstance()Lorg/tukaani/xz/BasicArrayCache;
    .locals 1

    .line 155
    sget-object v0, Lorg/tukaani/xz/BasicArrayCache$LazyHolder;->INSTANCE:Lorg/tukaani/xz/BasicArrayCache;

    return-object v0
.end method

.method private static putArray(Lorg/tukaani/xz/BasicArrayCache$CacheMap;Ljava/lang/Object;I)V
    .locals 3
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/tukaani/xz/BasicArrayCache$CacheMap<",
            "TT;>;TT;I)V"
        }
    .end annotation

    .line 206
    .local p0, "cache":Lorg/tukaani/xz/BasicArrayCache$CacheMap;, "Lorg/tukaani/xz/BasicArrayCache$CacheMap<TT;>;"
    .local p1, "array":Ljava/lang/Object;, "TT;"
    const v0, 0x8000

    if-ge p2, v0, :cond_0

    .line 207
    return-void

    .line 211
    :cond_0
    monitor-enter p0

    .line 216
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;

    .line 217
    .local v0, "stack":Lorg/tukaani/xz/BasicArrayCache$CyclicStack;, "Lorg/tukaani/xz/BasicArrayCache$CyclicStack<Ljava/lang/ref/Reference<TT;>;>;"
    if-nez v0, :cond_1

    .line 218
    new-instance v1, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;-><init>(Lorg/tukaani/xz/BasicArrayCache-IA;)V

    move-object v0, v1

    .line 219
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 221
    .end local v0    # "stack":Lorg/tukaani/xz/BasicArrayCache$CyclicStack;, "Lorg/tukaani/xz/BasicArrayCache$CyclicStack<Ljava/lang/ref/Reference<TT;>;>;"
    :catchall_0
    move-exception v0

    goto :goto_1

    .restart local v0    # "stack":Lorg/tukaani/xz/BasicArrayCache$CyclicStack;, "Lorg/tukaani/xz/BasicArrayCache$CyclicStack<Ljava/lang/ref/Reference<TT;>;>;"
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->push(Ljava/lang/Object;)V

    .line 224
    return-void

    .line 221
    .end local v0    # "stack":Lorg/tukaani/xz/BasicArrayCache$CyclicStack;, "Lorg/tukaani/xz/BasicArrayCache$CyclicStack<Ljava/lang/ref/Reference<TT;>;>;"
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getByteArray(IZ)[B
    .locals 2
    .param p1, "size"    # I
    .param p2, "fillWithZeros"    # Z

    .line 238
    iget-object v0, p0, Lorg/tukaani/xz/BasicArrayCache;->byteArrayCache:Lorg/tukaani/xz/BasicArrayCache$CacheMap;

    invoke-static {v0, p1}, Lorg/tukaani/xz/BasicArrayCache;->getArray(Lorg/tukaani/xz/BasicArrayCache$CacheMap;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 240
    .local v0, "array":[B
    if-nez v0, :cond_0

    .line 241
    new-array v0, p1, [B

    goto :goto_0

    .line 242
    :cond_0
    if-eqz p2, :cond_1

    .line 243
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 245
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getIntArray(IZ)[I
    .locals 2
    .param p1, "size"    # I
    .param p2, "fillWithZeros"    # Z

    .line 262
    iget-object v0, p0, Lorg/tukaani/xz/BasicArrayCache;->intArrayCache:Lorg/tukaani/xz/BasicArrayCache$CacheMap;

    invoke-static {v0, p1}, Lorg/tukaani/xz/BasicArrayCache;->getArray(Lorg/tukaani/xz/BasicArrayCache$CacheMap;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 264
    .local v0, "array":[I
    if-nez v0, :cond_0

    .line 265
    new-array v0, p1, [I

    goto :goto_0

    .line 266
    :cond_0
    if-eqz p2, :cond_1

    .line 267
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 269
    :cond_1
    :goto_0
    return-object v0
.end method

.method public putArray([B)V
    .locals 2
    .param p1, "array"    # [B

    .line 255
    iget-object v0, p0, Lorg/tukaani/xz/BasicArrayCache;->byteArrayCache:Lorg/tukaani/xz/BasicArrayCache$CacheMap;

    array-length v1, p1

    invoke-static {v0, p1, v1}, Lorg/tukaani/xz/BasicArrayCache;->putArray(Lorg/tukaani/xz/BasicArrayCache$CacheMap;Ljava/lang/Object;I)V

    .line 256
    return-void
.end method

.method public putArray([I)V
    .locals 2
    .param p1, "array"    # [I

    .line 279
    iget-object v0, p0, Lorg/tukaani/xz/BasicArrayCache;->intArrayCache:Lorg/tukaani/xz/BasicArrayCache$CacheMap;

    array-length v1, p1

    invoke-static {v0, p1, v1}, Lorg/tukaani/xz/BasicArrayCache;->putArray(Lorg/tukaani/xz/BasicArrayCache$CacheMap;Ljava/lang/Object;I)V

    .line 280
    return-void
.end method
