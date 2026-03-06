.class public final Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "SecureLockDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 110
    new-instance v0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;

    invoke-direct {v0, p1}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$Lifecycle;->mService:Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;

    .line 111
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 115
    const-string v0, "Starting SecureLockDeviceService"

    const-string v1, "SecureLockDeviceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$Lifecycle;->mService:Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;

    invoke-static {v0}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->-$$Nest$mstart(Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;)V

    .line 117
    const-string v0, "Started SecureLockDeviceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method
