.class public Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;
.super Ljava/lang/Object;
.source "RecoverySnapshotStorage.java"


# static fields
.field private static final ROOT_PATH:Ljava/lang/String; = "system"

.field private static final STORAGE_PATH:Ljava/lang/String; = "recoverablekeystore/snapshots/"

.field private static final TAG:Ljava/lang/String; = "RecoverySnapshotStorage"


# instance fields
.field private final mSnapshotByUid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/security/keystore/recovery/KeyChainSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private final rootDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "rootDirectory"    # Ljava/io/File;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->mSnapshotByUid:Landroid/util/SparseArray;

    .line 76
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->rootDirectory:Ljava/io/File;

    .line 77
    return-void
.end method

.method private getSnapshotFile(I)Ljava/io/File;
    .locals 3
    .param p1, "uid"    # I

    .line 130
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->getStorageFolder()Ljava/io/File;

    move-result-object v0

    .line 131
    .local v0, "folder":Ljava/io/File;
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->getSnapshotFileName(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private getSnapshotFileName(I)Ljava/lang/String;
    .locals 3
    .param p1, "uid"    # I

    .line 136
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d.xml"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStorageFolder()Ljava/io/File;
    .locals 3

    .line 140
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->rootDirectory:Ljava/io/File;

    const-string/jumbo v2, "recoverablekeystore/snapshots/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 141
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 142
    return-object v0
.end method

.method public static newInstance()Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;
    .locals 4

    .line 70
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    new-instance v1, Ljava/io/File;

    .line 71
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "system"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;-><init>(Ljava/io/File;)V

    .line 70
    return-object v0
.end method


# virtual methods
.method public declared-synchronized get(I)Landroid/security/keystore/recovery/KeyChainSnapshot;
    .locals 7
    .param p1, "uid"    # I

    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->mSnapshotByUid:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keystore/recovery/KeyChainSnapshot;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .local v0, "snapshot":Landroid/security/keystore/recovery/KeyChainSnapshot;
    if-eqz v0, :cond_0

    .line 103
    monitor-exit p0

    return-object v0

    .line 106
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->getSnapshotFile(I)Ljava/io/File;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    .local v1, "snapshotFile":Ljava/io/File;
    const/4 v2, 0x0

    :try_start_2
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_3
    invoke-static {v3}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->deserialize(Ljava/io/InputStream;)Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 109
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 108
    monitor-exit p0

    return-object v4

    .line 100
    .end local v0    # "snapshot":Landroid/security/keystore/recovery/KeyChainSnapshot;
    .end local v1    # "snapshotFile":Ljava/io/File;
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;
    .end local p1    # "uid":I
    :catchall_0
    move-exception p1

    goto :goto_3

    .line 112
    .restart local v0    # "snapshot":Landroid/security/keystore/recovery/KeyChainSnapshot;
    .restart local v1    # "snapshotFile":Ljava/io/File;
    .restart local p1    # "uid":I
    :catch_0
    move-exception v3

    goto :goto_1

    .line 109
    :catch_1
    move-exception v3

    goto :goto_2

    .line 107
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v5

    :try_start_6
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "snapshot":Landroid/security/keystore/recovery/KeyChainSnapshot;
    .end local v1    # "snapshotFile":Ljava/io/File;
    .end local p1    # "uid":I
    :goto_0
    throw v4
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 112
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v0    # "snapshot":Landroid/security/keystore/recovery/KeyChainSnapshot;
    .restart local v1    # "snapshotFile":Ljava/io/File;
    .restart local p1    # "uid":I
    :goto_1
    nop

    .line 115
    .local v3, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 116
    const-string v4, "RecoverySnapshotStorage"

    const-string v5, "Error reading snapshot for %d from disk"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v3, v5, v6}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 117
    monitor-exit p0

    return-object v2

    .line 109
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    nop

    .line 110
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_8
    const-string v4, "RecoverySnapshotStorage"

    const-string v5, "Snapshot for uid %d not found"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 111
    monitor-exit p0

    return-object v2

    .line 100
    .end local v0    # "snapshot":Landroid/security/keystore/recovery/KeyChainSnapshot;
    .end local v1    # "snapshotFile":Ljava/io/File;
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local p1    # "uid":I
    :goto_3
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p1
.end method

.method public declared-synchronized put(ILandroid/security/keystore/recovery/KeyChainSnapshot;)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "snapshot"    # Landroid/security/keystore/recovery/KeyChainSnapshot;

    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->mSnapshotByUid:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->getSnapshotFile(I)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .local v0, "snapshotFile":Ljava/io/File;
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .local v1, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-static {p2, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->serialize(Landroid/security/keystore/recovery/KeyChainSnapshot;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 82
    .end local v0    # "snapshotFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;
    .end local p1    # "uid":I
    .end local p2    # "snapshot":Landroid/security/keystore/recovery/KeyChainSnapshot;
    :catchall_0
    move-exception p1

    goto :goto_3

    .line 88
    .restart local v0    # "snapshotFile":Ljava/io/File;
    .restart local p1    # "uid":I
    .restart local p2    # "snapshot":Landroid/security/keystore/recovery/KeyChainSnapshot;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 86
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    :try_start_5
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "snapshotFile":Ljava/io/File;
    .end local p1    # "uid":I
    .end local p2    # "snapshot":Landroid/security/keystore/recovery/KeyChainSnapshot;
    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 88
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "snapshotFile":Ljava/io/File;
    .restart local p1    # "uid":I
    .restart local p2    # "snapshot":Landroid/security/keystore/recovery/KeyChainSnapshot;
    :goto_1
    nop

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 92
    const-string v2, "RecoverySnapshotStorage"

    const-string v3, "Error persisting snapshot for %d to disk"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 94
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    monitor-exit p0

    return-void

    .line 82
    .end local v0    # "snapshotFile":Ljava/io/File;
    .end local p1    # "uid":I
    .end local p2    # "snapshot":Landroid/security/keystore/recovery/KeyChainSnapshot;
    :goto_3
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method public declared-synchronized remove(I)V
    .locals 1
    .param p1, "uid"    # I

    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->mSnapshotByUid:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 126
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->getSnapshotFile(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 124
    .end local p0    # "this":Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;
    .end local p1    # "uid":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
