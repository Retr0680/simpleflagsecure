.class Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;
.super Ljava/lang/Object;
.source "AttestationVerificationPeerDeviceVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;
    }
.end annotation


# static fields
.field private static final ANDROID_SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "AndroidSystem"

.field private static final ANDROID_SYSTEM_PACKAGE_NAME_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_PATCH_AGE_MONTHS:I = 0xc

.field private static final PARAM_OWNED_BY_SYSTEM:Ljava/lang/String; = "android.key_owned_by_system"

.field private static final TAG:Ljava/lang/String; = "AVF"


# instance fields
.field private final mCertPathValidator:Ljava/security/cert/CertPathValidator;

.field private final mCertificateFactory:Ljava/security/cert/CertificateFactory;

.field private final mCertificateRevocationStatusManager:Lcom/android/server/security/CertificateRevocationStatusManager;

.field private final mContext:Landroid/content/Context;

.field private final mDumpLogger:Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;

.field private final mRevocationEnabled:Z

.field private final mTestLocalPatchDate:Ljava/time/LocalDate;

.field private final mTestSystemDate:Ljava/time/LocalDate;

.field private final mTrustAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    nop

    .line 114
    const-string v0, "AndroidSystem"

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->ANDROID_SYSTEM_PACKAGE_NAME_SET:Ljava/util/Set;

    .line 113
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dumpLogger"    # Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mContext:Landroid/content/Context;

    .line 129
    iput-object p2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mDumpLogger:Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;

    .line 130
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    .line 131
    const-string v0, "PKIX"

    invoke-static {v0}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    .line 132
    invoke-direct {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTrustAnchors:Ljava/util/Set;

    .line 133
    new-instance v0, Lcom/android/server/security/CertificateRevocationStatusManager;

    iget-object v1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/security/CertificateRevocationStatusManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateRevocationStatusManager:Lcom/android/server/security/CertificateRevocationStatusManager;

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mRevocationEnabled:Z

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestSystemDate:Ljava/time/LocalDate;

    .line 136
    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestLocalPatchDate:Ljava/time/LocalDate;

    .line 137
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;Ljava/util/Set;ZLjava/time/LocalDate;Ljava/time/LocalDate;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dumpLogger"    # Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;
    .param p4, "revocationEnabled"    # Z
    .param p5, "systemDate"    # Ljava/time/LocalDate;
    .param p6, "localPatchDate"    # Ljava/time/LocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;Z",
            "Ljava/time/LocalDate;",
            "Ljava/time/LocalDate;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    .local p3, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mContext:Landroid/content/Context;

    .line 145
    iput-object p2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mDumpLogger:Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;

    .line 146
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    .line 147
    const-string v0, "PKIX"

    invoke-static {v0}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    .line 148
    iput-object p3, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTrustAnchors:Ljava/util/Set;

    .line 149
    new-instance v0, Lcom/android/server/security/CertificateRevocationStatusManager;

    iget-object v1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/security/CertificateRevocationStatusManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateRevocationStatusManager:Lcom/android/server/security/CertificateRevocationStatusManager;

    .line 150
    iput-boolean p4, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mRevocationEnabled:Z

    .line 151
    iput-object p5, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestSystemDate:Ljava/time/LocalDate;

    .line 152
    iput-object p6, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestLocalPatchDate:Ljava/time/LocalDate;

    .line 153
    return-void
.end method

.method private checkAttestationChallenge(Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;[B)Z
    .locals 2
    .param p1, "attestationAttributes"    # Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;
    .param p2, "expectedChallenge"    # [B

    .line 514
    invoke-virtual {p1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getAttestationChallenge()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/framework/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    .line 515
    .local v0, "challenge":[B
    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method private checkAttestationForPeerDeviceProfile(Landroid/os/Bundle;Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;)I
    .locals 6
    .param p1, "requirements"    # Landroid/os/Bundle;
    .param p2, "attestationAttributes"    # Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;
    .param p3, "dumpData"    # Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;

    .line 406
    const/4 v0, 0x0

    .line 409
    .local v0, "result":I
    invoke-virtual {p2}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getAttestationVersion()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const-string v4, "AVF"

    if-ge v1, v2, :cond_0

    .line 410
    const-string v1, "Attestation version is not at least 3 (Keymaster 4)."

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 413
    :cond_0
    iput-boolean v3, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mAttestationVersionAtLeast3:Z

    .line 417
    :goto_0
    invoke-virtual {p2}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getKeymasterVersion()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 418
    const-string v1, "Keymaster version is not at least 4."

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    .line 421
    :cond_1
    iput-boolean v3, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeymasterVersionAtLeast4:Z

    .line 425
    :goto_1
    invoke-virtual {p2}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getKeyOsVersion()I

    move-result v1

    const v2, 0x186a0

    if-ge v1, v2, :cond_2

    .line 426
    const-string v1, "Android OS version is not 10+."

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    or-int/lit8 v0, v0, 0x10

    goto :goto_2

    .line 429
    :cond_2
    iput-boolean v3, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mOsVersionAtLeast10:Z

    .line 432
    :goto_2
    invoke-virtual {p2}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->isAttestationHardwareBacked()Z

    move-result v1

    if-nez v1, :cond_3

    .line 433
    const-string v1, "Key is not HW backed."

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    or-int/lit8 v0, v0, 0x10

    goto :goto_3

    .line 436
    :cond_3
    iput-boolean v3, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeyHwBacked:Z

    .line 439
    :goto_3
    invoke-virtual {p2}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->isKeymasterHardwareBacked()Z

    move-result v1

    if-nez v1, :cond_4

    .line 440
    const-string v1, "Keymaster is not HW backed."

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    or-int/lit8 v0, v0, 0x10

    goto :goto_4

    .line 443
    :cond_4
    iput-boolean v3, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeymasterHwBacked:Z

    .line 446
    :goto_4
    invoke-virtual {p2}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getVerifiedBootState()Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    move-result-object v1

    sget-object v2, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->VERIFIED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    if-eq v1, v2, :cond_5

    .line 447
    const-string v1, "Boot state not Verified."

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    or-int/lit8 v0, v0, 0x20

    goto :goto_5

    .line 450
    :cond_5
    iput-boolean v3, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mBootStateIsVerified:Z

    .line 454
    :goto_5
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->isVerifiedBootLocked()Z

    move-result v1

    if-nez v1, :cond_6

    .line 455
    const-string v1, "Verified boot state is not locked."

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    or-int/lit8 v0, v0, 0x20

    goto :goto_6

    .line 460
    :catch_0
    move-exception v1

    goto :goto_7

    .line 458
    :cond_6
    iput-boolean v3, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mVerifiedBootStateLocked:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :goto_6
    goto :goto_8

    .line 460
    :goto_7
    nop

    .line 461
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "VerifiedBootLocked is not set."

    invoke-static {v4, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    const/16 v0, 0x20

    .line 465
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_8
    const-string/jumbo v1, "param_max_patch_level_diff_months"

    const/16 v2, 0xc

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 469
    .local v1, "maxPatchLevelDiffMonths":I
    invoke-virtual {p2}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getKeyOsPatchLevel()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->isValidPatchLevel(II)Z

    move-result v2

    if-nez v2, :cond_7

    .line 471
    const-string v2, "OS patch level is not within valid range."

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    or-int/lit8 v0, v0, 0x40

    goto :goto_9

    .line 474
    :cond_7
    iput-boolean v3, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mOsPatchLevelInRange:Z

    .line 478
    :goto_9
    invoke-virtual {p2}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getKeyBootPatchLevel()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->isValidPatchLevel(II)Z

    move-result v2

    const-string v5, "Boot patch level is not within valid range."

    if-nez v2, :cond_8

    .line 480
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    or-int/lit8 v0, v0, 0x40

    goto :goto_a

    .line 483
    :cond_8
    iput-boolean v3, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeyBootPatchLevelInRange:Z

    .line 486
    :goto_a
    invoke-virtual {p2}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getKeyVendorPatchLevel()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->isValidPatchLevel(II)Z

    move-result v2

    if-nez v2, :cond_9

    .line 488
    const-string v2, "Vendor patch level is not within valid range."

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    or-int/lit8 v0, v0, 0x40

    goto :goto_b

    .line 491
    :cond_9
    iput-boolean v3, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeyVendorPatchLevelInRange:Z

    .line 494
    :goto_b
    invoke-virtual {p2}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getKeyBootPatchLevel()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->isValidPatchLevel(II)Z

    move-result v2

    if-nez v2, :cond_a

    .line 496
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    or-int/lit8 v0, v0, 0x40

    goto :goto_c

    .line 499
    :cond_a
    iput-boolean v3, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeyBootPatchLevelInRange:Z

    .line 502
    :goto_c
    return v0
.end method

.method private checkLocalBindingRequirements(Ljava/security/cert/X509Certificate;Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;ILandroid/os/Bundle;Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;)Z
    .locals 5
    .param p1, "leafCertificate"    # Ljava/security/cert/X509Certificate;
    .param p2, "attestationAttributes"    # Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;
    .param p3, "localBindingType"    # I
    .param p4, "requirements"    # Landroid/os/Bundle;
    .param p5, "dumpData"    # Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;

    .line 349
    iput p3, p5, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mBindingType:I

    .line 350
    const/4 v0, 0x0

    const-string v1, "AVF"

    packed-switch p3, :pswitch_data_0

    .line 374
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported local binding type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-static {p3}, Landroid/security/attestationverification/AttestationVerificationManager;->localBindingTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :pswitch_0
    nop

    .line 365
    const-string/jumbo v2, "localbinding.challenge"

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 364
    invoke-direct {p0, p2, v2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->checkAttestationChallenge(Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;[B)Z

    move-result v2

    .line 366
    .local v2, "attestationChallengeMatches":Z
    if-nez v2, :cond_0

    .line 367
    const-string v3, "Provided challenge does not match leaf certificate challenge."

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return v0

    .line 353
    .end local v2    # "attestationChallengeMatches":Z
    :pswitch_1
    nop

    .line 354
    const-string/jumbo v2, "localbinding.public_key"

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 353
    invoke-direct {p0, p1, v2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->checkPublicKey(Ljava/security/cert/Certificate;[B)Z

    move-result v2

    .line 355
    .local v2, "publicKeyMatches":Z
    if-nez v2, :cond_0

    .line 356
    const-string v3, "Provided public key does not match leaf certificate public key."

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return v0

    .line 377
    .end local v2    # "publicKeyMatches":Z
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p5, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mBindingOk:Z

    .line 380
    const-string v3, "android.key_owned_by_system"

    invoke-virtual {p4, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 381
    iput-boolean v2, p5, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mSystemOwnershipChecked:Z

    .line 382
    invoke-virtual {p4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 384
    invoke-direct {p0, p1, p2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->checkOwnedBySystem(Ljava/security/cert/X509Certificate;Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;)Z

    move-result v3

    .line 386
    .local v3, "ownedBySystem":Z
    if-nez v3, :cond_1

    .line 387
    const-string v2, "Certificate public key is not owned by the AndroidSystem."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return v0

    .line 390
    :cond_1
    iput-boolean v2, p5, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mSystemOwned:Z

    .line 391
    .end local v3    # "ownedBySystem":Z
    goto :goto_0

    .line 392
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value of the requirement key android.key_owned_by_system cannot be false. You can remove the key if you don\'t want to verify it."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_3
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkOwnedBySystem(Ljava/security/cert/X509Certificate;Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;)Z
    .locals 3
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;
    .param p2, "attestationAttributes"    # Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;

    .line 520
    nop

    .line 521
    invoke-virtual {p2}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getApplicationPackageNameVersion()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 522
    .local v0, "ownerPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->ANDROID_SYSTEM_PACKAGE_NAME_SET:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Owner is not system, packages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AVF"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v1, 0x0

    return v1

    .line 527
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private checkPublicKey(Ljava/security/cert/Certificate;[B)Z
    .locals 2
    .param p1, "certificate"    # Ljava/security/cert/Certificate;
    .param p2, "expectedPublicKey"    # [B

    .line 507
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 508
    .local v0, "publicKey":[B
    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method private getCertificateBytes(Ljava/lang/String;)[B
    .locals 3
    .param p1, "certString"    # Ljava/lang/String;

    .line 330
    const-string v0, "\\s+"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "formattedCertString":Ljava/lang/String;
    const-string v1, "-BEGIN\\nCERTIFICATE-"

    const-string v2, "-BEGIN CERTIFICATE-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    const-string v1, "-END\\nCERTIFICATE-"

    const-string v2, "-END CERTIFICATE-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1
.end method

.method private getCertificates([B)Ljava/util/List;
    .locals 3
    .param p1, "attestation"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v0, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 254
    .local v1, "bis":Ljava/io/ByteArrayInputStream;
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    if-lez v2, :cond_0

    .line 255
    iget-object v2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v2, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 258
    :cond_0
    return-object v0
.end method

.method private getTrustAnchorResources()[Ljava/lang/String;
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070120

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTrustAnchors()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 315
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 317
    .local v0, "modifiableSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->getTrustAnchorResources()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 318
    .local v4, "certString":Ljava/lang/String;
    new-instance v5, Ljava/security/cert/TrustAnchor;

    iget-object v6, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    .line 320
    invoke-direct {p0, v4}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->getCertificateBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 319
    invoke-virtual {v6, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 318
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    nop

    .end local v4    # "certString":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 322
    :catch_0
    move-exception v1

    goto :goto_1

    .line 325
    :cond_0
    nop

    .line 326
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 322
    :goto_1
    nop

    .line 323
    .local v1, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 324
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v3, "Invalid trust anchor certificate."

    invoke-direct {v2, v3, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private isValidPatchLevel(II)Z
    .locals 12
    .param p1, "patchLevel"    # I
    .param p2, "maxPatchLevelDiffMonths"    # I

    .line 537
    const-string v0, "AVF"

    iget-object v1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestSystemDate:Ljava/time/LocalDate;

    if-eqz v1, :cond_0

    .line 538
    iget-object v1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestSystemDate:Ljava/time/LocalDate;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v1}, Ljava/time/LocalDate;->now(Ljava/time/ZoneId;)Ljava/time/LocalDate;

    move-result-object v1

    .line 543
    .local v1, "currentDate":Ljava/time/LocalDate;
    :goto_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestLocalPatchDate:Ljava/time/LocalDate;

    if-eqz v3, :cond_1

    .line 544
    iget-object v3, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestLocalPatchDate:Ljava/time/LocalDate;

    .local v3, "localPatchDate":Ljava/time/LocalDate;
    goto :goto_1

    .line 548
    .end local v3    # "localPatchDate":Ljava/time/LocalDate;
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 546
    :cond_1
    sget-object v3, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    invoke-static {v3}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    .restart local v3    # "localPatchDate":Ljava/time/LocalDate;
    :goto_1
    nop

    .line 557
    sget-object v4, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v4, v3, v1}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v4

    const-wide/16 v6, 0xc

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    if-lez v4, :cond_2

    .line 558
    return v5

    .line 562
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 563
    .local v4, "remoteDeviceDateStr":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v8, 0x8

    if-eq v6, v8, :cond_3

    .line 564
    const-string v5, "Patch level is not in format YYYYMM or YYYYMMDD"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    return v2

    .line 568
    :cond_3
    const/4 v0, 0x4

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 569
    .local v6, "patchYear":I
    invoke-virtual {v4, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 570
    .local v0, "patchMonth":I
    invoke-static {v6, v0, v5}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v7

    .line 573
    .local v7, "remotePatchDate":Ljava/time/LocalDate;
    sget-object v8, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v8, v3, v7}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    int-to-long v10, p2

    cmp-long v8, v8, v10

    if-gtz v8, :cond_4

    move v2, v5

    :cond_4
    return v2

    .line 548
    .end local v0    # "patchMonth":I
    .end local v3    # "localPatchDate":Ljava/time/LocalDate;
    .end local v4    # "remoteDeviceDateStr":Ljava/lang/String;
    .end local v6    # "patchYear":I
    .end local v7    # "remotePatchDate":Ljava/time/LocalDate;
    :goto_2
    nop

    .line 549
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Build.VERSION.SECURITY_PATCH: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not in format YYYY-MM-DD"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return v2
.end method

.method private validateAttestationParameters(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "localBindingType"    # I
    .param p2, "requirements"    # Landroid/os/Bundle;

    .line 267
    const/4 v0, 0x3

    const/4 v1, 0x0

    const-string v2, "AVF"

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    if-eq p1, v0, :cond_0

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding type is not supported: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return v1

    .line 272
    :cond_0
    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 273
    const-string v0, "At least 1 requirement is required."

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return v1

    .line 277
    :cond_1
    if-ne p1, v3, :cond_2

    const-string/jumbo v3, "localbinding.public_key"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 278
    const-string v0, "Requirements does not contain key: localbinding.public_key"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return v1

    .line 282
    :cond_2
    if-ne p1, v0, :cond_3

    const-string/jumbo v0, "localbinding.challenge"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 283
    const-string v0, "Requirements does not contain key: localbinding.challenge"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return v1

    .line 287
    :cond_3
    return v5
.end method

.method private validateCertificateChain(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 293
    .local p1, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 298
    iget-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v0

    .line 299
    .local v0, "certificatePath":Ljava/security/cert/CertPath;
    new-instance v1, Ljava/security/cert/PKIXParameters;

    iget-object v2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTrustAnchors:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 301
    .local v1, "validationParams":Ljava/security/cert/PKIXParameters;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 302
    iget-object v2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    invoke-virtual {v2, v0, v1}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    .line 303
    iget-boolean v2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mRevocationEnabled:Z

    if-eqz v2, :cond_0

    .line 309
    iget-object v2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateRevocationStatusManager:Lcom/android/server/security/CertificateRevocationStatusManager;

    new-instance v3, Ljava/util/ArrayList;

    .line 310
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {p1, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 309
    invoke-virtual {v2, v3}, Lcom/android/server/security/CertificateRevocationStatusManager;->checkRevocationStatus(Ljava/util/List;)V

    .line 312
    :cond_0
    return-void

    .line 294
    .end local v0    # "certificatePath":Ljava/security/cert/CertPath;
    .end local v1    # "validationParams":Ljava/security/cert/PKIXParameters;
    :cond_1
    const-string v0, "AVF"

    const-string v1, "Certificate chain less than 2 in size."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v0, Ljava/security/cert/CertificateException;

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyAttestationInternal(ILandroid/os/Bundle;[BLcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;)I
    .locals 11
    .param p1, "localBindingType"    # I
    .param p2, "requirements"    # Landroid/os/Bundle;
    .param p3, "attestation"    # [B
    .param p4, "dumpData"    # Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;

    .line 188
    iget-object v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    const/4 v1, 0x4

    const-string v2, "AVF"

    if-nez v0, :cond_0

    .line 189
    const-string v0, "Unable to access CertificateFactory"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return v1

    .line 192
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p4, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mCertificationFactoryAvailable:Z

    .line 194
    iget-object v3, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    if-nez v3, :cond_1

    .line 195
    const-string v0, "Unable to access CertPathValidator"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return v1

    .line 198
    :cond_1
    iput-boolean v0, p4, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mCertPathValidatorAvailable:Z

    .line 203
    const/4 v1, 0x0

    .line 207
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->getCertificates([B)Ljava/util/List;

    move-result-object v3

    .line 209
    .local v3, "certificateChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {p0, v3}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->validateCertificateChain(Ljava/util/List;)V

    .line 210
    iput-boolean v0, p4, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mCertChainOk:Z

    .line 212
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    move-object v6, v4

    .line 213
    .local v6, "leafCertificate":Ljava/security/cert/X509Certificate;
    invoke-static {v6}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->fromCertificate(Ljava/security/cert/X509Certificate;)Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;

    move-result-object v7

    .line 217
    .local v7, "attestationExtension":Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;
    invoke-direct {p0, p1, p2}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->validateAttestationParameters(ILandroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 218
    const/16 v0, 0x8

    return v0

    .line 220
    :cond_2
    iput-boolean v0, p4, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mAttestationParametersOk:Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 223
    move-object v5, p0

    move v8, p1

    move-object v9, p2

    move-object v10, p4

    .end local p1    # "localBindingType":I
    .end local p2    # "requirements":Landroid/os/Bundle;
    .end local p4    # "dumpData":Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;
    .local v8, "localBindingType":I
    .local v9, "requirements":Landroid/os/Bundle;
    .local v10, "dumpData":Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;
    :try_start_1
    invoke-direct/range {v5 .. v10}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->checkLocalBindingRequirements(Ljava/security/cert/X509Certificate;Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;ILandroid/os/Bundle;Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 226
    or-int/lit8 v1, v1, 0x8

    .line 230
    :cond_3
    invoke-direct {p0, v9, v7, v10}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->checkAttestationForPeerDeviceProfile(Landroid/os/Bundle;Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;)I

    move-result p1
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    or-int/2addr p1, v1

    .line 244
    .end local v1    # "result":I
    .end local v3    # "certificateChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v6    # "leafCertificate":Ljava/security/cert/X509Certificate;
    .end local v7    # "attestationExtension":Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;
    .local p1, "result":I
    :goto_0
    goto :goto_3

    .line 239
    .end local p1    # "result":I
    .restart local v1    # "result":I
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 232
    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_2

    .line 239
    .end local v8    # "localBindingType":I
    .end local v9    # "requirements":Landroid/os/Bundle;
    .end local v10    # "dumpData":Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;
    .local p1, "localBindingType":I
    .restart local p2    # "requirements":Landroid/os/Bundle;
    .restart local p4    # "dumpData":Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;
    :catch_2
    move-exception v0

    move-object v5, p0

    move v8, p1

    move-object v9, p2

    move-object v10, p4

    move-object p1, v0

    .end local p1    # "localBindingType":I
    .end local p2    # "requirements":Landroid/os/Bundle;
    .end local p4    # "dumpData":Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;
    .restart local v8    # "localBindingType":I
    .restart local v9    # "requirements":Landroid/os/Bundle;
    .restart local v10    # "dumpData":Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;
    goto :goto_1

    .line 232
    .end local v8    # "localBindingType":I
    .end local v9    # "requirements":Landroid/os/Bundle;
    .end local v10    # "dumpData":Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;
    .restart local p1    # "localBindingType":I
    .restart local p2    # "requirements":Landroid/os/Bundle;
    .restart local p4    # "dumpData":Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;
    :catch_3
    move-exception v0

    move-object v5, p0

    move v8, p1

    move-object v9, p2

    move-object v10, p4

    move-object p1, v0

    .end local p1    # "localBindingType":I
    .end local p2    # "requirements":Landroid/os/Bundle;
    .end local p4    # "dumpData":Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;
    .restart local v8    # "localBindingType":I
    .restart local v9    # "requirements":Landroid/os/Bundle;
    .restart local v10    # "dumpData":Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;
    goto :goto_2

    .line 239
    :goto_1
    nop

    .line 242
    .local p1, "e":Ljava/lang/RuntimeException;
    const-string p2, "Unexpected error"

    invoke-static {v2, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    const/4 p2, 0x1

    move p1, p2

    .end local v1    # "result":I
    .local p2, "result":I
    goto :goto_3

    .line 232
    .end local p1    # "e":Ljava/lang/RuntimeException;
    .end local p2    # "result":I
    .restart local v1    # "result":I
    :goto_2
    nop

    .line 237
    .local p1, "e":Ljava/lang/Exception;
    const-string p2, "Unable to parse/validate Android Attestation certificate(s)"

    invoke-static {v2, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    const/4 p1, 0x4

    .end local v1    # "result":I
    .local p1, "result":I
    goto :goto_0

    .line 246
    :goto_3
    return p1
.end method


# virtual methods
.method verifyAttestation(ILandroid/os/Bundle;[B)I
    .locals 3
    .param p1, "localBindingType"    # I
    .param p2, "requirements"    # Landroid/os/Bundle;
    .param p3, "attestation"    # [B

    .line 174
    new-instance v0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;-><init>(Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier-IA;)V

    .line 176
    .local v0, "dumpData":Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->verifyAttestationInternal(ILandroid/os/Bundle;[BLcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;)I

    move-result v1

    .line 178
    .local v1, "result":I
    iput v1, v0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mResult:I

    .line 179
    iget-object v2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mDumpLogger:Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;

    invoke-virtual {v2, v0}, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;->logAttempt(Lcom/android/server/security/AttestationVerificationManagerService$DumpData;)V

    .line 180
    return v1
.end method
