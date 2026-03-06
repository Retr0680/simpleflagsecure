.class public final Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;
.super Ljava/lang/Object;
.source "AppIdPermissionUpgrade.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppIdPermissionUpgrade.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppIdPermissionUpgrade.kt\ncom/android/server/permission/access/permission/AppIdPermissionUpgrade\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 IndexedSetExtensions.kt\ncom/android/server/permission/access/immutable/IndexedSetExtensionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Permission.kt\ncom/android/server/permission/access/permission/Permission\n*L\n1#1,512:1\n1863#2,2:513\n35#3,11:515\n47#3:527\n44#3,4:528\n35#3,13:532\n1#4:526\n87#5:545\n63#5:546\n*S KotlinDebug\n*F\n+ 1 AppIdPermissionUpgrade.kt\ncom/android/server/permission/access/permission/AppIdPermissionUpgrade\n*L\n98#1:513,2\n180#1:515,11\n180#1:527\n189#1:528,4\n252#1:532,13\n392#1:545\n392#1:546\n*E\n"
.end annotation


# static fields
.field private static final AURAL_VISUAL_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/permission/access/immutable/IndexedSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade$Companion;

.field private static final LEGACY_RESTRICTED_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/permission/access/immutable/IndexedSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final STORAGE_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/permission/access/immutable/IndexedSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VISUAL_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/permission/access/immutable/IndexedSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->Companion:Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade$Companion;

    .line 455
    const-class v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->LOG_TAG:Ljava/lang/String;

    .line 476
    nop

    .line 477
    nop

    .line 478
    nop

    .line 477
    nop

    .line 479
    nop

    .line 477
    nop

    .line 480
    nop

    .line 477
    nop

    .line 481
    nop

    .line 477
    nop

    .line 482
    nop

    .line 477
    nop

    .line 483
    nop

    .line 477
    nop

    .line 484
    nop

    .line 477
    nop

    .line 485
    nop

    .line 477
    nop

    .line 486
    nop

    .line 477
    nop

    .line 487
    const-string v11, "android.permission.PROCESS_OUTGOING_CALLS"

    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v4, "android.permission.SEND_SMS"

    const-string v5, "android.permission.RECEIVE_SMS"

    const-string v6, "android.permission.RECEIVE_WAP_PUSH"

    const-string v7, "android.permission.RECEIVE_MMS"

    const-string v8, "android.permission.READ_CELL_BROADCASTS"

    const-string v9, "android.permission.READ_CALL_LOG"

    const-string v10, "android.permission.WRITE_CALL_LOG"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    .line 477
    nop

    .line 476
    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/IndexedSet;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->LEGACY_RESTRICTED_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    .line 491
    nop

    .line 492
    nop

    .line 493
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 492
    nop

    .line 491
    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/IndexedSet;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->STORAGE_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    .line 496
    nop

    .line 497
    nop

    .line 498
    nop

    .line 497
    nop

    .line 499
    nop

    .line 497
    nop

    .line 500
    nop

    .line 497
    nop

    .line 501
    const-string v0, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    const-string v2, "android.permission.READ_MEDIA_IMAGES"

    const-string v3, "android.permission.READ_MEDIA_VIDEO"

    const-string v4, "android.permission.ACCESS_MEDIA_LOCATION"

    filled-new-array {v1, v2, v3, v4, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 497
    nop

    .line 496
    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/IndexedSet;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->AURAL_VISUAL_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    .line 505
    nop

    .line 506
    nop

    .line 507
    nop

    .line 506
    nop

    .line 508
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 506
    nop

    .line 505
    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/IndexedSet;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->VISUAL_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;)V
    .locals 0
    .param p1, "policy"    # Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    return-void
.end method

.method private final allowlistRestrictedPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V
    .locals 13
    .param p1, "$this$allowlistRestrictedPermissions"    # Lcom/android/server/permission/access/MutateStateScope;
    .param p2, "packageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p3, "userId"    # I

    .line 98
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 513
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    .local v8, "permissionName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 99
    .local v11, "$i$a$-forEach-AppIdPermissionUpgrade$allowlistRestrictedPermissions$1":I
    sget-object v4, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->LEGACY_RESTRICTED_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    invoke-virtual {v4, v8}, Lcom/android/server/permission/access/immutable/IndexedSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    iget-object v4, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .local v4, "$this$allowlistRestrictedPermissions_u24lambda_u241_u24lambda_u240":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v12, 0x0

    .line 101
    .local v12, "$i$a$-with-AppIdPermissionUpgrade$allowlistRestrictedPermissions$1$1":I
    nop

    .line 102
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v6

    .line 103
    nop

    .line 104
    nop

    .line 105
    nop

    .line 106
    nop

    .line 101
    const/high16 v9, 0x20000

    const/high16 v10, 0x20000

    move-object v5, p1

    move/from16 v7, p3

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    .line 108
    nop

    .line 100
    .end local v4    # "$this$allowlistRestrictedPermissions_u24lambda_u241_u24lambda_u240":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v12    # "$i$a$-with-AppIdPermissionUpgrade$allowlistRestrictedPermissions$1$1":I
    nop

    .line 110
    :cond_0
    nop

    .line 513
    .end local v8    # "permissionName":Ljava/lang/String;
    .end local v11    # "$i$a$-forEach-AppIdPermissionUpgrade$allowlistRestrictedPermissions$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 514
    :cond_1
    nop

    .line 111
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method private final grantRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)V
    .locals 8
    .param p1, "$this$grantRuntimePermission"    # Lcom/android/server/permission/access/MutateStateScope;
    .param p2, "packageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p3, "userId"    # I
    .param p4, "permissionName"    # Ljava/lang/String;

    .line 387
    sget-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->LOG_TAG:Ljava/lang/String;

    .line 388
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Granting runtime permission for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", permission: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/SystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/server/permission/access/permission/Permission;

    .line 392
    .local v0, "permission":Lcom/android/server/permission/access/permission/Permission;
    invoke-interface {p2, p3}, Lcom/android/server/pm/pkg/PackageState;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .local v1, "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v2, 0x0

    .line 87
    .local v2, "$i$f$isInstant":I
    move-object v3, v1

    .local v3, "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v4, 0x0

    .line 63
    .local v4, "$i$f$getProtectionFlags":I
    invoke-virtual {v3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v3

    .line 87
    .end local v3    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v4    # "$i$f$getProtectionFlags":I
    const/16 v4, 0x1000

    invoke-static {v3, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    .line 392
    .end local v1    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v2    # "$i$f$isInstant":I
    if-nez v1, :cond_0

    .line 393
    return-void

    .line 396
    :cond_0
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    .line 397
    .local v4, "appId":I
    const/4 v1, 0x0

    .local v1, "flags":I
    iget-object v2, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 526
    .local v2, "$this$grantRuntimePermission_u24lambda_u2414":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v3, 0x0

    .line 397
    .local v3, "$i$a$-with-AppIdPermissionUpgrade$grantRuntimePermission$flags$1":I
    invoke-virtual {v2, p1, v4, p3, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v1

    .line 398
    .end local v2    # "$this$grantRuntimePermission_u24lambda_u2414":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v3    # "$i$a$-with-AppIdPermissionUpgrade$grantRuntimePermission$flags$1":I
    const v2, 0x2001e0

    invoke-static {v1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 400
    sget-object v2, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->LOG_TAG:Ljava/lang/String;

    .line 401
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not allowed to grant "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 399
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-void

    .line 406
    :cond_1
    or-int/lit8 v1, v1, 0x10

    .line 407
    nop

    .line 408
    nop

    .line 409
    nop

    .line 408
    const v2, 0x701400

    invoke-static {v1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v7

    .line 407
    nop

    .line 414
    .end local v1    # "flags":I
    .local v7, "flags":I
    iget-object v2, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 526
    .local v2, "$this$grantRuntimePermission_u24lambda_u2415":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v1, 0x0

    .line 414
    .local v1, "$i$a$-with-AppIdPermissionUpgrade$grantRuntimePermission$1":I
    move-object v3, p1

    move v5, p3

    move-object v6, p4

    .end local p1    # "$this$grantRuntimePermission":Lcom/android/server/permission/access/MutateStateScope;
    .end local p3    # "userId":I
    .end local p4    # "permissionName":Ljava/lang/String;
    .local v3, "$this$grantRuntimePermission":Lcom/android/server/permission/access/MutateStateScope;
    .local v5, "userId":I
    .local v6, "permissionName":Ljava/lang/String;
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    .line 415
    .end local v1    # "$i$a$-with-AppIdPermissionUpgrade$grantRuntimePermission$1":I
    .end local v2    # "$this$grantRuntimePermission_u24lambda_u2415":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    return-void
.end method

.method private final isRuntimePermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z
    .locals 3
    .param p1, "$this$isRuntimePermissionGranted"    # Lcom/android/server/permission/access/GetStateScope;
    .param p2, "packageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p3, "userId"    # I
    .param p4, "permissionName"    # Ljava/lang/String;

    .line 377
    iget-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 526
    .local v0, "$this$isRuntimePermissionGranted_u24lambda_u2413":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v1, 0x0

    .line 377
    .local v1, "$i$a$-with-AppIdPermissionUpgrade$isRuntimePermissionGranted$permissionFlags$1":I
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    invoke-virtual {v0, p1, v2, p3, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v0

    .line 376
    .end local v0    # "$this$isRuntimePermissionGranted_u24lambda_u2413":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v1    # "$i$a$-with-AppIdPermissionUpgrade$isRuntimePermissionGranted$permissionFlags$1":I
    nop

    .line 378
    .local v0, "permissionFlags":I
    sget-object v1, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v1, v0}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v1

    return v1
.end method

.method private final revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z
    .locals 10
    .param p1, "$this$revokeRuntimePermission"    # Lcom/android/server/permission/access/MutateStateScope;
    .param p2, "packageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p3, "userId"    # I
    .param p4, "permissionName"    # Ljava/lang/String;

    .line 428
    sget-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->LOG_TAG:Ljava/lang/String;

    .line 429
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Revoking runtime permission for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", permission: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 427
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v6

    .line 434
    .local v6, "appId":I
    const/4 v0, 0x0

    .local v0, "flags":I
    iget-object v2, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 526
    .local v2, "$this$revokeRuntimePermission_u24lambda_u2416":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v4, 0x0

    .line 434
    .local v4, "$i$a$-with-AppIdPermissionUpgrade$revokeRuntimePermission$flags$1":I
    invoke-virtual {v2, p1, v6, p3, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v0

    .line 435
    .end local v2    # "$this$revokeRuntimePermission_u24lambda_u2416":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v4    # "$i$a$-with-AppIdPermissionUpgrade$revokeRuntimePermission$flags$1":I
    const/16 v2, 0x180

    invoke-static {v0, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 437
    sget-object v2, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->LOG_TAG:Ljava/lang/String;

    .line 439
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot revoke fixed runtime permission from package: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 436
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/4 v1, 0x0

    return v1

    .line 444
    :cond_0
    nop

    .line 445
    nop

    .line 446
    nop

    .line 445
    const v1, 0xf00278

    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v9

    .line 444
    nop

    .line 450
    .end local v0    # "flags":I
    .local v9, "flags":I
    iget-object v4, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 526
    .local v4, "$this$revokeRuntimePermission_u24lambda_u2417":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v0, 0x0

    .line 450
    .local v0, "$i$a$-with-AppIdPermissionUpgrade$revokeRuntimePermission$1":I
    move-object v5, p1

    move v7, p3

    move-object v8, p4

    .end local p1    # "$this$revokeRuntimePermission":Lcom/android/server/permission/access/MutateStateScope;
    .end local p3    # "userId":I
    .end local p4    # "permissionName":Ljava/lang/String;
    .local v5, "$this$revokeRuntimePermission":Lcom/android/server/permission/access/MutateStateScope;
    .local v7, "userId":I
    .local v8, "permissionName":Ljava/lang/String;
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    .line 451
    .end local v0    # "$i$a$-with-AppIdPermissionUpgrade$revokeRuntimePermission$1":I
    .end local v4    # "$this$revokeRuntimePermission_u24lambda_u2417":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 p1, 0x1

    return p1
.end method

.method private final upgradeAccessMediaLocationPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V
    .locals 5
    .param p1, "$this$upgradeAccessMediaLocationPermission"    # Lcom/android/server/permission/access/MutateStateScope;
    .param p2, "packageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p3, "userId"    # I

    .line 147
    nop

    .line 149
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    .line 148
    const-string v1, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .local v0, "$this$upgradeAccessMediaLocationPermission_u24lambda_u244":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v2, 0x0

    .line 153
    .local v2, "$i$a$-with-AppIdPermissionUpgrade$upgradeAccessMediaLocationPermission$flags$1":I
    nop

    .line 154
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    .line 155
    nop

    .line 156
    nop

    .line 153
    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, p1, v3, p3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v3

    .line 157
    nop

    .line 152
    .end local v0    # "$this$upgradeAccessMediaLocationPermission_u24lambda_u244":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v2    # "$i$a$-with-AppIdPermissionUpgrade$upgradeAccessMediaLocationPermission$flags$1":I
    nop

    .line 151
    nop

    .line 159
    .local v3, "flags":I
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v0, v3}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    nop

    .line 161
    nop

    .line 162
    nop

    .line 163
    nop

    .line 160
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->grantRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)V

    .line 167
    .end local v3    # "flags":I
    :cond_0
    return-void
.end method

.method private final upgradeAuralVisualMediaPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V
    .locals 21
    .param p1, "$this$upgradeAuralVisualMediaPermissions"    # Lcom/android/server/permission/access/MutateStateScope;
    .param p2, "packageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p3, "userId"    # I

    .line 174
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 175
    .local v3, "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v4

    const/16 v5, 0x21

    if-ge v4, v5, :cond_0

    .line 176
    return-void

    .line 178
    :cond_0
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v4

    .line 180
    .local v4, "requestedPermissionNames":Ljava/util/Set;
    sget-object v5, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->STORAGE_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    .local v5, "$this$anyIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedSet;
    const/4 v6, 0x0

    .line 35
    .local v6, "$i$f$anyIndexed":I
    move-object v7, v5

    .local v7, "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedSet;
    const/4 v8, 0x0

    .line 44
    .local v8, "$i$f$forEachIndexed":I
    const/4 v9, 0x0

    .local v9, "index$iv$iv":I
    invoke-virtual {v7}, Lcom/android/server/permission/access/immutable/IndexedSet;->getSize()I

    move-result v10

    :goto_0
    if-ge v9, v10, :cond_4

    .line 45
    invoke-virtual {v7, v9}, Lcom/android/server/permission/access/immutable/IndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    .local v12, "element$iv":Ljava/lang/Object;
    move v13, v9

    .local v13, "index$iv":I
    const/4 v14, 0x0

    .line 36
    .local v14, "$i$a$-forEachIndexed-IndexedSetExtensionsKt$anyIndexed$1$iv":I
    move-object v15, v12

    check-cast v15, Ljava/lang/String;

    .local v15, "permissionName":Ljava/lang/String;
    const/16 v16, 0x0

    .line 181
    .local v16, "$i$a$-anyIndexed-AppIdPermissionUpgrade$upgradeAuralVisualMediaPermissions$isStorageUserGranted$1":I
    invoke-interface {v4, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x1

    if-nez v17, :cond_1

    .line 182
    move-object/from16 v20, v3

    const/4 v11, 0x0

    goto :goto_1

    .line 185
    :cond_1
    iget-object v11, v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 526
    .local v11, "$this$upgradeAuralVisualMediaPermissions_u24lambda_u246_u24lambda_u245":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/16 v19, 0x0

    .line 185
    .local v19, "$i$a$-with-AppIdPermissionUpgrade$upgradeAuralVisualMediaPermissions$isStorageUserGranted$1$flags$1":I
    move-object/from16 v20, v3

    .end local v3    # "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v20, "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    invoke-virtual {v11, v1, v3, v2, v15}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v3

    .line 184
    .end local v11    # "$this$upgradeAuralVisualMediaPermissions_u24lambda_u246_u24lambda_u245":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v19    # "$i$a$-with-AppIdPermissionUpgrade$upgradeAuralVisualMediaPermissions$isStorageUserGranted$1$flags$1":I
    nop

    .line 186
    .local v3, "flags":I
    sget-object v11, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v11, v3}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v11, 0x20

    invoke-static {v3, v11}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v11

    if-eqz v11, :cond_2

    move/from16 v11, v18

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    .line 36
    .end local v3    # "flags":I
    .end local v15    # "permissionName":Ljava/lang/String;
    .end local v16    # "$i$a$-anyIndexed-AppIdPermissionUpgrade$upgradeAuralVisualMediaPermissions$isStorageUserGranted$1":I
    :goto_1
    if-eqz v11, :cond_3

    .line 37
    move/from16 v11, v18

    goto :goto_2

    .line 39
    :cond_3
    nop

    .line 45
    .end local v12    # "element$iv":Ljava/lang/Object;
    .end local v13    # "index$iv":I
    .end local v14    # "$i$a$-forEachIndexed-IndexedSetExtensionsKt$anyIndexed$1$iv":I
    nop

    .line 44
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v20

    goto :goto_0

    .end local v20    # "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v3, "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_4
    move-object/from16 v20, v3

    .line 47
    .end local v3    # "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v9    # "index$iv$iv":I
    .restart local v20    # "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    nop

    .line 40
    .end local v7    # "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedSet;
    .end local v8    # "$i$f$forEachIndexed":I
    const/4 v11, 0x0

    .line 180
    .end local v5    # "$this$anyIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedSet;
    .end local v6    # "$i$f$anyIndexed":I
    :goto_2
    nop

    .line 179
    nop

    .line 188
    .local v11, "isStorageUserGranted":Z
    if-eqz v11, :cond_7

    .line 189
    sget-object v3, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->AURAL_VISUAL_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    .local v3, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedSet;
    const/4 v5, 0x0

    .line 44
    .local v5, "$i$f$forEachIndexed":I
    const/4 v6, 0x0

    .local v6, "index$iv":I
    invoke-virtual {v3}, Lcom/android/server/permission/access/immutable/IndexedSet;->getSize()I

    move-result v7

    :goto_3
    if-ge v6, v7, :cond_6

    .line 45
    invoke-virtual {v3, v6}, Lcom/android/server/permission/access/immutable/IndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, "permissionName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 190
    .local v9, "$i$a$-forEachIndexed-AppIdPermissionUpgrade$upgradeAuralVisualMediaPermissions$1":I
    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 191
    move-object/from16 v10, p2

    invoke-direct {v0, v1, v10, v2, v8}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->grantRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)V

    goto :goto_4

    .line 190
    :cond_5
    move-object/from16 v10, p2

    .line 193
    :goto_4
    nop

    .line 45
    .end local v8    # "permissionName":Ljava/lang/String;
    .end local v9    # "$i$a$-forEachIndexed-AppIdPermissionUpgrade$upgradeAuralVisualMediaPermissions$1":I
    nop

    .line 44
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v10, p2

    .line 47
    .end local v6    # "index$iv":I
    goto :goto_5

    .line 188
    .end local v3    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedSet;
    .end local v5    # "$i$f$forEachIndexed":I
    :cond_7
    move-object/from16 v10, p2

    .line 195
    :goto_5
    return-void
.end method

.method private final upgradeBackgroundLocationPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V
    .locals 6
    .param p1, "$this$upgradeBackgroundLocationPermission"    # Lcom/android/server/permission/access/MutateStateScope;
    .param p2, "packageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p3, "userId"    # I

    .line 117
    nop

    .line 119
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    .line 118
    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    .line 123
    .local v0, "appId":I
    iget-object v2, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .local v2, "$this$upgradeBackgroundLocationPermission_u24lambda_u242":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v3, 0x0

    .line 124
    .local v3, "$i$a$-with-AppIdPermissionUpgrade$upgradeBackgroundLocationPermission$accessFineLocationFlags$1":I
    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v2, p1, v0, p3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v2

    .line 123
    .end local v2    # "$this$upgradeBackgroundLocationPermission_u24lambda_u242":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v3    # "$i$a$-with-AppIdPermissionUpgrade$upgradeBackgroundLocationPermission$accessFineLocationFlags$1":I
    nop

    .line 122
    nop

    .line 127
    .local v2, "accessFineLocationFlags":I
    iget-object v3, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .local v3, "$this$upgradeBackgroundLocationPermission_u24lambda_u243":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v4, 0x0

    .line 128
    .local v4, "$i$a$-with-AppIdPermissionUpgrade$upgradeBackgroundLocationPermission$accessCoarseLocationFlags$1":I
    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v3, p1, v0, p3, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v3

    .line 127
    .end local v3    # "$this$upgradeBackgroundLocationPermission_u24lambda_u243":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v4    # "$i$a$-with-AppIdPermissionUpgrade$upgradeBackgroundLocationPermission$accessCoarseLocationFlags$1":I
    nop

    .line 126
    nop

    .line 131
    .local v3, "accessCoarseLocationFlags":I
    sget-object v4, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v4, v2}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 132
    sget-object v4, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v4, v3}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 130
    :goto_1
    nop

    .line 133
    .local v4, "isForegroundLocationGranted":Z
    if-eqz v4, :cond_2

    .line 134
    nop

    .line 135
    nop

    .line 136
    nop

    .line 137
    nop

    .line 134
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->grantRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)V

    .line 141
    .end local v0    # "appId":I
    .end local v2    # "accessFineLocationFlags":I
    .end local v3    # "accessCoarseLocationFlags":I
    .end local v4    # "isForegroundLocationGranted":Z
    :cond_2
    return-void
.end method

.method private final upgradeBodySensorBackgroundPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V
    .locals 10
    .param p1, "$this$upgradeBodySensorBackgroundPermissions"    # Lcom/android/server/permission/access/MutateStateScope;
    .param p2, "packageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p3, "userId"    # I

    .line 201
    nop

    .line 202
    nop

    .line 203
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    .line 202
    const-string v1, "android.permission.BODY_SENSORS_BACKGROUND"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    return-void

    .line 209
    :cond_0
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    .line 211
    .local v4, "appId":I
    iget-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .local v0, "$this$upgradeBodySensorBackgroundPermissions_u24lambda_u248":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v2, 0x0

    .line 212
    .local v2, "$i$a$-with-AppIdPermissionUpgrade$upgradeBodySensorBackgroundPermissions$backgroundBodySensorsFlags$1":I
    invoke-virtual {v0, p1, v4, p3, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v0

    .line 211
    .end local v0    # "$this$upgradeBodySensorBackgroundPermissions_u24lambda_u248":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v2    # "$i$a$-with-AppIdPermissionUpgrade$upgradeBodySensorBackgroundPermissions$backgroundBodySensorsFlags$1":I
    nop

    .line 210
    nop

    .line 214
    .local v0, "backgroundBodySensorsFlags":I
    const v2, 0x38000

    invoke-static {v0, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    return-void

    .line 219
    :cond_1
    iget-object v2, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .local v2, "$this$upgradeBodySensorBackgroundPermissions_u24lambda_u249":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v9, 0x0

    .line 220
    .local v9, "$i$a$-with-AppIdPermissionUpgrade$upgradeBodySensorBackgroundPermissions$1":I
    nop

    .line 221
    nop

    .line 222
    nop

    .line 223
    nop

    .line 224
    nop

    .line 225
    nop

    .line 220
    const-string v6, "android.permission.BODY_SENSORS_BACKGROUND"

    const/high16 v7, 0x20000

    const/high16 v8, 0x20000

    move-object v3, p1

    move v5, p3

    .end local p1    # "$this$upgradeBodySensorBackgroundPermissions":Lcom/android/server/permission/access/MutateStateScope;
    .end local p3    # "userId":I
    .local v3, "$this$upgradeBodySensorBackgroundPermissions":Lcom/android/server/permission/access/MutateStateScope;
    .local v5, "userId":I
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    .line 226
    nop

    .line 219
    .end local v2    # "$this$upgradeBodySensorBackgroundPermissions_u24lambda_u249":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v9    # "$i$a$-with-AppIdPermissionUpgrade$upgradeBodySensorBackgroundPermissions$1":I
    nop

    .line 230
    iget-object p1, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 526
    .local p1, "$this$upgradeBodySensorBackgroundPermissions_u24lambda_u2410":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 p3, 0x0

    .line 230
    .local p3, "$i$a$-with-AppIdPermissionUpgrade$upgradeBodySensorBackgroundPermissions$bodySensorsFlags$1":I
    const-string v2, "android.permission.BODY_SENSORS"

    invoke-virtual {p1, v3, v4, v5, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result p1

    .line 229
    .end local p1    # "$this$upgradeBodySensorBackgroundPermissions_u24lambda_u2410":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local p3    # "$i$a$-with-AppIdPermissionUpgrade$upgradeBodySensorBackgroundPermissions$bodySensorsFlags$1":I
    nop

    .line 231
    .local p1, "bodySensorsFlags":I
    sget-object p3, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {p3, p1}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result p3

    .line 232
    .local p3, "isForegroundBodySensorsGranted":Z
    if-eqz p3, :cond_2

    .line 233
    nop

    .line 234
    nop

    .line 235
    nop

    .line 236
    nop

    .line 233
    invoke-direct {p0, v3, p2, v5, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->grantRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)V

    .line 239
    :cond_2
    return-void
.end method

.method private final upgradeBodySensorReadHeartRatePermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V
    .locals 10
    .param p1, "$this$upgradeBodySensorReadHeartRatePermissions"    # Lcom/android/server/permission/access/MutateStateScope;
    .param p2, "packageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p3, "userId"    # I

    .line 287
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 288
    .local v0, "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v1

    const/16 v2, 0x24

    if-lt v1, v2, :cond_0

    .line 289
    return-void

    .line 294
    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v1

    const-string v2, "android.permission.BODY_SENSORS"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 293
    nop

    .line 296
    .local v1, "isBodySensorsRequested":Z
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v3

    const-string v4, "android.permission.health.READ_HEART_RATE"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 295
    nop

    .line 298
    .local v3, "isReadHeartRateRequested":Z
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->isRuntimePermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    move-result v5

    .line 297
    nop

    .line 299
    .local v5, "isBodySensorsGranted":Z
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 301
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->isRuntimePermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    move-result v6

    .line 300
    nop

    .line 302
    .local v6, "isReadHeartRateGranted":Z
    if-eq v5, v6, :cond_2

    .line 303
    if-eqz v5, :cond_1

    .line 304
    nop

    .line 305
    nop

    .line 306
    nop

    .line 307
    nop

    .line 308
    nop

    .line 305
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    const/4 v5, 0x0

    .line 314
    :cond_1
    if-eqz v6, :cond_2

    .line 315
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    .line 322
    .end local v6    # "isReadHeartRateGranted":Z
    :cond_2
    nop

    .line 323
    nop

    .line 324
    nop

    .line 325
    nop

    .line 322
    const-string v2, "android.permission.BODY_SENSORS_BACKGROUND"

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->isRuntimePermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    move-result v4

    .line 321
    nop

    .line 328
    .local v4, "isBodySensorsBackgroundGranted":Z
    if-nez v5, :cond_3

    if-eqz v4, :cond_3

    .line 329
    nop

    .line 330
    nop

    .line 331
    nop

    .line 332
    nop

    .line 333
    nop

    .line 330
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 336
    const/4 v4, 0x0

    .line 342
    :cond_3
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 341
    nop

    .line 344
    .local v6, "isBodySensorsBackgroundRequested":Z
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v7

    const-string v8, "android.permission.health.READ_HEALTH_DATA_IN_BACKGROUND"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 343
    nop

    .line 345
    .local v7, "isReadHealthDataInBackgroundRequested":Z
    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    .line 347
    nop

    .line 348
    nop

    .line 349
    nop

    .line 350
    nop

    .line 347
    invoke-direct {p0, p1, p2, p3, v8}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->isRuntimePermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    move-result v9

    .line 346
    nop

    .line 352
    .local v9, "isReadHealthDataInBackgroundGranted":Z
    if-eq v4, v9, :cond_5

    .line 353
    if-eqz v4, :cond_4

    .line 354
    nop

    .line 355
    nop

    .line 356
    nop

    .line 357
    nop

    .line 354
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    .line 360
    :cond_4
    if-eqz v9, :cond_5

    .line 361
    nop

    .line 362
    nop

    .line 363
    nop

    .line 364
    nop

    .line 361
    invoke-direct {p0, p1, p2, p3, v8}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    .line 369
    .end local v9    # "isReadHealthDataInBackgroundGranted":Z
    :cond_5
    return-void
.end method

.method private final upgradeUserSelectedVisualMediaPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V
    .locals 21
    .param p1, "$this$upgradeUserSelectedVisualMediaPermission"    # Lcom/android/server/permission/access/MutateStateScope;
    .param p2, "packageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p3, "userId"    # I

    .line 246
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 247
    .local v3, "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v4

    const/16 v5, 0x21

    if-ge v4, v5, :cond_0

    .line 248
    return-void

    .line 250
    :cond_0
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v4

    .line 252
    .local v4, "requestedPermissionNames":Ljava/util/Set;
    sget-object v5, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->VISUAL_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/IndexedSet;

    .local v5, "$this$anyIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedSet;
    const/4 v6, 0x0

    .line 35
    .local v6, "$i$f$anyIndexed":I
    move-object v7, v5

    .local v7, "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedSet;
    const/4 v8, 0x0

    .line 44
    .local v8, "$i$f$forEachIndexed":I
    const/4 v9, 0x0

    .local v9, "index$iv$iv":I
    invoke-virtual {v7}, Lcom/android/server/permission/access/immutable/IndexedSet;->getSize()I

    move-result v10

    :goto_0
    if-ge v9, v10, :cond_4

    .line 45
    invoke-virtual {v7, v9}, Lcom/android/server/permission/access/immutable/IndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    .local v12, "element$iv":Ljava/lang/Object;
    move v13, v9

    .local v13, "index$iv":I
    const/4 v14, 0x0

    .line 36
    .local v14, "$i$a$-forEachIndexed-IndexedSetExtensionsKt$anyIndexed$1$iv":I
    move-object v15, v12

    check-cast v15, Ljava/lang/String;

    .local v15, "permissionName":Ljava/lang/String;
    const/16 v16, 0x0

    .line 253
    .local v16, "$i$a$-anyIndexed-AppIdPermissionUpgrade$upgradeUserSelectedVisualMediaPermission$isVisualMediaUserGranted$1":I
    invoke-interface {v4, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x1

    if-nez v17, :cond_1

    .line 254
    move-object/from16 v20, v3

    const/4 v11, 0x0

    goto :goto_1

    .line 257
    :cond_1
    iget-object v11, v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 526
    .local v11, "$this$upgradeUserSelectedVisualMediaPermission_u24lambda_u2412_u24lambda_u2411":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/16 v19, 0x0

    .line 257
    .local v19, "$i$a$-with-AppIdPermissionUpgrade$upgradeUserSelectedVisualMediaPermission$isVisualMediaUserGranted$1$flags$1":I
    move-object/from16 v20, v3

    .end local v3    # "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v20, "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    invoke-virtual {v11, v1, v3, v2, v15}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v3

    .line 256
    .end local v11    # "$this$upgradeUserSelectedVisualMediaPermission_u24lambda_u2412_u24lambda_u2411":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v19    # "$i$a$-with-AppIdPermissionUpgrade$upgradeUserSelectedVisualMediaPermission$isVisualMediaUserGranted$1$flags$1":I
    nop

    .line 258
    .local v3, "flags":I
    sget-object v11, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v11, v3}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v11, 0x20

    invoke-static {v3, v11}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v11

    if-eqz v11, :cond_2

    move/from16 v11, v18

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    .line 36
    .end local v3    # "flags":I
    .end local v15    # "permissionName":Ljava/lang/String;
    .end local v16    # "$i$a$-anyIndexed-AppIdPermissionUpgrade$upgradeUserSelectedVisualMediaPermission$isVisualMediaUserGranted$1":I
    :goto_1
    if-eqz v11, :cond_3

    .line 37
    move/from16 v11, v18

    goto :goto_2

    .line 39
    :cond_3
    nop

    .line 45
    .end local v12    # "element$iv":Ljava/lang/Object;
    .end local v13    # "index$iv":I
    .end local v14    # "$i$a$-forEachIndexed-IndexedSetExtensionsKt$anyIndexed$1$iv":I
    nop

    .line 44
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v20

    goto :goto_0

    .end local v20    # "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v3, "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_4
    move-object/from16 v20, v3

    .line 47
    .end local v3    # "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v9    # "index$iv$iv":I
    .restart local v20    # "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    nop

    .line 40
    .end local v7    # "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedSet;
    .end local v8    # "$i$f$forEachIndexed":I
    const/4 v11, 0x0

    .line 252
    .end local v5    # "$this$anyIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedSet;
    .end local v6    # "$i$f$anyIndexed":I
    :goto_2
    nop

    .line 251
    nop

    .line 260
    .local v11, "isVisualMediaUserGranted":Z
    if-eqz v11, :cond_6

    .line 261
    const-string v3, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 262
    nop

    .line 263
    nop

    .line 264
    nop

    .line 265
    nop

    .line 262
    move-object/from16 v5, p2

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->grantRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)V

    goto :goto_3

    .line 261
    :cond_5
    move-object/from16 v5, p2

    goto :goto_3

    .line 260
    :cond_6
    move-object/from16 v5, p2

    .line 269
    :goto_3
    return-void
.end method


# virtual methods
.method public final upgradePackageState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;II)V
    .locals 6
    .param p1, "$this$upgradePackageState"    # Lcom/android/server/permission/access/MutateStateScope;
    .param p2, "packageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p3, "userId"    # I
    .param p4, "version"    # I

    .line 43
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x3

    const-string v2, ", version: "

    if-gt p4, v1, :cond_0

    .line 46
    sget-object v1, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->LOG_TAG:Ljava/lang/String;

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Allowlisting and upgrading background location permission for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->allowlistRestrictedPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->upgradeBackgroundLocationPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V

    .line 53
    :cond_0
    const/16 v1, 0xa

    const-string v3, ", user: "

    if-gt p4, v1, :cond_1

    .line 55
    sget-object v1, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->LOG_TAG:Ljava/lang/String;

    .line 56
    nop

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upgrading access media location permission for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->upgradeAccessMediaLocationPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V

    .line 62
    :cond_1
    const/16 v1, 0xc

    if-gt p4, v1, :cond_2

    .line 64
    sget-object v1, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->LOG_TAG:Ljava/lang/String;

    .line 65
    nop

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upgrading scoped media and body sensor permissions for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->upgradeAuralVisualMediaPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->upgradeBodySensorBackgroundPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V

    .line 72
    :cond_2
    const/16 v1, 0xe

    if-gt p4, v1, :cond_3

    .line 74
    sget-object v1, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->LOG_TAG:Ljava/lang/String;

    .line 75
    nop

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upgrading visual media permission for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->upgradeUserSelectedVisualMediaPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V

    .line 81
    :cond_3
    const/16 v1, 0x10

    if-gt p4, v1, :cond_4

    .line 83
    sget-object v1, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->LOG_TAG:Ljava/lang/String;

    .line 84
    nop

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upgrading body sensor / read heart rate permissions for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->upgradeBodySensorReadHeartRatePermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V

    .line 92
    :cond_4
    return-void
.end method
