.class public abstract Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;
.super Ljava/lang/Object;
.source "SecureLockDeviceServiceInternal.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SecureLockDeviceServiceInternal"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract disableSecureLockDevice(Landroid/security/authenticationpolicy/DisableSecureLockDeviceParams;)I
.end method

.method public abstract enableSecureLockDevice(Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;)I
.end method
