.class public Lcom/android/server/audio/AudioServerPermissionProvider;
.super Ljava/lang/Object;
.source "AudioServerPermissionProvider.java"


# static fields
.field static final HDS_PERMS:[B

.field static final MONITORED_PERMS:[Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "AudioServerPermissionProvider"


# instance fields
.field private mDest:Lcom/android/media/permission/INativePermissionController;

.field private mHdsUid:I

.field private mIsUpdateDeferred:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPackageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPermMap:[[I

.field private final mPermissionPredicate:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserIdSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$36jOxDK8aJjqteWDAte26FquJuw()Landroid/util/ArraySet;
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/audio/AudioServerPermissionProvider;->lambda$generatePackageMappings$3()Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$4h-yQtUTiiXjKIh_Fi_QpFqG33A(Lcom/android/server/pm/pkg/PackageState;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/audio/AudioServerPermissionProvider;->lambda$generatePackageMappings$2(Lcom/android/server/pm/pkg/PackageState;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$W9ZZjXFn_I5uhi5LWjFkj6BUBlM(Ljava/util/Map$Entry;)Lcom/android/media/permission/UidPackageState;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/audio/AudioServerPermissionProvider;->lambda$resetNativePackageState$1(Ljava/util/Map$Entry;)Lcom/android/media/permission/UidPackageState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$f_limh5L9xRzsqmZ6YvRNIOccOo(Lcom/android/server/pm/pkg/PackageState;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/audio/AudioServerPermissionProvider;->lambda$generatePackageMappings$4(Lcom/android/server/pm/pkg/PackageState;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lU2U26USFxJXvFk9wdz3nKhH97c(Ljava/lang/Integer;)Ljava/util/Set;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/audio/AudioServerPermissionProvider;->lambda$onModifyPackageState$0(Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 68
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/audio/AudioServerPermissionProvider;->MONITORED_PERMS:[Ljava/lang/String;

    .line 70
    const/16 v0, 0xa

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v4, v3, [B

    fill-array-data v4, :array_0

    sput-object v4, Lcom/android/server/audio/AudioServerPermissionProvider;->HDS_PERMS:[B

    .line 74
    sget-object v4, Lcom/android/server/audio/AudioServerPermissionProvider;->MONITORED_PERMS:[Ljava/lang/String;

    const-string v5, "android.permission.RECORD_AUDIO"

    aput-object v5, v4, v2

    .line 75
    sget-object v2, Lcom/android/server/audio/AudioServerPermissionProvider;->MONITORED_PERMS:[Ljava/lang/String;

    const/4 v4, 0x1

    const-string v5, "android.permission.MODIFY_AUDIO_ROUTING"

    aput-object v5, v2, v4

    .line 76
    sget-object v2, Lcom/android/server/audio/AudioServerPermissionProvider;->MONITORED_PERMS:[Ljava/lang/String;

    const/4 v4, 0x2

    const-string v5, "android.permission.MODIFY_AUDIO_SETTINGS"

    aput-object v5, v2, v4

    .line 77
    sget-object v2, Lcom/android/server/audio/AudioServerPermissionProvider;->MONITORED_PERMS:[Ljava/lang/String;

    const-string v4, "android.permission.MODIFY_PHONE_STATE"

    aput-object v4, v2, v3

    .line 78
    sget-object v2, Lcom/android/server/audio/AudioServerPermissionProvider;->MONITORED_PERMS:[Ljava/lang/String;

    const/4 v3, 0x4

    const-string v4, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    aput-object v4, v2, v3

    .line 79
    sget-object v2, Lcom/android/server/audio/AudioServerPermissionProvider;->MONITORED_PERMS:[Ljava/lang/String;

    const/4 v3, 0x5

    const-string v4, "android.permission.WRITE_SECURE_SETTINGS"

    aput-object v4, v2, v3

    .line 80
    sget-object v2, Lcom/android/server/audio/AudioServerPermissionProvider;->MONITORED_PERMS:[Ljava/lang/String;

    const/4 v3, 0x6

    const-string v4, "android.permission.CALL_AUDIO_INTERCEPTION"

    aput-object v4, v2, v3

    .line 81
    sget-object v2, Lcom/android/server/audio/AudioServerPermissionProvider;->MONITORED_PERMS:[Ljava/lang/String;

    const/4 v3, 0x7

    const-string v4, "android.permission.ACCESS_ULTRASOUND"

    aput-object v4, v2, v3

    .line 82
    sget-object v2, Lcom/android/server/audio/AudioServerPermissionProvider;->MONITORED_PERMS:[Ljava/lang/String;

    const-string v3, "android.permission.CAPTURE_AUDIO_OUTPUT"

    aput-object v3, v2, v1

    .line 83
    sget-object v1, Lcom/android/server/audio/AudioServerPermissionProvider;->MONITORED_PERMS:[Ljava/lang/String;

    const/16 v2, 0x9

    const-string v3, "android.permission.CAPTURE_MEDIA_OUTPUT"

    aput-object v3, v1, v2

    .line 84
    sget-object v1, Lcom/android/server/audio/AudioServerPermissionProvider;->MONITORED_PERMS:[Ljava/lang/String;

    const-string v2, "android.permission.CAPTURE_AUDIO_HOTWORD"

    aput-object v2, v1, v0

    .line 85
    sget-object v0, Lcom/android/server/audio/AudioServerPermissionProvider;->MONITORED_PERMS:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "android.permission.CAPTURE_TUNER_AUDIO_INPUT"

    aput-object v2, v0, v1

    .line 86
    sget-object v0, Lcom/android/server/audio/AudioServerPermissionProvider;->MONITORED_PERMS:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "android.permission.CAPTURE_VOICE_COMMUNICATION_OUTPUT"

    aput-object v2, v0, v1

    .line 88
    sget-object v0, Lcom/android/server/audio/AudioServerPermissionProvider;->MONITORED_PERMS:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    aput-object v2, v0, v1

    .line 89
    sget-object v0, Lcom/android/server/audio/AudioServerPermissionProvider;->MONITORED_PERMS:[Ljava/lang/String;

    const/16 v1, 0xe

    const-string v2, "android.permission.BYPASS_CONCURRENT_RECORD_AUDIO_RESTRICTION"

    aput-object v2, v0, v1

    .line 91
    sget-object v0, Lcom/android/server/audio/AudioServerPermissionProvider;->MONITORED_PERMS:[Ljava/lang/String;

    const/16 v1, 0xf

    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    aput-object v2, v0, v1

    .line 93
    return-void

    :array_0
    .array-data 1
        0xat
        0x8t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/util/function/BiPredicate;Ljava/util/function/Supplier;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/pkg/PackageState;",
            ">;",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Supplier<",
            "[I>;)V"
        }
    .end annotation

    .line 121
    .local p1, "appInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/pkg/PackageState;>;"
    .local p2, "permissionPredicate":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p3, "userIdSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<[I>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mLock:Ljava/lang/Object;

    .line 106
    const/16 v0, 0x10

    new-array v1, v0, [[I

    iput-object v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    .line 109
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z

    .line 112
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    .line 122
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 123
    sget-object v2, Lcom/android/server/audio/AudioServerPermissionProvider;->MONITORED_PERMS:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 125
    .end local v1    # "i":I
    iput-object p3, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mUserIdSupplier:Ljava/util/function/Supplier;

    .line 126
    iput-object p2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermissionPredicate:Ljava/util/function/BiPredicate;

    .line 128
    invoke-static {p1}, Lcom/android/server/audio/AudioServerPermissionProvider;->generatePackageMappings(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    .line 129
    return-void
.end method

.method private static generatePackageMappings(Ljava/util/Collection;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/pkg/PackageState;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 352
    .local p0, "appInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/pkg/PackageState;>;"
    new-instance v0, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda1;-><init>()V

    .line 355
    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    .line 353
    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v0

    .line 357
    .local v0, "reducer":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<Lcom/android/server/pm/pkg/PackageState;Ljava/lang/Object;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda2;-><init>()V

    new-instance v3, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda3;-><init>()V

    .line 359
    invoke-static {v2, v3, v0}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v2

    .line 358
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 357
    return-object v1
.end method

.method private getUidsHoldingPerm(I)[I
    .locals 11
    .param p1, "perm"    # I

    .line 329
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 330
    .local v0, "acc":Landroid/util/IntArray;
    iget-object v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mUserIdSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    .line 331
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 332
    .local v6, "appId":I
    invoke-static {v4, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    .line 333
    .local v7, "uid":I
    iget-object v8, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermissionPredicate:Ljava/util/function/BiPredicate;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Lcom/android/server/audio/AudioServerPermissionProvider;->MONITORED_PERMS:[Ljava/lang/String;

    aget-object v10, v10, p1

    invoke-interface {v8, v9, v10}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 334
    invoke-virtual {v0, v7}, Landroid/util/IntArray;->add(I)V

    .line 336
    .end local v6    # "appId":I
    .end local v7    # "uid":I
    :cond_0
    goto :goto_1

    .line 330
    .end local v4    # "userId":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 338
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioServerPermissionProvider;->isSpecialHdsPermission(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 339
    iget v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 341
    :cond_3
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    .line 342
    .local v1, "unwrapped":[I
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 343
    return-object v1
.end method

.method private isSpecialHdsPermission(I)Z
    .locals 5
    .param p1, "perm"    # I

    .line 298
    sget-object v0, Lcom/android/server/audio/AudioServerPermissionProvider;->HDS_PERMS:[B

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-byte v4, v0, v3

    .line 299
    .local v4, "hdsPerm":B
    if-ne p1, v4, :cond_0

    const/4 v0, 0x1

    return v0

    .line 298
    .end local v4    # "hdsPerm":B
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 301
    :cond_1
    return v2
.end method

.method private static synthetic lambda$generatePackageMappings$2(Lcom/android/server/pm/pkg/PackageState;)Ljava/lang/String;
    .locals 1
    .param p0, "p"    # Lcom/android/server/pm/pkg/PackageState;

    .line 354
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$generatePackageMappings$3()Landroid/util/ArraySet;
    .locals 2

    .line 355
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    return-object v0
.end method

.method private static synthetic lambda$generatePackageMappings$4(Lcom/android/server/pm/pkg/PackageState;)Ljava/lang/Integer;
    .locals 1
    .param p0, "p"    # Lcom/android/server/pm/pkg/PackageState;

    .line 360
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$onModifyPackageState$0(Ljava/lang/Integer;)Ljava/util/Set;
    .locals 2
    .param p0, "unused"    # Ljava/lang/Integer;

    .line 170
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    return-object v0
.end method

.method private static synthetic lambda$resetNativePackageState$1(Ljava/util/Map$Entry;)Lcom/android/media/permission/UidPackageState;
    .locals 2
    .param p0, "entry"    # Ljava/util/Map$Entry;

    .line 312
    new-instance v0, Lcom/android/media/permission/UidPackageState;

    invoke-direct {v0}, Lcom/android/media/permission/UidPackageState;-><init>()V

    .line 313
    .local v0, "state":Lcom/android/media/permission/UidPackageState;
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/android/media/permission/UidPackageState;->uid:I

    .line 314
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/media/permission/UidPackageState;->packageNames:Ljava/util/List;

    .line 315
    return-object v0
.end method

.method private resetNativePackageState()V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    if-nez v0, :cond_0

    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    .line 309
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda4;-><init>()V

    .line 310
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 317
    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    .line 319
    .local v0, "states":Ljava/util/List;, "Ljava/util/List<Lcom/android/media/permission/UidPackageState;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    invoke-interface {v1, v0}, Lcom/android/media/permission/INativePermissionController;->populatePackagesForUids(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    goto :goto_0

    .line 320
    :catch_0
    move-exception v1

    .line 322
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    .line 324
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public clearIsolatedServiceUid(I)V
    .locals 13
    .param p1, "uid"    # I

    .line 257
    iget-object v0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 259
    .local v1, "packageNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    if-eq v2, p1, :cond_0

    .line 260
    const-string v2, "AudioServerPermissionProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected isolated service uid cleared: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    monitor-exit v0

    return-void

    .line 294
    .end local v1    # "packageNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    goto/16 :goto_5

    .line 265
    .restart local v1    # "packageNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 266
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 267
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/audio/AudioServerPermissionProvider;->onModifyPackageState(ILjava/lang/String;Z)V

    .line 268
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 269
    :cond_1
    const-string v3, "AudioServerPermissionProvider"

    const-string v4, "clearIsolatedService uid not found"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    if-nez v3, :cond_2

    .line 273
    iput-boolean v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z

    .line 274
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 277
    :cond_2
    :try_start_1
    sget-object v3, Lcom/android/server/audio/AudioServerPermissionProvider;->HDS_PERMS:[B

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_4

    aget-byte v7, v3, v6

    .line 278
    .local v7, "perm":B
    iget-object v8, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aget-object v8, v8, v7

    array-length v8, v8

    sub-int/2addr v8, v2

    new-array v8, v8, [I

    .line 279
    .local v8, "newPerms":[I
    iget-object v9, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aget-object v9, v9, v7

    invoke-static {v9, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v9

    .line 280
    .local v9, "ind":I
    if-gez v9, :cond_3

    goto :goto_2

    .line 281
    :cond_3
    iget-object v10, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aget-object v10, v10, v7

    invoke-static {v10, v5, v8, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    iget-object v10, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aget-object v10, v10, v7

    add-int/lit8 v11, v9, 0x1

    iget-object v12, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aget-object v12, v12, v7

    array-length v12, v12

    sub-int/2addr v12, v9

    sub-int/2addr v12, v2

    invoke-static {v10, v11, v8, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    iget-object v10, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aput-object v8, v10, v7

    .line 285
    iget-object v10, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    invoke-interface {v10, v7, v8}, Lcom/android/media/permission/INativePermissionController;->populatePermissionState(B[I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    .end local v7    # "perm":B
    .end local v8    # "newPerms":[I
    .end local v9    # "ind":I
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 287
    :catch_0
    move-exception v3

    goto :goto_3

    .line 292
    :cond_4
    goto :goto_4

    .line 287
    :goto_3
    nop

    .line 289
    .local v3, "e":Landroid/os/RemoteException;
    const/4 v4, 0x0

    :try_start_2
    iput-object v4, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    .line 291
    iput-boolean v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z

    .line 293
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_4
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    .line 294
    .end local v1    # "packageNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-exit v0

    .line 295
    return-void

    .line 294
    :goto_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onModifyPackageState(ILjava/lang/String;Z)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isRemove"    # Z

    .line 165
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 166
    iget-object v0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    if-nez p3, :cond_0

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 171
    .local v1, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    .end local v1    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 174
    .restart local v1    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 175
    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 176
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    if-nez v2, :cond_2

    .line 181
    monitor-exit v0

    return-void

    .line 183
    :cond_2
    new-instance v2, Lcom/android/media/permission/UidPackageState;

    invoke-direct {v2}, Lcom/android/media/permission/UidPackageState;-><init>()V

    .line 184
    .local v2, "state":Lcom/android/media/permission/UidPackageState;
    iput p1, v2, Lcom/android/media/permission/UidPackageState;->uid:I

    .line 185
    nop

    nop

    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    :goto_1
    iput-object v3, v2, Lcom/android/media/permission/UidPackageState;->packageNames:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    invoke-interface {v3, v2}, Lcom/android/media/permission/INativePermissionController;->updatePackagesForUid(Lcom/android/media/permission/UidPackageState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    goto :goto_2

    .line 188
    :catch_0
    move-exception v3

    nop

    .line 190
    .local v3, "e":Landroid/os/RemoteException;
    const/4 v4, 0x0

    :try_start_2
    iput-object v4, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    .line 192
    .end local v1    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "state":Lcom/android/media/permission/UidPackageState;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    monitor-exit v0

    .line 193
    return-void

    .line 192
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onPermissionStateChanged()V
    .locals 7

    .line 197
    iget-object v0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 199
    iput-boolean v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z

    .line 200
    monitor-exit v0

    return-void

    .line 219
    :catchall_0
    move-exception v1

    goto :goto_6

    .line 202
    :cond_0
    const-string v1, "audioserver_permission_update"

    const-wide/32 v3, 0x80000

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    const/4 v1, 0x0

    .local v1, "i":B
    :goto_0
    const/16 v5, 0x10

    if-ge v1, v5, :cond_2

    .line 205
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioServerPermissionProvider;->getUidsHoldingPerm(I)[I

    move-result-object v5

    .line 206
    .local v5, "newPerms":[I
    iget-object v6, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aget-object v6, v6, v1

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 207
    iget-object v6, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aput-object v5, v6, v1

    .line 208
    iget-object v6, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    invoke-interface {v6, v1, v5}, Lcom/android/media/permission/INativePermissionController;->populatePermissionState(B[I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 217
    .end local v1    # "i":B
    .end local v5    # "newPerms":[I
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 211
    :catch_0
    move-exception v1

    goto :goto_2

    .line 204
    .restart local v1    # "i":B
    :cond_1
    :goto_1
    add-int/lit8 v5, v1, 0x1

    int-to-byte v1, v5

    goto :goto_0

    .line 211
    .end local v1    # "i":B
    :goto_2
    nop

    .line 213
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    :try_start_2
    iput-object v5, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    .line 215
    iput-boolean v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 217
    .end local v1    # "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 218
    :goto_3
    goto :goto_5

    .line 217
    :goto_4
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 218
    nop

    .end local p0    # "this":Lcom/android/server/audio/AudioServerPermissionProvider;
    throw v1

    .line 204
    .local v1, "i":B
    .restart local p0    # "this":Lcom/android/server/audio/AudioServerPermissionProvider;
    :cond_2
    nop

    .line 217
    .end local v1    # "i":B
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_3

    .line 219
    :goto_5
    monitor-exit v0

    .line 220
    return-void

    .line 219
    :goto_6
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public onServiceStart(Lcom/android/media/permission/INativePermissionController;)V
    .locals 4
    .param p1, "pc"    # Lcom/android/media/permission/INativePermissionController;

    .line 137
    if-nez p1, :cond_0

    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    iput-object p1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    .line 140
    invoke-direct {p0}, Lcom/android/server/audio/AudioServerPermissionProvider;->resetNativePackageState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    const/4 v1, 0x0

    .local v1, "i":B
    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    .line 143
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z

    if-eqz v2, :cond_1

    .line 144
    iget-object v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioServerPermissionProvider;->getUidsHoldingPerm(I)[I

    move-result-object v3

    aput-object v3, v2, v1

    goto :goto_1

    .line 153
    .end local v1    # "i":B
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 149
    :catch_0
    move-exception v1

    goto :goto_2

    .line 146
    .restart local v1    # "i":B
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    iget-object v3, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aget-object v3, v3, v1

    invoke-interface {v2, v1, v3}, Lcom/android/media/permission/INativePermissionController;->populatePermissionState(B[I)V

    .line 142
    add-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    goto :goto_0

    :cond_2
    nop

    .line 148
    .end local v1    # "i":B
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    goto :goto_3

    .line 149
    :goto_2
    nop

    .line 151
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    .line 153
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3
    monitor-exit v0

    .line 154
    return-void

    .line 153
    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setIsolatedServiceUid(II)V
    .locals 11
    .param p1, "uid"    # I
    .param p2, "owningUid"    # I

    .line 223
    iget-object v0, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    .line 253
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 226
    .local v1, "packageNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 227
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 228
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/audio/AudioServerPermissionProvider;->onModifyPackageState(ILjava/lang/String;Z)V

    .line 229
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 230
    :cond_1
    const-string v3, "AudioServerPermissionProvider"

    const-string/jumbo v4, "setIsolatedService owning uid not found"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_0
    iput p1, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    .line 234
    iget-object v3, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 235
    iput-boolean v4, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z

    .line 236
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 239
    :cond_2
    :try_start_1
    sget-object v3, Lcom/android/server/audio/AudioServerPermissionProvider;->HDS_PERMS:[B

    array-length v5, v3

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_3

    aget-byte v7, v3, v6

    .line 240
    .local v7, "perm":B
    iget-object v8, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aget-object v8, v8, v7

    array-length v8, v8

    add-int/2addr v8, v4

    new-array v8, v8, [I

    .line 241
    .local v8, "newPerms":[I
    iget-object v9, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aget-object v9, v9, v7

    iget-object v10, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aget-object v10, v10, v7

    array-length v10, v10

    invoke-static {v9, v2, v8, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    array-length v9, v8

    sub-int/2addr v9, v4

    iget v10, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mHdsUid:I

    aput v10, v8, v9

    .line 243
    invoke-static {v8}, Ljava/util/Arrays;->sort([I)V

    .line 244
    iget-object v9, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aput-object v8, v9, v7

    .line 245
    iget-object v9, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    invoke-interface {v9, v7, v8}, Lcom/android/media/permission/INativePermissionController;->populatePermissionState(B[I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    .end local v7    # "perm":B
    .end local v8    # "newPerms":[I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 247
    :catch_0
    move-exception v2

    goto :goto_2

    .line 252
    :cond_3
    goto :goto_3

    .line 247
    :goto_2
    nop

    .line 249
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    .line 251
    iput-boolean v4, p0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z

    .line 253
    .end local v1    # "packageNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3
    monitor-exit v0

    .line 254
    return-void

    .line 253
    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
