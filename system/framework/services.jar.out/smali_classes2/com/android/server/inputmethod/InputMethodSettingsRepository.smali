.class final Lcom/android/server/inputmethod/InputMethodSettingsRepository;
.super Ljava/lang/Object;
.source "InputMethodSettingsRepository.java"


# static fields
.field private static final sMutationLock:Ljava/lang/Object;

.field private static volatile sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/inputmethod/ImmutableSparseArray<",
            "Lcom/android/server/inputmethod/InputMethodSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->sMutationLock:Ljava/lang/Object;

    .line 28
    invoke-static {}, Lcom/android/server/inputmethod/ImmutableSparseArray;->empty()Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static get(I)Lcom/android/server/inputmethod/InputMethodSettings;
    .locals 2
    .param p0, "userId"    # I

    .line 39
    sget-object v0, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/ImmutableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodSettings;

    .line 40
    .local v0, "obj":Lcom/android/server/inputmethod/InputMethodSettings;
    if-eqz v0, :cond_0

    .line 41
    return-object v0

    .line 43
    :cond_0
    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->createEmptyMap(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v1

    return-object v1
.end method

.method static put(ILcom/android/server/inputmethod/InputMethodSettings;)V
    .locals 2
    .param p0, "userId"    # I
    .param p1, "obj"    # Lcom/android/server/inputmethod/InputMethodSettings;

    .line 48
    sget-object v0, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->sMutationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithPutOrSelf(ILjava/lang/Object;)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object v1

    sput-object v1, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    .line 50
    monitor-exit v0

    .line 51
    return-void

    .line 50
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

    .line 55
    sget-object v0, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->sMutationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v1, p0}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithRemoveOrSelf(I)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object v1

    sput-object v1, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    .line 57
    monitor-exit v0

    .line 58
    return-void

    .line 57
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
