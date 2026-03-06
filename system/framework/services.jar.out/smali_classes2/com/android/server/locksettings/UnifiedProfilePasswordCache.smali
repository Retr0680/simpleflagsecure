.class public Lcom/android/server/locksettings/UnifiedProfilePasswordCache;
.super Ljava/lang/Object;
.source "UnifiedProfilePasswordCache.java"


# static fields
.field private static final CACHE_TIMEOUT_SECONDS:I

.field private static final KEY_LENGTH:I = 0x100

.field private static final TAG:Ljava/lang/String; = "UnifiedProfilePasswordCache"


# instance fields
.field private final mEncryptedPasswords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field private final mKeyStore:Ljava/security/KeyStore;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 66
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->CACHE_TIMEOUT_SECONDS:I

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 1
    .param p1, "keyStore"    # Ljava/security/KeyStore;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    .line 72
    iput-object p1, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    .line 73
    return-void
.end method

.method private static getEncryptionKeyName(I)Ljava/lang/String;
    .locals 2
    .param p0, "userId"    # I

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.server.locksettings.unified_profile_cache_v2_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLegacyEncryptionKeyName(I)Ljava/lang/String;
    .locals 2
    .param p0, "userId"    # I

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.server.locksettings.unified_profile_cache_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public removePassword(I)V
    .locals 6
    .param p1, "userId"    # I

    .line 165
    iget-object v0, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 166
    :try_start_0
    invoke-static {p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->getEncryptionKeyName(I)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "keyName":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->getLegacyEncryptionKeyName(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .local v2, "legacyKeyName":Ljava/lang/String;
    :try_start_1
    iget-object v3, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    iget-object v3, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    .end local v1    # "keyName":Ljava/lang/String;
    .end local v2    # "legacyKeyName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 175
    .restart local v1    # "keyName":Ljava/lang/String;
    .restart local v2    # "legacyKeyName":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 172
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, v2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    iget-object v3, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    :cond_1
    goto :goto_2

    .line 175
    :goto_1
    nop

    .line 176
    .local v3, "e":Ljava/security/KeyStoreException;
    :try_start_2
    const-string v4, "UnifiedProfilePasswordCache"

    const-string v5, "Cannot delete key"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    .end local v3    # "e":Ljava/security/KeyStoreException;
    :goto_2
    iget-object v3, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 179
    iget-object v3, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->zeroize([B)V

    .line 180
    iget-object v3, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 182
    .end local v1    # "keyName":Ljava/lang/String;
    .end local v2    # "legacyKeyName":Ljava/lang/String;
    :cond_2
    monitor-exit v0

    .line 183
    return-void

    .line 182
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public retrievePassword(I)Lcom/android/internal/widget/LockscreenCredential;
    .locals 9
    .param p1, "userId"    # I

    .line 127
    iget-object v0, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 129
    .local v1, "block":[B
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 130
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 160
    .end local v1    # "block":[B
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 134
    .restart local v1    # "block":[B
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    invoke-static {p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->getEncryptionKeyName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v3
    :try_end_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .local v3, "key":Ljava/security/Key;
    nop

    .line 139
    if-nez v3, :cond_1

    .line 140
    :try_start_2
    monitor-exit v0

    return-object v2

    .line 142
    :cond_1
    const/16 v4, 0xc

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    .line 143
    .local v5, "iv":[B
    array-length v6, v1

    invoke-static {v1, v4, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    .local v4, "ciphertext":[B
    :try_start_3
    const-string v6, "AES/GCM/NoPadding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 147
    .local v6, "cipher":Ljavax/crypto/Cipher;
    new-instance v7, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v8, 0x80

    invoke-direct {v7, v8, v5}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v8, 0x2

    invoke-virtual {v6, v8, v3, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 148
    invoke-virtual {v6, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_3
    .catch Landroid/security/keystore/UserNotAuthenticatedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    .end local v6    # "cipher":Ljavax/crypto/Cipher;
    .local v2, "credential":[B
    nop

    .line 156
    nop

    .line 157
    :try_start_4
    invoke-static {v2}, Lcom/android/internal/widget/LockscreenCredential;->createUnifiedProfilePassword([B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    .line 158
    .local v6, "result":Lcom/android/internal/widget/LockscreenCredential;
    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->zeroize([B)V

    .line 159
    monitor-exit v0

    return-object v6

    .line 152
    .end local v2    # "credential":[B
    .end local v6    # "result":Lcom/android/internal/widget/LockscreenCredential;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 149
    :catch_1
    move-exception v6

    goto :goto_1

    .line 152
    :goto_0
    nop

    .line 153
    .local v6, "e":Ljava/security/GeneralSecurityException;
    const-string v7, "UnifiedProfilePasswordCache"

    const-string v8, "Cannot decrypt"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    monitor-exit v0

    return-object v2

    .line 149
    .end local v6    # "e":Ljava/security/GeneralSecurityException;
    :goto_1
    nop

    .line 150
    .local v6, "e":Landroid/security/keystore/UserNotAuthenticatedException;
    const-string v7, "UnifiedProfilePasswordCache"

    const-string v8, "Device not unlocked for more than 7 days"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    monitor-exit v0

    return-object v2

    .line 135
    .end local v3    # "key":Ljava/security/Key;
    .end local v4    # "ciphertext":[B
    .end local v5    # "iv":[B
    .end local v6    # "e":Landroid/security/keystore/UserNotAuthenticatedException;
    :catch_2
    move-exception v3

    nop

    .line 136
    .local v3, "e":Ljava/security/GeneralSecurityException;
    const-string v4, "UnifiedProfilePasswordCache"

    const-string v5, "Cannot get key"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    monitor-exit v0

    return-object v2

    .line 160
    .end local v1    # "block":[B
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public storePassword(ILcom/android/internal/widget/LockscreenCredential;J)V
    .locals 9
    .param p1, "userId"    # I
    .param p2, "password"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "parentSid"    # J

    .line 82
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    monitor-exit v0

    return-void

    .line 120
    :catchall_0
    move-exception v1

    goto/16 :goto_1

    .line 87
    :cond_1
    invoke-static {p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->getEncryptionKeyName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .local v1, "keyName":Ljava/lang/String;
    :try_start_1
    const-string v2, "AES"

    iget-object v3, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    .line 92
    invoke-virtual {v3}, Ljava/security/KeyStore;->getProvider()Ljava/security/Provider;

    move-result-object v3

    .line 91
    invoke-static {v2, v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    .line 93
    .local v2, "generator":Ljavax/crypto/KeyGenerator;
    new-instance v3, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v4, 0x3

    invoke-direct {v3, v1, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 95
    const/16 v4, 0x100

    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    const-string v4, "GCM"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    .line 97
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->keyNamespace()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setNamespace(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    const-string v4, "NoPadding"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    .line 99
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    .line 100
    invoke-virtual {v3, p3, p4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBoundToSpecificSecureUserId(J)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    sget v5, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->CACHE_TIMEOUT_SECONDS:I

    .line 101
    invoke-virtual {v3, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    .line 102
    invoke-virtual {v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v3

    .line 93
    invoke-virtual {v2, v3}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 103
    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    .local v3, "key":Ljavax/crypto/SecretKey;
    nop

    .line 111
    :try_start_2
    const-string v5, "AES/GCM/NoPadding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 112
    .local v5, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v5, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 113
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 114
    .local v4, "ciphertext":[B
    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v6

    .line 115
    .local v6, "iv":[B
    filled-new-array {v6, v4}, [[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    move-result-object v7

    .line 116
    .local v7, "block":[B
    iget-object v8, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    invoke-virtual {v8, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    .end local v4    # "ciphertext":[B
    .end local v6    # "iv":[B
    .end local v7    # "block":[B
    goto :goto_0

    .line 117
    .end local v5    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v4

    nop

    .line 118
    .local v4, "e":Ljava/security/GeneralSecurityException;
    :try_start_3
    const-string v5, "UnifiedProfilePasswordCache"

    const-string v6, "Cannot encrypt"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .end local v1    # "keyName":Ljava/lang/String;
    .end local v2    # "generator":Ljavax/crypto/KeyGenerator;
    .end local v3    # "key":Ljavax/crypto/SecretKey;
    .end local v4    # "e":Ljava/security/GeneralSecurityException;
    :goto_0
    monitor-exit v0

    .line 121
    return-void

    .line 104
    .restart local v1    # "keyName":Ljava/lang/String;
    :catch_1
    move-exception v2

    nop

    .line 105
    .local v2, "e":Ljava/security/GeneralSecurityException;
    const-string v3, "UnifiedProfilePasswordCache"

    const-string v4, "Cannot generate key"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    monitor-exit v0

    return-void

    .line 120
    .end local v1    # "keyName":Ljava/lang/String;
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
