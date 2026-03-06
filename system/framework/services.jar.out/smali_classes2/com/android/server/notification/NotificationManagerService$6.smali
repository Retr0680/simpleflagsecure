.class Lcom/android/server/notification/NotificationManagerService$6;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2213
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2216
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 2217
    .local v3, "action":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 2218
    return-void

    .line 2221
    :cond_0
    const/4 v0, 0x0

    .line 2222
    .local v0, "queryRemove":Z
    const/4 v4, 0x0

    .line 2223
    .local v4, "packageChanged":Z
    const/4 v5, 0x1

    .line 2224
    .local v5, "cancelNotifications":Z
    const/4 v6, 0x0

    .line 2225
    .local v6, "hideNotifications":Z
    const/4 v7, 0x0

    .line 2226
    .local v7, "unhideNotifications":Z
    const/16 v16, 0x5

    .line 2228
    .local v16, "reason":I
    const-string v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    const-string v10, "android.intent.action.PACKAGES_UNSUSPENDED"

    const-string v11, "android.intent.action.PACKAGES_SUSPENDED"

    const-string v12, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    nop

    if-nez v8, :cond_3

    .line 2229
    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    move v0, v8

    nop

    if-nez v8, :cond_2

    .line 2230
    const-string v8, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    nop

    if-nez v8, :cond_2

    .line 2231
    const-string v8, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    move v4, v8

    nop

    if-nez v8, :cond_2

    .line 2232
    invoke-virtual {v3, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    nop

    if-nez v8, :cond_2

    .line 2233
    invoke-virtual {v3, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    nop

    if-nez v8, :cond_2

    .line 2234
    invoke-virtual {v3, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    nop

    if-nez v8, :cond_2

    .line 2235
    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v24, v3

    goto/16 :goto_b

    .line 2236
    :cond_2
    :goto_0
    move/from16 v17, v4

    move v4, v0

    goto :goto_1

    .line 2228
    :cond_3
    move/from16 v17, v4

    move v4, v0

    .line 2236
    .end local v0    # "queryRemove":Z
    .local v4, "queryRemove":Z
    .local v17, "packageChanged":Z
    :goto_1
    const-string v0, "android.intent.extra.user_handle"

    const/4 v8, -0x1

    invoke-virtual {v2, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 2238
    .local v15, "changeUserId":I
    const/4 v13, 0x0

    .line 2239
    .local v13, "pkgList":[Ljava/lang/String;
    const/4 v14, 0x0

    .line 2240
    .local v14, "uidList":[I
    move-object/from16 v18, v13

    .end local v13    # "pkgList":[Ljava/lang/String;
    .local v18, "pkgList":[Ljava/lang/String;
    const/4 v13, 0x0

    nop

    if-eqz v4, :cond_4

    .line 2241
    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v0, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v13

    :goto_2
    move/from16 v20, v0

    .line 2242
    .local v20, "removingPackage":Z
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v8, "NotificationService"

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "action="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " removing="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, v20

    .end local v20    # "removingPackage":Z
    .local v13, "removingPackage":Z
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v13    # "removingPackage":Z
    .restart local v20    # "removingPackage":Z
    :cond_5
    move/from16 v13, v20

    .line 2243
    .end local v20    # "removingPackage":Z
    .restart local v13    # "removingPackage":Z
    :goto_3
    invoke-virtual {v3, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v12, "android.intent.extra.changed_uid_list"

    move/from16 v20, v0

    const-string v0, "android.intent.extra.changed_package_list"

    if-eqz v20, :cond_6

    .line 2244
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2245
    .end local v18    # "pkgList":[Ljava/lang/String;
    .local v0, "pkgList":[Ljava/lang/String;
    invoke-virtual {v2, v12}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v8

    move-object/from16 v22, v8

    const/4 v9, 0x0

    .end local v14    # "uidList":[I
    .local v8, "uidList":[I
    goto/16 :goto_8

    .line 2246
    .end local v0    # "pkgList":[Ljava/lang/String;
    .end local v8    # "uidList":[I
    .restart local v14    # "uidList":[I
    .restart local v18    # "pkgList":[Ljava/lang/String;
    :cond_6
    invoke-virtual {v3, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 2247
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2248
    .end local v18    # "pkgList":[Ljava/lang/String;
    .restart local v0    # "pkgList":[Ljava/lang/String;
    invoke-virtual {v2, v12}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v8

    .line 2249
    .end local v14    # "uidList":[I
    .restart local v8    # "uidList":[I
    const/4 v5, 0x0

    .line 2250
    const/4 v6, 0x1

    move-object/from16 v22, v8

    const/4 v9, 0x0

    goto/16 :goto_8

    .line 2251
    .end local v0    # "pkgList":[Ljava/lang/String;
    .end local v8    # "uidList":[I
    .restart local v14    # "uidList":[I
    .restart local v18    # "pkgList":[Ljava/lang/String;
    :cond_7
    invoke-virtual {v3, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2252
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2253
    .end local v18    # "pkgList":[Ljava/lang/String;
    .restart local v0    # "pkgList":[Ljava/lang/String;
    invoke-virtual {v2, v12}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v8

    .line 2254
    .end local v14    # "uidList":[I
    .restart local v8    # "uidList":[I
    const/4 v5, 0x0

    .line 2255
    const/4 v7, 0x1

    move-object/from16 v22, v8

    const/4 v9, 0x0

    goto/16 :goto_8

    .line 2256
    .end local v0    # "pkgList":[Ljava/lang/String;
    .end local v8    # "uidList":[I
    .restart local v14    # "uidList":[I
    .restart local v18    # "pkgList":[Ljava/lang/String;
    :cond_8
    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2257
    nop

    .line 2258
    const-string v8, "android.intent.extra.distraction_restrictions"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 2260
    .local v8, "distractionRestrictions":I
    and-int/lit8 v10, v8, 0x2

    if-eqz v10, :cond_9

    .line 2262
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2263
    .end local v18    # "pkgList":[Ljava/lang/String;
    .restart local v0    # "pkgList":[Ljava/lang/String;
    invoke-virtual {v2, v12}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v10

    .line 2264
    .end local v14    # "uidList":[I
    .local v10, "uidList":[I
    const/4 v5, 0x0

    .line 2265
    const/4 v6, 0x1

    move-object v8, v10

    goto :goto_4

    .line 2267
    .end local v0    # "pkgList":[Ljava/lang/String;
    .end local v10    # "uidList":[I
    .restart local v14    # "uidList":[I
    .restart local v18    # "pkgList":[Ljava/lang/String;
    :cond_9
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2268
    .end local v18    # "pkgList":[Ljava/lang/String;
    .restart local v0    # "pkgList":[Ljava/lang/String;
    invoke-virtual {v2, v12}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v10

    .line 2269
    .end local v14    # "uidList":[I
    .restart local v10    # "uidList":[I
    const/4 v5, 0x0

    .line 2270
    const/4 v7, 0x1

    move-object v8, v10

    .line 2272
    .end local v10    # "uidList":[I
    .local v8, "uidList":[I
    :goto_4
    move-object/from16 v22, v8

    goto :goto_8

    .line 2273
    .end local v0    # "pkgList":[Ljava/lang/String;
    .end local v8    # "uidList":[I
    .restart local v14    # "uidList":[I
    .restart local v18    # "pkgList":[Ljava/lang/String;
    :cond_a
    const/4 v9, 0x0

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 2274
    .local v10, "uri":Landroid/net/Uri;
    if-nez v10, :cond_b

    .line 2275
    return-void

    .line 2277
    :cond_b
    invoke-virtual {v10}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v11

    .line 2278
    .local v11, "pkgName":Ljava/lang/String;
    if-nez v11, :cond_c

    .line 2279
    return-void

    .line 2281
    :cond_c
    if-eqz v17, :cond_10

    .line 2284
    :try_start_0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 2286
    const/4 v12, -0x1

    if-eq v15, v12, :cond_d

    move v12, v15

    goto :goto_5

    .line 2287
    :cond_d
    move v12, v9

    .line 2284
    :goto_5
    invoke-interface {v0, v11, v12}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2288
    .local v0, "enabled":I
    const/4 v8, 0x1

    if-eq v0, v8, :cond_e

    if-nez v0, :cond_f

    .line 2290
    :cond_e
    const/4 v5, 0x0

    .line 2300
    .end local v0    # "enabled":I
    :cond_f
    :goto_6
    goto :goto_7

    .line 2298
    :catch_0
    move-exception v0

    goto :goto_7

    .line 2292
    :catch_1
    move-exception v0

    nop

    .line 2295
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-boolean v12, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v12, :cond_f

    .line 2296
    const-string v12, "Exception trying to look up app enabled setting"

    invoke-static {v8, v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 2302
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_10
    :goto_7
    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v0

    .line 2303
    .end local v18    # "pkgList":[Ljava/lang/String;
    .local v0, "pkgList":[Ljava/lang/String;
    const-string v8, "android.intent.extra.UID"

    const/4 v12, -0x1

    invoke-virtual {v2, v8, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    filled-new-array {v8}, [I

    move-result-object v8

    move-object/from16 v22, v8

    .line 2305
    .end local v10    # "uri":Landroid/net/Uri;
    .end local v11    # "pkgName":Ljava/lang/String;
    .end local v14    # "uidList":[I
    .local v22, "uidList":[I
    :goto_8
    if-eqz v0, :cond_14

    array-length v8, v0

    if-lez v8, :cond_14

    .line 2306
    if-eqz v5, :cond_12

    .line 2307
    array-length v8, v0

    move v10, v9

    :goto_9
    if-ge v10, v8, :cond_11

    aget-object v11, v0, v10

    .line 2308
    .restart local v11    # "pkgName":Ljava/lang/String;
    move v12, v8

    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move v14, v9

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_UID()I

    move-result v9

    move/from16 v18, v10

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_PID()I

    move-result v10

    move/from16 v19, v13

    .end local v13    # "removingPackage":Z
    .local v19, "removingPackage":Z
    const/4 v13, 0x0

    move/from16 v20, v14

    const/4 v14, 0x0

    move/from16 v21, v12

    const/4 v12, 0x0

    move-object/from16 v24, v3

    move-object/from16 v3, v22

    .end local v22    # "uidList":[I
    .local v3, "uidList":[I
    .local v24, "action":Ljava/lang/String;
    invoke-virtual/range {v8 .. v16}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIII)V

    .line 2307
    .end local v11    # "pkgName":Ljava/lang/String;
    add-int/lit8 v10, v18, 0x1

    move/from16 v13, v19

    move/from16 v8, v21

    move-object/from16 v3, v24

    const/4 v9, 0x0

    goto :goto_9

    .end local v19    # "removingPackage":Z
    .end local v24    # "action":Ljava/lang/String;
    .local v3, "action":Ljava/lang/String;
    .restart local v13    # "removingPackage":Z
    .restart local v22    # "uidList":[I
    :cond_11
    move-object/from16 v24, v3

    move/from16 v19, v13

    move-object/from16 v3, v22

    .end local v13    # "removingPackage":Z
    .end local v22    # "uidList":[I
    .local v3, "uidList":[I
    .restart local v19    # "removingPackage":Z
    .restart local v24    # "action":Ljava/lang/String;
    goto :goto_a

    .line 2311
    .end local v19    # "removingPackage":Z
    .end local v24    # "action":Ljava/lang/String;
    .local v3, "action":Ljava/lang/String;
    .restart local v13    # "removingPackage":Z
    .restart local v22    # "uidList":[I
    :cond_12
    move-object/from16 v24, v3

    move/from16 v19, v13

    move-object/from16 v3, v22

    .end local v13    # "removingPackage":Z
    .end local v22    # "uidList":[I
    .local v3, "uidList":[I
    .restart local v19    # "removingPackage":Z
    .restart local v24    # "action":Ljava/lang/String;
    if-eqz v6, :cond_13

    if-eqz v3, :cond_13

    array-length v8, v3

    if-lez v8, :cond_13

    .line 2312
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v8, v0, v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhideNotificationsForPackages(Lcom/android/server/notification/NotificationManagerService;[Ljava/lang/String;[I)V

    goto :goto_a

    .line 2313
    :cond_13
    if-eqz v7, :cond_15

    if-eqz v3, :cond_15

    array-length v8, v3

    if-lez v8, :cond_15

    .line 2314
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v8, v0, v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$munhideNotificationsForPackages(Lcom/android/server/notification/NotificationManagerService;[Ljava/lang/String;[I)V

    goto :goto_a

    .line 2305
    .end local v19    # "removingPackage":Z
    .end local v24    # "action":Ljava/lang/String;
    .local v3, "action":Ljava/lang/String;
    .restart local v13    # "removingPackage":Z
    .restart local v22    # "uidList":[I
    :cond_14
    move-object/from16 v24, v3

    move/from16 v19, v13

    move-object/from16 v3, v22

    .line 2323
    .end local v13    # "removingPackage":Z
    .end local v22    # "uidList":[I
    .local v3, "uidList":[I
    .restart local v19    # "removingPackage":Z
    .restart local v24    # "action":Ljava/lang/String;
    :cond_15
    :goto_a
    const-string/jumbo v8, "is_privacy_hidden"

    const/4 v14, 0x0

    invoke-virtual {v2, v8, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v23

    .line 2324
    .local v23, "isRemovedByHidden":Z
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v18, v8

    move/from16 v20, v15

    .end local v0    # "pkgList":[Ljava/lang/String;
    .end local v3    # "uidList":[I
    .end local v15    # "changeUserId":I
    .local v20, "changeUserId":I
    .local v21, "pkgList":[Ljava/lang/String;
    .restart local v22    # "uidList":[I
    invoke-virtual/range {v18 .. v23}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleOnPackageChanged(ZI[Ljava/lang/String;[IZ)V

    move v0, v4

    move/from16 v4, v17

    .line 2327
    .end local v17    # "packageChanged":Z
    .end local v19    # "removingPackage":Z
    .end local v20    # "changeUserId":I
    .end local v21    # "pkgList":[Ljava/lang/String;
    .end local v22    # "uidList":[I
    .end local v23    # "isRemovedByHidden":Z
    .local v0, "queryRemove":Z
    .local v4, "packageChanged":Z
    :goto_b
    return-void
.end method
