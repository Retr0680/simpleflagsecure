.class public final Lcom/android/server/pinner/PinnerService$BinderService;
.super Landroid/app/pinner/IPinnerService$Stub;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pinner/PinnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pinner/PinnerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pinner/PinnerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pinner/PinnerService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1294
    iput-object p1, p0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-direct {p0}, Landroid/app/pinner/IPinnerService$Stub;-><init>()V

    return-void
.end method

.method private printError(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 2
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "message"    # Ljava/lang/String;

    .line 1434
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1435
    .local v0, "writer":Ljava/io/PrintWriter;
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1436
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1437
    return-void
.end method

.method private repin()V
    .locals 2

    .line 1428
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v0}, Lcom/android/server/pinner/PinnerService;->-$$Nest$msendUnpinAppsMessage(Lcom/android/server/pinner/PinnerService;)V

    .line 1430
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/pinner/PinnerService;->-$$Nest$msendPinAppsWithUpdatedKeysMessage(Lcom/android/server/pinner/PinnerService;I)V

    .line 1431
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 36
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1297
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v0}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmContext(Lcom/android/server/pinner/PinnerService;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "PinnerService"

    invoke-static {v0, v3, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1298
    return-void

    .line 1299
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v3, v0

    .line 1300
    .local v3, "shownPins":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/pinner/PinnedFile;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v4, v0

    .line 1301
    .local v4, "shownGroups":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v5, v0

    .line 1302
    .local v5, "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    .line 1303
    .local v6, "bytesPerMB":D
    const-string v0, "Pinner Configs:\n"

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v9}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1304
    const-string v0, "   Total Pinner quota: %d%% of total device memory\n"

    iget-object v9, v1, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v9}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmConfiguredMaxPinnedMemoryPercentage(Lcom/android/server/pinner/PinnerService;)I

    move-result v9

    .line 1305
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    .line 1304
    invoke-virtual {v2, v0, v9}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1306
    const-string v0, "   Maximum Pinner quota: %d bytes (%.2f MB)\n"

    iget-object v9, v1, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v9}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmConfiguredMaxPinnedMemory(Lcom/android/server/pinner/PinnerService;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v10}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmConfiguredMaxPinnedMemory(Lcom/android/server/pinner/PinnerService;)J

    move-result-wide v10

    long-to-double v10, v10

    const-wide/high16 v12, 0x4130000000000000L    # 1048576.0

    div-double/2addr v10, v12

    .line 1307
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    .line 1306
    invoke-virtual {v2, v0, v9}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1308
    const-string v0, "   Max Home App Pin Bytes (without deps): %d (%.2f MB)\n"

    iget-object v9, v1, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v9}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmConfiguredHomePinBytes(Lcom/android/server/pinner/PinnerService;)I

    move-result v9

    .line 1309
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v10}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmConfiguredHomePinBytes(Lcom/android/server/pinner/PinnerService;)I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    .line 1308
    invoke-virtual {v2, v0, v9}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1310
    const-string v0, "   Max Assistant App Pin Bytes (without deps): %d (%.2f MB)\n"

    iget-object v9, v1, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v9}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmConfiguredAssistantPinBytes(Lcom/android/server/pinner/PinnerService;)I

    move-result v9

    .line 1311
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v10}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmConfiguredAssistantPinBytes(Lcom/android/server/pinner/PinnerService;)I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    .line 1310
    invoke-virtual {v2, v0, v9}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1312
    const-string v0, "   Max Camera App Pin Bytes (without deps): %d (%.2f MB)\n"

    iget-object v9, v1, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v9}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmConfiguredCameraPinBytes(Lcom/android/server/pinner/PinnerService;)I

    move-result v9

    .line 1314
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v10}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmConfiguredCameraPinBytes(Lcom/android/server/pinner/PinnerService;)I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    .line 1312
    invoke-virtual {v2, v0, v9}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1315
    const-string v0, "\nPinned Files:\n"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v8}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1316
    iget-object v8, v1, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    monitor-enter v8

    .line 1317
    const-wide/16 v9, 0x0

    .line 1321
    .local v9, "totalSize":J
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v0}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmPinnedApps(Lcom/android/server/pinner/PinnerService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    if-eqz v11, :cond_4

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1322
    .local v11, "key":I
    iget-object v14, v1, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v14}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmPinnedApps(Lcom/android/server/pinner/PinnerService;)Landroid/util/ArrayMap;

    move-result-object v14

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pinner/PinnerService$PinnedApp;

    .line 1323
    .local v14, "app":Lcom/android/server/pinner/PinnerService$PinnedApp;
    iget-object v15, v1, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v15, v11}, Lcom/android/server/pinner/PinnerService;->-$$Nest$mgetNameForKey(Lcom/android/server/pinner/PinnerService;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1324
    const-string v15, " uid="

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1325
    iget v15, v14, Lcom/android/server/pinner/PinnerService$PinnedApp;->uid:I

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(I)V

    .line 1326
    const-string v15, " active="

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1327
    iget-boolean v15, v14, Lcom/android/server/pinner/PinnerService$PinnedApp;->active:Z

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(Z)V

    .line 1329
    iget-object v15, v14, Lcom/android/server/pinner/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-nez v15, :cond_1

    .line 1330
    :try_start_2
    iget-object v15, v14, Lcom/android/server/pinner/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->getFirst()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pinner/PinnedFile;

    iget-object v15, v15, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1424
    .end local v9    # "totalSize":J
    .end local v11    # "key":I
    .end local v14    # "app":Lcom/android/server/pinner/PinnerService$PinnedApp;
    :catchall_0
    move-exception v0

    move-object v15, v4

    move-object/from16 v27, v5

    move-wide/from16 v24, v6

    move-object/from16 v23, v8

    goto/16 :goto_c

    .line 1332
    .restart local v9    # "totalSize":J
    .restart local v11    # "key":I
    .restart local v14    # "app":Lcom/android/server/pinner/PinnerService$PinnedApp;
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1333
    const-wide/16 v15, 0x0

    .line 1334
    .local v15, "bytesPinnedForApp":J
    const-wide/16 v17, 0x0

    .line 1335
    .local v17, "bytesPinnedForAppDeps":J
    move-wide/from16 v19, v12

    iget-object v12, v1, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v12}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmPinnedApps(Lcom/android/server/pinner/PinnerService;)Landroid/util/ArrayMap;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pinner/PinnerService$PinnedApp;

    iget-object v12, v12, Lcom/android/server/pinner/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-wide/from16 v34, v15

    move-wide v15, v6

    move-wide/from16 v6, v34

    move-wide/from16 v34, v17

    move-wide/from16 v17, v9

    move-wide/from16 v9, v34

    .local v6, "bytesPinnedForApp":J
    .local v9, "bytesPinnedForAppDeps":J
    .local v15, "bytesPerMB":D
    .local v17, "totalSize":J
    :goto_2
    :try_start_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pinner/PinnedFile;

    .line 1336
    .local v13, "pf":Lcom/android/server/pinner/PinnedFile;
    move-object/from16 v21, v0

    const-string v0, "  "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1337
    const-string v0, "%s pinned:%d bytes (%.2f MB) pinlist:%b\n"

    move/from16 v22, v11

    .end local v11    # "key":I
    .local v22, "key":I
    iget-object v11, v13, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v23, v14

    move-wide/from16 v24, v15

    .end local v14    # "app":Lcom/android/server/pinner/PinnerService$PinnedApp;
    .end local v15    # "bytesPerMB":D
    .local v23, "app":Lcom/android/server/pinner/PinnerService$PinnedApp;
    .local v24, "bytesPerMB":D
    :try_start_5
    iget-wide v14, v13, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    .line 1338
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v15, v4

    move-object/from16 v16, v5

    .end local v4    # "shownGroups":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v15, "shownGroups":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v16, "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_6
    iget-wide v4, v13, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    long-to-double v4, v4

    div-double v4, v4, v19

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-boolean v5, v13, Lcom/android/server/pinner/PinnedFile;->used_pinlist:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v11, v14, v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 1337
    invoke-virtual {v2, v0, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1339
    iget-wide v4, v13, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    add-long v17, v17, v4

    .line 1340
    iget-wide v4, v13, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    add-long/2addr v6, v4

    .line 1341
    invoke-virtual {v3, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1342
    iget-object v0, v13, Lcom/android/server/pinner/PinnedFile;->pinnedDeps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pinner/PinnedFile;

    .line 1343
    .local v4, "dep":Lcom/android/server/pinner/PinnedFile;
    const-string v5, "  "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1344
    const-string v5, "%s pinned:%d bytes (%.2f MB) pinlist:%b (Dependency)\n"

    iget-object v11, v4, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    move-wide/from16 v26, v6

    .end local v6    # "bytesPinnedForApp":J
    .local v26, "bytesPinnedForApp":J
    iget-wide v6, v4, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    .line 1345
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v14, v8

    :try_start_7
    iget-wide v7, v4, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    long-to-double v7, v7

    div-double v7, v7, v19

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iget-boolean v8, v4, Lcom/android/server/pinner/PinnedFile;->used_pinlist:Z

    .line 1346
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array {v11, v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v6

    .line 1344
    invoke-virtual {v2, v5, v6}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1347
    iget-wide v5, v4, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    add-long v17, v17, v5

    .line 1348
    iget-wide v5, v4, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    add-long/2addr v9, v5

    .line 1349
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1350
    move-object v8, v14

    move-wide/from16 v6, v26

    .end local v4    # "dep":Lcom/android/server/pinner/PinnedFile;
    goto :goto_3

    .line 1424
    .end local v9    # "bytesPinnedForAppDeps":J
    .end local v13    # "pf":Lcom/android/server/pinner/PinnedFile;
    .end local v17    # "totalSize":J
    .end local v22    # "key":I
    .end local v23    # "app":Lcom/android/server/pinner/PinnerService$PinnedApp;
    .end local v26    # "bytesPinnedForApp":J
    :catchall_1
    move-exception v0

    :goto_4
    move-object/from16 v23, v14

    move-object/from16 v27, v16

    goto/16 :goto_c

    :catchall_2
    move-exception v0

    move-object v14, v8

    goto :goto_4

    .line 1342
    .restart local v6    # "bytesPinnedForApp":J
    .restart local v9    # "bytesPinnedForAppDeps":J
    .restart local v13    # "pf":Lcom/android/server/pinner/PinnedFile;
    .restart local v17    # "totalSize":J
    .restart local v22    # "key":I
    .restart local v23    # "app":Lcom/android/server/pinner/PinnerService$PinnedApp;
    :cond_2
    move-wide/from16 v26, v6

    move-object v14, v8

    .line 1351
    .end local v6    # "bytesPinnedForApp":J
    .end local v13    # "pf":Lcom/android/server/pinner/PinnedFile;
    .restart local v26    # "bytesPinnedForApp":J
    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v0, v21

    move/from16 v11, v22

    move-object/from16 v14, v23

    move-wide/from16 v15, v24

    goto/16 :goto_2

    .line 1424
    .end local v9    # "bytesPinnedForAppDeps":J
    .end local v15    # "shownGroups":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v17    # "totalSize":J
    .end local v22    # "key":I
    .end local v23    # "app":Lcom/android/server/pinner/PinnerService$PinnedApp;
    .end local v26    # "bytesPinnedForApp":J
    .local v4, "shownGroups":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v5    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_3
    move-exception v0

    move-object v15, v4

    move-object/from16 v16, v5

    move-object v14, v8

    move-object/from16 v23, v14

    move-object/from16 v27, v16

    .end local v4    # "shownGroups":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v15    # "shownGroups":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v16    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto/16 :goto_c

    .end local v16    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v24    # "bytesPerMB":D
    .restart local v4    # "shownGroups":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v5    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v15, "bytesPerMB":D
    :catchall_4
    move-exception v0

    move-object v14, v8

    move-wide/from16 v24, v15

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v23, v14

    move-object/from16 v27, v16

    .end local v4    # "shownGroups":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v15, "shownGroups":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v16    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v24    # "bytesPerMB":D
    goto/16 :goto_c

    .line 1352
    .end local v16    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v24    # "bytesPerMB":D
    .restart local v4    # "shownGroups":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v5    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v6    # "bytesPinnedForApp":J
    .restart local v9    # "bytesPinnedForAppDeps":J
    .restart local v11    # "key":I
    .restart local v14    # "app":Lcom/android/server/pinner/PinnerService$PinnedApp;
    .local v15, "bytesPerMB":D
    .restart local v17    # "totalSize":J
    :cond_3
    move-object/from16 v21, v0

    move/from16 v22, v11

    move-object/from16 v23, v14

    move-wide/from16 v24, v15

    move-object v15, v4

    move-object/from16 v16, v5

    move-object v14, v8

    .end local v4    # "shownGroups":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v11    # "key":I
    .end local v14    # "app":Lcom/android/server/pinner/PinnerService$PinnedApp;
    .local v15, "shownGroups":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v16    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v22    # "key":I
    .restart local v23    # "app":Lcom/android/server/pinner/PinnerService$PinnedApp;
    .restart local v24    # "bytesPerMB":D
    add-long v4, v6, v9

    .line 1353
    .local v4, "bytesPinnedForAppAndDeps":J
    const-string v0, "Total Pinned = %d (%.2f MB) [App=%d (%.2f MB), Dependencies=%d (%.2f MB)]\n\n"

    .line 1355
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    long-to-double v11, v4

    div-double v11, v11, v19

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v27

    .line 1356
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    long-to-double v11, v6

    div-double v11, v11, v19

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v29

    .line 1357
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    long-to-double v11, v9

    div-double v11, v11, v19

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v31

    filled-new-array/range {v26 .. v31}, [Ljava/lang/Object;

    move-result-object v8

    .line 1353
    invoke-virtual {v2, v0, v8}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1358
    move-object v8, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-wide/from16 v9, v17

    move-wide/from16 v12, v19

    move-object/from16 v0, v21

    move-wide/from16 v6, v24

    .end local v4    # "bytesPinnedForAppAndDeps":J
    .end local v6    # "bytesPinnedForApp":J
    .end local v9    # "bytesPinnedForAppDeps":J
    .end local v22    # "key":I
    .end local v23    # "app":Lcom/android/server/pinner/PinnerService$PinnedApp;
    goto/16 :goto_0

    .line 1424
    .end local v15    # "shownGroups":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v17    # "totalSize":J
    .end local v24    # "bytesPerMB":D
    .local v4, "shownGroups":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v5    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v6, "bytesPerMB":D
    :catchall_5
    move-exception v0

    move-object v15, v4

    move-object/from16 v16, v5

    move-wide/from16 v24, v6

    move-object v14, v8

    move-object/from16 v23, v14

    move-object/from16 v27, v16

    .end local v4    # "shownGroups":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v6    # "bytesPerMB":D
    .restart local v15    # "shownGroups":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v16    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v24    # "bytesPerMB":D
    goto/16 :goto_c

    .line 1359
    .end local v15    # "shownGroups":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v24    # "bytesPerMB":D
    .restart local v4    # "shownGroups":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v5    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v6    # "bytesPerMB":D
    .local v9, "totalSize":J
    :cond_4
    move-object v15, v4

    move-object/from16 v16, v5

    move-wide/from16 v24, v6

    move-object v14, v8

    move-wide/from16 v19, v12

    .end local v4    # "shownGroups":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v6    # "bytesPerMB":D
    .restart local v15    # "shownGroups":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v16    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v24    # "bytesPerMB":D
    :try_start_8
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1360
    iget-object v0, v1, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v0}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmPinnedFiles(Lcom/android/server/pinner/PinnerService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    if-eqz v4, :cond_6

    :try_start_9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pinner/PinnedFile;

    .line 1361
    .local v4, "pinnedFile":Lcom/android/server/pinner/PinnedFile;
    iget-object v5, v4, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    move-object/from16 v6, v16

    .end local v16    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v6, "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_a
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v4, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    .line 1362
    invoke-virtual {v15, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1363
    iget-object v5, v4, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_6

    .line 1424
    .end local v4    # "pinnedFile":Lcom/android/server/pinner/PinnedFile;
    .end local v9    # "totalSize":J
    :catchall_6
    move-exception v0

    move-object/from16 v27, v6

    move-object/from16 v23, v14

    goto/16 :goto_c

    .line 1365
    .restart local v9    # "totalSize":J
    :cond_5
    :goto_6
    move-object/from16 v16, v6

    goto :goto_5

    .line 1424
    .end local v6    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9    # "totalSize":J
    .restart local v16    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_7
    move-exception v0

    move-object/from16 v6, v16

    move-object/from16 v27, v6

    move-object/from16 v23, v14

    .end local v16    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v6    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto/16 :goto_c

    .line 1368
    .end local v6    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v9    # "totalSize":J
    .restart local v16    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_6
    move-object/from16 v6, v16

    .end local v16    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v6    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_b
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1369
    .local v4, "group":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v5, v4}, Lcom/android/server/pinner/PinnerService;->-$$Nest$mgetAllPinsForGroup(Lcom/android/server/pinner/PinnerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1370
    .local v5, "groupPins":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pinner/PinnedFile;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\nGroup:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1371
    const-wide/16 v7, 0x0

    .line 1372
    .local v7, "bytesPinnedForGroupNoDeps":J
    const-wide/16 v11, 0x0

    .line 1373
    .local v11, "bytesPinnedForGroupDeps":J
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1374
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/pinner/PinnedFile;

    move-object/from16 v17, v16

    .line 1375
    .local v17, "pinnedFile":Lcom/android/server/pinner/PinnedFile;
    move-object/from16 v16, v0

    move-object/from16 v0, v17

    .end local v17    # "pinnedFile":Lcom/android/server/pinner/PinnedFile;
    .local v0, "pinnedFile":Lcom/android/server/pinner/PinnedFile;
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1377
    move-object/from16 v0, v16

    goto :goto_8

    .line 1379
    :cond_7
    move-object/from16 v17, v4

    .end local v4    # "group":Ljava/lang/String;
    .local v17, "group":Ljava/lang/String;
    const-string v4, "  %s pinned: %d bytes (%.2f MB) pinlist:%b\n"

    move-object/from16 v18, v5

    .end local v5    # "groupPins":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pinner/PinnedFile;>;"
    .local v18, "groupPins":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pinner/PinnedFile;>;"
    iget-object v5, v0, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    move-wide/from16 v21, v9

    .end local v9    # "totalSize":J
    .local v21, "totalSize":J
    iget-wide v9, v0, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    .line 1380
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    move-object/from16 v26, v13

    move-object/from16 v23, v14

    :try_start_c
    iget-wide v13, v0, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    long-to-double v13, v13

    div-double v13, v13, v19

    .line 1381
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    iget-boolean v13, v0, Lcom/android/server/pinner/PinnedFile;->used_pinlist:Z

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    filled-new-array {v5, v9, v10, v13}, [Ljava/lang/Object;

    move-result-object v5

    .line 1379
    invoke-virtual {v2, v4, v5}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1382
    iget-wide v4, v0, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    add-long v9, v21, v4

    .line 1383
    .end local v21    # "totalSize":J
    .restart local v9    # "totalSize":J
    iget-wide v4, v0, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    add-long/2addr v7, v4

    .line 1384
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1385
    iget-object v4, v0, Lcom/android/server/pinner/PinnedFile;->pinnedDeps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pinner/PinnedFile;

    .line 1386
    .local v5, "dep":Lcom/android/server/pinner/PinnedFile;
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1388
    goto :goto_9

    .line 1390
    :cond_8
    const-string v13, "  "

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1391
    const-string v13, "%s pinned:%d bytes (%.2f MB) pinlist:%b (Dependency)\n"

    iget-object v14, v5, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    move-object/from16 v27, v6

    move-wide/from16 v21, v7

    .end local v6    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v7    # "bytesPinnedForGroupNoDeps":J
    .local v21, "bytesPinnedForGroupNoDeps":J
    .local v27, "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_d
    iget-wide v6, v5, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    .line 1392
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v7, v5, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    long-to-double v7, v7

    div-double v7, v7, v19

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iget-boolean v8, v5, Lcom/android/server/pinner/PinnedFile;->used_pinlist:Z

    .line 1393
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array {v14, v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v6

    .line 1391
    invoke-virtual {v2, v13, v6}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1394
    iget-wide v6, v5, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    add-long/2addr v9, v6

    .line 1395
    iget-wide v6, v5, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    add-long/2addr v11, v6

    .line 1396
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1397
    move-wide/from16 v7, v21

    move-object/from16 v6, v27

    .end local v5    # "dep":Lcom/android/server/pinner/PinnedFile;
    goto :goto_9

    .line 1424
    .end local v0    # "pinnedFile":Lcom/android/server/pinner/PinnedFile;
    .end local v9    # "totalSize":J
    .end local v11    # "bytesPinnedForGroupDeps":J
    .end local v17    # "group":Ljava/lang/String;
    .end local v18    # "groupPins":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pinner/PinnedFile;>;"
    .end local v21    # "bytesPinnedForGroupNoDeps":J
    :catchall_8
    move-exception v0

    goto/16 :goto_c

    .end local v27    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v6    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_9
    move-exception v0

    move-object/from16 v27, v6

    .end local v6    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v27    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_a
    goto/16 :goto_c

    .line 1385
    .end local v27    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v0    # "pinnedFile":Lcom/android/server/pinner/PinnedFile;
    .restart local v6    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v7    # "bytesPinnedForGroupNoDeps":J
    .restart local v9    # "totalSize":J
    .restart local v11    # "bytesPinnedForGroupDeps":J
    .restart local v17    # "group":Ljava/lang/String;
    .restart local v18    # "groupPins":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pinner/PinnedFile;>;"
    :cond_9
    move-object/from16 v27, v6

    move-wide/from16 v21, v7

    .line 1398
    .end local v0    # "pinnedFile":Lcom/android/server/pinner/PinnedFile;
    .end local v6    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v7    # "bytesPinnedForGroupNoDeps":J
    .restart local v21    # "bytesPinnedForGroupNoDeps":J
    .restart local v27    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v14, v23

    move-object/from16 v13, v26

    goto/16 :goto_8

    .line 1424
    .end local v9    # "totalSize":J
    .end local v11    # "bytesPinnedForGroupDeps":J
    .end local v17    # "group":Ljava/lang/String;
    .end local v18    # "groupPins":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pinner/PinnedFile;>;"
    .end local v21    # "bytesPinnedForGroupNoDeps":J
    .end local v27    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v6    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_a
    move-exception v0

    move-object/from16 v27, v6

    move-object/from16 v23, v14

    goto :goto_a

    .line 1399
    .restart local v4    # "group":Ljava/lang/String;
    .local v5, "groupPins":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pinner/PinnedFile;>;"
    .restart local v7    # "bytesPinnedForGroupNoDeps":J
    .restart local v9    # "totalSize":J
    .restart local v11    # "bytesPinnedForGroupDeps":J
    :cond_a
    move-object/from16 v16, v0

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v27, v6

    move-wide/from16 v21, v9

    move-object/from16 v23, v14

    .end local v4    # "group":Ljava/lang/String;
    .end local v5    # "groupPins":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pinner/PinnedFile;>;"
    .end local v6    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9    # "totalSize":J
    .restart local v17    # "group":Ljava/lang/String;
    .restart local v18    # "groupPins":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pinner/PinnedFile;>;"
    .local v21, "totalSize":J
    .restart local v27    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    add-long v4, v7, v11

    .line 1400
    .local v4, "bytesPinnedForGroup":J
    const-string v0, "Total Pinned = %d (%.2f MB) [Main=%d (%.2f MB), Dependencies=%d (%.2f MB)]\n\n"

    .line 1402
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    long-to-double v9, v4

    div-double v9, v9, v19

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v29

    .line 1403
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    long-to-double v9, v7

    div-double v9, v9, v19

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v31

    .line 1404
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    long-to-double v9, v11

    div-double v9, v9, v19

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v33

    filled-new-array/range {v28 .. v33}, [Ljava/lang/Object;

    move-result-object v6

    .line 1400
    invoke-virtual {v2, v0, v6}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1405
    move-object/from16 v0, v16

    move-wide/from16 v9, v21

    move-object/from16 v14, v23

    move-object/from16 v6, v27

    .end local v4    # "bytesPinnedForGroup":J
    .end local v7    # "bytesPinnedForGroupNoDeps":J
    .end local v11    # "bytesPinnedForGroupDeps":J
    .end local v17    # "group":Ljava/lang/String;
    .end local v18    # "groupPins":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pinner/PinnedFile;>;"
    goto/16 :goto_7

    .line 1406
    .end local v21    # "totalSize":J
    .end local v27    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v6    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v9    # "totalSize":J
    :cond_b
    move-object/from16 v27, v6

    move-object/from16 v23, v14

    .end local v6    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v27    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1407
    iget-object v0, v1, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v0}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmPinAnonAddress(Lcom/android/server/pinner/PinnerService;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_c

    .line 1408
    const-string v0, "Pinned anon region: %d (%.2f MB)\n"

    iget-object v4, v1, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v4}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmCurrentlyPinnedAnonSize(Lcom/android/server/pinner/PinnerService;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v5}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmCurrentlyPinnedAnonSize(Lcom/android/server/pinner/PinnerService;)J

    move-result-wide v5

    long-to-double v5, v5

    div-double v5, v5, v19

    .line 1409
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 1408
    invoke-virtual {v2, v0, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1410
    iget-object v0, v1, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v0}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmCurrentlyPinnedAnonSize(Lcom/android/server/pinner/PinnerService;)J

    move-result-wide v4

    add-long/2addr v9, v4

    .line 1412
    :cond_c
    const-string v0, "Total pinned: %d bytes (%.2f MB)\n"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    long-to-double v5, v9

    div-double v5, v5, v19

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1413
    const-string v0, "Available Pinner quota: %d bytes (%.2f MB)\n"

    iget-object v4, v1, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v4}, Lcom/android/server/pinner/PinnerService;->-$$Nest$mgetAvailableGlobalQuota(Lcom/android/server/pinner/PinnerService;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    .line 1414
    invoke-static {v5}, Lcom/android/server/pinner/PinnerService;->-$$Nest$mgetAvailableGlobalQuota(Lcom/android/server/pinner/PinnerService;)J

    move-result-wide v5

    long-to-double v5, v5

    div-double v5, v5, v19

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 1413
    invoke-virtual {v2, v0, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1415
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1416
    iget-object v0, v1, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v0}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmPendingRepin(Lcom/android/server/pinner/PinnerService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1417
    const-string v0, "Pending repin: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1418
    iget-object v0, v1, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v0}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmPendingRepin(Lcom/android/server/pinner/PinnerService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1419
    .local v4, "key":I
    iget-object v5, v1, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v5, v4}, Lcom/android/server/pinner/PinnerService;->-$$Nest$mgetNameForKey(Lcom/android/server/pinner/PinnerService;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1420
    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 1421
    .end local v4    # "key":I
    goto :goto_b

    .line 1422
    :cond_d
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1424
    .end local v9    # "totalSize":J
    :cond_e
    monitor-exit v23

    .line 1425
    return-void

    .line 1424
    .end local v27    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v16    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_b
    move-exception v0

    move-object/from16 v23, v14

    move-object/from16 v27, v16

    .end local v16    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v27    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_c

    .end local v15    # "shownGroups":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v24    # "bytesPerMB":D
    .end local v27    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v4, "shownGroups":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v5, "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v6, "bytesPerMB":D
    :catchall_c
    move-exception v0

    move-object v15, v4

    move-object/from16 v27, v5

    move-wide/from16 v24, v6

    move-object/from16 v23, v8

    .end local v4    # "shownGroups":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v6    # "bytesPerMB":D
    .restart local v15    # "shownGroups":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v24    # "bytesPerMB":D
    .restart local v27    # "groupsToPrint":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_c
    monitor-exit v23
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    throw v0
.end method

.method public getPinnerStats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/pinner/PinnedFileStat;",
            ">;"
        }
    .end annotation

    .line 1467
    invoke-virtual {p0}, Landroid/app/pinner/IPinnerService$Stub;->getPinnerStats_enforcePermission()V

    .line 1468
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-virtual {v0}, Lcom/android/server/pinner/PinnerService;->getPinnerStats()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 5
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 1442
    array-length v0, p4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ge v0, v1, :cond_0

    .line 1443
    const-string v0, "Command is not given."

    invoke-direct {p0, p2, v0}, Lcom/android/server/pinner/PinnerService$BinderService;->printError(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 1444
    invoke-virtual {p6, v3, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1445
    return-void

    .line 1448
    :cond_0
    const/4 v0, 0x0

    aget-object v1, p4, v0

    .line 1449
    .local v1, "command":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_1
    goto :goto_0

    :pswitch_0
    const-string/jumbo v4, "repin"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v0

    goto :goto_1

    :goto_0
    move v4, v3

    :goto_1
    packed-switch v4, :pswitch_data_1

    .line 1454
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 1455
    const-string v4, "Unknown pinner command: %s. Supported commands: repin"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1454
    invoke-direct {p0, p2, v0}, Lcom/android/server/pinner/PinnerService$BinderService;->printError(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 1457
    invoke-virtual {p6, v3, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1458
    return-void

    .line 1451
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/pinner/PinnerService$BinderService;->repin()V

    .line 1452
    nop

    .line 1461
    invoke-virtual {p6, v0, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1462
    return-void

    :pswitch_data_0
    .packed-switch 0x6761282
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
