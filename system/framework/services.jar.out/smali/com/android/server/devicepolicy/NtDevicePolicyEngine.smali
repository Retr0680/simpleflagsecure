.class final Lcom/android/server/devicepolicy/NtDevicePolicyEngine;
.super Ljava/lang/Object;
.source "NtDevicePolicyEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/NtDevicePolicyEngine$StabilityDeathRecipient;
    }
.end annotation


# static fields
.field private static final DEVICE_TYPE_CBT:Ljava/lang/String; = "CBT"

.field private static final INSTALLMENT_FLAG_ENROLLED:I = 0x1

.field private static final INSTALLMENT_FLAG_NOT_ENROLLED:I = 0x0

.field private static final PACKAGE_DLC:Ljava/lang/String; = "com.google.android.devicelockcontroller"

.field private static final PACKAGE_TEST_DPC:Ljava/lang/String; = "com.afwsamples.testdpc"

.field private static final POLICY_NO_BT_SHARING:Ljava/lang/String; = "userRestriction_no_bluetooth_sharing"

.field private static final POLICY_NO_SAFE_BOOT:Ljava/lang/String; = "userRestriction_no_safe_boot"

.field private static final PROP_DEVICE_TYPE:Ljava/lang/String; = "sys.device.type"

.field static final TAG:Ljava/lang/String; = "NtDevicePolicyEngine"


# instance fields
.field private mDeathRecipientStable:Lcom/android/server/devicepolicy/NtDevicePolicyEngine$StabilityDeathRecipient;

.field private mStability:Lvendor/noth/hardware/stability/IStability;

.field private mStabilityBinder:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic -$$Nest$minitStabilityAIDL(Lcom/android/server/devicepolicy/NtDevicePolicyEngine;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/NtDevicePolicyEngine;->initStabilityAIDL()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetHalInterface(Lcom/android/server/devicepolicy/NtDevicePolicyEngine;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/NtDevicePolicyEngine;->resetHalInterface()V

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/devicepolicy/NtDevicePolicyEngine;->mDeathRecipientStable:Lcom/android/server/devicepolicy/NtDevicePolicyEngine$StabilityDeathRecipient;

    .line 36
    iput-object v0, p0, Lcom/android/server/devicepolicy/NtDevicePolicyEngine;->mStabilityBinder:Landroid/os/IBinder;

    .line 53
    invoke-direct {p0}, Lcom/android/server/devicepolicy/NtDevicePolicyEngine;->initStabilityAIDL()V

    .line 54
    return-void
.end method

.method private initStabilityAIDL()V
    .locals 5

    .line 140
    const-string/jumbo v0, "initStabilityAIDL"

    const-string v1, "NtDevicePolicyEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v0, Lcom/android/server/devicepolicy/NtDevicePolicyEngine$StabilityDeathRecipient;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/devicepolicy/NtDevicePolicyEngine$StabilityDeathRecipient;-><init>(Lcom/android/server/devicepolicy/NtDevicePolicyEngine;Lcom/android/server/devicepolicy/NtDevicePolicyEngine-IA;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NtDevicePolicyEngine;->mDeathRecipientStable:Lcom/android/server/devicepolicy/NtDevicePolicyEngine$StabilityDeathRecipient;

    .line 144
    :try_start_0
    const-string/jumbo v0, "vendor.noth.hardware.stability.IStability/default"

    .line 145
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 144
    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/NtDevicePolicyEngine;->mStabilityBinder:Landroid/os/IBinder;

    .line 146
    iget-object v0, p0, Lcom/android/server/devicepolicy/NtDevicePolicyEngine;->mStabilityBinder:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 147
    const-string v0, "Failed to get stability aidl binder"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void

    .line 165
    :catch_0
    move-exception v0

    goto :goto_1

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/NtDevicePolicyEngine;->mStabilityBinder:Landroid/os/IBinder;

    .line 152
    invoke-static {v0}, Lvendor/noth/hardware/stability/IStability$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/noth/hardware/stability/IStability;

    move-result-object v0

    .line 154
    .local v0, "iStability":Lvendor/noth/hardware/stability/IStability;
    if-nez v0, :cond_1

    .line 155
    const-string v2, "Failed to get binder for stability aidl hal"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    return-void

    .line 160
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/NtDevicePolicyEngine;->mStabilityBinder:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/devicepolicy/NtDevicePolicyEngine;->mDeathRecipientStable:Lcom/android/server/devicepolicy/NtDevicePolicyEngine$StabilityDeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 163
    goto :goto_0

    .line 161
    :catch_1
    move-exception v2

    nop

    .line 162
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Failed to linkToDeath for istability service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_0
    iput-object v0, p0, Lcom/android/server/devicepolicy/NtDevicePolicyEngine;->mStability:Lvendor/noth/hardware/stability/IStability;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 167
    .end local v0    # "iStability":Lvendor/noth/hardware/stability/IStability;
    goto :goto_2

    .line 165
    :goto_1
    nop

    .line 166
    .local v0, "se":Ljava/lang/SecurityException;
    const-string v2, "Failed to bind stability aidl service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .end local v0    # "se":Ljava/lang/SecurityException;
    :goto_2
    return-void
.end method

.method private logInstallmentFlagState()V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/android/server/devicepolicy/NtDevicePolicyEngine;->mStability:Lvendor/noth/hardware/stability/IStability;

    const-string v1, "NtDevicePolicyEngine"

    if-nez v0, :cond_0

    .line 94
    const-string/jumbo v0, "mStability is null when calling NTStabilityGetInstallmentFlag"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void

    .line 98
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/NtDevicePolicyEngine;->mStability:Lvendor/noth/hardware/stability/IStability;

    invoke-interface {v0}, Lvendor/noth/hardware/stability/IStability;->NTStabilityGetInstallmentFlag()I

    move-result v0

    .line 99
    .local v0, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current DLC installment flag state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    nop

    .end local v0    # "result":I
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException when calling NTStabilityGetInstallmentFlag"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private resetHalInterface()V
    .locals 4

    .line 119
    const-string/jumbo v0, "resetHalInterface: Reset HAL interface"

    const-string v1, "NtDevicePolicyEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/android/server/devicepolicy/NtDevicePolicyEngine;->mStabilityBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/NtDevicePolicyEngine;->mStabilityBinder:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/devicepolicy/NtDevicePolicyEngine;->mDeathRecipientStable:Lcom/android/server/devicepolicy/NtDevicePolicyEngine$StabilityDeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/devicepolicy/NtDevicePolicyEngine;->mStabilityBinder:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "Failed to resetHalInterface: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private setInstallmentFlag(ILjava/lang/String;)V
    .locals 4
    .param p1, "flagValue"    # I
    .param p2, "context"    # Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/android/server/devicepolicy/NtDevicePolicyEngine;->mStability:Lvendor/noth/hardware/stability/IStability;

    const-string v1, "NtDevicePolicyEngine"

    if-nez v0, :cond_0

    .line 107
    const-string/jumbo v0, "mStability is null when calling NTStabilitySetInstallmentFlag"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void

    .line 111
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/NtDevicePolicyEngine;->mStability:Lvendor/noth/hardware/stability/IStability;

    invoke-interface {v0, p1}, Lvendor/noth/hardware/stability/IStability;->NTStabilitySetInstallmentFlag(I)I

    move-result v0

    .line 112
    .local v0, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - Set installment flag to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    nop

    .end local v0    # "result":I
    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException when calling NTStabilitySetInstallmentFlag"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method protected onLocalPolicyChangedLockedWithState(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;IZ)V
    .locals 7
    .param p2, "enforcingAdmin"    # Lcom/android/server/devicepolicy/EnforcingAdmin;
    .param p3, "userId"    # I
    .param p4, "isRemove"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/devicepolicy/PolicyDefinition<",
            "TV;>;",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            "IZ)V"
        }
    .end annotation

    .line 61
    .local p1, "policyDefinition":Lcom/android/server/devicepolicy/PolicyDefinition;, "Lcom/android/server/devicepolicy/PolicyDefinition<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "policyDefinition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enforcingAdmin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isRemove = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NtDevicePolicyEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v0

    instance-of v0, v0, Landroid/app/admin/UserRestrictionPolicyKey;

    if-nez v0, :cond_0

    .line 67
    return-void

    .line 70
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v0

    check-cast v0, Landroid/app/admin/UserRestrictionPolicyKey;

    .line 71
    .local v0, "key":Landroid/app/admin/UserRestrictionPolicyKey;
    invoke-virtual {v0}, Landroid/app/admin/UserRestrictionPolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "identifier":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "packageName":Ljava/lang/String;
    const-string/jumbo v4, "sys.device.type"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "deviceType":Ljava/lang/String;
    const-string/jumbo v5, "userRestriction_no_safe_boot"

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "com.google.android.devicelockcontroller"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 76
    const-string v5, "Detected no_safe_boot restriction being updated by Google DLC"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-direct {p0}, Lcom/android/server/devicepolicy/NtDevicePolicyEngine;->logInstallmentFlagState()V

    .line 78
    xor-int/lit8 v5, p4, 0x1

    .line 79
    .local v5, "flagValue":I
    const-string v6, "Google DLC"

    invoke-direct {p0, v5, v6}, Lcom/android/server/devicepolicy/NtDevicePolicyEngine;->setInstallmentFlag(ILjava/lang/String;)V

    .line 83
    .end local v5    # "flagValue":I
    :cond_1
    const-string/jumbo v5, "userRestriction_no_bluetooth_sharing"

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "com.afwsamples.testdpc"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 84
    const-string v5, "CBT"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 85
    const-string v5, "Detected no_bluetooth_sharing restriction being enforced by TestDPC"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct {p0}, Lcom/android/server/devicepolicy/NtDevicePolicyEngine;->logInstallmentFlagState()V

    .line 87
    const/4 v1, 0x0

    const-string v5, "TestDPC reset ntinstallment. Just for test."

    invoke-direct {p0, v1, v5}, Lcom/android/server/devicepolicy/NtDevicePolicyEngine;->setInstallmentFlag(ILjava/lang/String;)V

    .line 90
    :cond_2
    return-void
.end method
