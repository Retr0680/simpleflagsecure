.class public Lcom/android/server/backup/restore/PerformAdbRestoreTask;
.super Ljava/lang/Object;
.source "PerformAdbRestoreTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private final mCurrentPassword:Ljava/lang/String;

.field private final mDecryptPassword:Ljava/lang/String;

.field private final mInputFile:Landroid/os/ParcelFileDescriptor;

.field private final mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

.field private mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field private final mOperationStorage:Lcom/android/server/backup/OperationStorage;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "operationStorage"    # Lcom/android/server/backup/OperationStorage;
    .param p3, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "curPassword"    # Ljava/lang/String;
    .param p5, "decryptPassword"    # Ljava/lang/String;
    .param p6, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p7, "latch"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 77
    iput-object p2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 78
    iput-object p3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    .line 79
    iput-object p4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    .line 80
    iput-object p5, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    .line 81
    iput-object p6, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 82
    iput-object p7, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-direct {v0, p1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 84
    return-void
.end method

.method private static attemptEncryptionKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;
    .locals 20
    .param p0, "decryptPassword"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "userSalt"    # [B
    .param p3, "ckSalt"    # [B
    .param p4, "rounds"    # I
    .param p5, "userIvHex"    # Ljava/lang/String;
    .param p6, "encryptionKeyBlobHex"    # Ljava/lang/String;
    .param p7, "rawInStream"    # Ljava/io/InputStream;
    .param p8, "doLog"    # Z

    .line 230
    move-object/from16 v1, p1

    move/from16 v2, p4

    const-string v3, "Incorrect password"

    const-string v0, "AES"

    const-string v4, "BackupManagerService"

    const/4 v5, 0x0

    .line 233
    .local v5, "result":Ljava/io/InputStream;
    :try_start_0
    const-string v6, "AES/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1d
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1a
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_19
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_18

    .line 234
    .local v6, "c":Ljavax/crypto/Cipher;
    nop

    .line 235
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    :try_start_1
    invoke-static {v1, v7, v8, v2}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v9

    .line 237
    .local v9, "userKey":Ljavax/crypto/SecretKey;
    invoke-static/range {p5 .. p5}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v10

    .line 238
    .local v10, "IV":[B
    new-instance v11, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v11, v10}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 239
    .local v11, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    .line 240
    invoke-interface {v9}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v13

    invoke-direct {v12, v13, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 239
    const/4 v13, 0x2

    invoke-virtual {v6, v13, v12, v11}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 242
    invoke-static/range {p6 .. p6}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v12

    .line 243
    .local v12, "mkCipher":[B
    invoke-virtual {v6, v12}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v14

    .line 246
    .local v14, "mkBlob":[B
    const/4 v15, 0x0

    .line 247
    .local v15, "offset":I
    add-int/lit8 v13, v15, 0x1

    .end local v15    # "offset":I
    .local v13, "offset":I
    aget-byte v15, v14, v15
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_12

    .line 248
    .local v15, "len":I
    move-object/from16 v16, v5

    .end local v5    # "result":Ljava/io/InputStream;
    .local v16, "result":Ljava/io/InputStream;
    add-int v5, v13, v15

    :try_start_2
    invoke-static {v14, v13, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 249
    .end local v10    # "IV":[B
    .local v5, "IV":[B
    add-int/2addr v13, v15

    .line 251
    add-int/lit8 v10, v13, 0x1

    .end local v13    # "offset":I
    .local v10, "offset":I
    aget-byte v13, v14, v13

    .line 252
    .end local v15    # "len":I
    .local v13, "len":I
    add-int v15, v10, v13

    invoke-static {v14, v10, v15}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    .line 254
    .local v15, "encryptionKey":[B
    add-int/2addr v10, v13

    .line 256
    add-int/lit8 v7, v10, 0x1

    .end local v10    # "offset":I
    .local v7, "offset":I
    aget-byte v10, v14, v10

    .line 257
    .end local v13    # "len":I
    .local v10, "len":I
    add-int v13, v7, v10

    invoke-static {v14, v7, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13
    :try_end_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_c

    .line 261
    .local v13, "mkChecksum":[B
    move/from16 v17, v7

    move-object/from16 v7, p3

    .end local v7    # "offset":I
    .local v17, "offset":I
    :try_start_3
    invoke-static {v1, v15, v7, v2}, Lcom/android/server/backup/utils/PasswordUtils;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B

    move-result-object v18

    move-object/from16 v19, v18

    .line 263
    .local v19, "calculatedCk":[B
    move-object/from16 v1, v19

    .end local v19    # "calculatedCk":[B
    .local v1, "calculatedCk":[B
    invoke-static {v1, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v18
    :try_end_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v18, :cond_0

    .line 264
    move-object/from16 v18, v1

    .end local v1    # "calculatedCk":[B
    .local v18, "calculatedCk":[B
    :try_start_4
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 265
    .end local v11    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .local v1, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v11, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v11, v15, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {v6, v0, v11, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 269
    new-instance v0, Ljavax/crypto/CipherInputStream;
    :try_end_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_6

    move-object/from16 v11, p7

    :try_start_5
    invoke-direct {v0, v11, v6}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    move-object v5, v0

    .end local v16    # "result":Ljava/io/InputStream;
    .local v0, "result":Ljava/io/InputStream;
    goto :goto_0

    .line 297
    .end local v0    # "result":Ljava/io/InputStream;
    .end local v1    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v5    # "IV":[B
    .end local v6    # "c":Ljavax/crypto/Cipher;
    .end local v9    # "userKey":Ljavax/crypto/SecretKey;
    .end local v10    # "len":I
    .end local v12    # "mkCipher":[B
    .end local v13    # "mkChecksum":[B
    .end local v14    # "mkBlob":[B
    .end local v15    # "encryptionKey":[B
    .end local v17    # "offset":I
    .end local v18    # "calculatedCk":[B
    .restart local v16    # "result":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    goto/16 :goto_7

    .line 293
    :catch_1
    move-exception v0

    goto/16 :goto_8

    .line 289
    :catch_2
    move-exception v0

    goto/16 :goto_a

    .line 285
    :catch_3
    move-exception v0

    goto/16 :goto_b

    .line 277
    :catch_4
    move-exception v0

    goto/16 :goto_c

    .line 273
    :catch_5
    move-exception v0

    goto/16 :goto_d

    .line 297
    :catch_6
    move-exception v0

    move-object/from16 v11, p7

    goto/16 :goto_7

    .line 293
    :catch_7
    move-exception v0

    move-object/from16 v11, p7

    goto/16 :goto_8

    .line 289
    :catch_8
    move-exception v0

    move-object/from16 v11, p7

    goto/16 :goto_a

    .line 285
    :catch_9
    move-exception v0

    move-object/from16 v11, p7

    goto/16 :goto_b

    .line 277
    :catch_a
    move-exception v0

    move-object/from16 v11, p7

    goto/16 :goto_c

    .line 273
    :catch_b
    move-exception v0

    move-object/from16 v11, p7

    goto/16 :goto_d

    .line 270
    .local v1, "calculatedCk":[B
    .restart local v5    # "IV":[B
    .restart local v6    # "c":Ljavax/crypto/Cipher;
    .restart local v9    # "userKey":Ljavax/crypto/SecretKey;
    .restart local v10    # "len":I
    .restart local v11    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v12    # "mkCipher":[B
    .restart local v13    # "mkChecksum":[B
    .restart local v14    # "mkBlob":[B
    .restart local v15    # "encryptionKey":[B
    .restart local v17    # "offset":I
    :cond_0
    move-object/from16 v18, v1

    .end local v1    # "calculatedCk":[B
    .restart local v18    # "calculatedCk":[B
    if-eqz p8, :cond_1

    .line 271
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_5} :catch_0

    .line 301
    .end local v5    # "IV":[B
    .end local v6    # "c":Ljavax/crypto/Cipher;
    .end local v9    # "userKey":Ljavax/crypto/SecretKey;
    .end local v10    # "len":I
    .end local v11    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v12    # "mkCipher":[B
    .end local v13    # "mkChecksum":[B
    .end local v14    # "mkBlob":[B
    .end local v15    # "encryptionKey":[B
    .end local v17    # "offset":I
    .end local v18    # "calculatedCk":[B
    :cond_1
    move-object/from16 v5, v16

    .end local v16    # "result":Ljava/io/InputStream;
    .local v5, "result":Ljava/io/InputStream;
    :goto_0
    goto/16 :goto_f

    .line 297
    .end local v5    # "result":Ljava/io/InputStream;
    .restart local v16    # "result":Ljava/io/InputStream;
    :catch_c
    move-exception v0

    move-object/from16 v7, p3

    goto/16 :goto_7

    .line 293
    :catch_d
    move-exception v0

    move-object/from16 v7, p3

    goto/16 :goto_8

    .line 289
    :catch_e
    move-exception v0

    move-object/from16 v7, p3

    goto/16 :goto_a

    .line 285
    :catch_f
    move-exception v0

    move-object/from16 v7, p3

    goto/16 :goto_b

    .line 277
    :catch_10
    move-exception v0

    move-object/from16 v7, p3

    goto/16 :goto_c

    .line 273
    :catch_11
    move-exception v0

    move-object/from16 v7, p3

    goto/16 :goto_d

    .line 297
    .end local v16    # "result":Ljava/io/InputStream;
    .restart local v5    # "result":Ljava/io/InputStream;
    :catch_12
    move-exception v0

    :goto_1
    move-object/from16 v7, p3

    move-object/from16 v16, v5

    .end local v5    # "result":Ljava/io/InputStream;
    .restart local v16    # "result":Ljava/io/InputStream;
    goto :goto_7

    .line 293
    .end local v16    # "result":Ljava/io/InputStream;
    .restart local v5    # "result":Ljava/io/InputStream;
    :catch_13
    move-exception v0

    :goto_2
    move-object/from16 v7, p3

    move-object/from16 v16, v5

    .end local v5    # "result":Ljava/io/InputStream;
    .restart local v16    # "result":Ljava/io/InputStream;
    goto :goto_8

    .line 289
    .end local v16    # "result":Ljava/io/InputStream;
    .restart local v5    # "result":Ljava/io/InputStream;
    :catch_14
    move-exception v0

    :goto_3
    move-object/from16 v7, p3

    move-object/from16 v16, v5

    .end local v5    # "result":Ljava/io/InputStream;
    .restart local v16    # "result":Ljava/io/InputStream;
    goto :goto_a

    .line 285
    .end local v16    # "result":Ljava/io/InputStream;
    .restart local v5    # "result":Ljava/io/InputStream;
    :catch_15
    move-exception v0

    :goto_4
    move-object/from16 v7, p3

    move-object/from16 v16, v5

    .end local v5    # "result":Ljava/io/InputStream;
    .restart local v16    # "result":Ljava/io/InputStream;
    goto :goto_b

    .line 277
    .end local v16    # "result":Ljava/io/InputStream;
    .restart local v5    # "result":Ljava/io/InputStream;
    :catch_16
    move-exception v0

    :goto_5
    move-object/from16 v7, p3

    move-object/from16 v16, v5

    .end local v5    # "result":Ljava/io/InputStream;
    .restart local v16    # "result":Ljava/io/InputStream;
    goto :goto_c

    .line 273
    .end local v16    # "result":Ljava/io/InputStream;
    .restart local v5    # "result":Ljava/io/InputStream;
    :catch_17
    move-exception v0

    :goto_6
    move-object/from16 v7, p3

    move-object/from16 v16, v5

    .end local v5    # "result":Ljava/io/InputStream;
    .restart local v16    # "result":Ljava/io/InputStream;
    goto :goto_d

    .line 297
    .end local v16    # "result":Ljava/io/InputStream;
    .restart local v5    # "result":Ljava/io/InputStream;
    :catch_18
    move-exception v0

    move-object/from16 v8, p2

    goto :goto_1

    .line 293
    :catch_19
    move-exception v0

    move-object/from16 v8, p2

    goto :goto_2

    .line 289
    :catch_1a
    move-exception v0

    move-object/from16 v8, p2

    goto :goto_3

    .line 285
    :catch_1b
    move-exception v0

    move-object/from16 v8, p2

    goto :goto_4

    .line 277
    :catch_1c
    move-exception v0

    move-object/from16 v8, p2

    goto :goto_5

    .line 273
    :catch_1d
    move-exception v0

    move-object/from16 v8, p2

    goto :goto_6

    .line 297
    .end local v5    # "result":Ljava/io/InputStream;
    .restart local v16    # "result":Ljava/io/InputStream;
    :goto_7
    nop

    .line 298
    .local v0, "e":Ljava/security/InvalidKeyException;
    if-eqz p8, :cond_3

    .line 299
    const-string v1, "Illegal password; aborting"

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 293
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :goto_8
    nop

    .line 294
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    if-eqz p8, :cond_2

    .line 295
    const-string v1, "Needed padding mechanism unavailable!"

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .end local v0    # "e":Ljavax/crypto/NoSuchPaddingException;
    :cond_2
    :goto_9
    goto :goto_e

    .line 289
    :goto_a
    nop

    .line 290
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    if-eqz p8, :cond_2

    .line 291
    const-string v1, "Needed decryption algorithm unavailable!"

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 285
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_b
    nop

    .line 286
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    if-eqz p8, :cond_2

    .line 287
    const-string v1, "Invalid block size in encryption key"

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 277
    .end local v0    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :goto_c
    nop

    .line 282
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    if-eqz p8, :cond_2

    .line 283
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 273
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    :goto_d
    nop

    .line 274
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    if-eqz p8, :cond_2

    .line 275
    const-string v1, "Needed parameter spec unavailable!"

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 303
    .end local v0    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :cond_3
    :goto_e
    move-object/from16 v5, v16

    .end local v16    # "result":Ljava/io/InputStream;
    .restart local v5    # "result":Ljava/io/InputStream;
    :goto_f
    return-object v5
.end method

.method private static decodeAesHeaderAndInitialize(Ljava/lang/String;Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;
    .locals 13
    .param p0, "decryptPassword"    # Ljava/lang/String;
    .param p1, "encryptionName"    # Ljava/lang/String;
    .param p2, "pbkdf2Fallback"    # Z
    .param p3, "rawInStream"    # Ljava/io/InputStream;

    .line 310
    const-string v1, "BackupManagerService"

    const/4 v2, 0x0

    .line 312
    .local v2, "result":Ljava/io/InputStream;
    :try_start_0
    const-string v0, "AES-256"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "userSaltHex":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    move-object v6, v3

    .line 317
    .local v6, "userSalt":[B
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "ckSaltHex":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 320
    .local v7, "ckSalt":[B
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 321
    .local v8, "rounds":I
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    .line 323
    .local v9, "userIvHex":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10

    .line 326
    .local v10, "encryptionKeyBlobHex":Ljava/lang/String;
    const-string v5, "PBKDF2WithHmacSHA1"

    const/4 v12, 0x0

    move-object v4, p0

    move-object/from16 v11, p3

    invoke-static/range {v4 .. v12}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->attemptEncryptionKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v5

    move-object v2, v5

    .line 328
    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    .line 329
    const-string v5, "PBKDF2WithHmacSHA1And8bit"

    const/4 v12, 0x1

    move-object v4, p0

    move-object/from16 v11, p3

    invoke-static/range {v4 .. v12}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->attemptEncryptionKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v1

    move-object v2, v1

    .end local v2    # "result":Ljava/io/InputStream;
    .local v1, "result":Ljava/io/InputStream;
    goto :goto_0

    .line 338
    .end local v0    # "userSaltHex":Ljava/lang/String;
    .end local v1    # "result":Ljava/io/InputStream;
    .end local v3    # "ckSaltHex":Ljava/lang/String;
    .end local v6    # "userSalt":[B
    .end local v7    # "ckSalt":[B
    .end local v8    # "rounds":I
    .end local v9    # "userIvHex":Ljava/lang/String;
    .end local v10    # "encryptionKeyBlobHex":Ljava/lang/String;
    .restart local v2    # "result":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 336
    :catch_1
    move-exception v0

    goto :goto_3

    .line 333
    :cond_0
    :goto_0
    goto :goto_1

    .line 334
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported encryption method: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_1
    goto :goto_4

    .line 338
    :goto_2
    nop

    .line 339
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Can\'t read input header"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 336
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    nop

    .line 337
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "Can\'t parse restore data header"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 342
    :goto_4
    return-object v2
.end method

.method public static parseBackupFileHeaderAndReturnTarStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 13
    .param p0, "rawInputStream"    # Ljava/io/InputStream;
    .param p1, "decryptPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "compressed":Z
    move-object v1, p0

    .line 168
    .local v1, "preCompressStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 169
    .local v2, "okay":Z
    const-string v3, "ANDROID BACKUP\n"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 170
    .local v4, "headerLen":I
    new-array v5, v4, [B

    .line 171
    .local v5, "streamHeader":[B
    invoke-static {p0, v5}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readFullyOrThrow(Ljava/io/InputStream;[B)V

    .line 172
    const-string v6, "UTF-8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 174
    .local v3, "magicBytes":[B
    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    const-string v7, "BackupManagerService"

    if-eqz v6, :cond_6

    .line 176
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 177
    .local v6, "s":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 178
    .local v8, "archiveVersion":I
    const/4 v9, 0x5

    if-gt v8, v9, :cond_5

    .line 181
    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    move v11, v10

    goto :goto_0

    :cond_0
    move v11, v9

    .line 183
    .local v11, "pbkdf2Fallback":Z
    :goto_0
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 184
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_1

    move v9, v10

    :cond_1
    move v0, v9

    .line 185
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 186
    const-string/jumbo v9, "none"

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 188
    const/4 v2, 0x1

    goto :goto_1

    .line 189
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 190
    invoke-static {p1, v6, v11, p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->decodeAesHeaderAndInitialize(Ljava/lang/String;Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    .line 193
    if-eqz v1, :cond_4

    .line 194
    const/4 v2, 0x1

    goto :goto_1

    .line 197
    :cond_3
    const-string v9, "Archive is encrypted but no password given"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v11    # "pbkdf2Fallback":Z
    :cond_4
    :goto_1
    goto :goto_2

    .line 200
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wrong header version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v6    # "s":Ljava/lang/String;
    .end local v8    # "archiveVersion":I
    :goto_2
    goto :goto_3

    .line 203
    :cond_6
    const-string v6, "Didn\'t read the right header magic"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_3
    if-nez v2, :cond_7

    .line 207
    const-string v6, "Invalid restore data; aborting."

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v6, 0x0

    return-object v6

    .line 212
    :cond_7
    if-eqz v0, :cond_8

    new-instance v6, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v6, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_4

    :cond_8
    move-object v6, v1

    :goto_4
    return-object v6
.end method

.method private static readFullyOrThrow(Ljava/io/InputStream;[B)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "offset":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 151
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 152
    .local v1, "bytesRead":I
    if-lez v1, :cond_0

    .line 155
    add-int/2addr v0, v1

    .line 156
    .end local v1    # "bytesRead":I
    goto :goto_0

    .line 153
    .restart local v1    # "bytesRead":I
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Couldn\'t fully read data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    .end local v1    # "bytesRead":I
    :cond_1
    return-void
.end method

.method private static readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 218
    .local v0, "buffer":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    move v2, v1

    .local v2, "c":I
    if-ltz v1, :cond_1

    .line 219
    const/16 v1, 0xa

    if-ne v2, v1, :cond_0

    .line 220
    goto :goto_1

    .line 222
    :cond_0
    int-to-char v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 224
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 88
    move-object/from16 v1, p0

    const-string v0, "BackupManagerService"

    const-string v2, "--- Performing full-dataset restore ---"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->establish()V

    .line 90
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendStartRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 92
    const/4 v2, 0x0

    .line 94
    .local v2, "rawInStream":Ljava/io/FileInputStream;
    const/4 v3, 0x1

    :try_start_0
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v4, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/server/backup/UserBackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    const-string v0, "BackupManagerService"

    const-string v4, "Backup password mismatch; aborting"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 129
    if-eqz v2, :cond_0

    .line 130
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    goto :goto_1

    .line 132
    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    goto :goto_2

    .line 133
    :goto_1
    nop

    .line 134
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "Close of restore data pipe threw"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    iget-object v4, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 138
    :try_start_2
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 139
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 140
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 142
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 143
    const-string v0, "BackupManagerService"

    const-string v3, "Full restore pass complete."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupWakeLock;->release()V

    .line 96
    return-void

    .line 140
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 128
    :catchall_1
    move-exception v0

    move-object v4, v2

    move-object v2, v0

    goto/16 :goto_b

    .line 125
    :catch_1
    move-exception v0

    goto/16 :goto_6

    .line 99
    :cond_1
    :try_start_4
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v4, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v2, v0

    .line 101
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->parseBackupFileHeaderAndReturnTarStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v4, v0

    .line 103
    .local v4, "tarInputStream":Ljava/io/InputStream;
    if-nez v4, :cond_2

    .line 129
    nop

    .line 130
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 132
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 136
    goto :goto_3

    .line 133
    :catch_2
    move-exception v0

    .line 134
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "BackupManagerService"

    const-string v6, "Close of restore data pipe threw"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    iget-object v5, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v5

    .line 138
    :try_start_6
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 139
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 140
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 141
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 142
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 143
    const-string v0, "BackupManagerService"

    const-string v3, "Full restore pass complete."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupWakeLock;->release()V

    .line 106
    return-void

    .line 140
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 109
    :cond_2
    :try_start_8
    new-instance v6, Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 110
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 111
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/pm/PackageManagerInternal;

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 112
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v9

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 113
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x2

    invoke-direct/range {v6 .. v11}, Lcom/android/server/backup/utils/BackupEligibilityRules;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;ILandroid/content/Context;I)V

    move-object/from16 v17, v6

    .line 115
    .local v17, "eligibilityRules":Lcom/android/server/backup/utils/BackupEligibilityRules;
    new-instance v7, Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v8, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v9, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget-object v11, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-direct/range {v7 .. v17}, Lcom/android/server/backup/restore/FullRestoreEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZIZLcom/android/server/backup/utils/BackupEligibilityRules;)V

    .line 118
    .local v7, "mEngine":Lcom/android/server/backup/restore/FullRestoreEngine;
    new-instance v0, Lcom/android/server/backup/restore/FullRestoreEngineThread;

    invoke-direct {v0, v7, v4}, Lcom/android/server/backup/restore/FullRestoreEngineThread;-><init>(Lcom/android/server/backup/restore/FullRestoreEngine;Ljava/io/InputStream;)V

    .line 120
    .local v0, "mEngineThread":Lcom/android/server/backup/restore/FullRestoreEngineThread;
    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngineThread;->run()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 129
    .end local v0    # "mEngineThread":Lcom/android/server/backup/restore/FullRestoreEngineThread;
    .end local v4    # "tarInputStream":Ljava/io/InputStream;
    .end local v7    # "mEngine":Lcom/android/server/backup/restore/FullRestoreEngine;
    .end local v17    # "eligibilityRules":Lcom/android/server/backup/utils/BackupEligibilityRules;
    nop

    .line 130
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 132
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 136
    goto :goto_4

    .line 133
    :catch_3
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "Close of restore data pipe threw"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4
    iget-object v4, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 138
    :try_start_a
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 139
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 140
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 141
    :goto_5
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 142
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 143
    const-string v0, "BackupManagerService"

    const-string v3, "Full restore pass complete."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupWakeLock;->release()V

    .line 145
    goto :goto_a

    .line 140
    :catchall_3
    move-exception v0

    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0

    .line 125
    :goto_6
    nop

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    :try_start_c
    const-string v4, "BackupManagerService"

    const-string v5, "Unable to read restore input"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_3

    .line 130
    :try_start_d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_7

    .line 133
    :catch_4
    move-exception v0

    goto :goto_8

    .line 132
    :cond_3
    :goto_7
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    .line 136
    goto :goto_9

    .line 133
    :goto_8
    nop

    .line 134
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "Close of restore data pipe threw"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .end local v0    # "e":Ljava/io/IOException;
    :goto_9
    iget-object v4, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 138
    :try_start_e
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 139
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 140
    monitor-exit v4

    goto :goto_5

    .line 146
    :goto_a
    return-void

    .line 140
    :catchall_4
    move-exception v0

    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v0

    .line 129
    .end local v2    # "rawInStream":Ljava/io/FileInputStream;
    .local v4, "rawInStream":Ljava/io/FileInputStream;
    :goto_b
    if-eqz v4, :cond_4

    .line 130
    :try_start_f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto :goto_c

    .line 133
    :catch_5
    move-exception v0

    goto :goto_d

    .line 132
    :cond_4
    :goto_c
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    .line 136
    goto :goto_e

    .line 133
    :goto_d
    nop

    .line 134
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "BackupManagerService"

    const-string v6, "Close of restore data pipe threw"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .end local v0    # "e":Ljava/io/IOException;
    :goto_e
    iget-object v5, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v5

    .line 138
    :try_start_10
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 139
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 140
    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 141
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 142
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 143
    const-string v0, "BackupManagerService"

    const-string v3, "Full restore pass complete."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupWakeLock;->release()V

    .line 145
    throw v2

    .line 140
    :catchall_5
    move-exception v0

    :try_start_11
    monitor-exit v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    throw v0
.end method
