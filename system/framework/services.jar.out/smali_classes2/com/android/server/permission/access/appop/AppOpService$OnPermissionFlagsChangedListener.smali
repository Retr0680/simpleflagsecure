.class final Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;
.super Ljava/lang/Object;
.source "AppOpService.kt"

# interfaces
.implements Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;
.implements Lcom/android/server/permission/access/permission/DevicePermissionPolicy$OnDevicePermissionFlagsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/permission/access/appop/AppOpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnPermissionFlagsChangedListener"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppOpService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppOpService.kt\ncom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener\n+ 2 ArraySetExtensions.kt\ncom/android/server/permission/access/collection/ArraySetExtensionsKt\n+ 3 AccessCheckingService.kt\ncom/android/server/permission/access/AccessCheckingService\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 ArrayMapExtensions.kt\ncom/android/server/permission/access/collection/ArrayMapExtensionsKt\n*L\n1#1,601:1\n42#2,4:602\n42#2,4:612\n287#3:606\n1#4:607\n99#5,2:608\n40#5,2:610\n43#5:616\n*S KotlinDebug\n*F\n+ 1 AppOpService.kt\ncom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener\n*L\n509#1:602,4\n584#1:612,4\n558#1:606\n577#1:608,2\n583#1:610,2\n583#1:616\n*E\n"
.end annotation


# instance fields
.field private final pendingChanges:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/permission/jarjar/kotlin/Triple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/permission/access/appop/AppOpService;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/appop/AppOpService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/permission/access/appop/AppOpService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 475
    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->pendingChanges:Landroid/util/ArrayMap;

    .line 475
    return-void
.end method

.method private final addPendingChangedModeIfNeeded(IILjava/lang/String;IIIII)V
    .locals 7
    .param p1, "appId"    # I
    .param p2, "userId"    # I
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "appOpCode"    # I
    .param p5, "oldForegroundFlags"    # I
    .param p6, "oldBackgroundFlags"    # I
    .param p7, "newForegroundFlags"    # I
    .param p8, "newBackgroundFlags"    # I

    .line 572
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    invoke-static {v0, p5, p6}, Lcom/android/server/permission/access/appop/AppOpService;->access$evaluateModeFromPermissionFlags(Lcom/android/server/permission/access/appop/AppOpService;II)I

    move-result v0

    .line 573
    .local v0, "oldMode":I
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    invoke-static {v1, p7, p8}, Lcom/android/server/permission/access/appop/AppOpService;->access$evaluateModeFromPermissionFlags(Lcom/android/server/permission/access/appop/AppOpService;II)I

    move-result v1

    .line 575
    .local v1, "newMode":I
    if-eq v0, v1, :cond_0

    .line 576
    invoke-static {p2, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 577
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->pendingChanges:Landroid/util/ArrayMap;

    .local v3, "$this$set$iv":Landroid/util/ArrayMap;
    new-instance v4, Lcom/android/server/permission/jarjar/kotlin/Triple;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, p3, v6}, Lcom/android/server/permission/jarjar/kotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .local v4, "key$iv":Ljava/lang/Object;
    .local v5, "value$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 99
    .local v6, "$i$f$set":I
    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    nop

    .line 579
    .end local v2    # "uid":I
    .end local v3    # "$this$set$iv":Landroid/util/ArrayMap;
    .end local v4    # "key$iv":Ljava/lang/Object;
    .end local v5    # "value$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$set":I
    :cond_0
    return-void
.end method

.method private final getPermissionFlags(IILjava/lang/String;)I
    .locals 6
    .param p1, "appId"    # I
    .param p2, "userId"    # I
    .param p3, "permissionName"    # Ljava/lang/String;

    .line 558
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    invoke-static {v0}, Lcom/android/server/permission/access/appop/AppOpService;->access$getService$p(Lcom/android/server/permission/access/appop/AppOpService;)Lcom/android/server/permission/access/AccessCheckingService;

    move-result-object v0

    .local v0, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    const/4 v2, 0x0

    .line 287
    .local v2, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v3, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "state"

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_0
    invoke-direct {v3, v4}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .local v3, "$this$getPermissionFlags_u24lambda_u247":Lcom/android/server/permission/access/GetStateScope;
    const/4 v4, 0x0

    .line 559
    .local v4, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-AppOpService$OnPermissionFlagsChangedListener$getPermissionFlags$1":I
    invoke-static {v1}, Lcom/android/server/permission/access/appop/AppOpService;->access$getPermissionPolicy$p(Lcom/android/server/permission/access/appop/AppOpService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-result-object v1

    .line 607
    .local v1, "$this$getPermissionFlags_u24lambda_u247_u24lambda_u246":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v5, 0x0

    .line 559
    .local v5, "$i$a$-with-AppOpService$OnPermissionFlagsChangedListener$getPermissionFlags$1$1":I
    invoke-virtual {v1, v3, p1, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v1

    .line 287
    .end local v1    # "$this$getPermissionFlags_u24lambda_u247_u24lambda_u246":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v3    # "$this$getPermissionFlags_u24lambda_u247":Lcom/android/server/permission/access/GetStateScope;
    .end local v4    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-AppOpService$OnPermissionFlagsChangedListener$getPermissionFlags$1":I
    .end local v5    # "$i$a$-with-AppOpService$OnPermissionFlagsChangedListener$getPermissionFlags$1$1":I
    nop

    .line 560
    .end local v0    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v2    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    return v1
.end method


# virtual methods
.method public onDevicePermissionFlagsChanged(IILjava/lang/String;Ljava/lang/String;II)V
    .locals 20
    .param p1, "appId"    # I
    .param p2, "userId"    # I
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "permissionName"    # Ljava/lang/String;
    .param p5, "oldFlags"    # I
    .param p6, "newFlags"    # I

    .line 506
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v9, p4

    iget-object v3, v0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    invoke-static {v3}, Lcom/android/server/permission/access/appop/AppOpService;->access$getBackgroundToForegroundPermissionNames$p(Lcom/android/server/permission/access/appop/AppOpService;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    if-eqz v3, :cond_2

    iget-object v10, v0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    move-object v11, v3

    .local v11, "foregroundPermissions":Landroid/util/ArraySet;
    const/4 v12, 0x0

    .line 509
    .local v12, "$i$a$-let-AppOpService$OnPermissionFlagsChangedListener$onDevicePermissionFlagsChanged$1":I
    move-object v13, v11

    .local v13, "$this$forEachIndexed$iv":Landroid/util/ArraySet;
    const/4 v14, 0x0

    .line 42
    .local v14, "$i$f$forEachIndexed":I
    const/4 v3, 0x0

    .local v3, "index$iv":I
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v15

    :goto_0
    if-ge v3, v15, :cond_1

    .line 43
    invoke-virtual {v13, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "foregroundPermissionName":Ljava/lang/String;
    const/16 v16, 0x0

    .line 510
    .local v16, "$i$a$-forEachIndexed-AppOpService$OnPermissionFlagsChangedListener$onDevicePermissionFlagsChanged$1$1":I
    invoke-static {v10}, Lcom/android/server/permission/access/appop/AppOpService;->access$getRuntimePermissionNameToAppOp$p(Lcom/android/server/permission/access/appop/AppOpService;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .local v5, "appOpCode":I
    const/16 v17, 0x0

    .line 512
    .local v17, "$i$a$-let-AppOpService$OnPermissionFlagsChangedListener$onDevicePermissionFlagsChanged$1$1$1":I
    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->getPermissionFlags(IILjava/lang/String;)I

    move-result v6

    .line 511
    nop

    .line 513
    .local v6, "foregroundPermissionFlags":I
    nop

    .line 514
    nop

    .line 515
    nop

    .line 516
    nop

    .line 517
    nop

    .line 518
    nop

    .line 519
    nop

    .line 520
    nop

    .line 521
    nop

    .line 513
    move v7, v6

    move/from16 v8, p6

    move/from16 v18, v3

    move-object/from16 v19, v4

    move v4, v5

    move v5, v6

    move-object/from16 v3, p3

    move/from16 v6, p5

    .end local v3    # "index$iv":I
    .end local v6    # "foregroundPermissionFlags":I
    .local v4, "appOpCode":I
    .local v5, "foregroundPermissionFlags":I
    .local v18, "index$iv":I
    .local v19, "foregroundPermissionName":Ljava/lang/String;
    invoke-direct/range {v0 .. v8}, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->addPendingChangedModeIfNeeded(IILjava/lang/String;IIIII)V

    .line 523
    nop

    .line 510
    .end local v4    # "appOpCode":I
    .end local v5    # "foregroundPermissionFlags":I
    .end local v17    # "$i$a$-let-AppOpService$OnPermissionFlagsChangedListener$onDevicePermissionFlagsChanged$1$1$1":I
    :goto_1
    goto :goto_2

    .end local v18    # "index$iv":I
    .end local v19    # "foregroundPermissionName":Ljava/lang/String;
    .restart local v3    # "index$iv":I
    .local v4, "foregroundPermissionName":Ljava/lang/String;
    :cond_0
    move/from16 v18, v3

    move-object/from16 v19, v4

    .end local v3    # "index$iv":I
    .end local v4    # "foregroundPermissionName":Ljava/lang/String;
    .restart local v18    # "index$iv":I
    .restart local v19    # "foregroundPermissionName":Ljava/lang/String;
    goto :goto_1

    .line 524
    :goto_2
    nop

    .line 43
    .end local v16    # "$i$a$-forEachIndexed-AppOpService$OnPermissionFlagsChangedListener$onDevicePermissionFlagsChanged$1$1":I
    .end local v19    # "foregroundPermissionName":Ljava/lang/String;
    nop

    .line 42
    add-int/lit8 v3, v18, 0x1

    .end local v18    # "index$iv":I
    .restart local v3    # "index$iv":I
    goto :goto_0

    :cond_1
    move/from16 v18, v3

    .line 45
    .end local v3    # "index$iv":I
    nop

    .line 525
    .end local v13    # "$this$forEachIndexed$iv":Landroid/util/ArraySet;
    .end local v14    # "$i$f$forEachIndexed":I
    nop

    .line 506
    .end local v11    # "foregroundPermissions":Landroid/util/ArraySet;
    .end local v12    # "$i$a$-let-AppOpService$OnPermissionFlagsChangedListener$onDevicePermissionFlagsChanged$1":I
    sget-object v3, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;

    goto/16 :goto_3

    .line 526
    :cond_2
    iget-object v3, v0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    invoke-static {v3}, Lcom/android/server/permission/access/appop/AppOpService;->access$getForegroundToBackgroundPermissionName$p(Lcom/android/server/permission/access/appop/AppOpService;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    nop

    if-eqz v3, :cond_4

    iget-object v5, v0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    move-object v10, v3

    .local v10, "backgroundPermission":Ljava/lang/String;
    const/4 v11, 0x0

    .line 528
    .local v11, "$i$a$-let-AppOpService$OnPermissionFlagsChangedListener$onDevicePermissionFlagsChanged$2":I
    invoke-static {v5}, Lcom/android/server/permission/access/appop/AppOpService;->access$getRuntimePermissionNameToAppOp$p(Lcom/android/server/permission/access/appop/AppOpService;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    nop

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v4

    .local v4, "appOpCode":I
    const/4 v12, 0x0

    .line 530
    .local v12, "$i$a$-let-AppOpService$OnPermissionFlagsChangedListener$onDevicePermissionFlagsChanged$2$1":I
    invoke-direct {v0, v1, v2, v10}, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->getPermissionFlags(IILjava/lang/String;)I

    move-result v6

    .line 529
    nop

    .line 531
    .local v6, "backgroundPermissionFlags":I
    nop

    .line 532
    nop

    .line 533
    nop

    .line 534
    nop

    .line 535
    nop

    .line 536
    nop

    .line 537
    nop

    .line 538
    nop

    .line 539
    nop

    .line 531
    move v8, v6

    move-object/from16 v3, p3

    move/from16 v5, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->addPendingChangedModeIfNeeded(IILjava/lang/String;IIIII)V

    .line 541
    nop

    .line 528
    .end local v4    # "appOpCode":I
    .end local v6    # "backgroundPermissionFlags":I
    .end local v12    # "$i$a$-let-AppOpService$OnPermissionFlagsChangedListener$onDevicePermissionFlagsChanged$2$1":I
    sget-object v4, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;

    .line 541
    :cond_3
    nop

    .line 526
    .end local v10    # "backgroundPermission":Ljava/lang/String;
    .end local v11    # "$i$a$-let-AppOpService$OnPermissionFlagsChangedListener$onDevicePermissionFlagsChanged$2":I
    nop

    .line 506
    :cond_4
    if-nez v4, :cond_5

    .line 543
    iget-object v1, v0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    invoke-static {v1}, Lcom/android/server/permission/access/appop/AppOpService;->access$getRuntimePermissionNameToAppOp$p(Lcom/android/server/permission/access/appop/AppOpService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    nop

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v4

    .restart local v4    # "appOpCode":I
    const/4 v10, 0x0

    .line 544
    .local v10, "$i$a$-let-AppOpService$OnPermissionFlagsChangedListener$onDevicePermissionFlagsChanged$3":I
    nop

    .line 545
    nop

    .line 546
    nop

    .line 547
    nop

    .line 548
    nop

    .line 549
    nop

    .line 550
    nop

    .line 551
    nop

    .line 552
    nop

    .line 544
    const/16 v6, 0x10

    const/16 v8, 0x10

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->addPendingChangedModeIfNeeded(IILjava/lang/String;IIIII)V

    .line 554
    nop

    .line 543
    .end local v4    # "appOpCode":I
    .end local v10    # "$i$a$-let-AppOpService$OnPermissionFlagsChangedListener$onDevicePermissionFlagsChanged$3":I
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;

    .line 555
    :cond_5
    :goto_3
    return-void
.end method

.method public onPermissionFlagsChanged(IILjava/lang/String;II)V
    .locals 7
    .param p1, "appId"    # I
    .param p2, "userId"    # I
    .param p3, "permissionName"    # Ljava/lang/String;
    .param p4, "oldFlags"    # I
    .param p5, "newFlags"    # I

    .line 488
    nop

    .line 489
    nop

    .line 490
    nop

    .line 491
    nop

    .line 492
    nop

    .line 493
    nop

    .line 494
    nop

    .line 488
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
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->onDevicePermissionFlagsChanged(IILjava/lang/String;Ljava/lang/String;II)V

    .line 496
    return-void
.end method

.method public onStateMutated()V
    .locals 19

    .line 582
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    invoke-static {v1}, Lcom/android/server/permission/access/appop/AppOpService;->access$getListeners$p(Lcom/android/server/permission/access/appop/AppOpService;)Landroid/util/ArraySet;

    move-result-object v1

    .line 583
    .local v1, "listenersLocal":Landroid/util/ArraySet;
    iget-object v2, v0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->pendingChanges:Landroid/util/ArrayMap;

    .local v2, "$this$forEachIndexed$iv":Landroid/util/ArrayMap;
    const/4 v3, 0x0

    .line 40
    .local v3, "$i$f$forEachIndexed":I
    const/4 v4, 0x0

    .local v4, "index$iv":I
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_1

    .line 41
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .local v7, "mode":I
    check-cast v6, Lcom/android/server/permission/jarjar/kotlin/Triple;

    .local v6, "key":Lcom/android/server/permission/jarjar/kotlin/Triple;
    const/4 v8, 0x0

    .line 584
    .local v8, "$i$a$-forEachIndexed-AppOpService$OnPermissionFlagsChangedListener$onStateMutated$1":I
    move-object v9, v1

    .local v9, "$this$forEachIndexed$iv":Landroid/util/ArraySet;
    const/4 v10, 0x0

    .line 42
    .local v10, "$i$f$forEachIndexed":I
    const/4 v11, 0x0

    .local v11, "index$iv":I
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v12

    :goto_1
    if-ge v11, v12, :cond_0

    .line 43
    invoke-virtual {v9, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;

    .local v13, "listener":Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;
    const/4 v14, 0x0

    .line 585
    .local v14, "$i$a$-forEachIndexed-AppOpService$OnPermissionFlagsChangedListener$onStateMutated$1$1":I
    invoke-virtual {v6}, Lcom/android/server/permission/jarjar/kotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    .line 586
    .local v15, "uid":I
    invoke-virtual {v6}, Lcom/android/server/permission/jarjar/kotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v1

    .end local v1    # "listenersLocal":Landroid/util/ArraySet;
    .local v17, "listenersLocal":Landroid/util/ArraySet;
    move-object/from16 v1, v16

    check-cast v1, Ljava/lang/String;

    .line 587
    .local v1, "deviceId":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/server/permission/jarjar/kotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    move-object/from16 v18, v2

    .end local v2    # "$this$forEachIndexed$iv":Landroid/util/ArrayMap;
    .local v18, "$this$forEachIndexed$iv":Landroid/util/ArrayMap;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 589
    .local v2, "appOpCode":I
    invoke-interface {v13, v15, v2, v7, v1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;->onUidModeChanged(IIILjava/lang/String;)V

    .line 590
    nop

    .line 43
    .end local v1    # "deviceId":Ljava/lang/String;
    .end local v2    # "appOpCode":I
    .end local v13    # "listener":Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;
    .end local v14    # "$i$a$-forEachIndexed-AppOpService$OnPermissionFlagsChangedListener$onStateMutated$1$1":I
    .end local v15    # "uid":I
    nop

    .line 42
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    goto :goto_1

    .end local v17    # "listenersLocal":Landroid/util/ArraySet;
    .end local v18    # "$this$forEachIndexed$iv":Landroid/util/ArrayMap;
    .local v1, "listenersLocal":Landroid/util/ArraySet;
    .local v2, "$this$forEachIndexed$iv":Landroid/util/ArrayMap;
    :cond_0
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .line 45
    .end local v1    # "listenersLocal":Landroid/util/ArraySet;
    .end local v2    # "$this$forEachIndexed$iv":Landroid/util/ArrayMap;
    .end local v11    # "index$iv":I
    .restart local v17    # "listenersLocal":Landroid/util/ArraySet;
    .restart local v18    # "$this$forEachIndexed$iv":Landroid/util/ArrayMap;
    nop

    .line 591
    .end local v9    # "$this$forEachIndexed$iv":Landroid/util/ArraySet;
    .end local v10    # "$i$f$forEachIndexed":I
    nop

    .line 41
    .end local v6    # "key":Lcom/android/server/permission/jarjar/kotlin/Triple;
    .end local v7    # "mode":I
    .end local v8    # "$i$a$-forEachIndexed-AppOpService$OnPermissionFlagsChangedListener$onStateMutated$1":I
    nop

    .line 40
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v17    # "listenersLocal":Landroid/util/ArraySet;
    .end local v18    # "$this$forEachIndexed$iv":Landroid/util/ArrayMap;
    .restart local v1    # "listenersLocal":Landroid/util/ArraySet;
    .restart local v2    # "$this$forEachIndexed$iv":Landroid/util/ArrayMap;
    :cond_1
    move-object/from16 v17, v1

    .line 43
    .end local v1    # "listenersLocal":Landroid/util/ArraySet;
    .end local v4    # "index$iv":I
    .restart local v17    # "listenersLocal":Landroid/util/ArraySet;
    nop

    .line 593
    .end local v2    # "$this$forEachIndexed$iv":Landroid/util/ArrayMap;
    .end local v3    # "$i$f$forEachIndexed":I
    iget-object v1, v0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->pendingChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 594
    return-void
.end method
