.class final Lcom/android/server/inputmethod/SecureSettingsWrapper;
.super Ljava/lang/Object;
.source "SecureSettingsWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;,
        Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;,
        Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;,
        Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;
    }
.end annotation


# static fields
.field private static final CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NOOP:Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

.field private static volatile sContentResolver:Landroid/content/ContentResolver;

.field private static final sMutationLock:Ljava/lang/Object;

.field private static volatile sTestMode:Z

.field private static volatile sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/inputmethod/ImmutableSparseArray<",
            "Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$smgetUserIdForClonedSettings(Ljava/lang/String;I)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getUserIdForClonedSettings(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sMutationLock:Ljava/lang/Object;

    .line 45
    invoke-static {}, Lcom/android/server/inputmethod/ImmutableSparseArray;->empty()Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sContentResolver:Landroid/content/ContentResolver;

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sTestMode:Z

    .line 82
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;

    .line 84
    sget-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getCloneToManagedProfileSettings(Ljava/util/Set;)V

    .line 252
    new-instance v0, Lcom/android/server/inputmethod/SecureSettingsWrapper$1;

    invoke-direct {v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper$1;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->NOOP:Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method private static createImpl(Lcom/android/server/pm/UserManagerInternal;I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;
    .locals 2
    .param p0, "userManagerInternal"    # Lcom/android/server/pm/UserManagerInternal;
    .param p1, "userId"    # I

    .line 274
    sget-boolean v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sTestMode:Z

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;-><init>(Lcom/android/server/inputmethod/SecureSettingsWrapper-IA;)V

    return-object v0

    .line 277
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    new-instance v0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;

    sget-object v1, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p1, v1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;-><init>(ILandroid/content/ContentResolver;)V

    goto :goto_0

    .line 279
    :cond_1
    new-instance v0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;

    sget-object v1, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p1, v1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;-><init>(ILandroid/content/ContentResolver;)V

    .line 277
    :goto_0
    return-object v0
.end method

.method static endTestMode()V
    .locals 2

    .line 70
    sget-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sMutationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_0
    invoke-static {}, Lcom/android/server/inputmethod/ImmutableSparseArray;->empty()Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object v1

    sput-object v1, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    .line 72
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sTestMode:Z

    .line 74
    return-void

    .line 72
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static get(I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;
    .locals 3
    .param p0, "userId"    # I

    .line 305
    sget-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/ImmutableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    .line 306
    .local v0, "readerWriter":Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;
    if-eqz v0, :cond_0

    .line 307
    return-object v0

    .line 309
    :cond_0
    sget-boolean v1, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sTestMode:Z

    if-eqz v1, :cond_1

    .line 310
    new-instance v1, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;-><init>(Lcom/android/server/inputmethod/SecureSettingsWrapper-IA;)V

    invoke-static {p0, v1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->putOrGet(ILcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    move-result-object v1

    return-object v1

    .line 312
    :cond_1
    nop

    .line 313
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 314
    .local v1, "userManagerInternal":Lcom/android/server/pm/UserManagerInternal;
    invoke-virtual {v1, p0}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 315
    sget-object v2, Lcom/android/server/inputmethod/SecureSettingsWrapper;->NOOP:Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    return-object v2

    .line 317
    :cond_2
    invoke-static {v1, p0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->createImpl(Lcom/android/server/pm/UserManagerInternal;I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->putOrGet(ILcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    move-result-object v2

    return-object v2
.end method

.method static getBoolean(Ljava/lang/String;ZI)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z
    .param p2, "userId"    # I

    .line 464
    invoke-static {p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->get(I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static getInt(Ljava/lang/String;II)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I
    .param p2, "userId"    # I

    .line 439
    invoke-static {p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->get(I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 413
    invoke-static {p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->get(I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUserIdForClonedSettings(Ljava/lang/String;I)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 90
    sget-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    goto :goto_0

    .line 92
    :cond_0
    move v0, p1

    .line 90
    :goto_0
    return v0
.end method

.method static onUserRemoved(I)V
    .locals 2
    .param p0, "userId"    # I

    .line 383
    sget-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sMutationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_0
    sget-object v1, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v1, p0}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithRemoveOrSelf(I)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object v1

    sput-object v1, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    .line 385
    monitor-exit v0

    .line 386
    return-void

    .line 385
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static onUserStarting(I)V
    .locals 2
    .param p0, "userId"    # I

    .line 337
    sget-boolean v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sTestMode:Z

    if-eqz v0, :cond_0

    .line 338
    new-instance v0, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;-><init>(Lcom/android/server/inputmethod/SecureSettingsWrapper-IA;)V

    invoke-static {p0, v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->putOrGet(ILcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    .line 339
    return-void

    .line 341
    :cond_0
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0, p0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->createImpl(Lcom/android/server/pm/UserManagerInternal;I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->putOrGet(ILcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    .line 342
    return-void
.end method

.method static onUserStopped(I)V
    .locals 4
    .param p0, "userId"    # I

    .line 366
    new-instance v0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;

    sget-object v1, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;-><init>(ILandroid/content/ContentResolver;)V

    .line 367
    .local v0, "lockedUserImpl":Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;
    sget-object v1, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sMutationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 368
    :try_start_0
    sget-object v2, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v2, p0}, Lcom/android/server/inputmethod/ImmutableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    .line 369
    .local v2, "current":Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;

    if-eqz v3, :cond_1

    :cond_0
    goto :goto_0

    .line 372
    :cond_1
    sget-object v3, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v3, p0, v0}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithPutOrSelf(ILjava/lang/Object;)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object v3

    sput-object v3, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    .line 373
    .end local v2    # "current":Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;
    monitor-exit v1

    .line 374
    return-void

    .line 373
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 370
    .restart local v2    # "current":Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;
    :goto_0
    monitor-exit v1

    return-void

    .line 373
    .end local v2    # "current":Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static onUserUnlocking(I)V
    .locals 2
    .param p0, "userId"    # I

    .line 351
    sget-boolean v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sTestMode:Z

    if-eqz v0, :cond_0

    .line 352
    new-instance v0, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$FakeReaderWriterImpl;-><init>(Lcom/android/server/inputmethod/SecureSettingsWrapper-IA;)V

    invoke-static {p0, v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->putOrGet(ILcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    .line 353
    return-void

    .line 355
    :cond_0
    new-instance v0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;

    sget-object v1, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;-><init>(ILandroid/content/ContentResolver;)V

    .line 356
    .local v0, "readerWriter":Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;
    invoke-static {p0, v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->putOrGet(ILcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    .line 357
    return-void
.end method

.method static putBoolean(Ljava/lang/String;ZI)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Z
    .param p2, "userId"    # I

    .line 451
    invoke-static {p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->get(I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;->putInt(Ljava/lang/String;I)V

    .line 452
    return-void
.end method

.method static putInt(Ljava/lang/String;II)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "userId"    # I

    .line 426
    invoke-static {p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->get(I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;->putInt(Ljava/lang/String;I)V

    .line 427
    return-void
.end method

.method private static putOrGet(ILcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;
    .locals 4
    .param p0, "userId"    # I
    .param p1, "readerWriter"    # Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    .line 286
    instance-of v0, p1, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;

    .line 287
    .local v0, "isUnlockedUserImpl":Z
    sget-object v1, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sMutationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 288
    :try_start_0
    sget-object v2, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v2, p0}, Lcom/android/server/inputmethod/ImmutableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    .line 289
    .local v2, "current":Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;
    if-nez v2, :cond_0

    .line 290
    sget-object v3, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v3, p0, p1}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithPutOrSelf(ILjava/lang/Object;)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object v3

    sput-object v3, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    .line 291
    monitor-exit v1

    return-object p1

    .line 299
    .end local v2    # "current":Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 294
    .restart local v2    # "current":Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;
    :cond_0
    instance-of v3, v2, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 295
    sget-object v3, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v3, p0, p1}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithPutOrSelf(ILjava/lang/Object;)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object v3

    sput-object v3, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    .line 296
    monitor-exit v1

    return-object p1

    .line 298
    :cond_1
    monitor-exit v1

    return-object v2

    .line 299
    .end local v2    # "current":Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static putString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 398
    invoke-static {p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->get(I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method static setContentResolver(Landroid/content/ContentResolver;)V
    .locals 0
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .line 327
    sput-object p0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sContentResolver:Landroid/content/ContentResolver;

    .line 328
    return-void
.end method

.method static startTestMode()V
    .locals 1

    .line 61
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sTestMode:Z

    .line 62
    return-void
.end method
