.class public Lcom/android/server/backup/internal/PerformInitializeTask;
.super Ljava/lang/Object;
.source "PerformInitializeTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private final mBaseStateDir:Ljava/io/File;

.field private final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field private mObserver:Landroid/app/backup/IBackupObserver;

.field private final mQueue:[Ljava/lang/String;

.field private final mTransportManager:Lcom/android/server/backup/TransportManager;


# direct methods
.method constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/TransportManager;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/io/File;)V
    .locals 0
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "transportManager"    # Lcom/android/server/backup/TransportManager;
    .param p3, "transportNames"    # [Ljava/lang/String;
    .param p4, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p5, "listener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;
    .param p6, "baseStateDir"    # Ljava/io/File;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 82
    iput-object p2, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 83
    iput-object p3, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mQueue:[Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 85
    iput-object p5, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 86
    iput-object p6, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mBaseStateDir:Ljava/io/File;

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V
    .locals 7
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "transportNames"    # [Ljava/lang/String;
    .param p3, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p4, "listener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 64
    nop

    .line 66
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v2

    .line 70
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v6

    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "backupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    .end local p2    # "transportNames":[Ljava/lang/String;
    .end local p3    # "observer":Landroid/app/backup/IBackupObserver;
    .end local p4    # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    .local v1, "backupManagerService":Lcom/android/server/backup/UserBackupManagerService;
    .local v3, "transportNames":[Ljava/lang/String;
    .local v4, "observer":Landroid/app/backup/IBackupObserver;
    .local v5, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/backup/internal/PerformInitializeTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/TransportManager;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/io/File;)V

    .line 71
    return-void
.end method

.method private notifyFinished(I)V
    .locals 2
    .param p1, "status"    # I

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupObserver;->backupFinished(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    goto :goto_1

    .line 106
    :cond_0
    :goto_0
    goto :goto_2

    .line 104
    :goto_1
    nop

    .line 105
    .local v0, "ignored":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 107
    .end local v0    # "ignored":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method private notifyResult(Ljava/lang/String;I)V
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-interface {v0, p1, p2}, Landroid/app/backup/IBackupObserver;->onResult(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    goto :goto_1

    .line 96
    :cond_0
    :goto_0
    goto :goto_2

    .line 94
    :goto_1
    nop

    .line 95
    .local v0, "ignored":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 97
    .end local v0    # "ignored":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .line 111
    move-object/from16 v1, p0

    const-string v2, "BackupManagerService"

    const-string v3, "PerformInitializeTask.run()"

    .line 112
    .local v3, "callerLogString":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mQueue:[Ljava/lang/String;

    array-length v4, v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v0

    .line 113
    .local v4, "transportClientsToDisposeOf":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/backup/transport/TransportConnection;>;"
    const/4 v5, 0x0

    .line 115
    .local v5, "result":I
    :try_start_0
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mQueue:[Ljava/lang/String;

    array-length v6, v0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_4

    aget-object v9, v0, v8

    .line 116
    .local v9, "transportName":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 117
    invoke-virtual {v10, v9, v3}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 118
    .local v10, "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    if-nez v10, :cond_0

    .line 119
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Requested init for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " but not found"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    move-object/from16 v17, v0

    move/from16 v19, v6

    goto/16 :goto_2

    .line 174
    .end local v9    # "transportName":Ljava/lang/String;
    .end local v10    # "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    :catchall_0
    move-exception v0

    move-object/from16 v18, v4

    goto/16 :goto_8

    .line 170
    :catch_0
    move-exception v0

    move-object/from16 v18, v4

    goto/16 :goto_5

    .line 122
    .restart local v9    # "transportName":Ljava/lang/String;
    .restart local v10    # "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    :cond_0
    :try_start_2
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Initializing (wiping) backup transport storage: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v11, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 127
    invoke-virtual {v10}, Lcom/android/server/backup/transport/TransportConnection;->getTransportComponent()Landroid/content/ComponentName;

    move-result-object v12

    .line 126
    invoke-virtual {v11, v12}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v11

    .line 128
    .local v11, "transportDirName":Ljava/lang/String;
    const/16 v12, 0xb05

    invoke-static {v12, v11}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 131
    .local v12, "startRealtime":J
    invoke-virtual {v10, v3}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v14

    .line 133
    .local v14, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    invoke-virtual {v14}, Lcom/android/server/backup/transport/BackupTransportClient;->initializeDevice()I

    move-result v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 134
    .local v15, "status":I
    if-eqz v15, :cond_1

    .line 135
    :try_start_3
    const-string v7, "Transport error in initializeDevice()"

    invoke-static {v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 137
    :cond_1
    :try_start_4
    invoke-virtual {v14}, Lcom/android/server/backup/transport/BackupTransportClient;->finishBackup()I

    move-result v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move v15, v7

    .line 138
    if-eqz v15, :cond_2

    .line 139
    :try_start_5
    const-string v7, "Transport error in finishBackup()"

    invoke-static {v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_2
    :goto_1
    if-nez v15, :cond_3

    .line 145
    const-string v7, "Device init successful"

    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    move/from16 v19, v6

    sub-long v6, v17, v12

    long-to-int v6, v6

    .line 147
    .local v6, "millis":I
    move-object/from16 v17, v0

    const/4 v7, 0x0

    new-array v0, v7, [Ljava/lang/Object;

    const/16 v7, 0xb0b

    invoke-static {v7, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 148
    new-instance v0, Ljava/io/File;

    iget-object v7, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v0, v7, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    .local v0, "stateFileDir":Ljava/io/File;
    iget-object v7, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7, v0}, Lcom/android/server/backup/UserBackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 150
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v18, v0

    .end local v0    # "stateFileDir":Ljava/io/File;
    .local v18, "stateFileDir":Ljava/io/File;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v7, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v7, 0xb09

    invoke-static {v7, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 151
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v9, v11}, Lcom/android/server/backup/UserBackupManagerService;->recordInitPending(ZLjava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-direct {v1, v9, v7}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyResult(Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 153
    .end local v6    # "millis":I
    .end local v18    # "stateFileDir":Ljava/io/File;
    nop

    .line 115
    .end local v9    # "transportName":Ljava/lang/String;
    .end local v10    # "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    .end local v11    # "transportDirName":Ljava/lang/String;
    .end local v12    # "startRealtime":J
    .end local v14    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v15    # "status":I
    :goto_2
    move-object/from16 v18, v4

    const/4 v7, 0x0

    goto :goto_3

    .line 156
    .restart local v9    # "transportName":Ljava/lang/String;
    .restart local v10    # "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    .restart local v11    # "transportDirName":Ljava/lang/String;
    .restart local v12    # "startRealtime":J
    .restart local v14    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v15    # "status":I
    :cond_3
    move-object/from16 v17, v0

    move/from16 v19, v6

    :try_start_6
    const-string v0, "(initialize)"

    const/16 v6, 0xb06

    invoke-static {v6, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 157
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v9, v11}, Lcom/android/server/backup/UserBackupManagerService;->recordInitPending(ZLjava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-direct {v1, v9, v15}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyResult(Ljava/lang/String;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 159
    move v5, v15

    .line 162
    :try_start_7
    invoke-virtual {v14}, Lcom/android/server/backup/transport/BackupTransportClient;->requestBackupTime()J

    move-result-wide v6

    .line 163
    .local v6, "delay":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object/from16 v18, v4

    .end local v4    # "transportClientsToDisposeOf":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/backup/transport/TransportConnection;>;"
    .local v18, "transportClientsToDisposeOf":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/backup/transport/TransportConnection;>;"
    :try_start_8
    const-string v4, "Init failed on "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " resched in "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move/from16 v22, v5

    .end local v5    # "result":I
    .local v22, "result":I
    add-long v4, v20, v6

    move-wide/from16 v20, v6

    .end local v6    # "delay":J
    .local v20, "delay":J
    :try_start_9
    iget-object v6, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 167
    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getRunInitIntent()Landroid/app/PendingIntent;

    move-result-object v6

    .line 164
    const/4 v7, 0x0

    invoke-virtual {v0, v7, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move/from16 v5, v22

    .line 115
    .end local v9    # "transportName":Ljava/lang/String;
    .end local v10    # "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    .end local v11    # "transportDirName":Ljava/lang/String;
    .end local v12    # "startRealtime":J
    .end local v14    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v15    # "status":I
    .end local v20    # "delay":J
    .end local v22    # "result":I
    .restart local v5    # "result":I
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v17

    move-object/from16 v4, v18

    move/from16 v6, v19

    goto/16 :goto_0

    .line 174
    .end local v5    # "result":I
    .restart local v22    # "result":I
    :catchall_1
    move-exception v0

    move/from16 v5, v22

    goto/16 :goto_8

    .line 170
    :catch_1
    move-exception v0

    move/from16 v5, v22

    goto :goto_5

    .line 174
    .end local v22    # "result":I
    .restart local v5    # "result":I
    :catchall_2
    move-exception v0

    move/from16 v22, v5

    .end local v5    # "result":I
    .restart local v22    # "result":I
    goto :goto_8

    .line 170
    .end local v22    # "result":I
    .restart local v5    # "result":I
    :catch_2
    move-exception v0

    move/from16 v22, v5

    .end local v5    # "result":I
    .restart local v22    # "result":I
    goto :goto_5

    .line 174
    .end local v18    # "transportClientsToDisposeOf":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/backup/transport/TransportConnection;>;"
    .end local v22    # "result":I
    .restart local v4    # "transportClientsToDisposeOf":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/backup/transport/TransportConnection;>;"
    .restart local v5    # "result":I
    :catchall_3
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v22, v5

    .end local v4    # "transportClientsToDisposeOf":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/backup/transport/TransportConnection;>;"
    .end local v5    # "result":I
    .restart local v18    # "transportClientsToDisposeOf":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/backup/transport/TransportConnection;>;"
    .restart local v22    # "result":I
    goto :goto_8

    .line 170
    .end local v18    # "transportClientsToDisposeOf":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/backup/transport/TransportConnection;>;"
    .end local v22    # "result":I
    .restart local v4    # "transportClientsToDisposeOf":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/backup/transport/TransportConnection;>;"
    .restart local v5    # "result":I
    :catch_3
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v22, v5

    .end local v4    # "transportClientsToDisposeOf":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/backup/transport/TransportConnection;>;"
    .end local v5    # "result":I
    .restart local v18    # "transportClientsToDisposeOf":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/backup/transport/TransportConnection;>;"
    .restart local v22    # "result":I
    goto :goto_5

    .line 174
    .end local v18    # "transportClientsToDisposeOf":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/backup/transport/TransportConnection;>;"
    .end local v22    # "result":I
    .restart local v4    # "transportClientsToDisposeOf":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/backup/transport/TransportConnection;>;"
    .restart local v5    # "result":I
    :catchall_4
    move-exception v0

    move-object/from16 v18, v4

    .end local v4    # "transportClientsToDisposeOf":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/backup/transport/TransportConnection;>;"
    .restart local v18    # "transportClientsToDisposeOf":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/backup/transport/TransportConnection;>;"
    goto :goto_8

    .line 170
    .end local v18    # "transportClientsToDisposeOf":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/backup/transport/TransportConnection;>;"
    .restart local v4    # "transportClientsToDisposeOf":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/backup/transport/TransportConnection;>;"
    :catch_4
    move-exception v0

    move-object/from16 v18, v4

    .end local v4    # "transportClientsToDisposeOf":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/backup/transport/TransportConnection;>;"
    .restart local v18    # "transportClientsToDisposeOf":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/backup/transport/TransportConnection;>;"
    goto :goto_5

    .line 174
    .end local v18    # "transportClientsToDisposeOf":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/backup/transport/TransportConnection;>;"
    .restart local v4    # "transportClientsToDisposeOf":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/backup/transport/TransportConnection;>;"
    :cond_4
    move-object/from16 v18, v4

    .end local v4    # "transportClientsToDisposeOf":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/backup/transport/TransportConnection;>;"
    .restart local v18    # "transportClientsToDisposeOf":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/backup/transport/TransportConnection;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/transport/TransportConnection;

    .line 175
    .local v2, "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    iget-object v4, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 176
    .end local v2    # "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    goto :goto_4

    .line 177
    :cond_5
    invoke-direct {v1, v5}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyFinished(I)V

    .line 178
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v0, v3}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 179
    goto :goto_7

    .line 170
    :goto_5
    nop

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    :try_start_a
    const-string v4, "Unexpected error performing init"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 172
    const/16 v5, -0x3e8

    .line 174
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/transport/TransportConnection;

    .line 175
    .restart local v2    # "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    iget-object v4, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 176
    .end local v2    # "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    goto :goto_6

    .line 180
    :goto_7
    return-void

    .line 174
    :catchall_5
    move-exception v0

    :goto_8
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/backup/transport/TransportConnection;

    .line 175
    .local v4, "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    iget-object v6, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v6, v4, v3}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 176
    .end local v4    # "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    goto :goto_9

    .line 177
    :cond_6
    invoke-direct {v1, v5}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyFinished(I)V

    .line 178
    iget-object v2, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v2, v3}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 179
    throw v0
.end method
