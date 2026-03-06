.class final Lcom/android/server/inputmethod/UserDataRepository;
.super Ljava/lang/Object;
.source "UserDataRepository.java"


# instance fields
.field private final mBindingControllerFactory:Ljava/util/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/IntFunction<",
            "Lcom/android/server/inputmethod/InputMethodBindingController;",
            ">;"
        }
    .end annotation
.end field

.field private final mMutationLock:Ljava/lang/Object;

.field private volatile mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/inputmethod/ImmutableSparseArray<",
            "Lcom/android/server/inputmethod/UserData;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisibilityStateComputerFactory:Ljava/util/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/IntFunction<",
            "Lcom/android/server/inputmethod/ImeVisibilityStateComputer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/function/IntFunction;Ljava/util/function/IntFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction<",
            "Lcom/android/server/inputmethod/InputMethodBindingController;",
            ">;",
            "Ljava/util/function/IntFunction<",
            "Lcom/android/server/inputmethod/ImeVisibilityStateComputer;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p1, "bindingControllerFactory":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<Lcom/android/server/inputmethod/InputMethodBindingController;>;"
    .local p2, "visibilityStateComputerFactory":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<Lcom/android/server/inputmethod/ImeVisibilityStateComputer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/UserDataRepository;->mMutationLock:Ljava/lang/Object;

    .line 30
    nop

    .line 31
    invoke-static {}, Lcom/android/server/inputmethod/ImmutableSparseArray;->empty()Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;

    .line 63
    iput-object p1, p0, Lcom/android/server/inputmethod/UserDataRepository;->mBindingControllerFactory:Ljava/util/function/IntFunction;

    .line 64
    iput-object p2, p0, Lcom/android/server/inputmethod/UserDataRepository;->mVisibilityStateComputerFactory:Ljava/util/function/IntFunction;

    .line 65
    return-void
.end method


# virtual methods
.method forAllUserData(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/inputmethod/UserData;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/inputmethod/UserData;>;"
    iget-object v0, p0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/ImmutableSparseArray;->forEach(Ljava/util/function/Consumer;)V

    .line 59
    return-void
.end method

.method getOrCreate(I)Lcom/android/server/inputmethod/UserData;
    .locals 4
    .param p1, "userId"    # I

    .line 42
    iget-object v0, p0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/ImmutableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/UserData;

    .line 43
    .local v0, "userData":Lcom/android/server/inputmethod/UserData;
    if-eqz v0, :cond_0

    .line 44
    return-object v0

    .line 48
    :cond_0
    new-instance v1, Lcom/android/server/inputmethod/UserData;

    iget-object v2, p0, Lcom/android/server/inputmethod/UserDataRepository;->mBindingControllerFactory:Ljava/util/function/IntFunction;

    invoke-interface {v2, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v3, p0, Lcom/android/server/inputmethod/UserDataRepository;->mVisibilityStateComputerFactory:Ljava/util/function/IntFunction;

    .line 49
    invoke-interface {v3, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/inputmethod/UserData;-><init>(ILcom/android/server/inputmethod/InputMethodBindingController;Lcom/android/server/inputmethod/ImeVisibilityStateComputer;)V

    .line 50
    .local v1, "newUserData":Lcom/android/server/inputmethod/UserData;
    iget-object v2, p0, Lcom/android/server/inputmethod/UserDataRepository;->mMutationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 51
    :try_start_0
    iget-object v3, p0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v3, p1, v1}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithPutOrSelf(ILjava/lang/Object;)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;

    .line 52
    monitor-exit v2

    return-object v1

    .line 53
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method remove(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 69
    iget-object v0, p0, Lcom/android/server/inputmethod/UserDataRepository;->mMutationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithRemoveOrSelf(I)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;

    .line 71
    monitor-exit v0

    .line 72
    return-void

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
