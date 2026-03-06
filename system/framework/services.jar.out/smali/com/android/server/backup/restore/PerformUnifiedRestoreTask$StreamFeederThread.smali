.class Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;
.super Lcom/android/server/backup/restore/RestoreEngine;
.source "PerformUnifiedRestoreTask.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/backup/BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamFeederThread"
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

.field mEnginePipes:[Landroid/os/ParcelFileDescriptor;

.field mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

.field private final mEphemeralOpToken:I

.field mTransportPipes:[Landroid/os/ParcelFileDescriptor;

.field final synthetic this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1104
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-direct {p0}, Lcom/android/server/backup/restore/RestoreEngine;-><init>()V

    .line 1092
    const-string v0, "StreamFeederThread"

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->TAG:Ljava/lang/String;

    .line 1105
    invoke-static {p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetbackupManagerService(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEphemeralOpToken:I

    .line 1106
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    .line 1107
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    .line 1108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V

    .line 1109
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    .line 1302
    return-void
.end method

.method public handleCancel(I)V
    .locals 6
    .param p1, "cancellationReason"    # I

    .line 1312
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmOperationStorage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/OperationStorage;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEphemeralOpToken:I

    invoke-interface {v0, v1}, Lcom/android/server/backup/OperationStorage;->removeOperation(I)V

    .line 1313
    const-string v0, "StreamFeederThread"

    const-string v1, "Full-data restore target timed out; shutting down"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$maddRestoreOperationTypeToEvent(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1315
    .local v0, "monitoringExtras":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmBackupManagerMonitorEventSender(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    const/4 v4, 0x2

    const/16 v5, 0x2d

    invoke-virtual {v2, v5, v3, v4, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 1320
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    invoke-virtual {v2}, Lcom/android/server/backup/restore/FullRestoreEngineThread;->handleTimeout()V

    .line 1322
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1323
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aput-object v1, v2, v3

    .line 1324
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1325
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aput-object v1, v2, v3

    .line 1326
    return-void
.end method

.method public operationComplete(J)V
    .locals 0
    .param p1, "result"    # J

    .line 1307
    return-void
.end method

.method public run()V
    .locals 23

    .line 1113
    move-object/from16 v3, p0

    const-string v11, "Transport threw from abortFullRestore: "

    const-string v12, "StreamFeederThread"

    sget-object v13, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 1114
    .local v13, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    const/4 v14, 0x0

    .line 1116
    .local v14, "status":I
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v1, 0xb1c

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1118
    new-instance v0, Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v1, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetbackupManagerService(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v1

    iget-object v2, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmOperationStorage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/OperationStorage;

    move-result-object v2

    iget-object v4, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmBackupManagerMonitorEventSender(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    move-result-object v4

    .line 1124
    invoke-virtual {v4}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iget-object v4, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget v8, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEphemeralOpToken:I

    iget-object v4, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmBackupEligibilityRules(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v10

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/android/server/backup/restore/FullRestoreEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZIZLcom/android/server/backup/utils/BackupEligibilityRules;)V

    iput-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    .line 1130
    new-instance v0, Lcom/android/server/backup/restore/FullRestoreEngineThread;

    iget-object v1, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v2, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/restore/FullRestoreEngineThread;-><init>(Lcom/android/server/backup/restore/FullRestoreEngine;Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    .line 1132
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    .line 1133
    .local v2, "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v5, v0, v4

    .line 1134
    .local v5, "tReadEnd":Landroid/os/ParcelFileDescriptor;
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v6, v0, v1

    .line 1136
    .local v6, "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    const v0, 0x8000

    .line 1137
    .local v0, "bufferSize":I
    nop

    .line 1139
    const/high16 v7, 0x10000

    .line 1141
    .end local v0    # "bufferSize":I
    .local v7, "bufferSize":I
    new-array v8, v7, [B

    .line 1142
    .local v8, "buffer":[B
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v9, v0

    .line 1143
    .local v9, "engineOut":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v10, v0

    .line 1146
    .local v10, "transportIn":Ljava/io/FileInputStream;
    new-instance v0, Ljava/lang/Thread;

    iget-object v15, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    const-string/jumbo v1, "unified-restore-engine"

    invoke-direct {v0, v15, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1148
    const-string v1, "PerformUnifiedRestoreTask$StreamFeederThread.run()"

    .line 1150
    .local v1, "callerLogString":Ljava/lang/String;
    :try_start_0
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmTransportConnection(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v0

    .line 1151
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    .line 1152
    .local v0, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    :goto_0
    if-nez v14, :cond_4

    .line 1154
    invoke-virtual {v0, v6}, Lcom/android/server/backup/transport/BackupTransportClient;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I

    move-result v17
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move/from16 v18, v17

    .line 1155
    .local v18, "result":I
    if-lez v18, :cond_2

    .line 1161
    move/from16 v15, v18

    .end local v18    # "result":I
    .local v15, "result":I
    if-le v15, v7, :cond_0

    .line 1162
    move v7, v15

    .line 1163
    :try_start_1
    new-array v4, v7, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v4

    .end local v8    # "buffer":[B
    .local v4, "buffer":[B
    goto :goto_1

    .line 1240
    .end local v0    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v4    # "buffer":[B
    .end local v15    # "result":I
    .restart local v8    # "buffer":[B
    :catchall_0
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    move-object v2, v0

    goto/16 :goto_11

    .line 1223
    :catch_0
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    goto/16 :goto_8

    .line 1207
    :catch_1
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    goto/16 :goto_d

    .line 1165
    .restart local v0    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v15    # "result":I
    :cond_0
    :goto_1
    move v4, v15

    .line 1166
    .local v4, "toCopy":I
    :goto_2
    if-lez v4, :cond_1

    .line 1167
    move-object/from16 v19, v2

    const/4 v2, 0x0

    .end local v2    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .local v19, "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    :try_start_2
    invoke-virtual {v10, v8, v2, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v18

    move/from16 v20, v18

    .line 1168
    .local v20, "n":I
    move-object/from16 v21, v0

    move/from16 v0, v20

    .end local v20    # "n":I
    .local v0, "n":I
    .local v21, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    invoke-virtual {v9, v8, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1169
    sub-int/2addr v4, v0

    .line 1173
    .end local v0    # "n":I
    move-object/from16 v2, v19

    move-object/from16 v0, v21

    goto :goto_2

    .line 1240
    .end local v4    # "toCopy":I
    .end local v15    # "result":I
    .end local v21    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    goto/16 :goto_11

    .line 1223
    :catch_2
    move-exception v0

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    goto/16 :goto_8

    .line 1207
    :catch_3
    move-exception v0

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    goto/16 :goto_d

    .line 1166
    .end local v19    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .local v0, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v2    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "toCopy":I
    .restart local v15    # "result":I
    :cond_1
    move-object/from16 v21, v0

    move-object/from16 v19, v2

    .line 1174
    .end local v0    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v2    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "toCopy":I
    .restart local v19    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v21    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    move-object/from16 v20, v5

    move-object/from16 v22, v6

    goto :goto_3

    .end local v15    # "result":I
    .end local v19    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .end local v21    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v0    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v2    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v18    # "result":I
    :cond_2
    move-object/from16 v21, v0

    move-object/from16 v19, v2

    move/from16 v15, v18

    .end local v0    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v2    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .end local v18    # "result":I
    .restart local v15    # "result":I
    .restart local v19    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v21    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    const/4 v0, -0x1

    if-ne v15, v0, :cond_3

    .line 1182
    const/4 v14, 0x0

    .line 1183
    move-object/from16 v20, v5

    move-object/from16 v22, v6

    goto/16 :goto_4

    .line 1187
    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " streaming restore for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 1194
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$maddRestoreOperationTypeToEvent(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1195
    .local v0, "monitoringExtras":Landroid/os/Bundle;
    iget-object v2, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmBackupManagerMonitorEventSender(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    move-result-object v2

    iget-object v4, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    const/4 v5, 0x1

    const/16 v6, 0x42

    .end local v5    # "tReadEnd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    .local v20, "tReadEnd":Landroid/os/ParcelFileDescriptor;
    .local v22, "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    :try_start_4
    invoke-virtual {v2, v6, v4, v5, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 1200
    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    const/16 v2, 0xb0f

    invoke-static {v2, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1201
    move v2, v15

    move v14, v2

    .line 1203
    .end local v0    # "monitoringExtras":Landroid/os/Bundle;
    .end local v15    # "result":I
    :goto_3
    move-object/from16 v2, v19

    move-object/from16 v5, v20

    move-object/from16 v0, v21

    move-object/from16 v6, v22

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1240
    .end local v21    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    :catchall_2
    move-exception v0

    move-object v2, v0

    goto/16 :goto_11

    .line 1223
    :catch_4
    move-exception v0

    goto/16 :goto_8

    .line 1207
    :catch_5
    move-exception v0

    goto/16 :goto_d

    .line 1240
    .end local v20    # "tReadEnd":Landroid/os/ParcelFileDescriptor;
    .end local v22    # "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "tReadEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    :catchall_3
    move-exception v0

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    move-object v2, v0

    .end local v5    # "tReadEnd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v20    # "tReadEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v22    # "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_11

    .line 1223
    .end local v20    # "tReadEnd":Landroid/os/ParcelFileDescriptor;
    .end local v22    # "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "tReadEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    :catch_6
    move-exception v0

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    .end local v5    # "tReadEnd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v20    # "tReadEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v22    # "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_8

    .line 1207
    .end local v20    # "tReadEnd":Landroid/os/ParcelFileDescriptor;
    .end local v22    # "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "tReadEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    :catch_7
    move-exception v0

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    .end local v5    # "tReadEnd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v20    # "tReadEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v22    # "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_d

    .line 1240
    .end local v19    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .end local v20    # "tReadEnd":Landroid/os/ParcelFileDescriptor;
    .end local v22    # "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "tReadEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    :catchall_4
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    move-object v2, v0

    .end local v2    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "tReadEnd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v19    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v20    # "tReadEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v22    # "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_11

    .line 1223
    .end local v19    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .end local v20    # "tReadEnd":Landroid/os/ParcelFileDescriptor;
    .end local v22    # "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "tReadEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    :catch_8
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    .end local v2    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "tReadEnd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v19    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v20    # "tReadEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v22    # "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_8

    .line 1207
    .end local v19    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .end local v20    # "tReadEnd":Landroid/os/ParcelFileDescriptor;
    .end local v22    # "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "tReadEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    :catch_9
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    .end local v2    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "tReadEnd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v19    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v20    # "tReadEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v22    # "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_d

    .line 1152
    .end local v19    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .end local v20    # "tReadEnd":Landroid/os/ParcelFileDescriptor;
    .end local v22    # "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    .local v0, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v2    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "tReadEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    :cond_4
    move-object/from16 v21, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    .line 1240
    .end local v0    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v2    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "tReadEnd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v19    # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v20    # "tReadEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v22    # "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    :goto_4
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/16 v16, 0x1

    aget-object v0, v0, v16

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1241
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/16 v18, 0x0

    aget-object v0, v0, v18

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1242
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v16

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1245
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngineThread;->waitForResult()I

    .line 1248
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v18

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1252
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v2, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    invoke-static {v0, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmDidLaunch(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)V

    .line 1256
    if-nez v14, :cond_6

    .line 1258
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 1262
    .end local v13    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .local v0, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    iget-object v2, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v4, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmAgent(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)V

    .line 1265
    iget-object v2, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v4, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->getWidgetData()[B

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmWidgetData(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;[B)V

    goto :goto_7

    .line 1270
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v13    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_6
    :try_start_5
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmTransportConnection(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v0

    .line 1271
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    .line 1272
    .local v0, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->abortFullRestore()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    .line 1278
    nop

    .end local v0    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    goto :goto_6

    .line 1273
    :catch_a
    move-exception v0

    .line 1276
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    const/16 v14, -0x3e8

    .line 1282
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetbackupManagerService(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    iget-object v2, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataAfterRestoreFailure(Ljava/lang/String;)V

    .line 1286
    const/16 v2, -0x3e8

    if-ne v14, v2, :cond_7

    .line 1287
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .end local v13    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .local v0, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    goto :goto_7

    .line 1289
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v13    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_7
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 1292
    .end local v13    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :goto_7
    iget-object v2, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 1293
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V

    .line 1294
    goto/16 :goto_10

    .line 1223
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v13    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :goto_8
    nop

    .line 1227
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transport failed during restore: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iget-object v2, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$maddRestoreOperationTypeToEvent(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 1229
    .local v2, "monitoringExtras":Landroid/os/Bundle;
    iget-object v4, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmBackupManagerMonitorEventSender(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v5}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    const/4 v6, 0x1

    const/16 v15, 0x42

    invoke-virtual {v4, v15, v5, v6, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 1234
    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const/16 v4, 0xb0f

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1235
    const/16 v2, -0x3e8

    .line 1240
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v14    # "status":I
    .local v2, "status":I
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/16 v16, 0x1

    aget-object v0, v0, v16

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1241
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/16 v18, 0x0

    aget-object v0, v0, v18

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1242
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v16

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1245
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngineThread;->waitForResult()I

    .line 1248
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v18

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1252
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v4, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_9

    :cond_8
    const/4 v4, 0x0

    :goto_9
    invoke-static {v0, v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmDidLaunch(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)V

    .line 1256
    if-nez v2, :cond_9

    .line 1258
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 1262
    .end local v13    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .local v0, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    iget-object v4, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v5, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v5}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmAgent(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)V

    .line 1265
    iget-object v4, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v5, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v5}, Lcom/android/server/backup/restore/FullRestoreEngine;->getWidgetData()[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmWidgetData(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;[B)V

    :goto_a
    move v14, v2

    goto/16 :goto_7

    .line 1270
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v13    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_9
    :try_start_7
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmTransportConnection(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v0

    .line 1271
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    .line 1272
    .local v0, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->abortFullRestore()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b

    .line 1278
    nop

    .end local v0    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    goto :goto_b

    .line 1273
    :catch_b
    move-exception v0

    .line 1276
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    const/16 v2, -0x3e8

    .line 1282
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetbackupManagerService(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    iget-object v4, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataAfterRestoreFailure(Ljava/lang/String;)V

    .line 1286
    const/16 v4, -0x3e8

    if-ne v2, v4, :cond_a

    .line 1287
    :goto_c
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    move v14, v2

    .end local v13    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .local v0, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    goto/16 :goto_7

    .line 1289
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v13    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_a
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    move v14, v2

    .end local v13    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    goto/16 :goto_7

    .line 1207
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .end local v2    # "status":I
    .restart local v13    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v14    # "status":I
    :goto_d
    nop

    .line 1211
    .local v0, "e":Ljava/io/IOException;
    :try_start_8
    const-string v2, "Unable to route data for restore"

    invoke-static {v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    iget-object v2, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$maddRestoreOperationTypeToEvent(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 1213
    .local v2, "monitoringExtras":Landroid/os/Bundle;
    iget-object v4, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmBackupManagerMonitorEventSender(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v5}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    const/4 v6, 0x2

    const/16 v15, 0x41

    invoke-virtual {v4, v15, v5, v6, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 1218
    iget-object v4, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "I/O error on pipes"

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v5, 0xb10

    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1222
    const/16 v2, -0x3eb

    .line 1240
    .end local v0    # "e":Ljava/io/IOException;
    .end local v14    # "status":I
    .local v2, "status":I
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/16 v16, 0x1

    aget-object v0, v0, v16

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1241
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/16 v18, 0x0

    aget-object v0, v0, v18

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1242
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v16

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1245
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngineThread;->waitForResult()I

    .line 1248
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v18

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1252
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v4, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v4

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    goto :goto_e

    :cond_b
    const/4 v4, 0x0

    :goto_e
    invoke-static {v0, v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmDidLaunch(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)V

    .line 1256
    if-nez v2, :cond_c

    .line 1258
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 1262
    .end local v13    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .local v0, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    iget-object v4, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v5, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v5}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmAgent(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)V

    .line 1265
    iget-object v4, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v5, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v5}, Lcom/android/server/backup/restore/FullRestoreEngine;->getWidgetData()[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmWidgetData(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;[B)V

    goto/16 :goto_a

    .line 1270
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v13    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_c
    :try_start_9
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmTransportConnection(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v0

    .line 1271
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    .line 1272
    .local v0, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->abortFullRestore()I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c

    .line 1278
    nop

    .end local v0    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    goto :goto_f

    .line 1273
    :catch_c
    move-exception v0

    .line 1276
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    const/16 v2, -0x3e8

    .line 1282
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_f
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetbackupManagerService(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    iget-object v4, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataAfterRestoreFailure(Ljava/lang/String;)V

    .line 1286
    const/16 v4, -0x3e8

    if-ne v2, v4, :cond_a

    .line 1287
    goto/16 :goto_c

    .line 1295
    .end local v2    # "status":I
    .end local v13    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .local v0, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v14    # "status":I
    :goto_10
    return-void

    .line 1240
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v13    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :goto_11
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/16 v16, 0x1

    aget-object v0, v0, v16

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1241
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/16 v18, 0x0

    aget-object v0, v0, v18

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1242
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v16

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1245
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngineThread;->waitForResult()I

    .line 1248
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v18

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1252
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v4, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v4

    if-eqz v4, :cond_d

    move/from16 v4, v16

    goto :goto_12

    :cond_d
    const/4 v4, 0x0

    :goto_12
    invoke-static {v0, v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmDidLaunch(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)V

    .line 1256
    if-eqz v14, :cond_f

    .line 1270
    :try_start_a
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmTransportConnection(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v0

    .line 1271
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    .line 1272
    .local v0, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->abortFullRestore()I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d

    .line 1278
    nop

    .end local v0    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    goto :goto_13

    .line 1273
    :catch_d
    move-exception v0

    .line 1276
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    const/16 v14, -0x3e8

    .line 1282
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_13
    iget-object v0, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetbackupManagerService(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    iget-object v4, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fgetmCurrentPackage(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataAfterRestoreFailure(Ljava/lang/String;)V

    .line 1286
    const/16 v4, -0x3e8

    if-ne v14, v4, :cond_e

    .line 1287
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .end local v13    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .local v0, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    goto :goto_14

    .line 1289
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v13    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_e
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .end local v13    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    goto :goto_14

    .line 1258
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v13    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_f
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 1262
    .end local v13    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    iget-object v4, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v5, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v5}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmAgent(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)V

    .line 1265
    iget-object v4, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v5, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v5}, Lcom/android/server/backup/restore/FullRestoreEngine;->getWidgetData()[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->-$$Nest$fputmWidgetData(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;[B)V

    .line 1292
    :goto_14
    iget-object v4, v3, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-virtual {v4, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 1293
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V

    .line 1294
    throw v2
.end method
