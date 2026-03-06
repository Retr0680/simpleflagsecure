.class final Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;
.super Ljava/lang/Object;
.source "AdditionalSubtypeMapRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;,
        Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdditionalSubtypeMapRepository"

.field private static final sMutationLock:Ljava/lang/Object;

.field private static volatile sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/inputmethod/ImmutableSparseArray<",
            "Lcom/android/server/inputmethod/AdditionalSubtypeMap;",
            ">;"
        }
    .end annotation
.end field

.field private static final sWriter:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sMutationLock:Ljava/lang/Object;

    .line 45
    invoke-static {}, Lcom/android/server/inputmethod/ImmutableSparseArray;->empty()Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    .line 190
    new-instance v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    invoke-direct {v0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sWriter:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    return-void
.end method

.method static get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;
    .locals 3
    .param p0, "userId"    # I

    .line 211
    sget-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/ImmutableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    .line 212
    .local v0, "map":Lcom/android/server/inputmethod/AdditionalSubtypeMap;
    if-nez v0, :cond_0

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get(userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") is called before loadInitialDataAndGet(). Returning an empty map"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdditionalSubtypeMapRepository"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sget-object v1, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->EMPTY_MAP:Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    return-object v1

    .line 217
    :cond_0
    return-object v0
.end method

.method static initializeIfNecessary(I)V
    .locals 3
    .param p0, "userId"    # I

    .line 228
    sget-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/ImmutableSparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    return-void

    .line 232
    :cond_0
    invoke-static {p0}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v0

    .line 233
    .local v0, "map":Lcom/android/server/inputmethod/AdditionalSubtypeMap;
    sget-object v1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sMutationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 235
    :try_start_0
    sget-object v2, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v2, p0}, Lcom/android/server/inputmethod/ImmutableSparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 236
    sget-object v2, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v2, p0, v0}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithPutOrSelf(ILjava/lang/Object;)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object v2

    sput-object v2, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v1

    .line 239
    return-void

    .line 238
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static onUserCreated(I)V
    .locals 1
    .param p0, "userId"    # I

    .line 265
    sget-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sWriter:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->onUserCreated(I)V

    .line 266
    return-void
.end method

.method static putAndSave(ILcom/android/server/inputmethod/AdditionalSubtypeMap;Lcom/android/server/inputmethod/InputMethodMap;)V
    .locals 2
    .param p0, "userId"    # I
    .param p1, "map"    # Lcom/android/server/inputmethod/AdditionalSubtypeMap;
    .param p2, "inputMethodMap"    # Lcom/android/server/inputmethod/InputMethodMap;

    .line 252
    sget-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sMutationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_0
    sget-object v1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithPutOrSelf(ILjava/lang/Object;)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object v1

    sput-object v1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    .line 254
    sget-object v1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sWriter:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    invoke-virtual {v1, p0, p1, p2}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->scheduleWriteTask(ILcom/android/server/inputmethod/AdditionalSubtypeMap;Lcom/android/server/inputmethod/InputMethodMap;)V

    .line 255
    monitor-exit v0

    .line 256
    return-void

    .line 255
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static remove(I)V
    .locals 2
    .param p0, "userId"    # I

    .line 270
    sget-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sMutationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_0
    sget-object v1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sWriter:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    invoke-virtual {v1, p0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->onUserRemoved(I)V

    .line 272
    sget-object v1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v1, p0}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithRemoveOrSelf(I)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object v1

    sput-object v1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    .line 273
    monitor-exit v0

    .line 274
    return-void

    .line 273
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static startWriterThread()V
    .locals 1

    .line 260
    sget-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sWriter:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->startThread()V

    .line 261
    return-void
.end method
