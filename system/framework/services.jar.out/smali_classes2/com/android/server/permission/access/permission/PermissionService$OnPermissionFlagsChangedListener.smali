.class final Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;
.super Ljava/lang/Object;
.source "PermissionService.kt"

# interfaces
.implements Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;
.implements Lcom/android/server/permission/access/permission/DevicePermissionPolicy$OnDevicePermissionFlagsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/permission/access/permission/PermissionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnPermissionFlagsChangedListener"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPermissionService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionService.kt\ncom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener\n+ 2 ArraySetExtensions.kt\ncom/android/server/permission/access/collection/ArraySetExtensionsKt\n+ 3 AccessCheckingService.kt\ncom/android/server/permission/access/AccessCheckingService\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Permission.kt\ncom/android/server/permission/access/permission/Permission\n+ 6 SparseBooleanArrayExtensions.kt\ncom/android/server/permission/access/collection/SparseBooleanArrayExtensionsKt\n+ 7 IntMapExtensions.kt\ncom/android/server/permission/access/immutable/IntMapExtensionsKt\n+ 8 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 9 IntSetExtensions.kt\ncom/android/server/permission/access/immutable/IntSetExtensionsKt\n*L\n1#1,2939:1\n72#2,2:2940\n287#3:2942\n1#4:2943\n1#4:2952\n57#5:2944\n48#5:2945\n150#5:2953\n116#6,2:2946\n40#6:2959\n120#6:2960\n41#6,3:2961\n77#7,4:2948\n47#7,2:2954\n50#7:2958\n1863#8,2:2956\n38#9,4:2964\n*S KotlinDebug\n*F\n+ 1 PermissionService.kt\ncom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener\n*L\n2721#1:2940,2\n2753#1:2942\n2767#1:2952\n2757#1:2944\n2757#1:2945\n2770#1:2953\n2763#1:2946,2\n2795#1:2959\n2795#1:2960\n2795#1:2961,3\n2767#1:2948,4\n2781#1:2954,2\n2781#1:2958\n2782#1:2956,2\n2812#1:2964,4\n*E\n"
.end annotation


# instance fields
.field private final gidsChangedUids:Lcom/android/server/permission/access/immutable/MutableIntSet;

.field private isKillRuntimePermissionRevokedUidsSkipped:Z

.field private isPermissionFlagsChanged:Z

.field private final killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final runtimePermissionChangedUidDevices:Lcom/android/server/permission/access/immutable/MutableIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/permission/access/immutable/MutableIntMap<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

.field final synthetic this$0:Lcom/android/server/permission/access/permission/PermissionService;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/permission/PermissionService;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/permission/access/permission/PermissionService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2703
    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2708
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIntMap;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/permission/access/immutable/MutableIntMap;-><init>(Landroid/util/SparseArray;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionChangedUidDevices:Lcom/android/server/permission/access/immutable/MutableIntMap;

    .line 2710
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

    .line 2711
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIntSet;

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/permission/access/immutable/MutableIntSet;-><init>(Landroid/util/SparseBooleanArray;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->gidsChangedUids:Lcom/android/server/permission/access/immutable/MutableIntSet;

    .line 2714
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

    .line 2703
    return-void
.end method

.method public static final synthetic access$isAppBackupAndRestoreRunning(Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;I)Z
    .locals 1
    .param p0, "$this"    # Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;
    .param p1, "uid"    # I

    .line 2703
    invoke-direct {p0, p1}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isAppBackupAndRestoreRunning(I)Z

    move-result v0

    return v0
.end method

.method private final getSecureInt(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 4
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2844
    nop

    .line 2845
    :try_start_0
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    invoke-static {v0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getContext$p(Lcom/android/server/permission/access/permission/PermissionService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2846
    :catch_0
    move-exception v0

    .line 2847
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static {}, Lcom/android/server/permission/access/permission/PermissionService;->access$getLOG_TAG$cp()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2848
    const/4 v1, 0x0

    move-object v0, v1

    .line 2849
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    return-object v0
.end method

.method private final isAppBackupAndRestoreRunning(I)Z
    .locals 5
    .param p1, "uid"    # I

    .line 2822
    nop

    .line 2823
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    .line 2824
    nop

    .line 2825
    nop

    .line 2826
    nop

    .line 2823
    const-string v1, "android.permission.BACKUP"

    const-string v2, "default:0"

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/permission/access/permission/PermissionService;->checkUidPermission(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2829
    return v1

    .line 2832
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2834
    .local v0, "userId":I
    const-string/jumbo v2, "user_setup_complete"

    invoke-direct {p0, v2, v0}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->getSecureInt(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :goto_0
    move v2, v1

    .line 2835
    .local v2, "isInSetup":Z
    :goto_1
    if-eqz v2, :cond_3

    return v3

    .line 2838
    :cond_3
    const-string/jumbo v4, "user_setup_personalization_state"

    invoke-direct {p0, v4, v0}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->getSecureInt(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    .line 2839
    nop

    .line 2838
    if-nez v4, :cond_5

    :cond_4
    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_4

    move v1, v3

    .line 2837
    :goto_2
    nop

    .line 2840
    .local v1, "isInDeferredSetup":Z
    return v1
.end method


# virtual methods
.method public final addKillRuntimePermissionRevokedUidsReason(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)V
    .locals 2
    .param p1, "$this$addKillRuntimePermissionRevokedUidsReason"    # Lcom/android/server/permission/access/MutateStateScope;
    .param p2, "reason"    # Ljava/lang/String;

    .line 2721
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

    .local v0, "$this$plusAssign$iv":Landroid/util/ArraySet;
    const/4 v1, 0x0

    .line 72
    .local v1, "$i$f$plusAssign":I
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 73
    nop

    .line 2722
    .end local v0    # "$this$plusAssign$iv":Landroid/util/ArraySet;
    .end local v1    # "$i$f$plusAssign":I
    return-void
.end method

.method public onDevicePermissionFlagsChanged(IILjava/lang/String;Ljava/lang/String;II)V
    .locals 17
    .param p1, "appId"    # I
    .param p2, "userId"    # I
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "permissionName"    # Ljava/lang/String;
    .param p5, "oldFlags"    # I
    .param p6, "newFlags"    # I

    .line 2749
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isPermissionFlagsChanged:Z

    .line 2751
    move/from16 v3, p1

    move/from16 v4, p2

    invoke-static {v4, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 2753
    .local v5, "uid":I
    iget-object v6, v0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    invoke-static {v6}, Lcom/android/server/permission/access/permission/PermissionService;->access$getService$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/AccessCheckingService;

    move-result-object v6

    .local v6, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    iget-object v7, v0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    const/4 v8, 0x0

    .line 287
    .local v8, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v9, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v6}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v10

    if-nez v10, :cond_0

    const-string/jumbo v10, "state"

    invoke-static {v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v10, 0x0

    :cond_0
    invoke-direct {v9, v10}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .local v9, "$this$onDevicePermissionFlagsChanged_u24lambda_u241":Lcom/android/server/permission/access/GetStateScope;
    const/4 v10, 0x0

    .line 2753
    .local v10, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$OnPermissionFlagsChangedListener$onDevicePermissionFlagsChanged$permission$1":I
    invoke-static {v7}, Lcom/android/server/permission/access/permission/PermissionService;->access$getPolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-result-object v7

    .line 2943
    .local v7, "$this$onDevicePermissionFlagsChanged_u24lambda_u241_u24lambda_u240":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v11, 0x0

    .line 2753
    .local v11, "$i$a$-with-PermissionService$OnPermissionFlagsChangedListener$onDevicePermissionFlagsChanged$permission$1$1":I
    invoke-virtual {v7, v9}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/permission/access/permission/Permission;

    .line 287
    .end local v7    # "$this$onDevicePermissionFlagsChanged_u24lambda_u241_u24lambda_u240":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v9    # "$this$onDevicePermissionFlagsChanged_u24lambda_u241":Lcom/android/server/permission/access/GetStateScope;
    .end local v10    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$OnPermissionFlagsChangedListener$onDevicePermissionFlagsChanged$permission$1":I
    .end local v11    # "$i$a$-with-PermissionService$OnPermissionFlagsChangedListener$onDevicePermissionFlagsChanged$permission$1$1":I
    nop

    .line 2753
    .end local v6    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v8    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    if-nez v12, :cond_1

    return-void

    .line 2752
    :cond_1
    nop

    .line 2754
    .local v12, "permission":Lcom/android/server/permission/access/permission/Permission;
    sget-object v6, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    move/from16 v7, p5

    invoke-virtual {v6, v7}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v6

    .line 2755
    .local v6, "wasPermissionGranted":Z
    sget-object v8, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    move/from16 v9, p6

    invoke-virtual {v8, v9}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v8

    .line 2757
    .local v8, "isPermissionGranted":Z
    move-object v10, v12

    .local v10, "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v11, 0x0

    .line 57
    .local v11, "$i$f$isRuntime":I
    move-object v13, v10

    .local v13, "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v14, 0x0

    .line 48
    .local v14, "$i$f$getProtection":I
    invoke-virtual {v13}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v13

    .line 57
    .end local v13    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v14    # "$i$f$getProtection":I
    const/4 v14, 0x0

    if-ne v13, v2, :cond_2

    move v10, v2

    goto :goto_0

    :cond_2
    move v10, v14

    .line 2757
    .end local v10    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v11    # "$i$f$isRuntime":I
    :goto_0
    if-eqz v10, :cond_6

    .line 2762
    if-eqz v6, :cond_4

    if-nez v8, :cond_4

    .line 2763
    iget-object v10, v0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

    .line 2764
    invoke-static {}, Lcom/android/server/permission/access/permission/PermissionService;->access$getNOTIFICATIONS_PERMISSIONS$cp()Landroid/util/ArraySet;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2765
    iget-object v11, v0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v5, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v11

    if-eqz v11, :cond_3

    move v11, v2

    goto :goto_1

    :cond_3
    move v11, v14

    .line 2763
    :goto_1
    nop

    .local v10, "$this$set$iv":Landroid/util/SparseBooleanArray;
    .local v11, "value$iv":Z
    const/4 v13, 0x0

    .line 116
    .local v13, "$i$f$set":I
    invoke-virtual {v10, v5, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 117
    nop

    .line 2767
    .end local v10    # "$this$set$iv":Landroid/util/SparseBooleanArray;
    .end local v11    # "value$iv":Z
    .end local v13    # "$i$f$set":I
    :cond_4
    iget-object v10, v0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionChangedUidDevices:Lcom/android/server/permission/access/immutable/MutableIntMap;

    .local v10, "$this$getOrPut$iv":Lcom/android/server/permission/access/immutable/MutableIntMap;
    const/4 v11, 0x0

    .line 77
    .local v11, "$i$f$getOrPut":I
    invoke-virtual {v10, v5}, Lcom/android/server/permission/access/immutable/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_5

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 78
    .local v15, "$i$a$-let-IntMapExtensionsKt$getOrPut$1$iv":I
    goto :goto_2

    .line 80
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-IntMapExtensionsKt$getOrPut$1$iv":I
    :cond_5
    const/4 v13, 0x0

    .line 2767
    .local v13, "$i$a$-getOrPut-PermissionService$OnPermissionFlagsChangedListener$onDevicePermissionFlagsChanged$1":I
    new-instance v15, Ljava/util/LinkedHashSet;

    invoke-direct {v15}, Ljava/util/LinkedHashSet;-><init>()V

    .line 80
    .end local v13    # "$i$a$-getOrPut-PermissionService$OnPermissionFlagsChangedListener$onDevicePermissionFlagsChanged$1":I
    move-object v13, v15

    .line 2952
    .local v13, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 80
    .local v16, "$i$a$-also-IntMapExtensionsKt$getOrPut$2$iv":I
    invoke-virtual {v10, v5, v13}, Lcom/android/server/permission/access/immutable/MutableIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .end local v10    # "$this$getOrPut$iv":Lcom/android/server/permission/access/immutable/MutableIntMap;
    .end local v11    # "$i$f$getOrPut":I
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-also-IntMapExtensionsKt$getOrPut$2$iv":I
    :goto_2
    check-cast v13, Ljava/util/Collection;

    .line 2767
    move-object/from16 v10, p3

    invoke-interface {v13, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2757
    :cond_6
    move-object/from16 v10, p3

    .line 2770
    :goto_3
    move-object v11, v12

    .local v11, "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v13, 0x0

    .line 150
    .local v13, "$i$f$getHasGids":I
    invoke-virtual {v11}, Lcom/android/server/permission/access/permission/Permission;->getGids()[I

    move-result-object v15

    array-length v15, v15

    if-nez v15, :cond_7

    goto :goto_4

    :cond_7
    move v2, v14

    .line 2770
    .end local v11    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v13    # "$i$f$getHasGids":I
    :goto_4
    if-nez v2, :cond_8

    if-eq v6, v8, :cond_8

    .line 2771
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->gidsChangedUids:Lcom/android/server/permission/access/immutable/MutableIntSet;

    invoke-static {v2, v5}, Lcom/android/server/permission/access/immutable/IntSetExtensionsKt;->plusAssign(Lcom/android/server/permission/access/immutable/MutableIntSet;I)V

    .line 2773
    :cond_8
    return-void
.end method

.method public onPermissionFlagsChanged(IILjava/lang/String;II)V
    .locals 7
    .param p1, "appId"    # I
    .param p2, "userId"    # I
    .param p3, "permissionName"    # Ljava/lang/String;
    .param p4, "oldFlags"    # I
    .param p5, "newFlags"    # I

    .line 2731
    nop

    .line 2732
    nop

    .line 2733
    nop

    .line 2734
    nop

    .line 2735
    nop

    .line 2736
    nop

    .line 2737
    nop

    .line 2731
    const-string v3, "default:0"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "appId":I
    .end local p2    # "userId":I
    .end local p3    # "permissionName":Ljava/lang/String;
    .end local p4    # "oldFlags":I
    .end local p5    # "newFlags":I
    .local v1, "appId":I
    .local v2, "userId":I
    .local v4, "permissionName":Ljava/lang/String;
    .local v5, "oldFlags":I
    .local v6, "newFlags":I
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->onDevicePermissionFlagsChanged(IILjava/lang/String;Ljava/lang/String;II)V

    .line 2739
    return-void
.end method

.method public onStateMutated()V
    .locals 18

    .line 2776
    move-object/from16 v2, p0

    iget-boolean v0, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isPermissionFlagsChanged:Z

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 2777
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 2778
    iput-boolean v6, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isPermissionFlagsChanged:Z

    .line 2781
    :cond_0
    iget-object v0, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionChangedUidDevices:Lcom/android/server/permission/access/immutable/MutableIntMap;

    .local v0, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntMap;
    iget-object v1, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    const/4 v3, 0x0

    .line 47
    .local v3, "$i$f$forEachIndexed":I
    const/4 v4, 0x0

    .local v4, "index$iv":I
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IntMap;->getSize()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_3

    .line 48
    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/immutable/IntMap;->keyAt(I)I

    move-result v8

    .local v8, "uid":I
    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/immutable/IntMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .local v9, "persistentDeviceIds":Ljava/util/Set;
    const/4 v10, 0x0

    .line 2782
    .local v10, "$i$a$-forEachIndexed-PermissionService$OnPermissionFlagsChangedListener$onStateMutated$1":I
    move-object v11, v9

    .local v11, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 2956
    .local v12, "$i$f$forEach":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .local v14, "element$iv":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Ljava/lang/String;

    .local v15, "deviceId":Ljava/lang/String;
    const/16 v16, 0x0

    .line 2783
    .local v16, "$i$a$-forEach-PermissionService$OnPermissionFlagsChangedListener$onStateMutated$1$1":I
    invoke-static {v1}, Lcom/android/server/permission/access/permission/PermissionService;->access$getOnPermissionsChangeListeners$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

    move-result-object v17

    if-nez v17, :cond_1

    const-string/jumbo v17, "onPermissionsChangeListeners"

    invoke-static/range {v17 .. v17}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    move-object/from16 v7, v17

    :goto_2
    invoke-virtual {v7, v8, v15}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;->onPermissionsChanged(ILjava/lang/String;)V

    .line 2784
    nop

    .line 2956
    .end local v15    # "deviceId":Ljava/lang/String;
    .end local v16    # "$i$a$-forEach-PermissionService$OnPermissionFlagsChangedListener$onStateMutated$1$1":I
    nop

    .end local v14    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 2957
    :cond_2
    nop

    .line 2785
    .end local v11    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$forEach":I
    nop

    .line 48
    .end local v8    # "uid":I
    .end local v9    # "persistentDeviceIds":Ljava/util/Set;
    .end local v10    # "$i$a$-forEachIndexed-PermissionService$OnPermissionFlagsChangedListener$onStateMutated$1":I
    nop

    .line 47
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 50
    .end local v4    # "index$iv":I
    nop

    .line 2786
    .end local v0    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntMap;
    .end local v3    # "$i$f$forEachIndexed":I
    iget-object v0, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionChangedUidDevices:Lcom/android/server/permission/access/immutable/MutableIntMap;

    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableIntMap;->clear()V

    .line 2788
    iget-boolean v0, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isKillRuntimePermissionRevokedUidsSkipped:Z

    const-string/jumbo v7, "handler"

    if-nez v0, :cond_7

    .line 2790
    iget-object v0, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2791
    iget-object v8, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

    const/16 v15, 0x3e

    const/16 v16, 0x0

    const-string v9, ", "

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v16}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_3

    .line 2793
    :cond_4
    const-string/jumbo v0, "permissions revoked"

    move-object v5, v0

    .line 2790
    :goto_3
    nop

    .line 2789
    nop

    .line 2795
    .local v5, "reason":Ljava/lang/String;
    iget-object v8, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

    .local v8, "$this$forEachIndexed$iv":Landroid/util/SparseBooleanArray;
    iget-object v4, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    const/4 v9, 0x0

    .line 40
    .local v9, "$i$f$forEachIndexed":I
    const/4 v0, 0x0

    .local v0, "index$iv":I
    move-object v1, v8

    .local v1, "$this$size$iv$iv":Landroid/util/SparseBooleanArray;
    const/4 v3, 0x0

    .line 120
    .local v3, "$i$f$getSize":I
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v10

    .line 40
    .end local v1    # "$this$size$iv$iv":Landroid/util/SparseBooleanArray;
    .end local v3    # "$i$f$getSize":I
    move v11, v0

    .end local v0    # "index$iv":I
    .local v11, "index$iv":I
    :goto_4
    if-ge v11, v10, :cond_6

    .line 41
    invoke-virtual {v8, v11}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .local v3, "uid":I
    invoke-virtual {v8, v11}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    .local v1, "areOnlyNotificationsPermissionsRevoked":Z
    const/4 v12, 0x0

    .line 2799
    .local v12, "$i$a$-forEachIndexed-PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2":I
    invoke-static {v4}, Lcom/android/server/permission/access/permission/PermissionService;->access$getHandler$p(Lcom/android/server/permission/access/permission/PermissionService;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v13, 0x0

    goto :goto_5

    :cond_5
    move-object v13, v0

    :goto_5
    new-instance v0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;-><init>(ZLcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;ILcom/android/server/permission/access/permission/PermissionService;Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2808
    nop

    .line 41
    .end local v1    # "areOnlyNotificationsPermissionsRevoked":Z
    .end local v3    # "uid":I
    .end local v12    # "$i$a$-forEachIndexed-PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2":I
    nop

    .line 40
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_6
    nop

    .line 43
    .end local v11    # "index$iv":I
    nop

    .line 2810
    .end local v5    # "reason":Ljava/lang/String;
    .end local v8    # "$this$forEachIndexed$iv":Landroid/util/SparseBooleanArray;
    .end local v9    # "$i$f$forEachIndexed":I
    :cond_7
    iget-object v0, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2812
    iget-object v0, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->gidsChangedUids:Lcom/android/server/permission/access/immutable/MutableIntSet;

    .local v0, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntSet;
    iget-object v1, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    const/4 v3, 0x0

    .line 38
    .local v3, "$i$f$forEachIndexed":I
    const/4 v4, 0x0

    .restart local v4    # "index$iv":I
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IntSet;->getSize()I

    move-result v5

    :goto_6
    if-ge v4, v5, :cond_9

    .line 39
    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/immutable/IntSet;->elementAt(I)I

    move-result v8

    .local v8, "uid":I
    const/4 v9, 0x0

    .line 2813
    .local v9, "$i$a$-forEachIndexed-PermissionService$OnPermissionFlagsChangedListener$onStateMutated$3":I
    invoke-static {v1}, Lcom/android/server/permission/access/permission/PermissionService;->access$getHandler$p(Lcom/android/server/permission/access/permission/PermissionService;)Landroid/os/Handler;

    move-result-object v10

    if-nez v10, :cond_8

    invoke-static {v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v10, 0x0

    :cond_8
    new-instance v11, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$3$1;

    invoke-direct {v11, v1, v8}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$3$1;-><init>(Lcom/android/server/permission/access/permission/PermissionService;I)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2814
    nop

    .line 39
    .end local v8    # "uid":I
    .end local v9    # "$i$a$-forEachIndexed-PermissionService$OnPermissionFlagsChangedListener$onStateMutated$3":I
    nop

    .line 38
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_9
    nop

    .line 41
    .end local v4    # "index$iv":I
    nop

    .line 2815
    .end local v0    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntSet;
    .end local v3    # "$i$f$forEachIndexed":I
    iget-object v0, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->gidsChangedUids:Lcom/android/server/permission/access/immutable/MutableIntSet;

    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableIntSet;->clear()V

    .line 2817
    iput-boolean v6, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isKillRuntimePermissionRevokedUidsSkipped:Z

    .line 2818
    iget-object v0, v2, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 2819
    return-void
.end method

.method public final skipKillRuntimePermissionRevokedUids(Lcom/android/server/permission/access/MutateStateScope;)V
    .locals 1
    .param p1, "$this$skipKillRuntimePermissionRevokedUids"    # Lcom/android/server/permission/access/MutateStateScope;

    .line 2717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isKillRuntimePermissionRevokedUidsSkipped:Z

    .line 2718
    return-void
.end method
