.class public final Lcom/android/server/permission/access/permission/AppIdPermissionMigration;
.super Ljava/lang/Object;
.source "AppIdPermissionMigration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/permission/access/permission/AppIdPermissionMigration$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppIdPermissionMigration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppIdPermissionMigration.kt\ncom/android/server/permission/access/permission/AppIdPermissionMigration\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 Permission.kt\ncom/android/server/permission/access/permission/Permission\n+ 4 IndexedMapExtensions.kt\ncom/android/server/permission/access/immutable/IndexedMapExtensionsKt\n+ 5 IndexedListSetExtensions.kt\ncom/android/server/permission/access/immutable/IndexedListSetExtensionsKt\n*L\n1#1,166:1\n216#2:167\n217#2:171\n216#2:172\n216#2:173\n217#2:176\n217#2:182\n33#3:168\n54#3:183\n48#3:184\n60#3:185\n48#3,4:186\n78#3:190\n63#3:191\n114#3:192\n63#3:193\n57#3:194\n48#3:195\n126#4,2:169\n126#4,2:174\n126#4,2:179\n38#5,2:177\n41#5:181\n*S KotlinDebug\n*F\n+ 1 AppIdPermissionMigration.kt\ncom/android/server/permission/access/permission/AppIdPermissionMigration\n*L\n51#1:167\n51#1:171\n79#1:172\n88#1:173\n88#1:176\n79#1:182\n54#1:168\n116#1:183\n116#1:184\n122#1:185\n122#1:186,4\n124#1:190\n124#1:191\n124#1:192\n124#1:193\n132#1:194\n132#1:195\n54#1:169,2\n99#1:174,2\n104#1:179,2\n104#1:177,2\n104#1:181\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/server/permission/access/permission/AppIdPermissionMigration$Companion;

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/permission/access/permission/AppIdPermissionMigration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionMigration$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;->Companion:Lcom/android/server/permission/access/permission/AppIdPermissionMigration$Companion;

    .line 161
    const-class v0, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final migratePermissionFlags(Lcom/android/server/permission/access/permission/Permission;Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;II)I
    .locals 8
    .param p1, "permission"    # Lcom/android/server/permission/access/permission/Permission;
    .param p2, "legacyPermissionState"    # Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;
    .param p3, "appId"    # I
    .param p4, "userId"    # I

    .line 115
    nop

    .line 116
    move-object v0, p1

    .local v0, "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v1, 0x0

    .line 54
    .local v1, "$i$f$isNormal":I
    move-object v2, v0

    .local v2, "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v3, 0x0

    .line 48
    .local v3, "$i$f$getProtection":I
    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v2

    .line 54
    .end local v2    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v3    # "$i$f$getProtection":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    .line 116
    .end local v0    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v1    # "$i$f$isNormal":I
    :goto_0
    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 117
    invoke-virtual {p2}, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;->isGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    goto/16 :goto_6

    .line 120
    :cond_1
    move v3, v1

    goto/16 :goto_6

    .line 122
    :cond_2
    move-object v0, p1

    .restart local v0    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v2, 0x0

    .line 60
    .local v2, "$i$f$isSignature":I
    move-object v5, v0

    .local v5, "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v6, 0x0

    .line 48
    .local v6, "$i$f$getProtection":I
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v5

    .line 60
    .end local v5    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v6    # "$i$f$getProtection":I
    if-ne v5, v1, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v4

    .line 122
    .end local v0    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v2    # "$i$f$isSignature":I
    :goto_1
    const/4 v1, 0x4

    if-nez v0, :cond_5

    move-object v0, p1

    .restart local v0    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v2, 0x0

    .line 51
    .local v2, "$i$f$isInternal":I
    move-object v5, v0

    .restart local v5    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v6, 0x0

    .line 48
    .restart local v6    # "$i$f$getProtection":I
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v5

    .line 51
    .end local v5    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v6    # "$i$f$getProtection":I
    if-ne v5, v1, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v4

    .line 122
    .end local v0    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v2    # "$i$f$isInternal":I
    :goto_2
    if-eqz v0, :cond_6

    :cond_5
    goto :goto_4

    .line 132
    :cond_6
    move-object v0, p1

    .restart local v0    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v1, 0x0

    .line 57
    .local v1, "$i$f$isRuntime":I
    move-object v2, v0

    .local v2, "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v5, 0x0

    .line 48
    .local v5, "$i$f$getProtection":I
    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v2

    .line 57
    .end local v2    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v5    # "$i$f$getProtection":I
    if-ne v2, v3, :cond_7

    goto :goto_3

    :cond_7
    move v3, v4

    .line 132
    .end local v0    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v1    # "$i$f$isRuntime":I
    :goto_3
    if-eqz v3, :cond_9

    .line 133
    invoke-virtual {p2}, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;->isGranted()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v3, 0x10

    goto :goto_6

    :cond_8
    move v3, v4

    goto :goto_6

    .line 134
    :cond_9
    move v3, v4

    goto :goto_6

    .line 123
    :goto_4
    invoke-virtual {p2}, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;->isGranted()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 124
    move-object v0, p1

    .restart local v0    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v2, 0x0

    .line 78
    .local v2, "$i$f$isDevelopment":I
    move-object v3, v0

    .local v3, "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v4, 0x0

    .line 63
    .local v4, "$i$f$getProtectionFlags":I
    invoke-virtual {v3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v3

    .line 78
    .end local v3    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v4    # "$i$f$getProtectionFlags":I
    const/16 v4, 0x20

    invoke-static {v3, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    .line 124
    .end local v0    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v2    # "$i$f$isDevelopment":I
    if-nez v0, :cond_a

    move-object v0, p1

    .restart local v0    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v2, 0x0

    .line 114
    .local v2, "$i$f$isRole":I
    move-object v3, v0

    .restart local v3    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v4, 0x0

    .line 63
    .restart local v4    # "$i$f$getProtectionFlags":I
    invoke-virtual {v3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v3

    .line 114
    .end local v3    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v4    # "$i$f$getProtectionFlags":I
    const/high16 v4, 0x4000000

    invoke-static {v3, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    .line 124
    .end local v0    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v2    # "$i$f$isRole":I
    if-eqz v0, :cond_b

    :cond_a
    goto :goto_5

    .line 127
    :cond_b
    move v3, v1

    goto :goto_6

    .line 125
    :goto_5
    const/16 v3, 0x14

    goto :goto_6

    .line 130
    :cond_c
    move v3, v4

    .line 115
    :goto_6
    nop

    .line 114
    nop

    .line 137
    .local v3, "flags":I
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    .line 138
    nop

    .line 139
    nop

    .line 140
    invoke-virtual {p2}, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;->getFlags()I

    move-result v1

    .line 141
    invoke-virtual {p2}, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;->getFlags()I

    move-result v2

    .line 137
    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/android/server/permission/access/permission/PermissionFlags;->updateFlags(Lcom/android/server/permission/access/permission/Permission;III)I

    move-result v0

    .line 136
    nop

    .line 143
    .end local v3    # "flags":I
    .local v0, "flags":I
    nop

    .line 157
    return v0
.end method

.method private final migratePermissions(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Ljava/util/Map;Z)V
    .locals 15
    .param p1, "permissions"    # Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    .param p2, "legacyPermissions"    # Ljava/util/Map;
    .param p3, "isPermissionTree"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/permission/access/immutable/MutableIndexedMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/permission/access/permission/Permission;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;",
            ">;Z)V"
        }
    .end annotation

    .line 51
    move-object/from16 v0, p2

    .local v0, "$this$forEach$iv":Ljava/util/Map;
    const/4 v1, 0x0

    .line 167
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .local v3, "element$iv":Ljava/util/Map$Entry;
    const/4 v4, 0x0

    .line 51
    .local v4, "$i$a$-forEach-AppIdPermissionMigration$migratePermissions$1":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;

    .line 53
    .local v5, "legacyPermission":Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;
    new-instance v6, Lcom/android/server/permission/access/permission/Permission;

    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;->getType()I

    move-result v9

    const/16 v13, 0x30

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v14}, Lcom/android/server/permission/access/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;ZII[IZILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    nop

    .line 54
    .local v6, "permission":Lcom/android/server/permission/access/permission/Permission;
    move-object v7, v6

    .local v7, "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v8, 0x0

    .line 33
    .local v8, "$i$f$getName":I
    invoke-virtual {v7}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v9

    iget-object v7, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 54
    .end local v7    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v8    # "$i$f$getName":I
    move-object/from16 v8, p1

    .local v7, "key$iv":Ljava/lang/Object;
    .local v8, "$this$set$iv":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    const/4 v9, 0x0

    .line 126
    .local v9, "$i$f$set":I
    invoke-virtual {v8, v7, v6}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    nop

    .line 55
    .end local v7    # "key$iv":Ljava/lang/Object;
    .end local v8    # "$this$set$iv":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    .end local v9    # "$i$f$set":I
    nop

    .line 63
    .end local v6    # "permission":Lcom/android/server/permission/access/permission/Permission;
    nop

    .line 167
    .end local v4    # "$i$a$-forEach-AppIdPermissionMigration$migratePermissions$1":I
    .end local v5    # "legacyPermission":Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;
    nop

    .end local v3    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 171
    :cond_0
    nop

    .line 64
    .end local v0    # "$this$forEach$iv":Ljava/util/Map;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method static synthetic migratePermissions$default(Lcom/android/server/permission/access/permission/AppIdPermissionMigration;Lcom/android/server/permission/access/immutable/MutableIndexedMap;Ljava/util/Map;ZILjava/lang/Object;)V
    .locals 0

    .line 46
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 49
    const/4 p3, 0x0

    .line 46
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;->migratePermissions(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Ljava/util/Map;Z)V

    return-void
.end method


# virtual methods
.method public final migrateSystemState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Lcom/android/server/permission/access/MutableAccessState;)V
    .locals 11
    .param p1, "state"    # Lcom/android/server/permission/access/MutableAccessState;

    .line 30
    const-class v0, Lcom/android/server/pm/permission/PermissionMigrationHelper;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/server/pm/permission/PermissionMigrationHelper;

    .line 29
    nop

    .line 31
    .local v0, "legacyPermissionsManager":Lcom/android/server/pm/permission/PermissionMigrationHelper;
    invoke-interface {v0}, Lcom/android/server/pm/permission/PermissionMigrationHelper;->hasLegacyPermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    return-void

    .line 35
    :cond_0
    nop

    .line 36
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;IILjava/lang/Object;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v6

    .line 37
    invoke-interface {v0}, Lcom/android/server/pm/permission/PermissionMigrationHelper;->getLegacyPermissions()Ljava/util/Map;

    move-result-object v7

    .line 35
    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;->migratePermissions$default(Lcom/android/server/permission/access/permission/AppIdPermissionMigration;Lcom/android/server/permission/access/immutable/MutableIndexedMap;Ljava/util/Map;ZILjava/lang/Object;)V

    .line 39
    nop

    .line 40
    invoke-static {p1, v1, v2, v3}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;IILjava/lang/Object;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissionTrees()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v1

    .line 41
    invoke-interface {v0}, Lcom/android/server/pm/permission/PermissionMigrationHelper;->getLegacyPermissionTrees()Ljava/util/Map;

    move-result-object v3

    .line 42
    nop

    .line 39
    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;->migratePermissions(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Ljava/util/Map;Z)V

    .line 44
    return-void
.end method

.method public final migrateUserState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Lcom/android/server/permission/access/MutableAccessState;I)V
    .locals 29
    .param p1, "state"    # Lcom/android/server/permission/access/MutableAccessState;
    .param p2, "userId"    # I

    .line 68
    move/from16 v0, p2

    const-class v1, Lcom/android/server/pm/permission/PermissionMigrationHelper;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/android/server/pm/permission/PermissionMigrationHelper;

    .line 67
    nop

    .line 69
    .local v1, "permissionMigrationHelper":Lcom/android/server/pm/permission/PermissionMigrationHelper;
    invoke-interface {v1, v0}, Lcom/android/server/pm/permission/PermissionMigrationHelper;->hasLegacyPermissionState(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    return-void

    .line 74
    :cond_0
    invoke-interface {v1, v0}, Lcom/android/server/pm/permission/PermissionMigrationHelper;->getLegacyPermissionStates(I)Ljava/util/Map;

    move-result-object v2

    .line 73
    nop

    .line 75
    .local v2, "legacyAppIdPermissionStates":Ljava/util/Map;
    sget-object v3, Lcom/android/server/permission/access/util/PackageVersionMigration;->INSTANCE:Lcom/android/server/permission/access/util/PackageVersionMigration;

    invoke-virtual {v3, v0}, Lcom/android/server/permission/access/util/PackageVersionMigration;->getVersion$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(I)I

    move-result v3

    .line 77
    .local v3, "version":I
    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v7, p1

    invoke-static {v7, v0, v4, v5, v6}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState$default(Lcom/android/server/permission/access/MutableAccessState;IIILjava/lang/Object;)Lcom/android/server/permission/access/MutableUserState;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 78
    .local v4, "userState":Lcom/android/server/permission/access/MutableUserState;
    invoke-virtual {v4}, Lcom/android/server/permission/access/MutableUserState;->mutateAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v5

    .line 79
    .local v5, "appIdPermissionFlags":Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
    move-object v8, v2

    .local v8, "$this$forEach$iv":Ljava/util/Map;
    const/4 v9, 0x0

    .line 172
    .local v9, "$i$f$forEach":I
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .local v11, "element$iv":Ljava/util/Map$Entry;
    const/4 v12, 0x0

    .line 79
    .local v12, "$i$a$-forEach-AppIdPermissionMigration$migrateUserState$1":I
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .local v13, "appId":Ljava/lang/Integer;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    .line 80
    .local v14, "legacyPermissionStates":Ljava/util/Map;
    invoke-virtual {v7}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v15

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v15, v6}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 81
    .local v6, "packageNames":Lcom/android/server/permission/access/immutable/IndexedListSet;
    const-string v15, " when migrating permission state"

    if-nez v6, :cond_1

    .line 82
    move-object/from16 v17, v1

    .end local v1    # "permissionMigrationHelper":Lcom/android/server/pm/permission/PermissionMigrationHelper;
    .local v17, "permissionMigrationHelper":Lcom/android/server/pm/permission/PermissionMigrationHelper;
    sget-object v1, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v18, v2

    .end local v2    # "legacyAppIdPermissionStates":Ljava/util/Map;
    .local v18, "legacyAppIdPermissionStates":Ljava/util/Map;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v3

    .end local v3    # "version":I
    .local v19, "version":I
    const-string v3, "Dropping unknown app ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    move-object/from16 v23, v4

    move-object/from16 v26, v5

    move-object/from16 v5, p0

    goto/16 :goto_4

    .line 86
    .end local v17    # "permissionMigrationHelper":Lcom/android/server/pm/permission/PermissionMigrationHelper;
    .end local v18    # "legacyAppIdPermissionStates":Ljava/util/Map;
    .end local v19    # "version":I
    .restart local v1    # "permissionMigrationHelper":Lcom/android/server/pm/permission/PermissionMigrationHelper;
    .restart local v2    # "legacyAppIdPermissionStates":Ljava/util/Map;
    .restart local v3    # "version":I
    :cond_1
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v19, v3

    .end local v1    # "permissionMigrationHelper":Lcom/android/server/pm/permission/PermissionMigrationHelper;
    .end local v2    # "legacyAppIdPermissionStates":Ljava/util/Map;
    .end local v3    # "version":I
    .restart local v17    # "permissionMigrationHelper":Lcom/android/server/pm/permission/PermissionMigrationHelper;
    .restart local v18    # "legacyAppIdPermissionStates":Ljava/util/Map;
    .restart local v19    # "version":I
    new-instance v1, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>(Landroid/util/ArrayMap;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 87
    .local v1, "permissionFlags":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v5, v2, v1}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;ILcom/android/server/permission/access/immutable/Immutable;)V

    .line 88
    move-object v2, v14

    .local v2, "$this$forEach$iv":Ljava/util/Map;
    const/16 v16, 0x0

    .line 173
    .local v16, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .local v21, "element$iv":Ljava/util/Map$Entry;
    const/16 v22, 0x0

    .line 89
    .local v22, "$i$a$-forEach-AppIdPermissionMigration$migrateUserState$1$1":I
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v3, v23

    check-cast v3, Ljava/lang/String;

    .local v3, "permissionName":Ljava/lang/String;
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v24, v1

    .end local v1    # "permissionFlags":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    .local v24, "permissionFlags":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    move-object/from16 v1, v23

    check-cast v1, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;

    .line 90
    .local v1, "legacyPermissionState":Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;
    invoke-virtual {v7}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v23

    move-object/from16 v25, v2

    .end local v2    # "$this$forEach$iv":Ljava/util/Map;
    .local v25, "$this$forEach$iv":Ljava/util/Map;
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/permission/access/SystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/permission/Permission;

    .line 91
    .local v2, "permission":Lcom/android/server/permission/access/permission/Permission;
    if-nez v2, :cond_2

    .line 93
    move-object/from16 v23, v4

    .end local v4    # "userState":Lcom/android/server/permission/access/MutableUserState;
    .local v23, "userState":Lcom/android/server/permission/access/MutableUserState;
    sget-object v4, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;->LOG_TAG:Ljava/lang/String;

    .line 94
    move-object/from16 v26, v5

    .end local v5    # "appIdPermissionFlags":Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
    .local v26, "appIdPermissionFlags":Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v6

    .end local v6    # "packageNames":Lcom/android/server/permission/access/immutable/IndexedListSet;
    .local v27, "packageNames":Lcom/android/server/permission/access/immutable/IndexedListSet;
    const-string v6, "Dropping unknown permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for app ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    move-object/from16 v5, p0

    goto :goto_2

    .line 99
    .end local v23    # "userState":Lcom/android/server/permission/access/MutableUserState;
    .end local v26    # "appIdPermissionFlags":Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
    .end local v27    # "packageNames":Lcom/android/server/permission/access/immutable/IndexedListSet;
    .restart local v4    # "userState":Lcom/android/server/permission/access/MutableUserState;
    .restart local v5    # "appIdPermissionFlags":Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
    .restart local v6    # "packageNames":Lcom/android/server/permission/access/immutable/IndexedListSet;
    :cond_2
    move-object/from16 v23, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    .line 100
    .end local v4    # "userState":Lcom/android/server/permission/access/MutableUserState;
    .end local v5    # "appIdPermissionFlags":Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
    .end local v6    # "packageNames":Lcom/android/server/permission/access/immutable/IndexedListSet;
    .restart local v23    # "userState":Lcom/android/server/permission/access/MutableUserState;
    .restart local v26    # "appIdPermissionFlags":Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
    .restart local v27    # "packageNames":Lcom/android/server/permission/access/immutable/IndexedListSet;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v5, p0

    invoke-direct {v5, v2, v1, v4, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;->migratePermissionFlags(Lcom/android/server/permission/access/permission/Permission;Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 99
    nop

    .local v4, "value$iv":Ljava/lang/Object;
    move-object/from16 v6, v24

    .local v6, "$this$set$iv":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    const/16 v28, 0x0

    .line 126
    .local v28, "$i$f$set":I
    invoke-virtual {v6, v3, v4}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    nop

    .line 101
    .end local v2    # "permission":Lcom/android/server/permission/access/permission/Permission;
    .end local v4    # "value$iv":Ljava/lang/Object;
    .end local v6    # "$this$set$iv":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    .end local v28    # "$i$f$set":I
    nop

    .line 173
    .end local v1    # "legacyPermissionState":Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;
    .end local v3    # "permissionName":Ljava/lang/String;
    .end local v22    # "$i$a$-forEach-AppIdPermissionMigration$migrateUserState$1$1":I
    :goto_2
    move-object/from16 v4, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v5, v26

    move-object/from16 v6, v27

    const/4 v3, 0x0

    .end local v21    # "element$iv":Ljava/util/Map$Entry;
    goto/16 :goto_1

    .line 176
    .end local v23    # "userState":Lcom/android/server/permission/access/MutableUserState;
    .end local v24    # "permissionFlags":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    .end local v25    # "$this$forEach$iv":Ljava/util/Map;
    .end local v26    # "appIdPermissionFlags":Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
    .end local v27    # "packageNames":Lcom/android/server/permission/access/immutable/IndexedListSet;
    .local v1, "permissionFlags":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    .local v2, "$this$forEach$iv":Ljava/util/Map;
    .local v4, "userState":Lcom/android/server/permission/access/MutableUserState;
    .restart local v5    # "appIdPermissionFlags":Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
    .local v6, "packageNames":Lcom/android/server/permission/access/immutable/IndexedListSet;
    :cond_3
    move-object/from16 v24, v1

    move-object/from16 v25, v2

    move-object/from16 v23, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v5, p0

    .line 103
    .end local v1    # "permissionFlags":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    .end local v2    # "$this$forEach$iv":Ljava/util/Map;
    .end local v4    # "userState":Lcom/android/server/permission/access/MutableUserState;
    .end local v5    # "appIdPermissionFlags":Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
    .end local v6    # "packageNames":Lcom/android/server/permission/access/immutable/IndexedListSet;
    .end local v16    # "$i$f$forEach":I
    .restart local v23    # "userState":Lcom/android/server/permission/access/MutableUserState;
    .restart local v24    # "permissionFlags":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    .restart local v26    # "appIdPermissionFlags":Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
    .restart local v27    # "packageNames":Lcom/android/server/permission/access/immutable/IndexedListSet;
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/permission/access/MutableUserState;->mutatePackageVersions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v1

    .line 104
    .local v1, "packageVersions":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    move-object/from16 v2, v27

    .local v2, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedListSet;
    const/4 v3, 0x0

    .line 38
    .local v3, "$i$f$forEachIndexed":I
    const/4 v4, 0x0

    .local v4, "index$iv":I
    invoke-virtual {v2}, Lcom/android/server/permission/access/immutable/IndexedListSet;->getSize()I

    move-result v6

    :goto_3
    if-ge v4, v6, :cond_4

    .line 39
    invoke-virtual {v2, v4}, Lcom/android/server/permission/access/immutable/IndexedListSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .local v15, "packageName":Ljava/lang/String;
    const/16 v16, 0x0

    .line 104
    .local v16, "$i$a$-forEachIndexed-AppIdPermissionMigration$migrateUserState$1$2":I
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "value$iv":Ljava/lang/Object;
    move-object/from16 v20, v1

    .local v20, "$this$set$iv":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    const/16 v21, 0x0

    .line 126
    .local v21, "$i$f$set":I
    move-object/from16 v22, v1

    .end local v20    # "$this$set$iv":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    .local v1, "$this$set$iv":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    .local v22, "packageVersions":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    invoke-virtual {v1, v15, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    nop

    .line 104
    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v1    # "$this$set$iv":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    .end local v21    # "$i$f$set":I
    nop

    .line 39
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "$i$a$-forEachIndexed-AppIdPermissionMigration$migrateUserState$1$2":I
    nop

    .line 38
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p2

    goto :goto_3

    .end local v22    # "packageVersions":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    .local v1, "packageVersions":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    :cond_4
    move-object/from16 v22, v1

    .line 41
    .end local v1    # "packageVersions":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    .end local v4    # "index$iv":I
    .restart local v22    # "packageVersions":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    nop

    .line 105
    .end local v2    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedListSet;
    .end local v3    # "$i$f$forEachIndexed":I
    .end local v22    # "packageVersions":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    .end local v24    # "permissionFlags":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    .end local v27    # "packageNames":Lcom/android/server/permission/access/immutable/IndexedListSet;
    nop

    .line 172
    .end local v12    # "$i$a$-forEach-AppIdPermissionMigration$migrateUserState$1":I
    .end local v13    # "appId":Ljava/lang/Integer;
    .end local v14    # "legacyPermissionStates":Ljava/util/Map;
    :goto_4
    move/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v23

    move-object/from16 v5, v26

    const/4 v6, 0x0

    .end local v11    # "element$iv":Ljava/util/Map$Entry;
    goto/16 :goto_0

    .line 182
    .end local v17    # "permissionMigrationHelper":Lcom/android/server/pm/permission/PermissionMigrationHelper;
    .end local v18    # "legacyAppIdPermissionStates":Ljava/util/Map;
    .end local v19    # "version":I
    .end local v23    # "userState":Lcom/android/server/permission/access/MutableUserState;
    .end local v26    # "appIdPermissionFlags":Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
    .local v1, "permissionMigrationHelper":Lcom/android/server/pm/permission/PermissionMigrationHelper;
    .local v2, "legacyAppIdPermissionStates":Ljava/util/Map;
    .local v3, "version":I
    .local v4, "userState":Lcom/android/server/permission/access/MutableUserState;
    .restart local v5    # "appIdPermissionFlags":Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
    :cond_5
    nop

    .line 106
    .end local v8    # "$this$forEach$iv":Ljava/util/Map;
    .end local v9    # "$i$f$forEach":I
    return-void
.end method
