.class final Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;
.super Landroid/permission/IPermissionChecker$Stub;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PermissionCheckerService"
.end annotation


# static fields
.field private static final sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;


# direct methods
.method static bridge synthetic -$$Nest$smfinishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1027
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1030
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 1035
    invoke-direct {p0}, Landroid/permission/IPermissionChecker$Stub;-><init>()V

    .line 1036
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    .line 1037
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 1038
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 1039
    return-void
.end method

.method private static checkAppOpPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissionManagerServiceInt"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "forDataDelivery"    # Z
    .param p6, "fromDatasource"    # Z

    .line 1212
    move-object/from16 v0, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-static {v14}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v2

    .line 1213
    .local v2, "op":I
    const/16 v16, 0x2

    if-gez v2, :cond_0

    .line 1214
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Appop permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with no app op defined!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    return v16

    .line 1218
    :cond_0
    move-object/from16 v1, p3

    .line 1219
    .local v1, "current":Landroid/content/AttributionSource;
    const/4 v3, 0x0

    move-object/from16 v18, v3

    move-object v3, v1

    move-object/from16 v1, v18

    .line 1222
    .local v1, "next":Landroid/content/AttributionSource;
    .local v3, "current":Landroid/content/AttributionSource;
    :goto_0
    const/4 v4, 0x1

    const/16 v17, 0x0

    if-nez p6, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    move/from16 v7, v17

    goto :goto_2

    :goto_1
    move v7, v4

    .line 1224
    .local v7, "skipCurrentChecks":Z
    :goto_2
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    .line 1228
    if-eqz p6, :cond_3

    invoke-virtual {v3, v15}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    if-eqz v1, :cond_4

    .line 1229
    invoke-virtual {v3, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1230
    return v16

    .line 1236
    :cond_4
    if-eqz p6, :cond_5

    .line 1237
    invoke-virtual {v3, v15}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v1, :cond_5

    .line 1238
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v5

    if-nez v5, :cond_5

    move v9, v4

    goto :goto_3

    :cond_5
    move/from16 v9, v17

    :goto_3
    nop

    .line 1239
    .local v9, "singleReceiverFromDatasource":Z
    if-nez v9, :cond_6

    if-nez v1, :cond_7

    :cond_6
    goto :goto_4

    :cond_7
    move/from16 v8, v17

    goto :goto_5

    :goto_4
    move v8, v4

    .line 1241
    .local v8, "selfAccess":Z
    :goto_5
    move-object v4, v1

    .end local v1    # "next":Landroid/content/AttributionSource;
    .local v4, "next":Landroid/content/AttributionSource;
    invoke-virtual {v15}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v6, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    move/from16 v5, p5

    move-object v15, v4

    move-object/from16 v4, p4

    .end local v4    # "next":Landroid/content/AttributionSource;
    .local v15, "next":Landroid/content/AttributionSource;
    invoke-static/range {v0 .. v13}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I

    move-result v1

    .line 1248
    .local v1, "opMode":I
    packed-switch v1, :pswitch_data_0

    move-object/from16 v4, p1

    goto :goto_6

    .line 1254
    :pswitch_0
    if-nez v7, :cond_8

    invoke-static/range {p0 .. p3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1256
    return v16

    .line 1258
    :cond_8
    if-eqz v15, :cond_9

    move-object/from16 v4, p1

    invoke-static {v0, v4, v14, v15}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1260
    return v16

    .line 1258
    :cond_9
    move-object/from16 v4, p1

    .line 1265
    :cond_a
    :goto_6
    if-eqz v15, :cond_b

    invoke-virtual {v15}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v5

    if-nez v5, :cond_c

    :cond_b
    goto :goto_7

    .line 1269
    :cond_c
    move-object v3, v15

    .line 1270
    .end local v1    # "opMode":I
    .end local v7    # "skipCurrentChecks":Z
    .end local v8    # "selfAccess":Z
    .end local v9    # "singleReceiverFromDatasource":Z
    move-object v1, v15

    move-object/from16 v15, p3

    goto :goto_0

    .line 1266
    .restart local v1    # "opMode":I
    .restart local v7    # "skipCurrentChecks":Z
    .restart local v8    # "selfAccess":Z
    .restart local v9    # "singleReceiverFromDatasource":Z
    :goto_7
    return v17

    .line 1251
    :pswitch_1
    move-object/from16 v4, p1

    return v16

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static checkOp(Landroid/content/Context;ILcom/android/server/pm/permission/PermissionManagerServiceInternal;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "op"    # I
    .param p2, "permissionManagerServiceInt"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "forDataDelivery"    # Z
    .param p6, "startDataDelivery"    # Z

    .line 1483
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v14, 0x2

    if-ltz p1, :cond_0

    invoke-virtual {v1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    goto/16 :goto_a

    .line 1487
    :cond_1
    nop

    .line 1488
    move/from16 v4, p6

    invoke-static {v4, v1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->getAttributionChainId(ZLandroid/content/AttributionSource;)I

    move-result v13

    .line 1489
    .local v13, "attributionChainId":I
    const/4 v2, -0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-eq v13, v2, :cond_2

    move v2, v15

    goto :goto_0

    :cond_2
    move/from16 v2, v16

    :goto_0
    move/from16 v17, v2

    .line 1491
    .local v17, "hasChain":Z
    move-object/from16 v2, p3

    .line 1492
    .local v2, "current":Landroid/content/AttributionSource;
    const/4 v3, 0x0

    .line 1496
    .local v3, "next":Landroid/content/AttributionSource;
    if-eqz v17, :cond_4

    const-string v5, "android.permission.UPDATE_APP_OPS_STATS"

    move-object/from16 v7, p2

    invoke-static {v0, v7, v5, v2}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move/from16 v5, v16

    goto :goto_2

    :cond_4
    move-object/from16 v7, p2

    :goto_1
    move v5, v15

    :goto_2
    move/from16 v18, v5

    .line 1500
    .local v18, "isChainStartTrusted":Z
    :goto_3
    if-eqz v3, :cond_5

    move v5, v15

    goto :goto_4

    :cond_5
    move/from16 v5, v16

    :goto_4
    move v8, v5

    .line 1501
    .local v8, "skipCurrentChecks":Z
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v9

    .line 1505
    .end local v3    # "next":Landroid/content/AttributionSource;
    .local v9, "next":Landroid/content/AttributionSource;
    if-eqz v9, :cond_6

    invoke-virtual {v2, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1506
    return v14

    .line 1510
    :cond_6
    if-nez v9, :cond_7

    move v5, v15

    goto :goto_5

    :cond_7
    move/from16 v5, v16

    .line 1511
    .local v5, "selfAccess":Z
    :goto_5
    if-eqz v18, :cond_a

    .line 1512
    invoke-virtual {v2, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v2, v1}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_8
    if-eqz v9, :cond_9

    .line 1513
    invoke-virtual {v9, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    move v6, v15

    goto :goto_6

    :cond_a
    move/from16 v6, v16

    :goto_6
    nop

    .line 1515
    .local v6, "isLinkTrusted":Z
    if-nez v8, :cond_b

    if-eqz v17, :cond_b

    .line 1516
    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxyAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v3

    move-object v10, v2

    move v11, v3

    .end local v2    # "current":Landroid/content/AttributionSource;
    .local v10, "current":Landroid/content/AttributionSource;
    goto :goto_7

    .line 1515
    .end local v10    # "current":Landroid/content/AttributionSource;
    .restart local v2    # "current":Landroid/content/AttributionSource;
    :cond_b
    move-object v10, v2

    .line 1518
    .end local v2    # "current":Landroid/content/AttributionSource;
    .restart local v10    # "current":Landroid/content/AttributionSource;
    move/from16 v11, v16

    :goto_7
    nop

    .line 1519
    .local v11, "proxyAttributionFlags":I
    if-eqz v17, :cond_c

    const/4 v3, 0x0

    move-object/from16 v1, p3

    move/from16 v4, p6

    move-object v2, v9

    .end local v9    # "next":Landroid/content/AttributionSource;
    .local v2, "next":Landroid/content/AttributionSource;
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxiedAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v3

    move-object/from16 v19, v2

    move/from16 v20, v6

    move v12, v3

    .end local v2    # "next":Landroid/content/AttributionSource;
    .end local v6    # "isLinkTrusted":Z
    .local v19, "next":Landroid/content/AttributionSource;
    .local v20, "isLinkTrusted":Z
    goto :goto_8

    .line 1521
    .end local v19    # "next":Landroid/content/AttributionSource;
    .end local v20    # "isLinkTrusted":Z
    .restart local v6    # "isLinkTrusted":Z
    .restart local v9    # "next":Landroid/content/AttributionSource;
    :cond_c
    move/from16 v20, v6

    move-object/from16 v19, v9

    .end local v6    # "isLinkTrusted":Z
    .end local v9    # "next":Landroid/content/AttributionSource;
    .restart local v19    # "next":Landroid/content/AttributionSource;
    .restart local v20    # "isLinkTrusted":Z
    move/from16 v12, v16

    :goto_8
    nop

    .line 1523
    .local v12, "proxiedAttributionFlags":I
    invoke-virtual {v10}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v9, 0x0

    move-object v2, v10

    .end local v10    # "current":Landroid/content/AttributionSource;
    .local v2, "current":Landroid/content/AttributionSource;
    const/4 v10, -0x1

    move-object/from16 v4, p4

    move/from16 v6, p6

    move-object v3, v2

    move v7, v8

    move/from16 v2, p1

    move v8, v5

    move/from16 v5, p5

    .end local v2    # "current":Landroid/content/AttributionSource;
    .end local v5    # "selfAccess":Z
    .local v3, "current":Landroid/content/AttributionSource;
    .local v7, "skipCurrentChecks":Z
    .local v8, "selfAccess":Z
    invoke-static/range {v0 .. v13}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I

    move-result v1

    .line 1528
    move-object v2, v3

    move v5, v8

    .end local v3    # "current":Landroid/content/AttributionSource;
    .end local v8    # "selfAccess":Z
    .local v1, "opMode":I
    .restart local v2    # "current":Landroid/content/AttributionSource;
    .restart local v5    # "selfAccess":Z
    packed-switch v1, :pswitch_data_0

    .line 1537
    if-eqz v19, :cond_d

    invoke-virtual/range {v19 .. v19}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_d
    goto :goto_9

    .line 1541
    :cond_e
    move-object/from16 v2, v19

    .line 1542
    .end local v1    # "opMode":I
    .end local v5    # "selfAccess":Z
    .end local v7    # "skipCurrentChecks":Z
    .end local v11    # "proxyAttributionFlags":I
    .end local v12    # "proxiedAttributionFlags":I
    .end local v20    # "isLinkTrusted":Z
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move-object/from16 v1, p3

    move/from16 v4, p6

    move-object/from16 v3, v19

    goto/16 :goto_3

    .line 1538
    .restart local v1    # "opMode":I
    .restart local v5    # "selfAccess":Z
    .restart local v7    # "skipCurrentChecks":Z
    .restart local v11    # "proxyAttributionFlags":I
    .restart local v12    # "proxiedAttributionFlags":I
    .restart local v20    # "isLinkTrusted":Z
    :goto_9
    return v16

    .line 1530
    :pswitch_0
    return v14

    .line 1533
    :pswitch_1
    return v15

    .line 1484
    .end local v1    # "opMode":I
    .end local v2    # "current":Landroid/content/AttributionSource;
    .end local v5    # "selfAccess":Z
    .end local v7    # "skipCurrentChecks":Z
    .end local v11    # "proxyAttributionFlags":I
    .end local v12    # "proxiedAttributionFlags":I
    .end local v13    # "attributionChainId":I
    .end local v17    # "hasChain":Z
    .end local v18    # "isChainStartTrusted":Z
    .end local v19    # "next":Landroid/content/AttributionSource;
    .end local v20    # "isLinkTrusted":Z
    :goto_a
    return v14

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissionManagerServiceInt"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "forDataDelivery"    # Z
    .param p6, "startDataDelivery"    # Z
    .param p7, "fromDatasource"    # Z
    .param p8, "attributedOp"    # I

    .line 1168
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/PermissionInfo;

    .line 1169
    .local v1, "permissionInfo":Landroid/content/pm/PermissionInfo;
    const/4 v2, 0x2

    const/4 v0, 0x0

    if-nez v1, :cond_2

    .line 1171
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p2, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    move-object v1, v4

    .line 1172
    const-string v4, "android"

    iget-object v5, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1173
    invoke-static {p0, p2}, Landroid/health/connect/HealthConnectManager;->isHealthPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 1178
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1176
    :cond_0
    :goto_0
    sget-object v5, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1180
    :cond_1
    move-object v10, v1

    goto :goto_2

    .line 1178
    :goto_1
    nop

    .line 1179
    .local v0, "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v2

    .line 1169
    .end local v0    # "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    move-object v10, v1

    .line 1183
    .end local v1    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .local v10, "permissionInfo":Landroid/content/pm/PermissionInfo;
    :goto_2
    invoke-virtual {v10}, Landroid/content/pm/PermissionInfo;->isAppOp()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1184
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkAppOpPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I

    move-result v0

    return v0

    .line 1187
    :cond_3
    invoke-virtual {v10}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1188
    invoke-static/range {p0 .. p8}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkRuntimePermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I

    move-result v0

    return v0

    .line 1193
    :cond_4
    if-nez p7, :cond_5

    invoke-static/range {p0 .. p3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1195
    return v2

    .line 1198
    :cond_5
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1199
    nop

    .line 1200
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v4

    .line 1199
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p8

    invoke-static/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I

    move-result v0

    return v0

    .line 1204
    :cond_6
    return v0
.end method

.method private static checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissionManagerServiceInt"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;

    .line 1402
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 1403
    .local v0, "uid":I
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v1

    .line 1404
    .local v1, "deviceId":I
    invoke-virtual {p0}, Landroid/content/Context;->getDeviceId()I

    move-result v2

    if-ne v2, v1, :cond_0

    move-object v2, p0

    goto :goto_0

    .line 1405
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->createDeviceContext(I)Landroid/content/Context;

    move-result-object v2

    :goto_0
    nop

    .line 1406
    .local v2, "deviceContext":Landroid/content/Context;
    const/4 v3, -0x1

    invoke-virtual {v2, p2, v3, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v6

    .line 1414
    .local v4, "permissionGranted":Z
    :goto_1
    if-nez v4, :cond_4

    .line 1415
    invoke-static {v0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v7

    nop

    if-eqz v7, :cond_4

    .line 1416
    const-string v7, "android.permission.RECORD_AUDIO"

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1417
    const-string v7, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "android.permission.CAMERA"

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1418
    :cond_2
    nop

    .line 1419
    invoke-interface {p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getHotwordDetectionServiceProvider()Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

    move-result-object v7

    .line 1420
    .local v7, "hotwordServiceProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;
    if-eqz v7, :cond_3

    .line 1421
    invoke-interface {v7}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;->getUid()I

    move-result v8

    if-ne v0, v8, :cond_3

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    move v4, v5

    .line 1423
    .end local v7    # "hotwordServiceProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;
    :cond_4
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v5

    .line 1424
    .local v5, "renouncedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v4, :cond_5

    invoke-interface {v5, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1425
    const-string v7, "android.permission.RENOUNCE_PERMISSIONS"

    invoke-virtual {v2, v7, v3, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_5

    .line 1427
    return v6

    .line 1429
    :cond_5
    return v4
.end method

.method private static checkRuntimePermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissionManagerServiceInt"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "forDataDelivery"    # Z
    .param p6, "startDataDelivery"    # Z
    .param p7, "fromDatasource"    # Z
    .param p8, "attributedOp"    # I

    .line 1279
    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v1, p3

    move/from16 v4, p6

    invoke-static {v15}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v7

    .line 1280
    .local v7, "op":I
    nop

    .line 1281
    invoke-static {v4, v1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->getAttributionChainId(ZLandroid/content/AttributionSource;)I

    move-result v13

    .line 1282
    .local v13, "attributionChainId":I
    const/4 v2, -0x1

    const/16 v16, 0x1

    const/4 v8, 0x0

    if-eq v13, v2, :cond_0

    move/from16 v2, v16

    goto :goto_0

    :cond_0
    move v2, v8

    :goto_0
    move/from16 v17, v2

    .line 1283
    .local v17, "hasChain":Z
    move-object/from16 v2, p3

    .line 1284
    .local v2, "current":Landroid/content/AttributionSource;
    const/4 v3, 0x0

    .line 1285
    .local v3, "next":Landroid/content/AttributionSource;
    const/4 v5, 0x0

    .line 1288
    .local v5, "prev":Landroid/content/AttributionSource;
    if-eqz v17, :cond_1

    const-string v6, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {v0, v14, v6, v2}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    move v6, v8

    goto :goto_2

    :goto_1
    move/from16 v6, v16

    :goto_2
    move/from16 v18, v6

    move-object/from16 v19, v5

    .line 1292
    .end local v5    # "prev":Landroid/content/AttributionSource;
    .local v18, "isChainStartTrusted":Z
    .local v19, "prev":Landroid/content/AttributionSource;
    :goto_3
    if-nez p7, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    goto :goto_4

    :cond_4
    move v5, v8

    goto :goto_5

    :goto_4
    move/from16 v5, v16

    :goto_5
    move v9, v5

    .line 1293
    .local v9, "skipCurrentChecks":Z
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v10

    .line 1297
    .end local v3    # "next":Landroid/content/AttributionSource;
    .local v10, "next":Landroid/content/AttributionSource;
    if-eqz p7, :cond_5

    invoke-virtual {v2, v1}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move/from16 v3, v16

    goto :goto_6

    :cond_5
    move v3, v8

    :goto_6
    move/from16 v20, v3

    .line 1298
    .local v20, "isDatasource":Z
    const/16 v21, 0x2

    if-nez v20, :cond_6

    if-eqz v10, :cond_6

    invoke-virtual {v2, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1299
    return v21

    .line 1303
    :cond_6
    if-nez v9, :cond_7

    invoke-static {v0, v14, v15, v2}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1305
    return v21

    .line 1308
    :cond_7
    if-eqz v10, :cond_8

    invoke-static {v0, v14, v15, v10}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1310
    return v21

    .line 1313
    :cond_8
    if-gez v7, :cond_b

    .line 1315
    sget-object v3, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v15}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    nop

    if-eqz v3, :cond_9

    .line 1316
    const-string v3, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {v3, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    if-nez v3, :cond_9

    .line 1317
    const-string v3, "android.permission.BODY_SENSORS_BACKGROUND"

    invoke-virtual {v3, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1318
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Platform runtime permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " with no app op defined!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    :cond_9
    if-nez v10, :cond_a

    .line 1322
    return v8

    .line 1324
    :cond_a
    move-object v2, v10

    .line 1325
    move-object v3, v10

    goto :goto_3

    .line 1331
    :cond_b
    if-eqz p7, :cond_c

    .line 1332
    invoke-virtual {v2, v1}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    if-eqz v10, :cond_c

    .line 1333
    invoke-virtual {v10}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v3

    if-nez v3, :cond_c

    move/from16 v3, v16

    goto :goto_7

    :cond_c
    move v3, v8

    :goto_7
    move v11, v3

    .line 1334
    .local v11, "singleReceiverFromDatasource":Z
    if-nez v11, :cond_d

    if-nez v10, :cond_e

    :cond_d
    goto :goto_8

    :cond_e
    move v5, v8

    goto :goto_9

    :goto_8
    move/from16 v5, v16

    .line 1335
    .local v5, "selfAccess":Z
    :goto_9
    if-eqz v18, :cond_11

    .line 1336
    invoke-virtual {v2, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v2, v1}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_f
    if-eqz v10, :cond_10

    .line 1337
    invoke-virtual {v10, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_10
    move/from16 v6, v16

    goto :goto_a

    :cond_11
    move v6, v8

    :goto_a
    nop

    .line 1339
    .local v6, "isLinkTrusted":Z
    if-nez v9, :cond_12

    if-eqz v17, :cond_12

    .line 1340
    move/from16 v3, p7

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxyAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v12

    move-object/from16 v22, v2

    .end local v2    # "current":Landroid/content/AttributionSource;
    .local v22, "current":Landroid/content/AttributionSource;
    goto :goto_b

    .line 1339
    .end local v22    # "current":Landroid/content/AttributionSource;
    .restart local v2    # "current":Landroid/content/AttributionSource;
    :cond_12
    move-object/from16 v22, v2

    .line 1342
    .end local v2    # "current":Landroid/content/AttributionSource;
    .restart local v22    # "current":Landroid/content/AttributionSource;
    move v12, v8

    :goto_b
    nop

    .line 1343
    .local v12, "proxyAttributionFlags":I
    if-eqz v17, :cond_13

    move-object/from16 v1, p3

    move/from16 v4, p6

    move/from16 v3, p7

    move-object v2, v10

    .end local v10    # "next":Landroid/content/AttributionSource;
    .local v2, "next":Landroid/content/AttributionSource;
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxiedAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v10

    move-object/from16 v23, v2

    move/from16 v24, v6

    .end local v2    # "next":Landroid/content/AttributionSource;
    .end local v6    # "isLinkTrusted":Z
    .local v23, "next":Landroid/content/AttributionSource;
    .local v24, "isLinkTrusted":Z
    goto :goto_c

    .line 1345
    .end local v23    # "next":Landroid/content/AttributionSource;
    .end local v24    # "isLinkTrusted":Z
    .restart local v6    # "isLinkTrusted":Z
    .restart local v10    # "next":Landroid/content/AttributionSource;
    :cond_13
    move/from16 v24, v6

    move-object/from16 v23, v10

    .end local v6    # "isLinkTrusted":Z
    .end local v10    # "next":Landroid/content/AttributionSource;
    .restart local v23    # "next":Landroid/content/AttributionSource;
    .restart local v24    # "isLinkTrusted":Z
    move v10, v8

    :goto_c
    nop

    .line 1347
    .local v10, "proxiedAttributionFlags":I
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    move-object/from16 v4, p4

    move/from16 v6, p6

    move/from16 v14, p7

    move v2, v7

    move v15, v8

    move v7, v9

    move v9, v11

    move v11, v12

    move-object/from16 v3, v22

    move v8, v5

    move v12, v10

    move/from16 v5, p5

    move/from16 v10, p8

    .end local v5    # "selfAccess":Z
    .end local v10    # "proxiedAttributionFlags":I
    .end local v22    # "current":Landroid/content/AttributionSource;
    .local v2, "op":I
    .local v3, "current":Landroid/content/AttributionSource;
    .local v7, "skipCurrentChecks":Z
    .local v8, "selfAccess":Z
    .local v9, "singleReceiverFromDatasource":Z
    .local v11, "proxyAttributionFlags":I
    .local v12, "proxiedAttributionFlags":I
    invoke-static/range {v0 .. v13}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I

    move-result v1

    .line 1352
    move v5, v8

    .end local v8    # "selfAccess":Z
    .local v1, "opMode":I
    .restart local v5    # "selfAccess":Z
    if-eqz p6, :cond_16

    if-eqz v1, :cond_16

    .line 1358
    if-eqz v19, :cond_15

    .line 1359
    invoke-virtual/range {v19 .. v19}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v4

    .line 1360
    .local v4, "cutAttrSourceState":Landroid/content/AttributionSourceState;
    iget-object v6, v4, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    array-length v6, v6

    if-lez v6, :cond_14

    .line 1361
    iget-object v6, v4, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    aget-object v6, v6, v15

    new-array v8, v15, [Landroid/content/AttributionSourceState;

    iput-object v8, v6, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    .line 1363
    :cond_14
    move/from16 v10, p8

    invoke-static {v0, v10, v4, v14}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V

    goto :goto_d

    .line 1358
    .end local v4    # "cutAttrSourceState":Landroid/content/AttributionSourceState;
    :cond_15
    move/from16 v10, p8

    goto :goto_d

    .line 1352
    :cond_16
    move/from16 v10, p8

    .line 1368
    :goto_d
    packed-switch v1, :pswitch_data_0

    .line 1383
    if-eqz p6, :cond_17

    .line 1384
    new-instance v4, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;

    invoke-direct {v4, v0, v2, v3, v14}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;-><init>(Landroid/content/Context;ILandroid/content/AttributionSource;Z)V

    .line 1386
    .local v4, "registered":Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetsRunningAttributionSources()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    .end local v4    # "registered":Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;
    :cond_17
    if-eqz v23, :cond_18

    invoke-virtual/range {v23 .. v23}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v4

    if-nez v4, :cond_19

    :cond_18
    goto :goto_e

    .line 1394
    :cond_19
    move-object/from16 v19, v3

    .line 1395
    move-object/from16 v1, v23

    .line 1396
    .end local v3    # "current":Landroid/content/AttributionSource;
    .end local v5    # "selfAccess":Z
    .end local v7    # "skipCurrentChecks":Z
    .end local v9    # "singleReceiverFromDatasource":Z
    .end local v11    # "proxyAttributionFlags":I
    .end local v12    # "proxiedAttributionFlags":I
    .end local v20    # "isDatasource":Z
    .end local v24    # "isLinkTrusted":Z
    .local v1, "current":Landroid/content/AttributionSource;
    move-object/from16 v14, p1

    move/from16 v4, p6

    move v7, v2

    move v8, v15

    move-object/from16 v3, v23

    move-object/from16 v15, p2

    move-object v2, v1

    move-object/from16 v1, p3

    goto/16 :goto_3

    .line 1390
    .local v1, "opMode":I
    .restart local v3    # "current":Landroid/content/AttributionSource;
    .restart local v5    # "selfAccess":Z
    .restart local v7    # "skipCurrentChecks":Z
    .restart local v9    # "singleReceiverFromDatasource":Z
    .restart local v11    # "proxyAttributionFlags":I
    .restart local v12    # "proxiedAttributionFlags":I
    .restart local v20    # "isDatasource":Z
    .restart local v24    # "isLinkTrusted":Z
    :goto_e
    return v15

    .line 1370
    :pswitch_0
    const-string v4, "android.permission.BLUETOOTH_CONNECT"

    move-object/from16 v15, p2

    invoke-virtual {v15, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1371
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BLUETOOTH_CONNECT permission hard denied as op mode is MODE_ERRORED. Permission check was requested for: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p3

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " and op transaction was invoked for "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1370
    :cond_1a
    move-object/from16 v8, p3

    .line 1376
    :goto_f
    return v21

    .line 1379
    :pswitch_1
    move-object/from16 v15, p2

    move-object/from16 v8, p3

    return v16

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static finishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "op"    # I
    .param p2, "attributionSourceState"    # Landroid/content/AttributionSourceState;
    .param p3, "fromDatasource"    # Z

    .line 1076
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1077
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 1079
    .local v0, "appOpsManager":Landroid/app/AppOpsManager;
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1080
    return-void

    .line 1083
    :cond_0
    new-instance v1, Landroid/content/AttributionSource;

    invoke-direct {v1, p2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    .line 1084
    .local v1, "current":Landroid/content/AttributionSource;
    const/4 v2, 0x0

    .line 1087
    .local v2, "next":Landroid/content/AttributionSource;
    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p3, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    move v5, v4

    goto :goto_2

    :goto_1
    move v5, v3

    .line 1089
    .local v5, "skipCurrentFinish":Z
    :goto_2
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    .line 1093
    if-eqz p3, :cond_3

    invoke-virtual {v1}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v6

    if-eq v6, p2, :cond_4

    :cond_3
    if-eqz v2, :cond_4

    .line 1094
    invoke-virtual {v1, p0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1095
    return-void

    .line 1101
    :cond_4
    if-eqz p3, :cond_5

    .line 1102
    invoke-virtual {v1}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v6

    if-ne v6, p2, :cond_5

    if-eqz v2, :cond_5

    .line 1103
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    if-nez v6, :cond_5

    move v6, v3

    goto :goto_3

    :cond_5
    move v6, v4

    :goto_3
    nop

    .line 1104
    .local v6, "singleReceiverFromDatasource":Z
    if-nez v6, :cond_6

    if-nez v2, :cond_7

    :cond_6
    goto :goto_4

    :cond_7
    move v3, v4

    .line 1106
    .local v3, "selfAccess":Z
    :goto_4
    if-nez v6, :cond_8

    .line 1107
    move-object v4, v1

    goto :goto_5

    :cond_8
    move-object v4, v2

    .line 1109
    .local v4, "accessorSource":Landroid/content/AttributionSource;
    :goto_5
    if-eqz v3, :cond_a

    .line 1110
    invoke-static {p0, v4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v7

    .line 1111
    .local v7, "resolvedPackageName":Ljava/lang/String;
    if-nez v7, :cond_9

    .line 1112
    return-void

    .line 1114
    :cond_9
    nop

    .line 1115
    invoke-virtual {v4, v7}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v8

    .line 1117
    .local v8, "resolvedAccessorSource":Landroid/content/AttributionSource;
    iget-object v9, p2, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v9, p1, v8}, Landroid/app/AppOpsManager;->finishOp(Landroid/os/IBinder;ILandroid/content/AttributionSource;)V

    .line 1119
    .end local v7    # "resolvedPackageName":Ljava/lang/String;
    .end local v8    # "resolvedAccessorSource":Landroid/content/AttributionSource;
    goto :goto_6

    .line 1120
    :cond_a
    nop

    .line 1121
    invoke-static {p0, v4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v7

    .line 1122
    .local v7, "resolvedAttributionSource":Landroid/content/AttributionSource;
    invoke-virtual {v7}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_b

    .line 1123
    return-void

    .line 1125
    :cond_b
    iget-object v8, p2, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    .line 1126
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v9

    .line 1125
    invoke-virtual {v0, v8, v9, v7, v5}, Landroid/app/AppOpsManager;->finishProxyOp(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/AttributionSource;Z)V

    .line 1129
    .end local v7    # "resolvedAttributionSource":Landroid/content/AttributionSource;
    :goto_6
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetsRunningAttributionSources()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    .line 1130
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;

    .line 1131
    .local v7, "registered":Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;
    if-eqz v7, :cond_c

    .line 1132
    invoke-virtual {v7}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->unregister()Z

    .line 1135
    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v8

    if-nez v8, :cond_e

    :cond_d
    goto :goto_7

    .line 1144
    :cond_e
    move-object v1, v2

    .line 1145
    .end local v3    # "selfAccess":Z
    .end local v4    # "accessorSource":Landroid/content/AttributionSource;
    .end local v5    # "skipCurrentFinish":Z
    .end local v6    # "singleReceiverFromDatasource":Z
    .end local v7    # "registered":Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;
    goto/16 :goto_0

    .line 1136
    .restart local v3    # "selfAccess":Z
    .restart local v4    # "accessorSource":Landroid/content/AttributionSource;
    .restart local v5    # "skipCurrentFinish":Z
    .restart local v6    # "singleReceiverFromDatasource":Z
    .restart local v7    # "registered":Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;
    :goto_7
    if-eqz v2, :cond_f

    .line 1137
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetsRunningAttributionSources()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;

    .line 1138
    if-eqz v7, :cond_f

    .line 1139
    invoke-virtual {v7}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->unregister()Z

    .line 1142
    :cond_f
    return-void
.end method

.method private static getAttributionChainId(ZLandroid/content/AttributionSource;)I
    .locals 3
    .param p0, "startDataDelivery"    # Z
    .param p1, "source"    # Landroid/content/AttributionSource;

    .line 1730
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    goto :goto_0

    .line 1733
    :cond_1
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 1736
    .local v0, "attributionChainId":I
    if-gez v0, :cond_2

    .line 1737
    sget-object v1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1738
    sget-object v1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 1740
    :cond_2
    return v0

    .line 1731
    .end local v0    # "attributionChainId":I
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private static performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "chainStartToken"    # Landroid/os/IBinder;
    .param p2, "op"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "forDataDelivery"    # Z
    .param p6, "startDataDelivery"    # Z
    .param p7, "skipProxyOperation"    # Z
    .param p8, "selfAccess"    # Z
    .param p9, "singleReceiverFromDatasource"    # Z
    .param p10, "attributedOp"    # I
    .param p11, "proxyAttributionFlags"    # I
    .param p12, "proxiedAttributionFlags"    # I
    .param p13, "attributionChainId"    # I

    .line 1557
    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v6, p3

    move/from16 v5, p10

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/AppOpsManager;

    .line 1558
    .local v3, "appOpsManager":Landroid/app/AppOpsManager;
    if-nez p9, :cond_0

    .line 1559
    move-object v0, v6

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    :goto_0
    move-object v15, v0

    .line 1560
    .local v15, "accessorSource":Landroid/content/AttributionSource;
    const/4 v4, 0x2

    if-nez p5, :cond_5

    .line 1561
    invoke-static {v1, v15}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v0

    .line 1563
    .local v0, "resolvedAccessorPackageName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1564
    return v4

    .line 1566
    :cond_1
    nop

    .line 1567
    invoke-virtual {v15, v0}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v7

    .line 1577
    .local v7, "resolvedAttributionSource":Landroid/content/AttributionSource;
    if-eqz p7, :cond_2

    if-nez p9, :cond_2

    .line 1578
    const/4 v8, 0x0

    goto :goto_1

    .line 1579
    :cond_2
    invoke-virtual {v3, v2, v7}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(ILandroid/content/AttributionSource;)I

    move-result v8

    :goto_1
    nop

    .line 1581
    .local v8, "opMode":I
    invoke-virtual {v15}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v9

    .line 1582
    .local v9, "next":Landroid/content/AttributionSource;
    if-nez p8, :cond_4

    if-nez v8, :cond_4

    if-eqz v9, :cond_4

    .line 1583
    invoke-static {v1, v9}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v10

    .line 1584
    .local v10, "resolvedNextPackageName":Ljava/lang/String;
    if-nez v10, :cond_3

    .line 1585
    return v4

    .line 1587
    :cond_3
    nop

    .line 1588
    invoke-virtual {v9, v10}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v4

    .line 1589
    .local v4, "resolvedNextAttributionSource":Landroid/content/AttributionSource;
    invoke-virtual {v3, v2, v4}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(ILandroid/content/AttributionSource;)I

    move-result v11

    return v11

    .line 1591
    .end local v4    # "resolvedNextAttributionSource":Landroid/content/AttributionSource;
    .end local v10    # "resolvedNextPackageName":Ljava/lang/String;
    :cond_4
    return v8

    .line 1592
    .end local v0    # "resolvedAccessorPackageName":Ljava/lang/String;
    .end local v7    # "resolvedAttributionSource":Landroid/content/AttributionSource;
    .end local v8    # "opMode":I
    .end local v9    # "next":Landroid/content/AttributionSource;
    :cond_5
    const-string v12, " with source "

    const-string v13, "Security exception for op "

    const-string v7, "android.permission.UPDATE_APP_OPS_STATS"

    const-string v8, " while not having "

    const-string v9, " protecting data with platform defined runtime permission "

    const-string v10, "Datasource "

    const/4 v0, -0x1

    const-string v14, ", "

    const-string v11, ":"

    if-eqz p6, :cond_b

    .line 1593
    move-object/from16 v16, v10

    invoke-static {v1, v15}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v10

    .line 1595
    .local v10, "resolvedAttributionSource":Landroid/content/AttributionSource;
    invoke-virtual {v10}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_6

    .line 1596
    return v4

    .line 1603
    :cond_6
    move/from16 v17, p2

    .line 1604
    .local v17, "startedOp":I
    const/16 v18, 0x0

    .line 1611
    .local v18, "checkedOpResult":I
    if-eq v5, v0, :cond_8

    if-eq v5, v2, :cond_8

    .line 1612
    invoke-virtual {v3, v2, v10}, Landroid/app/AppOpsManager;->checkOpNoThrow(ILandroid/content/AttributionSource;)I

    move-result v0

    .line 1613
    .end local v18    # "checkedOpResult":I
    .local v0, "checkedOpResult":I
    if-ne v0, v4, :cond_7

    .line 1614
    return v0

    .line 1616
    :cond_7
    move/from16 v17, p10

    move/from16 v18, v0

    .line 1618
    .end local v0    # "checkedOpResult":I
    .restart local v18    # "checkedOpResult":I
    :cond_8
    if-eqz p8, :cond_9

    .line 1620
    const/4 v11, 0x0

    move-object v2, v7

    move-object v7, v3

    move-object v3, v2

    move-object/from16 v12, p4

    move/from16 v13, p11

    move/from16 v14, p13

    move-object v4, v8

    move-object v5, v9

    move-object/from16 v2, v16

    move/from16 v9, v17

    move-object/from16 v8, p1

    .end local v3    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v17    # "startedOp":I
    .local v7, "appOpsManager":Landroid/app/AppOpsManager;
    .local v9, "startedOp":I
    :try_start_0
    invoke-virtual/range {v7 .. v14}, Landroid/app/AppOpsManager;->startOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZLjava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v16, v10

    .line 1632
    .end local v9    # "startedOp":I
    .end local v10    # "resolvedAttributionSource":Landroid/content/AttributionSource;
    .local v0, "startedOpResult":I
    .local v16, "resolvedAttributionSource":Landroid/content/AttributionSource;
    .restart local v17    # "startedOp":I
    move/from16 v8, p7

    move-object v6, v7

    move-object/from16 v10, v16

    move/from16 v5, v17

    move/from16 v2, v18

    move-object/from16 v7, p4

    goto/16 :goto_2

    .line 1624
    .end local v0    # "startedOpResult":I
    .end local v16    # "resolvedAttributionSource":Landroid/content/AttributionSource;
    .end local v17    # "startedOp":I
    .restart local v9    # "startedOp":I
    .restart local v10    # "resolvedAttributionSource":Landroid/content/AttributionSource;
    :catch_0
    move-exception v0

    move/from16 v17, v9

    move-object/from16 v16, v10

    .line 1625
    .end local v9    # "startedOp":I
    .end local v10    # "resolvedAttributionSource":Landroid/content/AttributionSource;
    .local v0, "e":Ljava/lang/SecurityException;
    .restart local v16    # "resolvedAttributionSource":Landroid/content/AttributionSource;
    .restart local v17    # "startedOp":I
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1625
    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    move-object/from16 v4, p1

    move/from16 v8, p7

    move/from16 v5, p10

    move/from16 v9, p11

    move/from16 v10, p12

    move/from16 v11, p13

    move-object v3, v7

    move/from16 v2, v18

    move-object/from16 v7, p4

    .end local v7    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v18    # "checkedOpResult":I
    .local v2, "checkedOpResult":I
    .restart local v3    # "appOpsManager":Landroid/app/AppOpsManager;
    invoke-virtual/range {v3 .. v11}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZIII)I

    move-result v0

    .line 1632
    .local v0, "startedOpResult":I
    move-object v6, v3

    move-object/from16 v10, v16

    move/from16 v5, v17

    goto :goto_2

    .line 1635
    .end local v0    # "startedOpResult":I
    .end local v2    # "checkedOpResult":I
    .end local v16    # "resolvedAttributionSource":Landroid/content/AttributionSource;
    .restart local v10    # "resolvedAttributionSource":Landroid/content/AttributionSource;
    .restart local v18    # "checkedOpResult":I
    :cond_9
    move-object/from16 v16, v10

    move/from16 v2, v18

    .end local v10    # "resolvedAttributionSource":Landroid/content/AttributionSource;
    .end local v18    # "checkedOpResult":I
    .restart local v2    # "checkedOpResult":I
    .restart local v16    # "resolvedAttributionSource":Landroid/content/AttributionSource;
    move-object/from16 v4, p1

    move-object/from16 v7, p4

    move/from16 v8, p7

    move/from16 v9, p11

    move/from16 v10, p12

    move-object v1, v11

    move-object/from16 v6, v16

    move/from16 v5, v17

    move/from16 v11, p13

    .end local v16    # "resolvedAttributionSource":Landroid/content/AttributionSource;
    .end local v17    # "startedOp":I
    .local v5, "startedOp":I
    .local v6, "resolvedAttributionSource":Landroid/content/AttributionSource;
    :try_start_1
    invoke-virtual/range {v3 .. v11}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZIII)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v6

    move-object v6, v3

    .line 1650
    .end local v3    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v0    # "startedOpResult":I
    .local v6, "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v10    # "resolvedAttributionSource":Landroid/content/AttributionSource;
    nop

    .line 1652
    :goto_2
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    .line 1638
    .end local v0    # "startedOpResult":I
    .end local v10    # "resolvedAttributionSource":Landroid/content/AttributionSource;
    .restart local v3    # "appOpsManager":Landroid/app/AppOpsManager;
    .local v6, "resolvedAttributionSource":Landroid/content/AttributionSource;
    :catch_1
    move-exception v0

    move-object v10, v6

    move-object v6, v3

    .line 1640
    .end local v3    # "appOpsManager":Landroid/app/AppOpsManager;
    .local v0, "e":Ljava/lang/SecurityException;
    .local v6, "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v10    # "resolvedAttributionSource":Landroid/content/AttributionSource;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1641
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1642
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1643
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1645
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 1646
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v4

    .line 1647
    .local v4, "next":Landroid/content/AttributionSource;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1649
    .end local v4    # "next":Landroid/content/AttributionSource;
    :cond_a
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1654
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v2    # "checkedOpResult":I
    .end local v5    # "startedOp":I
    .end local v6    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v10    # "resolvedAttributionSource":Landroid/content/AttributionSource;
    .local v3, "appOpsManager":Landroid/app/AppOpsManager;
    :cond_b
    move-object v6, v3

    move-object v3, v7

    move-object v5, v9

    move-object v2, v10

    move-object v1, v11

    move-object/from16 v7, p4

    move-object v9, v8

    move/from16 v8, p7

    .end local v3    # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v6    # "appOpsManager":Landroid/app/AppOpsManager;
    move-object/from16 v10, p0

    invoke-static {v10, v15}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v11

    .line 1656
    .local v11, "resolvedAttributionSource":Landroid/content/AttributionSource;
    invoke-virtual {v11}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_c

    .line 1657
    return v4

    .line 1659
    :cond_c
    move/from16 v16, p2

    .line 1660
    .local v16, "notedOp":I
    const/16 v17, 0x0

    .line 1667
    .local v17, "checkedOpResult":I
    move/from16 v4, p10

    if-eq v4, v0, :cond_e

    move/from16 v10, p2

    if-eq v4, v10, :cond_f

    .line 1668
    invoke-virtual {v6, v10, v11}, Landroid/app/AppOpsManager;->checkOpNoThrow(ILandroid/content/AttributionSource;)I

    move-result v0

    .line 1669
    .end local v17    # "checkedOpResult":I
    .local v0, "checkedOpResult":I
    const/4 v4, 0x2

    if-ne v0, v4, :cond_d

    .line 1670
    return v0

    .line 1672
    :cond_d
    move/from16 v16, p10

    move/from16 v4, v16

    move-object/from16 v16, v15

    move v15, v0

    goto :goto_3

    .line 1667
    .end local v0    # "checkedOpResult":I
    .restart local v17    # "checkedOpResult":I
    :cond_e
    move/from16 v10, p2

    .line 1674
    :cond_f
    move/from16 v4, v16

    move-object/from16 v16, v15

    move/from16 v15, v17

    .end local v17    # "checkedOpResult":I
    .local v4, "notedOp":I
    .local v15, "checkedOpResult":I
    .local v16, "accessorSource":Landroid/content/AttributionSource;
    :goto_3
    if-eqz p8, :cond_10

    .line 1681
    :try_start_2
    invoke-virtual {v6, v4, v11, v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1690
    .local v0, "notedOpResult":I
    move-object/from16 v2, p3

    goto :goto_4

    .line 1683
    .end local v0    # "notedOpResult":I
    :catch_2
    move-exception v0

    .line 1684
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p3

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1686
    invoke-static {v10}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1684
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    invoke-virtual {v6, v4, v2, v7, v8}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    .line 1690
    .local v0, "notedOpResult":I
    goto :goto_4

    .line 1693
    .end local v0    # "notedOpResult":I
    :cond_10
    move-object/from16 v2, p3

    :try_start_3
    invoke-virtual {v6, v4, v11, v7, v8}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1707
    .restart local v0    # "notedOpResult":I
    nop

    .line 1709
    :goto_4
    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1711
    .local v1, "result":I
    const/16 v3, 0x6f

    if-ne v10, v3, :cond_12

    const/4 v3, 0x2

    if-ne v1, v3, :cond_12

    .line 1712
    const-string v3, " returned MODE_ERRORED"

    const-string v5, " and op "

    if-ne v1, v15, :cond_11

    .line 1713
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "BLUETOOTH_CONNECT permission hard denied as checkOp for resolvedAttributionSource "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1718
    :cond_11
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "BLUETOOTH_CONNECT permission hard denied as noteOp for resolvedAttributionSource "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    :cond_12
    :goto_5
    return v1

    .line 1695
    .end local v0    # "notedOpResult":I
    .end local v1    # "result":I
    :catch_3
    move-exception v0

    .line 1697
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1698
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getUid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1699
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1700
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1701
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1702
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 1703
    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v5

    .line 1704
    .local v5, "next":Landroid/content/AttributionSource;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1706
    .end local v5    # "next":Landroid/content/AttributionSource;
    :cond_13
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I
    .locals 3
    .param p0, "attributionChain"    # Landroid/content/AttributionSource;
    .param p1, "current"    # Landroid/content/AttributionSource;
    .param p2, "fromDatasource"    # Z
    .param p3, "startDataDelivery"    # Z
    .param p4, "selfAccess"    # Z
    .param p5, "isTrusted"    # Z
    .param p6, "flagsForProxy"    # Z

    .line 1453
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    goto :goto_1

    .line 1456
    :cond_1
    if-eqz p5, :cond_2

    .line 1457
    const/16 v1, 0x8

    goto :goto_0

    :cond_2
    move v1, v0

    .line 1458
    .local v1, "trustedFlag":I
    :goto_0
    if-eqz p6, :cond_4

    .line 1459
    if-eqz p4, :cond_3

    .line 1460
    or-int/lit8 v0, v1, 0x1

    return v0

    .line 1461
    :cond_3
    if-nez p2, :cond_7

    invoke-virtual {p1, p0}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1462
    or-int/lit8 v0, v1, 0x1

    return v0

    .line 1465
    :cond_4
    if-eqz p4, :cond_5

    .line 1466
    or-int/lit8 v0, v1, 0x4

    return v0

    .line 1467
    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1468
    or-int/lit8 v0, v1, 0x1

    return v0

    .line 1469
    :cond_6
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    if-nez v2, :cond_7

    .line 1470
    or-int/lit8 v0, v1, 0x4

    return v0

    .line 1473
    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {p1, p0}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1474
    return v0

    .line 1476
    :cond_8
    or-int/lit8 v0, v1, 0x2

    return v0

    .line 1454
    .end local v1    # "trustedFlag":I
    :goto_1
    return v0
.end method

.method private static resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;

    .line 1762
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1763
    return-object p1

    .line 1765
    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v0

    return-object v0
.end method

.method private static resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;

    .line 1745
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1746
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1748
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1749
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    .line 1748
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 1750
    .local v0, "packageNames":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1753
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 1756
    :cond_1
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    .line 1757
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1756
    invoke-static {v1, v2}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static resolveProxiedAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I
    .locals 7
    .param p0, "attributionChain"    # Landroid/content/AttributionSource;
    .param p1, "current"    # Landroid/content/AttributionSource;
    .param p2, "fromDatasource"    # Z
    .param p3, "startDataDelivery"    # Z
    .param p4, "selfAccess"    # Z
    .param p5, "isTrusted"    # Z

    .line 1444
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p0    # "attributionChain":Landroid/content/AttributionSource;
    .end local p1    # "current":Landroid/content/AttributionSource;
    .end local p2    # "fromDatasource":Z
    .end local p3    # "startDataDelivery":Z
    .end local p4    # "selfAccess":Z
    .end local p5    # "isTrusted":Z
    .local v0, "attributionChain":Landroid/content/AttributionSource;
    .local v1, "current":Landroid/content/AttributionSource;
    .local v2, "fromDatasource":Z
    .local v3, "startDataDelivery":Z
    .local v4, "selfAccess":Z
    .local v5, "isTrusted":Z
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I

    move-result p0

    return p0
.end method

.method private static resolveProxyAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I
    .locals 7
    .param p0, "attributionChain"    # Landroid/content/AttributionSource;
    .param p1, "current"    # Landroid/content/AttributionSource;
    .param p2, "fromDatasource"    # Z
    .param p3, "startDataDelivery"    # Z
    .param p4, "selfAccess"    # Z
    .param p5, "isTrusted"    # Z

    .line 1436
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p0    # "attributionChain":Landroid/content/AttributionSource;
    .end local p1    # "current":Landroid/content/AttributionSource;
    .end local p2    # "fromDatasource":Z
    .end local p3    # "startDataDelivery":Z
    .end local p4    # "selfAccess":Z
    .end local p5    # "isTrusted":Z
    .local v0, "attributionChain":Landroid/content/AttributionSource;
    .local v1, "current":Landroid/content/AttributionSource;
    .local v2, "fromDatasource":Z
    .local v3, "startDataDelivery":Z
    .local v4, "selfAccess":Z
    .local v5, "isTrusted":Z
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I
    .locals 7
    .param p1, "op"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSourceState;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "forDataDelivery"    # Z
    .param p5, "startDataDelivery"    # Z

    .line 1152
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    new-instance v3, Landroid/content/AttributionSource;

    invoke-direct {v3, p2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    move v1, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "op":I
    .end local p3    # "message":Ljava/lang/String;
    .end local p4    # "forDataDelivery":Z
    .end local p5    # "startDataDelivery":Z
    .local v1, "op":I
    .local v4, "message":Ljava/lang/String;
    .local v5, "forDataDelivery":Z
    .local v6, "startDataDelivery":Z
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkOp(Landroid/content/Context;ILcom/android/server/pm/permission/PermissionManagerServiceInternal;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I

    move-result p1

    .line 1155
    .local p1, "result":I
    if-eqz p1, :cond_0

    if-eqz v6, :cond_0

    .line 1157
    const/4 p3, 0x0

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    .line 1159
    :cond_0
    return p1
.end method

.method public checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I
    .locals 9
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "attributionSourceState"    # Landroid/content/AttributionSourceState;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "forDataDelivery"    # Z
    .param p5, "startDataDelivery"    # Z
    .param p6, "fromDatasource"    # Z
    .param p7, "attributedOp"    # I

    .line 1047
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1048
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1049
    new-instance v3, Landroid/content/AttributionSource;

    invoke-direct {v3, p2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    .line 1051
    .local v3, "attributionSource":Landroid/content/AttributionSource;
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I

    move-result v0

    .line 1055
    .local v0, "result":I
    if-eqz p5, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1057
    const/4 v1, -0x1

    if-ne v8, v1, :cond_0

    .line 1058
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    .line 1059
    invoke-virtual {v3}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v2

    .line 1058
    invoke-virtual {p0, v1, v2, p6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    goto :goto_0

    .line 1061
    :cond_0
    invoke-virtual {v3}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v1

    invoke-virtual {p0, v8, v1, p6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    .line 1064
    :cond_1
    :goto_0
    return v0
.end method

.method public finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V
    .locals 1
    .param p1, "op"    # I
    .param p2, "attributionSourceState"    # Landroid/content/AttributionSourceState;
    .param p3, "fromDataSource"    # Z

    .line 1070
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V

    .line 1072
    return-void
.end method
