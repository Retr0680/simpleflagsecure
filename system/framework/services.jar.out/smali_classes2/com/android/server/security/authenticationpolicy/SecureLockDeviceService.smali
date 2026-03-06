.class public Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;
.super Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;
.source "SecureLockDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$Lifecycle;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SecureLockDeviceService"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$mstart(Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->start()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method private start()V
    .locals 1

    .line 52
    const-class v0, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 53
    return-void
.end method


# virtual methods
.method public disableSecureLockDevice(Landroid/security/authenticationpolicy/DisableSecureLockDeviceParams;)I
    .locals 1
    .param p1, "params"    # Landroid/security/authenticationpolicy/DisableSecureLockDeviceParams;

    .line 99
    const/4 v0, 0x2

    return v0
.end method

.method public enableSecureLockDevice(Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;)I
    .locals 1
    .param p1, "params"    # Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;

    .line 76
    const/4 v0, 0x2

    return v0
.end method
