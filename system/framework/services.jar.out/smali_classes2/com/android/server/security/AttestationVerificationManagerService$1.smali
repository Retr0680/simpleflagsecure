.class Lcom/android/server/security/AttestationVerificationManagerService$1;
.super Landroid/security/attestationverification/IAttestationVerificationManagerService$Stub;
.source "AttestationVerificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/AttestationVerificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/security/AttestationVerificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/security/AttestationVerificationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/security/AttestationVerificationManagerService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationManagerService$1;->this$0:Lcom/android/server/security/AttestationVerificationManagerService;

    invoke-direct {p0}, Landroid/security/attestationverification/IAttestationVerificationManagerService$Stub;-><init>()V

    return-void
.end method

.method private enforceUsePermission()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/android/server/security/AttestationVerificationManagerService$1;->this$0:Lcom/android/server/security/AttestationVerificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_ATTESTATION_VERIFICATION_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/android/server/security/AttestationVerificationManagerService$1;->this$0:Lcom/android/server/security/AttestationVerificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AVF"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p2, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 106
    .local v0, "fout":Landroid/util/IndentingPrintWriter;
    const-string v1, "AttestationVerificationManagerService"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 108
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 110
    const-string v1, "Event Log:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 112
    iget-object v1, p0, Lcom/android/server/security/AttestationVerificationManagerService$1;->this$0:Lcom/android/server/security/AttestationVerificationManagerService;

    invoke-static {v1}, Lcom/android/server/security/AttestationVerificationManagerService;->-$$Nest$fgetmDumpLogger(Lcom/android/server/security/AttestationVerificationManagerService;)Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;->dumpTo(Landroid/util/IndentingPrintWriter;)V

    .line 113
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 114
    return-void
.end method

.method public verifyAttestation(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;[BLcom/android/internal/infra/AndroidFuture;)V
    .locals 8
    .param p1, "profile"    # Landroid/security/attestationverification/AttestationProfile;
    .param p2, "localBindingType"    # I
    .param p3, "requirements"    # Landroid/os/Bundle;
    .param p4, "attestation"    # [B
    .param p5, "resultCallback"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    const-string v1, "AVF"

    invoke-direct {p0}, Lcom/android/server/security/AttestationVerificationManagerService$1;->enforceUsePermission()V

    .line 78
    :try_start_0
    const-string/jumbo v0, "verifyAttestation"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v2, p0, Lcom/android/server/security/AttestationVerificationManagerService$1;->this$0:Lcom/android/server/security/AttestationVerificationManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .end local p1    # "profile":Landroid/security/attestationverification/AttestationProfile;
    .end local p2    # "localBindingType":I
    .end local p3    # "requirements":Landroid/os/Bundle;
    .end local p4    # "attestation":[B
    .end local p5    # "resultCallback":Lcom/android/internal/infra/AndroidFuture;
    .local v3, "profile":Landroid/security/attestationverification/AttestationProfile;
    .local v4, "localBindingType":I
    .local v5, "requirements":Landroid/os/Bundle;
    .local v6, "attestation":[B
    .local v7, "resultCallback":Lcom/android/internal/infra/AndroidFuture;
    :try_start_1
    invoke-static/range {v2 .. v7}, Lcom/android/server/security/AttestationVerificationManagerService;->-$$Nest$mverifyAttestationForAllVerifiers(Lcom/android/server/security/AttestationVerificationManagerService;Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;[BLcom/android/internal/infra/AndroidFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    nop

    .line 85
    return-void

    .line 81
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "profile":Landroid/security/attestationverification/AttestationProfile;
    .end local v4    # "localBindingType":I
    .end local v5    # "requirements":Landroid/os/Bundle;
    .end local v6    # "attestation":[B
    .end local v7    # "resultCallback":Lcom/android/internal/infra/AndroidFuture;
    .restart local p1    # "profile":Landroid/security/attestationverification/AttestationProfile;
    .restart local p2    # "localBindingType":I
    .restart local p3    # "requirements":Landroid/os/Bundle;
    .restart local p4    # "attestation":[B
    .restart local p5    # "resultCallback":Lcom/android/internal/infra/AndroidFuture;
    :catchall_1
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object p1, v0

    .line 82
    .end local p2    # "localBindingType":I
    .end local p3    # "requirements":Landroid/os/Bundle;
    .end local p4    # "attestation":[B
    .end local p5    # "resultCallback":Lcom/android/internal/infra/AndroidFuture;
    .restart local v3    # "profile":Landroid/security/attestationverification/AttestationProfile;
    .restart local v4    # "localBindingType":I
    .restart local v5    # "requirements":Landroid/os/Bundle;
    .restart local v6    # "attestation":[B
    .restart local v7    # "resultCallback":Lcom/android/internal/infra/AndroidFuture;
    .local p1, "t":Ljava/lang/Throwable;
    :goto_0
    const-string p2, "failed to verify attestation"

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    const-class p2, Landroid/os/RemoteException;

    invoke-static {p1, p2}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public verifyToken(Landroid/security/attestationverification/VerificationToken;Landroid/os/ParcelDuration;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 1
    .param p1, "token"    # Landroid/security/attestationverification/VerificationToken;
    .param p2, "parcelDuration"    # Landroid/os/ParcelDuration;
    .param p3, "resultCallback"    # Lcom/android/internal/infra/AndroidFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/android/server/security/AttestationVerificationManagerService$1;->enforceUsePermission()V

    .line 92
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
