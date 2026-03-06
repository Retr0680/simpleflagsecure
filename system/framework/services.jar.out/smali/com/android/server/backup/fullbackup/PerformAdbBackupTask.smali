.class public Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
.super Lcom/android/server/backup/fullbackup/FullBackupTask;
.source "PerformAdbBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# instance fields
.field private final mAllApps:Z

.field private final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field private final mCompress:Z

.field private final mCurrentOpToken:I

.field private final mCurrentPassword:Ljava/lang/String;

.field private mCurrentTarget:Landroid/content/pm/PackageInfo;

.field private final mDoWidgets:Z

.field private final mEncryptPassword:Ljava/lang/String;

.field private final mIncludeApks:Z

.field private final mIncludeObbs:Z

.field private final mIncludeShared:Z

.field private final mIncludeSystem:Z

.field private final mKeyValue:Z

.field private final mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mOperationStorage:Lcom/android/server/backup/OperationStorage;

.field private final mOutputFile:Landroid/os/ParcelFileDescriptor;

.field private final mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/server/backup/utils/BackupEligibilityRules;)V
    .locals 16
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "operationStorage"    # Lcom/android/server/backup/OperationStorage;
    .param p3, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p5, "includeApks"    # Z
    .param p6, "includeObbs"    # Z
    .param p7, "includeShared"    # Z
    .param p8, "doWidgets"    # Z
    .param p9, "curPassword"    # Ljava/lang/String;
    .param p10, "encryptPassword"    # Ljava/lang/String;
    .param p11, "doAllApps"    # Z
    .param p12, "doSystem"    # Z
    .param p13, "doCompress"    # Z
    .param p14, "doKeyValue"    # Z
    .param p15, "packages"    # [Ljava/lang/String;
    .param p16, "latch"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p17, "backupEligibilityRules"    # Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 97
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    move-object/from16 v2, p10

    move-object/from16 v3, p4

    invoke-direct {v0, v3}, Lcom/android/server/backup/fullbackup/FullBackupTask;-><init>(Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 98
    move-object/from16 v4, p1

    iput-object v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 99
    move-object/from16 v5, p2

    iput-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 100
    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v6

    iput v6, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    .line 101
    move-object/from16 v6, p16

    iput-object v6, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 103
    move-object/from16 v7, p3

    iput-object v7, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 104
    move/from16 v8, p5

    iput-boolean v8, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z

    .line 105
    move/from16 v9, p6

    iput-boolean v9, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z

    .line 106
    move/from16 v10, p7

    iput-boolean v10, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeShared:Z

    .line 107
    move/from16 v11, p8

    iput-boolean v11, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    .line 108
    move/from16 v12, p11

    iput-boolean v12, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    .line 109
    move/from16 v13, p12

    iput-boolean v13, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    .line 110
    if-nez p15, :cond_0

    .line 111
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 112
    :cond_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-static/range {p15 .. p15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v14, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    .line 113
    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    .line 118
    if-eqz v2, :cond_1

    const-string v14, ""

    invoke-virtual {v14, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    :cond_1
    goto :goto_1

    .line 121
    :cond_2
    iput-object v2, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    goto :goto_2

    .line 119
    :goto_1
    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    .line 126
    :goto_2
    move/from16 v14, p13

    iput-boolean v14, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z

    .line 127
    move/from16 v15, p14

    iput-boolean v15, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    .line 128
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 129
    return-void
.end method

.method private addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 132
    .local p1, "set":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .local p2, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 135
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 138
    .local v2, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {p1, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    nop

    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_1

    .line 139
    :catch_0
    move-exception v2

    .line 140
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", skipping"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BackupManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_1
    goto :goto_0

    .line 144
    :cond_1
    return-void
.end method

.method private emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 17
    .param p1, "headerbuf"    # Ljava/lang/StringBuilder;
    .param p2, "ofstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 150
    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->randomBytes(I)[B

    move-result-object v2

    .line 151
    .local v2, "newUserSalt":[B
    iget-object v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    .line 152
    const-string v5, "PBKDF2WithHmacSHA1"

    const/16 v6, 0x2710

    invoke-static {v5, v4, v2, v6}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 157
    .local v4, "userKey":Ljavax/crypto/SecretKey;
    const/16 v7, 0x20

    new-array v7, v7, [B

    .line 158
    .local v7, "encryptionKey":[B
    iget-object v8, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->getRng()Ljava/security/SecureRandom;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 159
    iget-object v8, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 160
    invoke-virtual {v8, v3}, Lcom/android/server/backup/UserBackupManagerService;->randomBytes(I)[B

    move-result-object v3

    .line 163
    .local v3, "checksumSalt":[B
    const-string v8, "AES/CBC/PKCS5Padding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v9

    .line 164
    .local v9, "c":Ljavax/crypto/Cipher;
    new-instance v10, Ljavax/crypto/spec/SecretKeySpec;

    const-string v11, "AES"

    invoke-direct {v10, v7, v11}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 165
    .local v10, "encryptionKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const/4 v11, 0x1

    invoke-virtual {v9, v11, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 166
    new-instance v12, Ljavax/crypto/CipherOutputStream;

    move-object/from16 v13, p2

    invoke-direct {v12, v13, v9}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 169
    .local v12, "finalOutput":Ljava/io/OutputStream;
    const-string v14, "AES-256"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const/16 v14, 0xa

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    invoke-static {v2}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    invoke-static {v3}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v8

    .line 183
    .local v8, "mkC":Ljavax/crypto/Cipher;
    invoke-virtual {v8, v11, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 185
    invoke-virtual {v8}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v11

    .line 186
    .local v11, "IV":[B
    invoke-static {v11}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v9}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v11

    .line 200
    invoke-virtual {v10}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v15

    .line 201
    .local v15, "mk":[B
    nop

    .line 203
    invoke-virtual {v10}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v14

    .line 202
    invoke-static {v5, v14, v3, v6}, Lcom/android/server/backup/utils/PasswordUtils;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B

    move-result-object v5

    .line 206
    .local v5, "checksum":[B
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    array-length v14, v11

    array-length v0, v15

    add-int/2addr v14, v0

    array-length v0, v5

    add-int/2addr v14, v0

    add-int/lit8 v14, v14, 0x3

    invoke-direct {v6, v14}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 208
    .local v6, "blob":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 209
    .local v0, "mkOut":Ljava/io/DataOutputStream;
    array-length v14, v11

    invoke-virtual {v0, v14}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 210
    invoke-virtual {v0, v11}, Ljava/io/DataOutputStream;->write([B)V

    .line 211
    array-length v14, v15

    invoke-virtual {v0, v14}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 212
    invoke-virtual {v0, v15}, Ljava/io/DataOutputStream;->write([B)V

    .line 213
    array-length v14, v5

    invoke-virtual {v0, v14}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 214
    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 215
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 216
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    invoke-virtual {v8, v14}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v14

    .line 217
    .local v14, "encryptedMk":[B
    move-object/from16 v16, v0

    .end local v0    # "mkOut":Ljava/io/DataOutputStream;
    .local v16, "mkOut":Ljava/io/DataOutputStream;
    invoke-static {v14}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    return-object v12
.end method

.method private finalizeBackup(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 226
    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    .line 227
    .local v0, "eof":[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v0    # "eof":[B
    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    const-string v2, "Error attempting to finalize backup stream"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    .line 479
    return-void
.end method

.method public handleCancel(I)V
    .locals 4
    .param p1, "cancellationReason"    # I

    .line 488
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    .line 489
    .local v0, "target":Landroid/content/pm/PackageInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adb backup cancel of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    if-eqz v0, :cond_0

    .line 491
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/backup/BackupAgentConnectionManager;->unbindAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 494
    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    invoke-interface {v1, v2}, Lcom/android/server/backup/OperationStorage;->removeOperation(I)V

    .line 495
    return-void
.end method

.method public operationComplete(J)V
    .locals 0
    .param p1, "result"    # J

    .line 484
    return-void
.end method

.method public run()V
    .locals 34

    .line 235
    move-object/from16 v6, p0

    iget-boolean v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    if-eqz v0, :cond_0

    const-string v0, ", including key-value backups"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v13, v0

    .line 236
    .local v13, "includeKeyValue":Ljava/lang/String;
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- Performing adb backup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    move-object v14, v0

    .line 239
    .local v14, "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iget-object v1, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    move-object v15, v0

    .line 241
    .local v15, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    invoke-virtual {v15}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->establish()V

    .line 243
    invoke-virtual {v6}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendStartBackup()V

    .line 244
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 247
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-boolean v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 248
    const/high16 v0, 0x8000000

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 250
    .local v0, "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 251
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 253
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    iget-boolean v5, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    if-nez v5, :cond_1

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v2

    if-nez v5, :cond_2

    .line 255
    :cond_1
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .end local v4    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 262
    .end local v0    # "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v3    # "i":I
    :cond_3
    iget-boolean v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 264
    nop

    .line 265
    invoke-static {v3}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetParticipants(I)Ljava/util/List;

    move-result-object v0

    .line 266
    .local v0, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_4

    .line 277
    invoke-direct {v6, v14, v0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 284
    .end local v0    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 285
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    invoke-direct {v6, v14, v0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 292
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 293
    .local v4, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {v14}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 294
    .local v16, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 295
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 296
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v5, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v7}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    nop

    if-eqz v5, :cond_7

    iget-object v5, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 297
    invoke-virtual {v5, v7}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_3

    .line 301
    :cond_6
    iget-object v5, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v5, v0}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 302
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->remove()V

    .line 303
    const-string v5, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is key-value."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 298
    :cond_7
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->remove()V

    .line 299
    const-string v5, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is not eligible for backup, removing."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_8
    :goto_4
    goto :goto_2

    .line 310
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    .line 311
    invoke-virtual {v14}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v5, v0

    .line 312
    .local v5, "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v7, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v7, v0

    .line 313
    .local v7, "ofstream":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 315
    .local v8, "out":Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 317
    .local v9, "pkg":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1e
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    if-eqz v0, :cond_a

    :try_start_1
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v0, :cond_a

    move v0, v2

    goto :goto_5

    .line 455
    :catchall_0
    move-exception v0

    move-object/from16 v27, v1

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v7

    move-object/from16 v28, v13

    move-object v1, v0

    move v13, v2

    goto/16 :goto_25

    .line 452
    :catch_0
    move-exception v0

    move-object/from16 v27, v1

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v7

    move-object/from16 v28, v13

    move v13, v2

    goto/16 :goto_1b

    .line 450
    :catch_1
    move-exception v0

    move-object/from16 v27, v1

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v7

    move-object/from16 v28, v13

    move v13, v2

    goto/16 :goto_20

    .line 317
    :cond_a
    move v0, v3

    :goto_5
    move/from16 v17, v0

    .line 319
    .local v17, "encrypting":Z
    move-object v10, v7

    .line 323
    .local v10, "finalOutput":Ljava/io/OutputStream;
    :try_start_2
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v11, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lcom/android/server/backup/UserBackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1e
    .catchall {:try_start_2 .. :try_end_2} :catchall_d

    if-nez v0, :cond_c

    .line 324
    :try_start_3
    const-string v0, "BackupManagerService"

    const-string v3, "Backup password mismatch; aborting"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 456
    if-eqz v8, :cond_b

    .line 457
    :try_start_4
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 458
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    goto :goto_6

    .line 461
    :catch_2
    move-exception v0

    goto :goto_7

    .line 460
    :cond_b
    :goto_6
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 463
    goto :goto_8

    .line 461
    :goto_7
    nop

    .line 462
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IO error closing adb backup file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    .end local v0    # "e":Ljava/io/IOException;
    :goto_8
    iget-object v3, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 465
    :try_start_5
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 466
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 467
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 468
    invoke-virtual {v6}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    .line 469
    invoke-virtual {v15}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 470
    const-string v0, "BackupManagerService"

    const-string v2, "Full backup pass complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupWakeLock;->release()V

    .line 325
    return-void

    .line 467
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 353
    :cond_c
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v11, 0x400

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v11, v0

    .line 355
    .local v11, "headerbuf":Ljava/lang/StringBuilder;
    const-string v0, "ANDROID BACKUP\n"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const/4 v0, 0x5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    iget-boolean v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1e
    .catchall {:try_start_7 .. :try_end_7} :catchall_d

    if-eqz v0, :cond_d

    :try_start_8
    const-string v0, "\n1\n"
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_9

    :cond_d
    :try_start_9
    const-string v0, "\n0\n"

    :goto_9
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1e
    .catchall {:try_start_9 .. :try_end_9} :catchall_d

    .line 361
    if-eqz v17, :cond_e

    .line 362
    :try_start_a
    invoke-direct {v6, v11, v10}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object v10, v0

    goto :goto_a

    .line 377
    :catch_3
    move-exception v0

    move-object/from16 v27, v1

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v7

    move-object/from16 v32, v11

    move-object/from16 v28, v13

    move v13, v2

    goto/16 :goto_17

    .line 364
    :cond_e
    :try_start_b
    const-string/jumbo v0, "none\n"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    :goto_a
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "UTF-8"

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 368
    .local v0, "header":[B
    invoke-virtual {v7, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 371
    iget-boolean v12, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1a
    .catchall {:try_start_b .. :try_end_b} :catchall_d

    if-eqz v12, :cond_f

    .line 372
    :try_start_c
    new-instance v12, Ljava/util/zip/Deflater;

    const/16 v3, 0x9

    invoke-direct {v12, v3}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 373
    .local v12, "deflater":Ljava/util/zip/Deflater;
    new-instance v3, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v3, v10, v12, v2}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object v10, v3

    move-object/from16 v19, v10

    goto :goto_b

    .line 371
    .end local v12    # "deflater":Ljava/util/zip/Deflater;
    :cond_f
    move-object/from16 v19, v10

    .line 376
    .end local v10    # "finalOutput":Ljava/io/OutputStream;
    .local v19, "finalOutput":Ljava/io/OutputStream;
    :goto_b
    move-object/from16 v21, v19

    .line 381
    .end local v0    # "header":[B
    .end local v8    # "out":Ljava/io/OutputStream;
    .local v21, "out":Ljava/io/OutputStream;
    nop

    .line 384
    :try_start_d
    iget-boolean v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeShared:Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_14
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_13
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    if-eqz v0, :cond_10

    .line 386
    :try_start_e
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.android.sharedstoragebackup"

    const/4 v8, 0x0

    invoke-virtual {v0, v3, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object v9, v0

    .line 388
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_e} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 391
    goto :goto_c

    .line 455
    .end local v11    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v17    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    :catchall_2
    move-exception v0

    move-object/from16 v27, v1

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v7

    move-object/from16 v28, v13

    move-object/from16 v8, v21

    move-object v1, v0

    move v13, v2

    goto/16 :goto_25

    .line 452
    :catch_4
    move-exception v0

    move-object/from16 v27, v1

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v7

    move-object/from16 v28, v13

    move-object/from16 v8, v21

    move v13, v2

    goto/16 :goto_1b

    .line 450
    :catch_5
    move-exception v0

    move-object/from16 v27, v1

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v7

    move-object/from16 v28, v13

    move-object/from16 v8, v21

    move v13, v2

    goto/16 :goto_20

    .line 389
    .restart local v11    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v17    # "encrypting":Z
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    :catch_6
    move-exception v0

    nop

    .line 390
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_f
    const-string v3, "BackupManagerService"

    const-string v8, "Unable to find shared-storage backup handler"

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 395
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_10
    :goto_c
    :try_start_10
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 396
    .local v0, "N":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_d
    if-ge v3, v0, :cond_14

    .line 397
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_14
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_13
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 398
    .end local v9    # "pkg":Landroid/content/pm/PackageInfo;
    .local v8, "pkg":Landroid/content/pm/PackageInfo;
    :try_start_11
    const-string v9, "BackupManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "--- Performing full backup for package "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " ---"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v10, "com.android.sharedstoragebackup"

    .line 401
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    move/from16 v18, v9

    .line 404
    .local v18, "isSharedStorage":Z
    move v9, v0

    .end local v0    # "N":I
    .local v9, "N":I
    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_12
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    move-object v10, v1

    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .local v10, "pm":Landroid/content/pm/PackageManager;
    :try_start_12
    iget-object v1, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_10
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_f
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    move-object v12, v5

    .end local v5    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v12, "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :try_start_13
    iget-boolean v5, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z

    move/from16 v20, v9

    .end local v9    # "N":I
    .local v20, "N":I
    iget v9, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    move-object/from16 v22, v11

    .end local v11    # "headerbuf":Ljava/lang/StringBuilder;
    .local v22, "headerbuf":Ljava/lang/StringBuilder;
    iget-object v11, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    move-object/from16 v23, v12

    .end local v12    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v23, "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :try_start_14
    new-instance v12, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    const/4 v2, 0x0

    :try_start_15
    invoke-direct {v12, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;-><init>(Landroid/app/backup/IBackupManagerMonitor;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    const/4 v3, 0x0

    move-object/from16 v26, v4

    move-object/from16 v25, v7

    move-object v4, v8

    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "pkg":Landroid/content/pm/PackageInfo;
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    .local v25, "ofstream":Ljava/io/FileOutputStream;
    .local v26, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    const-wide v7, 0x7fffffffffffffffL

    move-object/from16 v27, v10

    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .local v27, "pm":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    move-object/from16 v28, v13

    move/from16 v33, v20

    move-object/from16 v32, v22

    move-object/from16 v30, v23

    move-object/from16 v31, v25

    move-object/from16 v29, v26

    const/4 v13, 0x1

    move/from16 v20, v2

    move-object/from16 v2, v21

    .end local v13    # "includeKeyValue":Ljava/lang/String;
    .end local v21    # "out":Ljava/io/OutputStream;
    .end local v22    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v23    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v25    # "ofstream":Ljava/io/FileOutputStream;
    .end local v26    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v2, "out":Ljava/io/OutputStream;
    .local v20, "i":I
    .local v28, "includeKeyValue":Ljava/lang/String;
    .local v29, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v30, "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v31, "ofstream":Ljava/io/FileOutputStream;
    .local v32, "headerbuf":Ljava/lang/StringBuilder;
    .local v33, "N":I
    :try_start_16
    invoke-direct/range {v0 .. v12}, Lcom/android/server/backup/fullbackup/FullBackupEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/fullbackup/FullBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupRestoreTask;JIILcom/android/server/backup/utils/BackupEligibilityRules;Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;)V

    .line 417
    .local v0, "mBackupEngine":Lcom/android/server/backup/fullbackup/FullBackupEngine;
    nop

    nop

    if-eqz v18, :cond_11

    const-string v1, "Shared storage"

    goto :goto_e

    .line 455
    .end local v0    # "mBackupEngine":Lcom/android/server/backup/fullbackup/FullBackupEngine;
    .end local v17    # "encrypting":Z
    .end local v18    # "isSharedStorage":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .end local v20    # "i":I
    .end local v32    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v33    # "N":I
    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v8, v2

    move-object v9, v4

    goto/16 :goto_25

    .line 452
    :catch_7
    move-exception v0

    move-object v8, v2

    move-object v9, v4

    goto/16 :goto_1b

    .line 450
    :catch_8
    move-exception v0

    move-object v8, v2

    move-object v9, v4

    goto/16 :goto_20

    .line 417
    .restart local v0    # "mBackupEngine":Lcom/android/server/backup/fullbackup/FullBackupEngine;
    .restart local v17    # "encrypting":Z
    .restart local v18    # "isSharedStorage":Z
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    .restart local v20    # "i":I
    .restart local v32    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v33    # "N":I
    :cond_11
    iget-object v1, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :goto_e
    invoke-virtual {v6, v1}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    .line 420
    iput-object v4, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    .line 421
    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupOnePackage()I

    .line 425
    iget-boolean v1, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z

    if-eqz v1, :cond_13

    if-nez v18, :cond_13

    .line 426
    invoke-virtual {v15, v4, v2}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z

    move-result v1

    .line 427
    .local v1, "obbOkay":Z
    if-eqz v1, :cond_12

    goto :goto_f

    .line 428
    :cond_12
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure writing OBB stack for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v4    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v14    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .end local v15    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .end local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v27    # "pm":Landroid/content/pm/PackageManager;
    .end local v28    # "includeKeyValue":Ljava/lang/String;
    .end local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local p0    # "this":Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
    throw v3
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_8
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 396
    .end local v0    # "mBackupEngine":Lcom/android/server/backup/fullbackup/FullBackupEngine;
    .end local v1    # "obbOkay":Z
    .end local v18    # "isSharedStorage":Z
    .restart local v2    # "out":Ljava/io/OutputStream;
    .restart local v4    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v14    # "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .restart local v15    # "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    .restart local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v27    # "pm":Landroid/content/pm/PackageManager;
    .restart local v28    # "includeKeyValue":Ljava/lang/String;
    .restart local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
    :cond_13
    :goto_f
    add-int/lit8 v3, v20, 0x1

    move-object/from16 v21, v2

    move-object v9, v4

    move v2, v13

    move-object/from16 v1, v27

    move-object/from16 v13, v28

    move-object/from16 v4, v29

    move-object/from16 v5, v30

    move-object/from16 v7, v31

    move-object/from16 v11, v32

    move/from16 v0, v33

    .end local v20    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_d

    .line 455
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v3    # "i":I
    .end local v17    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .end local v27    # "pm":Landroid/content/pm/PackageManager;
    .end local v28    # "includeKeyValue":Ljava/lang/String;
    .end local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v33    # "N":I
    .local v4, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "includeKeyValue":Ljava/lang/String;
    .restart local v21    # "out":Ljava/io/OutputStream;
    .restart local v23    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catchall_4
    move-exception v0

    move-object/from16 v29, v4

    move-object/from16 v31, v7

    move-object v4, v8

    move-object/from16 v27, v10

    move-object/from16 v28, v13

    move-object/from16 v2, v21

    move-object/from16 v30, v23

    const/4 v13, 0x1

    :goto_10
    move-object v1, v0

    move-object v8, v2

    move-object v9, v4

    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "includeKeyValue":Ljava/lang/String;
    .end local v21    # "out":Ljava/io/OutputStream;
    .end local v23    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v27    # "pm":Landroid/content/pm/PackageManager;
    .restart local v28    # "includeKeyValue":Ljava/lang/String;
    .restart local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    goto/16 :goto_25

    .line 452
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v27    # "pm":Landroid/content/pm/PackageManager;
    .end local v28    # "includeKeyValue":Ljava/lang/String;
    .end local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .local v4, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "includeKeyValue":Ljava/lang/String;
    .restart local v21    # "out":Ljava/io/OutputStream;
    .restart local v23    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_9
    move-exception v0

    move-object/from16 v29, v4

    move-object/from16 v31, v7

    move-object v4, v8

    move-object/from16 v27, v10

    move-object/from16 v28, v13

    move-object/from16 v2, v21

    move-object/from16 v30, v23

    const/4 v13, 0x1

    :goto_11
    move-object v8, v2

    move-object v9, v4

    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "includeKeyValue":Ljava/lang/String;
    .end local v21    # "out":Ljava/io/OutputStream;
    .end local v23    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v27    # "pm":Landroid/content/pm/PackageManager;
    .restart local v28    # "includeKeyValue":Ljava/lang/String;
    .restart local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    goto/16 :goto_1b

    .line 450
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v27    # "pm":Landroid/content/pm/PackageManager;
    .end local v28    # "includeKeyValue":Ljava/lang/String;
    .end local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .local v4, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "includeKeyValue":Ljava/lang/String;
    .restart local v21    # "out":Ljava/io/OutputStream;
    .restart local v23    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_a
    move-exception v0

    move-object/from16 v29, v4

    move-object/from16 v31, v7

    move-object v4, v8

    move-object/from16 v27, v10

    move-object/from16 v28, v13

    move-object/from16 v2, v21

    move-object/from16 v30, v23

    const/4 v13, 0x1

    :goto_12
    move-object v8, v2

    move-object v9, v4

    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "includeKeyValue":Ljava/lang/String;
    .end local v21    # "out":Ljava/io/OutputStream;
    .end local v23    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v27    # "pm":Landroid/content/pm/PackageManager;
    .restart local v28    # "includeKeyValue":Ljava/lang/String;
    .restart local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    goto/16 :goto_20

    .line 455
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v27    # "pm":Landroid/content/pm/PackageManager;
    .end local v28    # "includeKeyValue":Ljava/lang/String;
    .end local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .local v4, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "includeKeyValue":Ljava/lang/String;
    .restart local v21    # "out":Ljava/io/OutputStream;
    .restart local v23    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catchall_5
    move-exception v0

    move-object/from16 v29, v4

    move-object/from16 v31, v7

    move-object v4, v8

    move-object/from16 v27, v10

    move-object/from16 v28, v13

    move-object/from16 v30, v23

    move v13, v2

    move-object/from16 v2, v21

    goto :goto_10

    .line 452
    :catch_b
    move-exception v0

    move-object/from16 v29, v4

    move-object/from16 v31, v7

    move-object v4, v8

    move-object/from16 v27, v10

    move-object/from16 v28, v13

    move-object/from16 v30, v23

    move v13, v2

    move-object/from16 v2, v21

    goto :goto_11

    .line 450
    :catch_c
    move-exception v0

    move-object/from16 v29, v4

    move-object/from16 v31, v7

    move-object v4, v8

    move-object/from16 v27, v10

    move-object/from16 v28, v13

    move-object/from16 v30, v23

    move v13, v2

    move-object/from16 v2, v21

    goto :goto_12

    .line 455
    .end local v23    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v12    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catchall_6
    move-exception v0

    move-object/from16 v29, v4

    move-object/from16 v31, v7

    move-object v4, v8

    move-object/from16 v27, v10

    move-object/from16 v30, v12

    move-object/from16 v28, v13

    move v13, v2

    move-object/from16 v2, v21

    move-object v1, v0

    move-object v8, v2

    move-object v9, v4

    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v13    # "includeKeyValue":Ljava/lang/String;
    .end local v21    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v27    # "pm":Landroid/content/pm/PackageManager;
    .restart local v28    # "includeKeyValue":Ljava/lang/String;
    .restart local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    goto/16 :goto_25

    .line 452
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v27    # "pm":Landroid/content/pm/PackageManager;
    .end local v28    # "includeKeyValue":Ljava/lang/String;
    .end local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .local v4, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v13    # "includeKeyValue":Ljava/lang/String;
    .restart local v21    # "out":Ljava/io/OutputStream;
    :catch_d
    move-exception v0

    move-object/from16 v29, v4

    move-object/from16 v31, v7

    move-object v4, v8

    move-object/from16 v27, v10

    move-object/from16 v30, v12

    move-object/from16 v28, v13

    move v13, v2

    move-object/from16 v2, v21

    move-object v8, v2

    move-object v9, v4

    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v13    # "includeKeyValue":Ljava/lang/String;
    .end local v21    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v27    # "pm":Landroid/content/pm/PackageManager;
    .restart local v28    # "includeKeyValue":Ljava/lang/String;
    .restart local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    goto/16 :goto_1b

    .line 450
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v27    # "pm":Landroid/content/pm/PackageManager;
    .end local v28    # "includeKeyValue":Ljava/lang/String;
    .end local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .local v4, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v13    # "includeKeyValue":Ljava/lang/String;
    .restart local v21    # "out":Ljava/io/OutputStream;
    :catch_e
    move-exception v0

    move-object/from16 v29, v4

    move-object/from16 v31, v7

    move-object v4, v8

    move-object/from16 v27, v10

    move-object/from16 v30, v12

    move-object/from16 v28, v13

    move v13, v2

    move-object/from16 v2, v21

    move-object v8, v2

    move-object v9, v4

    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v13    # "includeKeyValue":Ljava/lang/String;
    .end local v21    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v27    # "pm":Landroid/content/pm/PackageManager;
    .restart local v28    # "includeKeyValue":Ljava/lang/String;
    .restart local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    goto/16 :goto_20

    .line 455
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v27    # "pm":Landroid/content/pm/PackageManager;
    .end local v28    # "includeKeyValue":Ljava/lang/String;
    .end local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .local v4, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "includeKeyValue":Ljava/lang/String;
    .restart local v21    # "out":Ljava/io/OutputStream;
    :catchall_7
    move-exception v0

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v7

    move-object v4, v8

    move-object/from16 v27, v10

    move-object/from16 v28, v13

    move v13, v2

    move-object/from16 v2, v21

    move-object v1, v0

    move-object v8, v2

    move-object v9, v4

    .end local v5    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "includeKeyValue":Ljava/lang/String;
    .end local v21    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v27    # "pm":Landroid/content/pm/PackageManager;
    .restart local v28    # "includeKeyValue":Ljava/lang/String;
    .restart local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    goto/16 :goto_25

    .line 452
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v27    # "pm":Landroid/content/pm/PackageManager;
    .end local v28    # "includeKeyValue":Ljava/lang/String;
    .end local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .local v4, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "includeKeyValue":Ljava/lang/String;
    .restart local v21    # "out":Ljava/io/OutputStream;
    :catch_f
    move-exception v0

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v7

    move-object v4, v8

    move-object/from16 v27, v10

    move-object/from16 v28, v13

    move v13, v2

    move-object/from16 v2, v21

    move-object v8, v2

    move-object v9, v4

    .end local v5    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "includeKeyValue":Ljava/lang/String;
    .end local v21    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v27    # "pm":Landroid/content/pm/PackageManager;
    .restart local v28    # "includeKeyValue":Ljava/lang/String;
    .restart local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    goto/16 :goto_1b

    .line 450
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v27    # "pm":Landroid/content/pm/PackageManager;
    .end local v28    # "includeKeyValue":Ljava/lang/String;
    .end local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .local v4, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "includeKeyValue":Ljava/lang/String;
    .restart local v21    # "out":Ljava/io/OutputStream;
    :catch_10
    move-exception v0

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v7

    move-object v4, v8

    move-object/from16 v27, v10

    move-object/from16 v28, v13

    move v13, v2

    move-object/from16 v2, v21

    move-object v8, v2

    move-object v9, v4

    .end local v5    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "includeKeyValue":Ljava/lang/String;
    .end local v21    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v27    # "pm":Landroid/content/pm/PackageManager;
    .restart local v28    # "includeKeyValue":Ljava/lang/String;
    .restart local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    goto/16 :goto_20

    .line 455
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v27    # "pm":Landroid/content/pm/PackageManager;
    .end local v28    # "includeKeyValue":Ljava/lang/String;
    .end local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .local v1, "pm":Landroid/content/pm/PackageManager;
    .local v4, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v13    # "includeKeyValue":Ljava/lang/String;
    .restart local v21    # "out":Ljava/io/OutputStream;
    :catchall_8
    move-exception v0

    move-object/from16 v27, v1

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v7

    move-object v4, v8

    move-object/from16 v28, v13

    move v13, v2

    move-object/from16 v2, v21

    move-object v1, v0

    move-object v8, v2

    move-object v9, v4

    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v13    # "includeKeyValue":Ljava/lang/String;
    .end local v21    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v27    # "pm":Landroid/content/pm/PackageManager;
    .restart local v28    # "includeKeyValue":Ljava/lang/String;
    .restart local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    goto/16 :goto_25

    .line 452
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v27    # "pm":Landroid/content/pm/PackageManager;
    .end local v28    # "includeKeyValue":Ljava/lang/String;
    .end local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .local v4, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v13    # "includeKeyValue":Ljava/lang/String;
    .restart local v21    # "out":Ljava/io/OutputStream;
    :catch_11
    move-exception v0

    move-object/from16 v27, v1

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v7

    move-object v4, v8

    move-object/from16 v28, v13

    move v13, v2

    move-object/from16 v2, v21

    move-object v8, v2

    move-object v9, v4

    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v13    # "includeKeyValue":Ljava/lang/String;
    .end local v21    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v27    # "pm":Landroid/content/pm/PackageManager;
    .restart local v28    # "includeKeyValue":Ljava/lang/String;
    .restart local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    goto/16 :goto_1b

    .line 450
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v27    # "pm":Landroid/content/pm/PackageManager;
    .end local v28    # "includeKeyValue":Ljava/lang/String;
    .end local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .local v4, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v8    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v13    # "includeKeyValue":Ljava/lang/String;
    .restart local v21    # "out":Ljava/io/OutputStream;
    :catch_12
    move-exception v0

    move-object/from16 v27, v1

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v7

    move-object v4, v8

    move-object/from16 v28, v13

    move v13, v2

    move-object/from16 v2, v21

    move-object v8, v2

    move-object v9, v4

    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v8    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v13    # "includeKeyValue":Ljava/lang/String;
    .end local v21    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v27    # "pm":Landroid/content/pm/PackageManager;
    .restart local v28    # "includeKeyValue":Ljava/lang/String;
    .restart local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    goto/16 :goto_20

    .line 455
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v27    # "pm":Landroid/content/pm/PackageManager;
    .end local v28    # "includeKeyValue":Ljava/lang/String;
    .end local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .local v4, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .local v9, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v13    # "includeKeyValue":Ljava/lang/String;
    .restart local v21    # "out":Ljava/io/OutputStream;
    :catchall_9
    move-exception v0

    move-object/from16 v27, v1

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v7

    move-object/from16 v28, v13

    move v13, v2

    move-object/from16 v2, v21

    move-object v1, v0

    move-object v8, v2

    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v5    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v13    # "includeKeyValue":Ljava/lang/String;
    .end local v21    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .restart local v27    # "pm":Landroid/content/pm/PackageManager;
    .restart local v28    # "includeKeyValue":Ljava/lang/String;
    .restart local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    goto/16 :goto_25

    .line 452
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v27    # "pm":Landroid/content/pm/PackageManager;
    .end local v28    # "includeKeyValue":Ljava/lang/String;
    .end local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v13    # "includeKeyValue":Ljava/lang/String;
    .restart local v21    # "out":Ljava/io/OutputStream;
    :catch_13
    move-exception v0

    move-object/from16 v27, v1

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v7

    move-object/from16 v28, v13

    move v13, v2

    move-object/from16 v2, v21

    move-object v8, v2

    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v5    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v13    # "includeKeyValue":Ljava/lang/String;
    .end local v21    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .restart local v27    # "pm":Landroid/content/pm/PackageManager;
    .restart local v28    # "includeKeyValue":Ljava/lang/String;
    .restart local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    goto/16 :goto_1b

    .line 450
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v27    # "pm":Landroid/content/pm/PackageManager;
    .end local v28    # "includeKeyValue":Ljava/lang/String;
    .end local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v13    # "includeKeyValue":Ljava/lang/String;
    .restart local v21    # "out":Ljava/io/OutputStream;
    :catch_14
    move-exception v0

    move-object/from16 v27, v1

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v7

    move-object/from16 v28, v13

    move v13, v2

    move-object/from16 v2, v21

    move-object v8, v2

    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v5    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v13    # "includeKeyValue":Ljava/lang/String;
    .end local v21    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .restart local v27    # "pm":Landroid/content/pm/PackageManager;
    .restart local v28    # "includeKeyValue":Ljava/lang/String;
    .restart local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    goto/16 :goto_20

    .line 396
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v27    # "pm":Landroid/content/pm/PackageManager;
    .end local v28    # "includeKeyValue":Ljava/lang/String;
    .end local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .local v0, "N":I
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "i":I
    .restart local v4    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v11    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v13    # "includeKeyValue":Ljava/lang/String;
    .restart local v17    # "encrypting":Z
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    .restart local v21    # "out":Ljava/io/OutputStream;
    :cond_14
    move/from16 v33, v0

    move-object/from16 v27, v1

    move/from16 v20, v3

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v7

    move-object/from16 v32, v11

    move-object/from16 v28, v13

    move v13, v2

    move-object/from16 v2, v21

    .line 433
    .end local v0    # "N":I
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "i":I
    .end local v4    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v5    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v11    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v13    # "includeKeyValue":Ljava/lang/String;
    .end local v21    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .restart local v27    # "pm":Landroid/content/pm/PackageManager;
    .restart local v28    # "includeKeyValue":Ljava/lang/String;
    .restart local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v33    # "N":I
    :try_start_17
    iget-boolean v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    if-eqz v0, :cond_15

    .line 434
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Landroid/content/pm/PackageInfo;

    move-object/from16 v1, v22

    .line 435
    .local v1, "keyValuePackage":Landroid/content/pm/PackageInfo;
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--- Performing key-value backup for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ---"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    new-instance v20, Lcom/android/server/backup/KeyValueAdbBackupEngine;

    iget-object v3, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v4, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 440
    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    iget-object v4, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 441
    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v25

    iget-object v4, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 442
    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v26
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_16
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_15
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    move-object/from16 v22, v1

    move-object/from16 v21, v2

    move-object/from16 v23, v3

    .end local v1    # "keyValuePackage":Landroid/content/pm/PackageInfo;
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v21    # "out":Ljava/io/OutputStream;
    .local v22, "keyValuePackage":Landroid/content/pm/PackageInfo;
    :try_start_18
    invoke-direct/range {v20 .. v26}, Lcom/android/server/backup/KeyValueAdbBackupEngine;-><init>(Ljava/io/OutputStream;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/UserBackupManagerService;Landroid/content/pm/PackageManager;Ljava/io/File;Ljava/io/File;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_17
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    .line 443
    .end local v21    # "out":Ljava/io/OutputStream;
    .end local v22    # "keyValuePackage":Landroid/content/pm/PackageInfo;
    .restart local v1    # "keyValuePackage":Landroid/content/pm/PackageInfo;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v20, "kvBackupEngine":Lcom/android/server/backup/KeyValueAdbBackupEngine;
    :try_start_19
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->backupOnePackage()V

    .line 445
    .end local v1    # "keyValuePackage":Landroid/content/pm/PackageInfo;
    .end local v20    # "kvBackupEngine":Lcom/android/server/backup/KeyValueAdbBackupEngine;
    goto :goto_13

    .line 455
    .end local v17    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .end local v32    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v33    # "N":I
    :catchall_a
    move-exception v0

    move-object v1, v0

    move-object v8, v2

    goto/16 :goto_25

    .line 452
    :catch_15
    move-exception v0

    move-object v8, v2

    goto/16 :goto_1b

    .line 450
    :catch_16
    move-exception v0

    move-object v8, v2

    goto/16 :goto_20

    .line 455
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v21    # "out":Ljava/io/OutputStream;
    :catchall_b
    move-exception v0

    move-object/from16 v2, v21

    move-object v1, v0

    move-object v8, v2

    .end local v21    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto/16 :goto_25

    .line 452
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v21    # "out":Ljava/io/OutputStream;
    :catch_17
    move-exception v0

    move-object/from16 v2, v21

    move-object v8, v2

    .end local v21    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto/16 :goto_1b

    .line 450
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v21    # "out":Ljava/io/OutputStream;
    :catch_18
    move-exception v0

    move-object/from16 v2, v21

    move-object v8, v2

    .end local v21    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto/16 :goto_20

    .line 449
    .restart local v17    # "encrypting":Z
    .restart local v19    # "finalOutput":Ljava/io/OutputStream;
    .restart local v32    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v33    # "N":I
    :cond_15
    invoke-direct {v6, v2}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_16
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_15
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    .line 456
    .end local v17    # "encrypting":Z
    .end local v19    # "finalOutput":Ljava/io/OutputStream;
    .end local v32    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v33    # "N":I
    if-eqz v2, :cond_16

    .line 457
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 458
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_14

    .line 461
    :catch_19
    move-exception v0

    goto :goto_15

    .line 460
    :cond_16
    :goto_14
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_19

    .line 463
    goto :goto_16

    .line 461
    :goto_15
    nop

    .line 462
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO error closing adb backup file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    .end local v0    # "e":Ljava/io/IOException;
    :goto_16
    iget-object v1, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 465
    :try_start_1b
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 466
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 467
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    .line 468
    invoke-virtual {v6}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    .line 469
    invoke-virtual {v15}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 470
    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupWakeLock;->release()V

    .line 472
    move-object/from16 v21, v2

    goto/16 :goto_24

    .line 467
    :catchall_c
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_c

    throw v0

    .line 455
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v27    # "pm":Landroid/content/pm/PackageManager;
    .end local v28    # "includeKeyValue":Ljava/lang/String;
    .end local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .local v1, "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .local v8, "out":Ljava/io/OutputStream;
    .restart local v13    # "includeKeyValue":Ljava/lang/String;
    :catchall_d
    move-exception v0

    move-object/from16 v27, v1

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v7

    move-object/from16 v28, v13

    move v13, v2

    move-object v1, v0

    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v5    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v13    # "includeKeyValue":Ljava/lang/String;
    .restart local v27    # "pm":Landroid/content/pm/PackageManager;
    .restart local v28    # "includeKeyValue":Ljava/lang/String;
    .restart local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    goto/16 :goto_25

    .line 377
    .end local v27    # "pm":Landroid/content/pm/PackageManager;
    .end local v28    # "includeKeyValue":Ljava/lang/String;
    .end local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .local v10, "finalOutput":Ljava/io/OutputStream;
    .restart local v11    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v13    # "includeKeyValue":Ljava/lang/String;
    .restart local v17    # "encrypting":Z
    :catch_1a
    move-exception v0

    move-object/from16 v27, v1

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v7

    move-object/from16 v32, v11

    move-object/from16 v28, v13

    move v13, v2

    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v5    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v11    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v13    # "includeKeyValue":Ljava/lang/String;
    .restart local v27    # "pm":Landroid/content/pm/PackageManager;
    .restart local v28    # "includeKeyValue":Ljava/lang/String;
    .restart local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "headerbuf":Ljava/lang/StringBuilder;
    :goto_17
    move-object v1, v0

    .line 379
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1d
    const-string v0, "BackupManagerService"

    const-string v2, "Unable to emit archive header"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1c
    .catchall {:try_start_1d .. :try_end_1d} :catchall_f

    .line 456
    if-eqz v8, :cond_17

    .line 457
    :try_start_1e
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 458
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    goto :goto_18

    .line 461
    :catch_1b
    move-exception v0

    goto :goto_19

    .line 460
    :cond_17
    :goto_18
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_1b

    .line 463
    goto :goto_1a

    .line 461
    :goto_19
    nop

    .line 462
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO error closing adb backup file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1a
    iget-object v2, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 465
    :try_start_1f
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 466
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 467
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_e

    .line 468
    invoke-virtual {v6}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    .line 469
    invoke-virtual {v15}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 470
    const-string v0, "BackupManagerService"

    const-string v2, "Full backup pass complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupWakeLock;->release()V

    .line 380
    return-void

    .line 467
    :catchall_e
    move-exception v0

    :try_start_20
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_e

    throw v0

    .line 455
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v10    # "finalOutput":Ljava/io/OutputStream;
    .end local v17    # "encrypting":Z
    .end local v32    # "headerbuf":Ljava/lang/StringBuilder;
    :catchall_f
    move-exception v0

    move-object v1, v0

    goto/16 :goto_25

    .line 452
    :catch_1c
    move-exception v0

    goto :goto_1b

    .line 450
    :catch_1d
    move-exception v0

    goto/16 :goto_20

    .line 452
    .end local v27    # "pm":Landroid/content/pm/PackageManager;
    .end local v28    # "includeKeyValue":Ljava/lang/String;
    .end local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .local v1, "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v13    # "includeKeyValue":Ljava/lang/String;
    :catch_1e
    move-exception v0

    move-object/from16 v27, v1

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v7

    move-object/from16 v28, v13

    move v13, v2

    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v5    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v13    # "includeKeyValue":Ljava/lang/String;
    .restart local v27    # "pm":Landroid/content/pm/PackageManager;
    .restart local v28    # "includeKeyValue":Ljava/lang/String;
    .restart local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    goto :goto_1b

    .line 450
    .end local v27    # "pm":Landroid/content/pm/PackageManager;
    .end local v28    # "includeKeyValue":Ljava/lang/String;
    .end local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v13    # "includeKeyValue":Ljava/lang/String;
    :catch_1f
    move-exception v0

    move-object/from16 v27, v1

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v31, v7

    move-object/from16 v28, v13

    move v13, v2

    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v5    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "ofstream":Ljava/io/FileOutputStream;
    .end local v13    # "includeKeyValue":Ljava/lang/String;
    .restart local v27    # "pm":Landroid/content/pm/PackageManager;
    .restart local v28    # "includeKeyValue":Ljava/lang/String;
    .restart local v29    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v30    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    goto :goto_20

    .line 452
    :goto_1b
    nop

    .line 453
    .local v0, "e":Ljava/lang/Exception;
    :try_start_21
    const-string v1, "BackupManagerService"

    const-string v2, "Internal exception during full backup"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    .line 456
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v8, :cond_18

    .line 457
    :try_start_22
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 458
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    goto :goto_1c

    .line 461
    :catch_20
    move-exception v0

    goto :goto_1d

    .line 460
    :cond_18
    :goto_1c
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_20

    .line 463
    goto :goto_1e

    .line 461
    :goto_1d
    nop

    .line 462
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO error closing adb backup file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1e
    iget-object v1, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 465
    :try_start_23
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 466
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 467
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_10

    .line 468
    :goto_1f
    invoke-virtual {v6}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    .line 469
    invoke-virtual {v15}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 470
    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupWakeLock;->release()V

    .line 472
    move-object/from16 v21, v8

    goto :goto_24

    .line 467
    :catchall_10
    move-exception v0

    :try_start_24
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_10

    throw v0

    .line 450
    :goto_20
    nop

    .line 451
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_25
    const-string v1, "BackupManagerService"

    const-string v2, "App died during full backup"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_f

    .line 456
    .end local v0    # "e":Landroid/os/RemoteException;
    if-eqz v8, :cond_19

    .line 457
    :try_start_26
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 458
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    goto :goto_21

    .line 461
    :catch_21
    move-exception v0

    goto :goto_22

    .line 460
    :cond_19
    :goto_21
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_21

    .line 463
    goto :goto_23

    .line 461
    :goto_22
    nop

    .line 462
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO error closing adb backup file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    .end local v0    # "e":Ljava/io/IOException;
    :goto_23
    iget-object v1, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 465
    :try_start_27
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 466
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 467
    monitor-exit v1

    goto :goto_1f

    .line 473
    .end local v8    # "out":Ljava/io/OutputStream;
    .restart local v21    # "out":Ljava/io/OutputStream;
    :goto_24
    return-void

    .line 467
    .end local v21    # "out":Ljava/io/OutputStream;
    .restart local v8    # "out":Ljava/io/OutputStream;
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_11

    throw v0

    .line 456
    :goto_25
    if-eqz v8, :cond_1a

    .line 457
    :try_start_28
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 458
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    goto :goto_26

    .line 461
    :catch_22
    move-exception v0

    goto :goto_27

    .line 460
    :cond_1a
    :goto_26
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_22

    .line 463
    goto :goto_28

    .line 461
    :goto_27
    nop

    .line 462
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO error closing adb backup file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    .end local v0    # "e":Ljava/io/IOException;
    :goto_28
    iget-object v2, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 465
    :try_start_29
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 466
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 467
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_12

    .line 468
    invoke-virtual {v6}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    .line 469
    invoke-virtual {v15}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 470
    const-string v0, "BackupManagerService"

    const-string v2, "Full backup pass complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupWakeLock;->release()V

    .line 472
    throw v1

    .line 467
    :catchall_12
    move-exception v0

    :try_start_2a
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_12

    throw v0
.end method
