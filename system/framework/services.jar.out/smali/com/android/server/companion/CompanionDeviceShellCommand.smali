.class Lcom/android/server/companion/CompanionDeviceShellCommand;
.super Landroid/os/ShellCommand;
.source "CompanionDeviceShellCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CDM_CompanionDeviceShellCommand"


# instance fields
.field private final mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

.field private final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field private final mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

.field private final mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

.field private final mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

.field private final mService:Lcom/android/server/companion/CompanionDeviceManagerService;

.field private final mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

.field private final mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;


# direct methods
.method constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;Lcom/android/server/companion/transport/CompanionTransportManager;Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;Lcom/android/server/companion/association/AssociationRequestsProcessor;Lcom/android/server/companion/BackupRestoreProcessor;Lcom/android/server/companion/association/DisassociationProcessor;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p2, "associationStore"    # Lcom/android/server/companion/association/AssociationStore;
    .param p3, "devicePresenceProcessor"    # Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;
    .param p4, "transportManager"    # Lcom/android/server/companion/transport/CompanionTransportManager;
    .param p5, "systemDataTransferProcessor"    # Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;
    .param p6, "associationRequestsProcessor"    # Lcom/android/server/companion/association/AssociationRequestsProcessor;
    .param p7, "backupRestoreProcessor"    # Lcom/android/server/companion/BackupRestoreProcessor;
    .param p8, "disassociationProcessor"    # Lcom/android/server/companion/association/DisassociationProcessor;

    .line 69
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 71
    iput-object p2, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 72
    iput-object p3, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 73
    iput-object p4, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 74
    iput-object p5, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 75
    iput-object p6, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 76
    iput-object p7, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

    .line 77
    iput-object p8, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    .line 78
    return-void
.end method

.method private getNextBooleanArg()Z
    .locals 4

    .line 470
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "arg":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_0

    .line 473
    :cond_1
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 474
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 476
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a boolean argument but was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 472
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private getNextBooleanArgRequired()Z
    .locals 4

    .line 461
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_0

    .line 465
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a boolean argument but was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 463
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private getNextIntArgRequired()I
    .locals 1

    .line 457
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 37
    .param p1, "cmd"    # Ljava/lang/String;

    .line 82
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, " | "

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 86
    .local v3, "out":Ljava/io/PrintWriter;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    sparse-switch v5, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    :try_start_1
    const-string/jumbo v5, "simulate-device-appeared"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x5

    goto/16 :goto_2

    .line 446
    :catchall_0
    move-exception v0

    :goto_0
    move-object v13, v3

    goto/16 :goto_16

    .line 86
    :sswitch_1
    const-string/jumbo v5, "send-context-sync-call-control-message"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x13

    goto/16 :goto_2

    :sswitch_2
    const-string/jumbo v5, "simulate-device-event-device-locked"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x9

    goto/16 :goto_2

    :sswitch_3
    const-string/jumbo v5, "simulate-device-uuid-event"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x8

    goto/16 :goto_2

    :sswitch_4
    const-string v5, "associate"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto/16 :goto_2

    :sswitch_5
    const-string v5, "disable-perm-sync"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x1b

    goto/16 :goto_2

    :sswitch_6
    const-string/jumbo v5, "refresh-cache"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto/16 :goto_2

    :sswitch_7
    const-string v5, "disable-context-sync"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x16

    goto/16 :goto_2

    :sswitch_8
    const-string/jumbo v5, "stop-observing-device-presence-uuid"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xc

    goto/16 :goto_2

    :sswitch_9
    const-string v5, "disassociate"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    goto/16 :goto_2

    :sswitch_a
    const-string/jumbo v5, "send-context-sync-empty-message"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x11

    goto/16 :goto_2

    :sswitch_b
    const-string v5, "apply-restored-payload"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xe

    goto/16 :goto_2

    :sswitch_c
    const-string/jumbo v5, "remove-perm-sync-state"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x19

    goto/16 :goto_2

    :sswitch_d
    const-string/jumbo v5, "list"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto/16 :goto_2

    :sswitch_e
    const-string/jumbo v5, "simulate-device-disappeared"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x6

    goto/16 :goto_2

    :sswitch_f
    const-string/jumbo v5, "send-context-sync-call-create-message"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x12

    goto/16 :goto_2

    :sswitch_10
    const-string/jumbo v5, "simulate-device-event-device-unlocked"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xa

    goto/16 :goto_2

    :sswitch_11
    const-string/jumbo v5, "start-observing-device-presence-uuid"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xb

    goto/16 :goto_2

    :sswitch_12
    const-string v5, "disassociate-all"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    goto/16 :goto_2

    :sswitch_13
    const-string/jumbo v5, "simulate-device-event"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x7

    goto :goto_2

    :sswitch_14
    const-string/jumbo v5, "get-perm-sync-state"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x18

    goto :goto_2

    :sswitch_15
    const-string v5, "create-emulated-transport"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x10

    goto :goto_2

    :sswitch_16
    const-string v5, "enable-context-sync"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x17

    goto :goto_2

    :sswitch_17
    const-string/jumbo v5, "remove-inactive-associations"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xf

    goto :goto_2

    :sswitch_18
    const-string v5, "enable-perm-sync"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x1a

    goto :goto_2

    :sswitch_19
    const-string/jumbo v5, "get-backup-payload"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xd

    goto :goto_2

    :sswitch_1a
    const-string/jumbo v5, "send-context-sync-call-facilitators-message"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_0

    const/16 v5, 0x14

    goto :goto_2

    :sswitch_1b
    :try_start_2
    const-string/jumbo v5, "send-context-sync-call-message"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    if-eqz v5, :cond_0

    const/16 v5, 0x15

    goto :goto_2

    :goto_1
    const/4 v5, -0x1

    :goto_2
    const-string/jumbo v14, "shell"

    const-string v15, "UUID can not be null."

    move-object/from16 v17, v14

    const-wide v10, 0x10b00000004L

    const-wide v8, 0x10500000001L

    const-string v6, " -> "

    const-wide v12, 0x10900000001L

    const-string/jumbo v14, "null"

    packed-switch v5, :pswitch_data_0

    .line 444
    :try_start_3
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 433
    :pswitch_0
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 434
    .local v0, "associationId":I
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 435
    invoke-virtual {v5, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object v5

    .line 436
    .local v5, "request":Landroid/companion/datatransfer/PermissionSyncRequest;
    if-nez v5, :cond_1

    :goto_3
    goto :goto_4

    :cond_1
    invoke-virtual {v5}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    goto :goto_3

    :goto_4
    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 437
    iget-object v7, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    invoke-virtual {v7, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->disablePermissionsSync(I)V

    .line 438
    iget-object v7, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    invoke-virtual {v7, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object v7

    .line 439
    .end local v5    # "request":Landroid/companion/datatransfer/PermissionSyncRequest;
    .local v7, "request":Landroid/companion/datatransfer/PermissionSyncRequest;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    move-object v13, v3

    goto/16 :goto_15

    .line 422
    .end local v0    # "associationId":I
    .end local v7    # "request":Landroid/companion/datatransfer/PermissionSyncRequest;
    :pswitch_1
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 423
    .restart local v0    # "associationId":I
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 424
    invoke-virtual {v5, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object v5

    .line 425
    .restart local v5    # "request":Landroid/companion/datatransfer/PermissionSyncRequest;
    if-nez v5, :cond_2

    :goto_5
    goto :goto_6

    :cond_2
    invoke-virtual {v5}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    goto :goto_5

    :goto_6
    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 426
    iget-object v7, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    invoke-virtual {v7, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->enablePermissionsSync(I)V

    .line 427
    iget-object v7, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    invoke-virtual {v7, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object v7

    .line 428
    .end local v5    # "request":Landroid/companion/datatransfer/PermissionSyncRequest;
    .restart local v7    # "request":Landroid/companion/datatransfer/PermissionSyncRequest;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    move-object v13, v3

    goto/16 :goto_15

    .line 410
    .end local v0    # "associationId":I
    .end local v7    # "request":Landroid/companion/datatransfer/PermissionSyncRequest;
    :pswitch_2
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 411
    .restart local v0    # "associationId":I
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 412
    invoke-virtual {v5, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object v5

    .line 413
    .restart local v5    # "request":Landroid/companion/datatransfer/PermissionSyncRequest;
    if-nez v5, :cond_3

    move-object v7, v14

    goto :goto_7

    :cond_3
    invoke-virtual {v5}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    :goto_7
    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 414
    iget-object v7, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    invoke-virtual {v7, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->removePermissionSyncRequest(I)V

    .line 415
    iget-object v7, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    invoke-virtual {v7, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object v7

    .line 417
    .end local v5    # "request":Landroid/companion/datatransfer/PermissionSyncRequest;
    .restart local v7    # "request":Landroid/companion/datatransfer/PermissionSyncRequest;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v7, :cond_4

    :goto_8
    goto :goto_9

    :cond_4
    invoke-virtual {v7}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    goto :goto_8

    :goto_9
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    move-object v13, v3

    goto/16 :goto_15

    .line 402
    .end local v0    # "associationId":I
    .end local v7    # "request":Landroid/companion/datatransfer/PermissionSyncRequest;
    :pswitch_3
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 403
    .restart local v0    # "associationId":I
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 404
    invoke-virtual {v5, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object v5

    .line 405
    .restart local v5    # "request":Landroid/companion/datatransfer/PermissionSyncRequest;
    if-nez v5, :cond_5

    :goto_a
    goto :goto_b

    :cond_5
    invoke-virtual {v5}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    goto :goto_a

    :goto_b
    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 406
    move-object v13, v3

    goto/16 :goto_15

    .line 395
    .end local v0    # "associationId":I
    .end local v5    # "request":Landroid/companion/datatransfer/PermissionSyncRequest;
    :pswitch_4
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 396
    .restart local v0    # "associationId":I
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v5

    .line 397
    .local v5, "flag":I
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    invoke-virtual {v6, v0, v5}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->enableSystemDataSync(II)V

    .line 398
    move-object v13, v3

    goto/16 :goto_15

    .line 388
    .end local v0    # "associationId":I
    .end local v5    # "flag":I
    :pswitch_5
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 389
    .restart local v0    # "associationId":I
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v5

    .line 390
    .restart local v5    # "flag":I
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    invoke-virtual {v6, v0, v5}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->disableSystemDataSync(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 391
    move-object v13, v3

    goto/16 :goto_15

    .line 326
    .end local v0    # "associationId":I
    .end local v5    # "flag":I
    :pswitch_6
    :try_start_4
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 327
    .restart local v0    # "associationId":I
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 328
    .local v5, "callId":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 329
    .local v6, "facilitatorId":Ljava/lang/String;
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v14

    .line 330
    .local v14, "status":I
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v15

    .line 331
    .local v15, "acceptControl":Z
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v17

    .line 332
    .local v17, "rejectControl":Z
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v27

    .line 333
    .local v27, "silenceControl":Z
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v28

    .line 334
    .local v28, "muteControl":Z
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v29

    .line 335
    .local v29, "unmuteControl":Z
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v30

    .line 336
    .local v30, "endControl":Z
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v31

    .line 337
    .local v31, "holdControl":Z
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    move-result v32

    .line 338
    .local v32, "unholdControl":Z
    new-instance v33, Landroid/util/proto/ProtoOutputStream;

    invoke-direct/range {v33 .. v33}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    move-object/from16 v34, v33

    .line 339
    .local v34, "pos":Landroid/util/proto/ProtoOutputStream;
    move-object/from16 v7, v34

    .end local v34    # "pos":Landroid/util/proto/ProtoOutputStream;
    .local v7, "pos":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual {v7, v8, v9, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 340
    invoke-virtual {v7, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 341
    .local v8, "telecomToken":J
    const-wide v10, 0x20b00000001L

    invoke-virtual {v7, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 342
    .local v10, "callsToken":J
    invoke-virtual {v7, v12, v13, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 343
    move-object/from16 v35, v5

    .end local v5    # "callId":Ljava/lang/String;
    .local v35, "callId":Ljava/lang/String;
    const-wide v4, 0x10b00000002L

    invoke-virtual {v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 344
    .local v4, "originToken":J
    const-string v12, "Caller Name"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v13, v3

    const-wide v2, 0x10900000001L

    .end local v3    # "out":Ljava/io/PrintWriter;
    .local v13, "out":Ljava/io/PrintWriter;
    :try_start_5
    invoke-virtual {v7, v2, v3, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 345
    iget-object v2, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 346
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 345
    invoke-static {v2}, Lcom/android/server/companion/datatransfer/contextsync/BitmapUtils;->renderDrawableToByteArray(Landroid/graphics/drawable/Drawable;)[B

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-object v3, v13

    .end local v13    # "out":Ljava/io/PrintWriter;
    .restart local v3    # "out":Ljava/io/PrintWriter;
    const-wide v12, 0x10c00000002L

    :try_start_6
    invoke-virtual {v7, v12, v13, v2}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 348
    const-wide v12, 0x10b00000003L

    invoke-virtual {v7, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 350
    .local v12, "facilitatorToken":J
    const-string v2, "Test App Name"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move/from16 v36, v0

    const-wide v0, 0x10900000001L

    .end local v0    # "associationId":I
    .local v36, "associationId":I
    :try_start_7
    invoke-virtual {v7, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 351
    const-wide v0, 0x10900000002L

    invoke-virtual {v7, v0, v1, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 352
    invoke-virtual {v7, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 353
    invoke-virtual {v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 354
    const-wide v0, 0x10e00000003L

    invoke-virtual {v7, v0, v1, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 355
    const-wide v0, 0x20e00000004L

    if-eqz v15, :cond_6

    .line 356
    const/4 v2, 0x1

    :try_start_8
    invoke-virtual {v7, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_c

    .line 446
    .end local v4    # "originToken":J
    .end local v6    # "facilitatorId":Ljava/lang/String;
    .end local v7    # "pos":Landroid/util/proto/ProtoOutputStream;
    .end local v8    # "telecomToken":J
    .end local v10    # "callsToken":J
    .end local v12    # "facilitatorToken":J
    .end local v14    # "status":I
    .end local v15    # "acceptControl":Z
    .end local v17    # "rejectControl":Z
    .end local v27    # "silenceControl":Z
    .end local v28    # "muteControl":Z
    .end local v29    # "unmuteControl":Z
    .end local v30    # "endControl":Z
    .end local v31    # "holdControl":Z
    .end local v32    # "unholdControl":Z
    .end local v35    # "callId":Ljava/lang/String;
    .end local v36    # "associationId":I
    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 358
    .restart local v4    # "originToken":J
    .restart local v6    # "facilitatorId":Ljava/lang/String;
    .restart local v7    # "pos":Landroid/util/proto/ProtoOutputStream;
    .restart local v8    # "telecomToken":J
    .restart local v10    # "callsToken":J
    .restart local v12    # "facilitatorToken":J
    .restart local v14    # "status":I
    .restart local v15    # "acceptControl":Z
    .restart local v17    # "rejectControl":Z
    .restart local v27    # "silenceControl":Z
    .restart local v28    # "muteControl":Z
    .restart local v29    # "unmuteControl":Z
    .restart local v30    # "endControl":Z
    .restart local v31    # "holdControl":Z
    .restart local v32    # "unholdControl":Z
    .restart local v35    # "callId":Ljava/lang/String;
    .restart local v36    # "associationId":I
    :cond_6
    :goto_c
    if-eqz v17, :cond_7

    .line 359
    const/4 v2, 0x2

    invoke-virtual {v7, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 361
    :cond_7
    if-eqz v27, :cond_8

    .line 362
    const/4 v2, 0x3

    invoke-virtual {v7, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 364
    :cond_8
    if-eqz v28, :cond_9

    .line 365
    const/4 v2, 0x4

    invoke-virtual {v7, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 367
    :cond_9
    if-eqz v29, :cond_a

    .line 368
    const/4 v2, 0x5

    invoke-virtual {v7, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 370
    :cond_a
    if-eqz v30, :cond_b

    .line 371
    const/4 v2, 0x6

    invoke-virtual {v7, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 373
    :cond_b
    if-eqz v31, :cond_c

    .line 374
    const/4 v2, 0x7

    invoke-virtual {v7, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 376
    :cond_c
    if-eqz v32, :cond_d

    .line 377
    const/16 v2, 0x8

    invoke-virtual {v7, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 379
    :cond_d
    :try_start_9
    invoke-virtual {v7, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 380
    invoke-virtual {v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 381
    move-object/from16 v1, p0

    :try_start_a
    iget-object v0, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    move/from16 v2, v36

    .end local v36    # "associationId":I
    .local v2, "associationId":I
    invoke-virtual {v0, v2}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    move-result-object v0

    .line 383
    move/from16 v36, v2

    .end local v2    # "associationId":I
    .restart local v36    # "associationId":I
    invoke-virtual {v7}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 382
    move-object/from16 v18, v3

    move-wide/from16 v19, v4

    const/4 v3, 0x0

    const v4, 0x63678883

    .end local v3    # "out":Ljava/io/PrintWriter;
    .end local v4    # "originToken":J
    .local v18, "out":Ljava/io/PrintWriter;
    .local v19, "originToken":J
    :try_start_b
    invoke-virtual {v0, v4, v3, v2}, Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;->processMessage(II[B)V

    .line 384
    move-object/from16 v13, v18

    goto/16 :goto_15

    .line 446
    .end local v6    # "facilitatorId":Ljava/lang/String;
    .end local v7    # "pos":Landroid/util/proto/ProtoOutputStream;
    .end local v8    # "telecomToken":J
    .end local v10    # "callsToken":J
    .end local v12    # "facilitatorToken":J
    .end local v14    # "status":I
    .end local v15    # "acceptControl":Z
    .end local v17    # "rejectControl":Z
    .end local v19    # "originToken":J
    .end local v27    # "silenceControl":Z
    .end local v28    # "muteControl":Z
    .end local v29    # "unmuteControl":Z
    .end local v30    # "endControl":Z
    .end local v31    # "holdControl":Z
    .end local v32    # "unholdControl":Z
    .end local v35    # "callId":Ljava/lang/String;
    .end local v36    # "associationId":I
    :catchall_2
    move-exception v0

    move-object/from16 v13, v18

    goto/16 :goto_16

    .end local v18    # "out":Ljava/io/PrintWriter;
    .restart local v3    # "out":Ljava/io/PrintWriter;
    :catchall_3
    move-exception v0

    :goto_d
    move-object/from16 v18, v3

    move-object/from16 v13, v18

    .end local v3    # "out":Ljava/io/PrintWriter;
    .restart local v18    # "out":Ljava/io/PrintWriter;
    goto/16 :goto_16

    .end local v18    # "out":Ljava/io/PrintWriter;
    .restart local v3    # "out":Ljava/io/PrintWriter;
    :catchall_4
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_d

    .end local v3    # "out":Ljava/io/PrintWriter;
    .restart local v13    # "out":Ljava/io/PrintWriter;
    :catchall_5
    move-exception v0

    move-object/from16 v18, v13

    .end local v13    # "out":Ljava/io/PrintWriter;
    .restart local v18    # "out":Ljava/io/PrintWriter;
    goto/16 :goto_16

    .line 303
    .end local v18    # "out":Ljava/io/PrintWriter;
    .restart local v3    # "out":Ljava/io/PrintWriter;
    :pswitch_7
    move-object/from16 v18, v3

    .end local v3    # "out":Ljava/io/PrintWriter;
    .restart local v18    # "out":Ljava/io/PrintWriter;
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 304
    .restart local v0    # "associationId":I
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v2

    .line 305
    .local v2, "numberOfFacilitators":I
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, "facilitatorName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 307
    .local v4, "facilitatorId":Ljava/lang/String;
    new-instance v5, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v5}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 308
    .local v5, "pos":Landroid/util/proto/ProtoOutputStream;
    const/4 v6, 0x1

    invoke-virtual {v5, v8, v9, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 309
    invoke-virtual {v5, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 310
    .local v6, "telecomToken":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_e
    if-ge v8, v2, :cond_10

    .line 311
    const-wide v9, 0x20b00000003L

    invoke-virtual {v5, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 312
    .local v9, "facilitatorsToken":J
    nop

    .line 313
    const/4 v11, 0x1

    if-ne v2, v11, :cond_e

    move-object v11, v3

    goto :goto_f

    :cond_e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 312
    :goto_f
    const-wide v12, 0x10900000001L

    invoke-virtual {v5, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 314
    nop

    .line 315
    const/4 v11, 0x1

    if-ne v2, v11, :cond_f

    move-object v11, v4

    goto :goto_10

    :cond_f
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 314
    :goto_10
    const-wide v14, 0x10900000002L

    invoke-virtual {v5, v14, v15, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 316
    invoke-virtual {v5, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 310
    .end local v9    # "facilitatorsToken":J
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_10
    nop

    .line 318
    .end local v8    # "i":I
    invoke-virtual {v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 319
    iget-object v8, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    invoke-virtual {v8, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    move-result-object v8

    .line 321
    invoke-virtual {v5}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v9

    .line 320
    const/4 v10, 0x0

    const v11, 0x63678883

    invoke-virtual {v8, v11, v10, v9}, Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;->processMessage(II[B)V

    .line 322
    move-object/from16 v13, v18

    goto/16 :goto_15

    .line 291
    .end local v0    # "associationId":I
    .end local v2    # "numberOfFacilitators":I
    .end local v4    # "facilitatorId":Ljava/lang/String;
    .end local v5    # "pos":Landroid/util/proto/ProtoOutputStream;
    .end local v6    # "telecomToken":J
    .end local v18    # "out":Ljava/io/PrintWriter;
    .local v3, "out":Ljava/io/PrintWriter;
    :pswitch_8
    move-object/from16 v18, v3

    .end local v3    # "out":Ljava/io/PrintWriter;
    .restart local v18    # "out":Ljava/io/PrintWriter;
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 292
    .restart local v0    # "associationId":I
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "callId":Ljava/lang/String;
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v3

    .line 294
    .local v3, "control":I
    iget-object v4, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    invoke-virtual {v4, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    move-result-object v4

    .line 297
    invoke-static {v2, v3}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallControlMessage(Ljava/lang/String;I)[B

    move-result-object v5

    .line 295
    const/4 v10, 0x0

    const v11, 0x63678883

    invoke-virtual {v4, v11, v10, v5}, Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;->processMessage(II[B)V

    .line 299
    move-object/from16 v13, v18

    goto/16 :goto_15

    .line 278
    .end local v0    # "associationId":I
    .end local v2    # "callId":Ljava/lang/String;
    .end local v18    # "out":Ljava/io/PrintWriter;
    .local v3, "out":Ljava/io/PrintWriter;
    :pswitch_9
    move-object/from16 v18, v3

    .end local v3    # "out":Ljava/io/PrintWriter;
    .restart local v18    # "out":Ljava/io/PrintWriter;
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 279
    .restart local v0    # "associationId":I
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 280
    .restart local v2    # "callId":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, "address":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 282
    .local v4, "facilitator":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    invoke-virtual {v5, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    move-result-object v5

    .line 285
    invoke-static {v2, v3, v4}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallCreateMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    .line 283
    const/4 v10, 0x0

    const v11, 0x63678883

    invoke-virtual {v5, v11, v10, v6}, Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;->processMessage(II[B)V

    .line 287
    move-object/from16 v13, v18

    goto/16 :goto_15

    .line 269
    .end local v0    # "associationId":I
    .end local v2    # "callId":Ljava/lang/String;
    .end local v4    # "facilitator":Ljava/lang/String;
    .end local v18    # "out":Ljava/io/PrintWriter;
    .local v3, "out":Ljava/io/PrintWriter;
    :pswitch_a
    move-object/from16 v18, v3

    .end local v3    # "out":Ljava/io/PrintWriter;
    .restart local v18    # "out":Ljava/io/PrintWriter;
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 270
    .restart local v0    # "associationId":I
    iget-object v2, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    invoke-virtual {v2, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    move-result-object v2

    .line 273
    invoke-static {}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createEmptyMessage()[B

    move-result-object v3

    .line 271
    const/4 v10, 0x0

    const v11, 0x63678883

    invoke-virtual {v2, v11, v10, v3}, Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;->processMessage(II[B)V

    .line 274
    move-object/from16 v13, v18

    goto/16 :goto_15

    .line 264
    .end local v0    # "associationId":I
    .end local v18    # "out":Ljava/io/PrintWriter;
    .restart local v3    # "out":Ljava/io/PrintWriter;
    :pswitch_b
    move-object/from16 v18, v3

    .end local v3    # "out":Ljava/io/PrintWriter;
    .restart local v18    # "out":Ljava/io/PrintWriter;
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 265
    .restart local v0    # "associationId":I
    iget-object v2, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    invoke-virtual {v2, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    .line 266
    move-object/from16 v13, v18

    goto/16 :goto_15

    .line 257
    .end local v0    # "associationId":I
    .end local v18    # "out":Ljava/io/PrintWriter;
    .restart local v3    # "out":Ljava/io/PrintWriter;
    :pswitch_c
    move-object/from16 v18, v3

    .end local v3    # "out":Ljava/io/PrintWriter;
    .restart local v18    # "out":Ljava/io/PrintWriter;
    iget-object v0, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 258
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/companion/CompanionDeviceShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/companion/CompanionDeviceShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    .line 257
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 260
    move-object/from16 v13, v18

    goto/16 :goto_15

    .line 246
    .end local v18    # "out":Ljava/io/PrintWriter;
    .restart local v3    # "out":Ljava/io/PrintWriter;
    :pswitch_d
    move-object/from16 v18, v3

    .end local v3    # "out":Ljava/io/PrintWriter;
    .restart local v18    # "out":Ljava/io/PrintWriter;
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 247
    .local v0, "userId":I
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 248
    .local v2, "payload":[B
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/companion/BackupRestoreProcessor;->applyRestoredPayload([BI)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 250
    .end local v0    # "userId":I
    .end local v2    # "payload":[B
    move-object/from16 v13, v18

    goto/16 :goto_15

    .line 239
    .end local v18    # "out":Ljava/io/PrintWriter;
    .restart local v3    # "out":Ljava/io/PrintWriter;
    :pswitch_e
    move-object/from16 v18, v3

    .end local v3    # "out":Ljava/io/PrintWriter;
    .restart local v18    # "out":Ljava/io/PrintWriter;
    :try_start_c
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 240
    .restart local v0    # "userId":I
    iget-object v2, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

    invoke-virtual {v2, v0}, Lcom/android/server/companion/BackupRestoreProcessor;->getBackupPayload(I)[B

    move-result-object v2

    .line 241
    .restart local v2    # "payload":[B
    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    move-object/from16 v13, v18

    .end local v18    # "out":Ljava/io/PrintWriter;
    .restart local v13    # "out":Ljava/io/PrintWriter;
    :try_start_d
    invoke-virtual {v13, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    .end local v0    # "userId":I
    .end local v2    # "payload":[B
    goto/16 :goto_15

    .line 446
    :catchall_6
    move-exception v0

    goto/16 :goto_16

    .end local v13    # "out":Ljava/io/PrintWriter;
    .restart local v18    # "out":Ljava/io/PrintWriter;
    :catchall_7
    move-exception v0

    move-object/from16 v13, v18

    .end local v18    # "out":Ljava/io/PrintWriter;
    .restart local v13    # "out":Ljava/io/PrintWriter;
    goto/16 :goto_16

    .line 221
    .end local v13    # "out":Ljava/io/PrintWriter;
    .restart local v3    # "out":Ljava/io/PrintWriter;
    :pswitch_f
    move-object v13, v3

    .line 222
    .end local v3    # "out":Ljava/io/PrintWriter;
    .restart local v13    # "out":Ljava/io/PrintWriter;
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 223
    .restart local v0    # "userId":I
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, "uuid":Ljava/lang/String;
    invoke-virtual {v14, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 226
    invoke-virtual {v13, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    goto/16 :goto_15

    .line 229
    :cond_11
    invoke-static {v3}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    .line 230
    .local v4, "parcelUuid":Landroid/os/ParcelUuid;
    new-instance v5, Landroid/companion/ObservingDevicePresenceRequest$Builder;

    invoke-direct {v5}, Landroid/companion/ObservingDevicePresenceRequest$Builder;-><init>()V

    .line 231
    invoke-virtual {v5, v4}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->setUuid(Landroid/os/ParcelUuid;)Landroid/companion/ObservingDevicePresenceRequest$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->build()Landroid/companion/ObservingDevicePresenceRequest;

    move-result-object v5

    .line 232
    .local v5, "request":Landroid/companion/ObservingDevicePresenceRequest;
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    const/4 v10, 0x0

    invoke-virtual {v6, v5, v2, v0, v10}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->stopObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V

    .line 234
    .end local v0    # "userId":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "uuid":Ljava/lang/String;
    .end local v4    # "parcelUuid":Landroid/os/ParcelUuid;
    .end local v5    # "request":Landroid/companion/ObservingDevicePresenceRequest;
    goto/16 :goto_15

    .line 202
    .end local v13    # "out":Ljava/io/PrintWriter;
    .local v3, "out":Ljava/io/PrintWriter;
    :pswitch_10
    move-object v13, v3

    .line 203
    .end local v3    # "out":Ljava/io/PrintWriter;
    .restart local v13    # "out":Ljava/io/PrintWriter;
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 204
    .restart local v0    # "userId":I
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 205
    .restart local v2    # "packageName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "uuid":Ljava/lang/String;
    invoke-virtual {v14, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 207
    invoke-virtual {v13, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    goto/16 :goto_15

    .line 210
    :cond_12
    invoke-static {v3}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    .line 211
    .restart local v4    # "parcelUuid":Landroid/os/ParcelUuid;
    new-instance v5, Landroid/companion/ObservingDevicePresenceRequest$Builder;

    invoke-direct {v5}, Landroid/companion/ObservingDevicePresenceRequest$Builder;-><init>()V

    .line 212
    invoke-virtual {v5, v4}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->setUuid(Landroid/os/ParcelUuid;)Landroid/companion/ObservingDevicePresenceRequest$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->build()Landroid/companion/ObservingDevicePresenceRequest;

    move-result-object v5

    .line 213
    .restart local v5    # "request":Landroid/companion/ObservingDevicePresenceRequest;
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    const/4 v10, 0x0

    invoke-virtual {v6, v5, v2, v0, v10}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->startObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V

    .line 216
    .end local v0    # "userId":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "uuid":Ljava/lang/String;
    .end local v4    # "parcelUuid":Landroid/os/ParcelUuid;
    .end local v5    # "request":Landroid/companion/ObservingDevicePresenceRequest;
    goto/16 :goto_15

    .line 194
    .end local v13    # "out":Ljava/io/PrintWriter;
    .local v3, "out":Ljava/io/PrintWriter;
    :pswitch_11
    move-object v13, v3

    .line 195
    .end local v3    # "out":Ljava/io/PrintWriter;
    .restart local v13    # "out":Ljava/io/PrintWriter;
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 196
    .restart local v0    # "userId":I
    iget-object v2, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {v2, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceEventOnUserUnlocked(I)V

    .line 197
    .end local v0    # "userId":I
    goto/16 :goto_15

    .line 180
    .end local v13    # "out":Ljava/io/PrintWriter;
    .restart local v3    # "out":Ljava/io/PrintWriter;
    :pswitch_12
    move-object v13, v3

    .line 181
    .end local v3    # "out":Ljava/io/PrintWriter;
    .restart local v13    # "out":Ljava/io/PrintWriter;
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 182
    .local v0, "associationId":I
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v2

    .line 183
    .local v2, "userId":I
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v3

    .line 184
    .local v3, "event":I
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, "uuid":Ljava/lang/String;
    invoke-virtual {v4, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    const/4 v5, 0x0

    goto :goto_11

    :cond_13
    invoke-static {v4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v5

    .line 187
    .local v5, "parcelUuid":Landroid/os/ParcelUuid;
    :goto_11
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {v6, v0, v2, v3, v5}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceEventOnDeviceLocked(IIILandroid/os/ParcelUuid;)V

    .line 189
    .end local v2    # "userId":I
    .end local v3    # "event":I
    .end local v4    # "uuid":Ljava/lang/String;
    .end local v5    # "parcelUuid":Landroid/os/ParcelUuid;
    goto/16 :goto_15

    .line 166
    .end local v0    # "associationId":I
    .end local v13    # "out":Ljava/io/PrintWriter;
    .local v3, "out":Ljava/io/PrintWriter;
    :pswitch_13
    move-object v13, v3

    .line 167
    .end local v3    # "out":Ljava/io/PrintWriter;
    .restart local v13    # "out":Ljava/io/PrintWriter;
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "uuid":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v3

    .line 170
    .local v3, "userId":I
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v4

    .line 171
    .local v4, "event":I
    new-instance v5, Lcom/android/server/companion/devicepresence/ObservableUuid;

    .line 172
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v6

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v5, v3, v6, v2, v7}, Lcom/android/server/companion/devicepresence/ObservableUuid;-><init>(ILandroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/Long;)V

    .line 174
    .local v5, "observableUuid":Lcom/android/server/companion/devicepresence/ObservableUuid;
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {v6, v5, v4}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceEventByUuid(Lcom/android/server/companion/devicepresence/ObservableUuid;I)V

    .line 175
    .end local v0    # "uuid":Ljava/lang/String;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "userId":I
    .end local v4    # "event":I
    .end local v5    # "observableUuid":Lcom/android/server/companion/devicepresence/ObservableUuid;
    goto/16 :goto_15

    .line 157
    .end local v13    # "out":Ljava/io/PrintWriter;
    .local v3, "out":Ljava/io/PrintWriter;
    :pswitch_14
    move-object v13, v3

    .line 158
    .end local v3    # "out":Ljava/io/PrintWriter;
    .restart local v13    # "out":Ljava/io/PrintWriter;
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 159
    .local v0, "associationId":I
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v2

    .line 160
    .local v2, "event":I
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceEvent(II)V

    .line 161
    .end local v2    # "event":I
    goto/16 :goto_15

    .line 152
    .end local v0    # "associationId":I
    .end local v13    # "out":Ljava/io/PrintWriter;
    .restart local v3    # "out":Ljava/io/PrintWriter;
    :pswitch_15
    move-object v13, v3

    .end local v3    # "out":Ljava/io/PrintWriter;
    .restart local v13    # "out":Ljava/io/PrintWriter;
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 153
    .restart local v0    # "associationId":I
    iget-object v2, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    const/4 v11, 0x1

    invoke-virtual {v2, v0, v11}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceEvent(II)V

    .line 154
    goto/16 :goto_15

    .line 147
    .end local v0    # "associationId":I
    .end local v13    # "out":Ljava/io/PrintWriter;
    .restart local v3    # "out":Ljava/io/PrintWriter;
    :pswitch_16
    move-object v13, v3

    .end local v3    # "out":Ljava/io/PrintWriter;
    .restart local v13    # "out":Ljava/io/PrintWriter;
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 148
    .restart local v0    # "associationId":I
    iget-object v2, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    const/4 v10, 0x0

    invoke-virtual {v2, v0, v10}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceEvent(II)V

    .line 149
    goto/16 :goto_15

    .line 143
    .end local v0    # "associationId":I
    .end local v13    # "out":Ljava/io/PrintWriter;
    .restart local v3    # "out":Ljava/io/PrintWriter;
    :pswitch_17
    move-object v13, v3

    .end local v3    # "out":Ljava/io/PrintWriter;
    .restart local v13    # "out":Ljava/io/PrintWriter;
    iget-object v0, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0}, Lcom/android/server/companion/association/AssociationStore;->refreshCache()V

    .line 144
    goto/16 :goto_15

    .line 133
    .end local v13    # "out":Ljava/io/PrintWriter;
    .restart local v3    # "out":Ljava/io/PrintWriter;
    :pswitch_18
    move-object v13, v3

    .end local v3    # "out":Ljava/io/PrintWriter;
    .restart local v13    # "out":Ljava/io/PrintWriter;
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 134
    .local v0, "userId":I
    iget-object v2, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 135
    invoke-virtual {v2, v0}, Lcom/android/server/companion/association/AssociationStore;->getAssociationsByUser(I)Ljava/util/List;

    move-result-object v2

    .line 136
    .local v2, "userAssociations":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/companion/AssociationInfo;

    .line 137
    .local v4, "association":Landroid/companion/AssociationInfo;
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    invoke-virtual {v4}, Landroid/companion/AssociationInfo;->getId()I

    move-result v6

    move-object/from16 v7, v17

    invoke-virtual {v5, v6, v7}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(ILjava/lang/String;)V

    .line 138
    .end local v4    # "association":Landroid/companion/AssociationInfo;
    move-object/from16 v17, v7

    goto :goto_12

    .line 136
    :cond_14
    nop

    .line 140
    .end local v0    # "userId":I
    .end local v2    # "userAssociations":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    goto/16 :goto_15

    .line 118
    .end local v13    # "out":Ljava/io/PrintWriter;
    .restart local v3    # "out":Ljava/io/PrintWriter;
    :pswitch_19
    move-object v13, v3

    move-object/from16 v7, v17

    .end local v3    # "out":Ljava/io/PrintWriter;
    .restart local v13    # "out":Ljava/io/PrintWriter;
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 119
    .restart local v0    # "userId":I
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "address":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 122
    invoke-virtual {v4, v0, v2, v3}, Lcom/android/server/companion/association/AssociationStore;->getFirstAssociationByAddress(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;

    move-result-object v4

    .line 124
    .restart local v4    # "association":Landroid/companion/AssociationInfo;
    if-nez v4, :cond_15

    .line 125
    const-string v5, "Association doesn\'t exist."

    invoke-virtual {v13, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_13

    .line 127
    :cond_15
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    invoke-virtual {v4}, Landroid/companion/AssociationInfo;->getId()I

    move-result v6

    invoke-virtual {v5, v6, v7}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(ILjava/lang/String;)V

    .line 130
    .end local v0    # "userId":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "association":Landroid/companion/AssociationInfo;
    :goto_13
    goto/16 :goto_15

    .line 104
    .end local v13    # "out":Ljava/io/PrintWriter;
    .local v3, "out":Ljava/io/PrintWriter;
    :pswitch_1a
    move-object v13, v3

    .end local v3    # "out":Ljava/io/PrintWriter;
    .restart local v13    # "out":Ljava/io/PrintWriter;
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v0

    move/from16 v18, v0

    .line 105
    .local v18, "userId":I
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v19

    .line 106
    .local v19, "packageName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v21

    .line 108
    .local v21, "deviceProfile":Ljava/lang/String;
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArg()Z

    move-result v24

    .line 109
    .local v24, "selfManaged":Z
    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v20

    .line 110
    .local v20, "macAddress":Landroid/net/MacAddress;
    iget-object v2, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v22, v21

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v28}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->createAssociation(ILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZLandroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Landroid/graphics/drawable/Icon;Z)V

    .line 115
    .end local v0    # "address":Ljava/lang/String;
    .end local v18    # "userId":I
    .end local v19    # "packageName":Ljava/lang/String;
    .end local v20    # "macAddress":Landroid/net/MacAddress;
    .end local v21    # "deviceProfile":Ljava/lang/String;
    .end local v24    # "selfManaged":Z
    goto :goto_15

    .line 88
    .end local v13    # "out":Ljava/io/PrintWriter;
    .restart local v3    # "out":Ljava/io/PrintWriter;
    :pswitch_1b
    move-object v13, v3

    .end local v3    # "out":Ljava/io/PrintWriter;
    .restart local v13    # "out":Ljava/io/PrintWriter;
    invoke-direct {v1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v2

    .line 89
    .local v2, "userId":I
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 90
    invoke-virtual {v3, v2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByUser(I)Ljava/util/List;

    move-result-object v3

    .line 91
    .local v3, "associationsForUser":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    iget-object v4, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v4}, Lcom/android/server/companion/association/AssociationStore;->getMaxId()I

    move-result v4

    .line 92
    .local v4, "maxId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Max ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    const-string v5, "Association ID | Package Name | Mac Address"

    invoke-virtual {v13, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/companion/AssociationInfo;

    .line 97
    .local v6, "association":Landroid/companion/AssociationInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 97
    invoke-virtual {v13, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 99
    .end local v6    # "association":Landroid/companion/AssociationInfo;
    goto :goto_14

    .line 94
    :cond_16
    nop

    .line 101
    .end local v2    # "userId":I
    .end local v3    # "associationsForUser":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    .end local v4    # "maxId":I
    nop

    .line 452
    :goto_15
    nop

    .line 453
    const/16 v16, 0x0

    return v16

    .line 446
    .end local v13    # "out":Ljava/io/PrintWriter;
    .local v3, "out":Ljava/io/PrintWriter;
    :catchall_8
    move-exception v0

    move-object v13, v3

    .end local v3    # "out":Ljava/io/PrintWriter;
    .restart local v13    # "out":Ljava/io/PrintWriter;
    :goto_16
    nop

    .line 447
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 448
    .local v2, "errOut":Ljava/io/PrintWriter;
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 449
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurred while executing \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\':"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 451
    const/16 v34, 0x1

    return v34

    nop

    :sswitch_data_0
    .sparse-switch
        -0x78de6919 -> :sswitch_1b
        -0x76d9e39f -> :sswitch_1a
        -0x7196e026 -> :sswitch_19
        -0x6ee6a072 -> :sswitch_18
        -0x6e9ef255 -> :sswitch_17
        -0x48f877fd -> :sswitch_16
        -0x3aaa3162 -> :sswitch_15
        -0x2d23c69b -> :sswitch_14
        -0x25c83694 -> :sswitch_13
        -0x25b7ef5c -> :sswitch_12
        -0x20ae7cab -> :sswitch_11
        -0x1ed53de7 -> :sswitch_10
        -0x13014aaa -> :sswitch_f
        -0xb6faf2c -> :sswitch_e
        0x32b09e -> :sswitch_d
        0x13b98693 -> :sswitch_c
        0x20e05ad6 -> :sswitch_b
        0x27a53e18 -> :sswitch_a
        0x2ebfca50 -> :sswitch_9
        0x2f25cbb5 -> :sswitch_8
        0x3fc236be -> :sswitch_7
        0x545c8610 -> :sswitch_6
        0x5b04a2b3 -> :sswitch_5
        0x5e900f1e -> :sswitch_4
        0x72009e76 -> :sswitch_3
        0x761c1fc0 -> :sswitch_2
        0x77005277 -> :sswitch_1
        0x774e28e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 12

    .line 482
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 483
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Companion Device Manager (companiondevice) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    const-string v1, "      Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    const-string v1, "  list USER_ID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    const-string v1, "      List all Associations for a user."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    const-string v1, "  associate USER_ID PACKAGE MAC_ADDRESS [DEVICE_PROFILE] [SELF_MANAGED]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    const-string v1, "      Create a new Association."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 490
    const-string v1, "  disassociate USER_ID PACKAGE MAC_ADDRESS"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    const-string v1, "      Remove an existing Association."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 492
    const-string v1, "  disassociate-all USER_ID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    const-string v1, "      Remove all Associations for a user."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 494
    const-string v1, "  refresh-cache"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    const-string v1, "      Clear the in-memory association cache and reload all association "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    const-string v1, "      information from disk. USE FOR DEBUGGING AND/OR TESTING PURPOSES ONLY."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    const-string v1, "  simulate-device-appeared ASSOCIATION_ID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    const-string v1, "      Make CDM act as if the given companion device has appeared."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 500
    const-string v2, "      I.e. bind the associated companion application\'s"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 501
    const-string v3, "      CompanionDeviceService(s) and trigger onDeviceAppeared() callback."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 502
    const-string v4, "      The CDM will consider the devices as present for 60 seconds and then"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 503
    const-string v4, "      will act as if device disappeared, unless \'simulate-device-disappeared\'"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 504
    const-string v4, "      or \'simulate-device-appeared\' is called again before 60 seconds run out."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    const-string v4, "      USE FOR DEBUGGING AND/OR TESTING PURPOSES ONLY."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 508
    const-string v5, "  simulate-device-disappeared ASSOCIATION_ID"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 509
    const-string v5, "      Make CDM act as if the given companion device has disappeared."

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 510
    const-string v6, "      I.e. unbind the associated companion application\'s"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 511
    const-string v7, "      CompanionDeviceService(s) and trigger onDeviceDisappeared() callback."

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 512
    const-string v7, "      NOTE: This will only have effect if \'simulate-device-appeared\' was"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 513
    const-string v8, "      invoked for the same device (same ASSOCIATION_ID) no longer than"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 514
    const-string v9, "      60 seconds ago."

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    const-string v10, "  get-backup-payload USER_ID"

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 517
    const-string v10, "      Generate backup payload for the given user and print its content"

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 518
    const-string v10, "      encoded to a Base64 string."

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    const-string v10, "  apply-restored-payload USER_ID PAYLOAD"

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 521
    const-string v10, "      Apply restored backup payload for the given user."

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 524
    nop

    .line 525
    const-string v10, "  simulate-device-event ASSOCIATION_ID EVENT"

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    const-string v10, "  Simulate the companion device event changes:"

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 527
    const-string v11, "    Case(0): "

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 531
    const-string v1, "      The CDM will consider the devices as present for60 seconds and then"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    const-string v1, "      will act as if device disappeared, unless\'simulate-device-disappeared\'"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    const-string v1, "      or \'simulate-device-appeared\' is called again before 60 secondsrun out."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    const-string v1, "    Case(1): "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    const-string v1, "      CompanionDeviceService(s) and trigger onDeviceDisappeared()callback."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    const-string v1, "    Case(2): "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    const-string v2, "      Make CDM act as if the given companion device is BT connected "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 547
    const-string v2, "    Case(3): "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    const-string v3, "      Make CDM act as if the given companion device is BT disconnected "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    const-string v3, "  simulate-device-uuid-event UUID PACKAGE USERID EVENT"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    const-string v1, "      Make CDM act as if the given DEVICE is BT connected baseon the UUID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    const-string v1, "      Make CDM act as if the given DEVICE is BT disconnected baseon the UUID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    const-string v1, "  simulate-device-event-device-locked ASSOCIATION_ID USER_ID DEVICE_EVENT PARCEL_UUID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    const-string v1, "  Simulate device event when the device is locked"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    const-string v1, "  USE FOR DEBUGGING AND/OR TESTING PURPOSES ONLY."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    const-string v2, "  simulate-device-event-device-unlocked USER_ID"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    const-string v2, "  Simulate device unlocked for given user. This will send corresponding"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    const-string v2, "  callback after simulate-device-event-device-locked"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    const-string v2, "  command has been called."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    const-string v2, "  start-observing-device-presence-uuid USER_ID PACKAGE_NAME UUID"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    const-string v2, "  Start observing device presence base on the UUID."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    const-string v2, "  stop-observing-device-presence-uuid USER_ID PACKAGE_NAME UUID"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    const-string v2, "  Stop observing device presence base on the UUID."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    const-string v1, "  remove-inactive-associations"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 582
    const-string v1, "      Remove self-managed associations that have not been active "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 583
    const-string v1, "      for a long time (90 days or as configured via "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 584
    const-string v1, "      \"debug.cdm.cdmservice.removal_time_window\" system property). "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 587
    const-string v1, "  create-emulated-transport <ASSOCIATION_ID>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    const-string v1, "      Create an EmulatedTransport for testing purposes only"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    const-string v1, "  enable-perm-sync <ASSOCIATION_ID>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 591
    const-string v1, "      Enable perm sync for the association."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 592
    const-string v1, "  disable-perm-sync <ASSOCIATION_ID>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 593
    const-string v1, "      Disable perm sync for the association."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 594
    const-string v1, "  get-perm-sync-state <ASSOCIATION_ID>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    const-string v1, "      Get perm sync state for the association."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    const-string v1, "  remove-perm-sync-state <ASSOCIATION_ID>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 597
    const-string v1, "      Remove perm sync state for the association."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    return-void
.end method
