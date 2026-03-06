.class public Lcom/android/server/companion/securechannel/AttestationVerifier;
.super Ljava/lang/Object;
.source "AttestationVerifier.java"


# static fields
.field private static final ATTESTATION_VERIFICATION_TIMEOUT_SECONDS:J = 0xaL

.field private static final EXTENDED_PATCH_LEVEL_DIFF_MONTHS:I = 0x18

.field private static final PARAM_OWNED_BY_SYSTEM:Ljava/lang/String; = "android.key_owned_by_system"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFlags:I


# direct methods
.method public static synthetic $r8$lambda$SWA86q1x1-gVSEC7t4whGdO3b5k(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Integer;Landroid/security/attestationverification/VerificationToken;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/companion/securechannel/AttestationVerifier;->lambda$verifyAttestation$0(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Integer;Landroid/security/attestationverification/VerificationToken;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flags"    # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/companion/securechannel/AttestationVerifier;->mContext:Landroid/content/Context;

    .line 53
    iput p2, p0, Lcom/android/server/companion/securechannel/AttestationVerifier;->mFlags:I

    .line 54
    return-void
.end method

.method private static synthetic lambda$verifyAttestation$0(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Integer;Landroid/security/attestationverification/VerificationToken;)V
    .locals 1
    .param p0, "verificationResult"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p1, "verificationFinished"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "result"    # Ljava/lang/Integer;
    .param p3, "token"    # Landroid/security/attestationverification/VerificationToken;

    .line 81
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 82
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 83
    return-void
.end method

.method private updateRequirements(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "requirements"    # Landroid/os/Bundle;

    .line 112
    iget v0, p0, Lcom/android/server/companion/securechannel/AttestationVerifier;->mFlags:I

    if-nez v0, :cond_0

    .line 113
    return-void

    .line 116
    :cond_0
    iget v0, p0, Lcom/android/server/companion/securechannel/AttestationVerifier;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_1

    .line 117
    const-string/jumbo v0, "param_max_patch_level_diff_months"

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    :cond_1
    return-void
.end method


# virtual methods
.method public verifyAttestation([B[B)I
    .locals 10
    .param p1, "remoteAttestation"    # [B
    .param p2, "attestationChallenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/companion/securechannel/SecureChannelException;
        }
    .end annotation

    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v4, v0

    .line 71
    .local v4, "requirements":Landroid/os/Bundle;
    const-string/jumbo v0, "localbinding.challenge"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 72
    const-string v0, "android.key_owned_by_system"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    invoke-direct {p0, v4}, Lcom/android/server/companion/securechannel/AttestationVerifier;->updateRequirements(Landroid/os/Bundle;)V

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object v8, v0

    .line 79
    .local v8, "verificationResult":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v9, v0

    .line 80
    .local v9, "verificationFinished":Ljava/util/concurrent/CountDownLatch;
    new-instance v7, Lcom/android/server/companion/securechannel/AttestationVerifier$$ExternalSyntheticLambda0;

    invoke-direct {v7, v8, v9}, Lcom/android/server/companion/securechannel/AttestationVerifier$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V

    .line 85
    .local v7, "onVerificationResult":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/Integer;Landroid/security/attestationverification/VerificationToken;>;"
    iget-object v0, p0, Lcom/android/server/companion/securechannel/AttestationVerifier;->mContext:Landroid/content/Context;

    const-class v1, Landroid/security/attestationverification/AttestationVerificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/security/attestationverification/AttestationVerificationManager;

    new-instance v2, Landroid/security/attestationverification/AttestationProfile;

    const/4 v0, 0x3

    invoke-direct {v2, v0}, Landroid/security/attestationverification/AttestationProfile;-><init>(I)V

    new-instance v6, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    const/4 v3, 0x3

    move-object v5, p1

    .end local p1    # "remoteAttestation":[B
    .local v5, "remoteAttestation":[B
    invoke-virtual/range {v1 .. v7}, Landroid/security/attestationverification/AttestationVerificationManager;->verifyAttestation(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;[BLjava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)V

    .line 96
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0xa

    invoke-virtual {v9, v0, v1, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .local p1, "finished":Z
    nop

    .line 104
    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0

    .line 105
    :cond_0
    new-instance v0, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string v1, "Attestation verification timed out."

    invoke-direct {v0, v1}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    .end local p1    # "finished":Z
    :catch_0
    move-exception v0

    move-object p1, v0

    .line 101
    .local p1, "e":Ljava/lang/InterruptedException;
    new-instance v0, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string v1, "Attestation verification was interrupted"

    invoke-direct {v0, v1, p1}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
