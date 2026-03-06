.class public final Lcom/android/server/security/advancedprotection/features/DisallowCellular2GAdvancedProtectionHook;
.super Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;
.source "DisallowCellular2GAdvancedProtectionHook.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdvancedProtectionDisallowCellular2G"


# instance fields
.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mFeature:Landroid/security/advancedprotection/AdvancedProtectionFeature;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;-><init>(Landroid/content/Context;Z)V

    .line 34
    new-instance v0, Landroid/security/advancedprotection/AdvancedProtectionFeature;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/security/advancedprotection/AdvancedProtectionFeature;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/features/DisallowCellular2GAdvancedProtectionHook;->mFeature:Landroid/security/advancedprotection/AdvancedProtectionFeature;

    .line 41
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/features/DisallowCellular2GAdvancedProtectionHook;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/features/DisallowCellular2GAdvancedProtectionHook;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 44
    invoke-virtual {p0, p2}, Lcom/android/server/security/advancedprotection/features/DisallowCellular2GAdvancedProtectionHook;->onAdvancedProtectionChanged(Z)V

    .line 45
    return-void
.end method


# virtual methods
.method public getFeature()Landroid/security/advancedprotection/AdvancedProtectionFeature;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/DisallowCellular2GAdvancedProtectionHook;->mFeature:Landroid/security/advancedprotection/AdvancedProtectionFeature;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/DisallowCellular2GAdvancedProtectionHook;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onAdvancedProtectionChanged(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 60
    const-string/jumbo v0, "no_cellular_2g"

    const-string v1, "android.security.advancedprotection"

    const-string v2, "AdvancedProtectionDisallowCellular2G"

    if-eqz p1, :cond_0

    .line 61
    const-string v3, "Setting DISALLOW_CELLULAR_2G_GLOBALLY restriction"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v2, p0, Lcom/android/server/security/advancedprotection/features/DisallowCellular2GAdvancedProtectionHook;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v1, v0}, Landroid/app/admin/DevicePolicyManager;->addUserRestrictionGlobally(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_0
    const-string v3, "Clearing DISALLOW_CELLULAR_2G_GLOBALLY restriction"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v2, p0, Lcom/android/server/security/advancedprotection/features/DisallowCellular2GAdvancedProtectionHook;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v1, v0}, Landroid/app/admin/DevicePolicyManager;->clearUserRestrictionGlobally(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :goto_0
    return-void
.end method
