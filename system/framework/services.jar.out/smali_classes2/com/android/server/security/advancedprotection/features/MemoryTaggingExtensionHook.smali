.class public final Lcom/android/server/security/advancedprotection/features/MemoryTaggingExtensionHook;
.super Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;
.source "MemoryTaggingExtensionHook.java"


# static fields
.field private static final MTE_DPM_SYSTEM_PROPERTY:Ljava/lang/String; = "ro.arm64.memtag.bootctl_device_policy_manager"

.field private static final MTE_SETTINGS_SYSTEM_PROPERTY:Ljava/lang/String; = "ro.arm64.memtag.bootctl_settings_toggle"

.field private static final TAG:Ljava/lang/String; = "AdvancedProtectionMTE"


# instance fields
.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mFeature:Landroid/security/advancedprotection/AdvancedProtectionFeature;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;-><init>(Landroid/content/Context;Z)V

    .line 38
    new-instance v0, Landroid/security/advancedprotection/AdvancedProtectionFeature;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/security/advancedprotection/AdvancedProtectionFeature;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/features/MemoryTaggingExtensionHook;->mFeature:Landroid/security/advancedprotection/AdvancedProtectionFeature;

    .line 45
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/features/MemoryTaggingExtensionHook;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 46
    invoke-virtual {p0, p2}, Lcom/android/server/security/advancedprotection/features/MemoryTaggingExtensionHook;->onAdvancedProtectionChanged(Z)V

    .line 47
    return-void
.end method


# virtual methods
.method public getFeature()Landroid/security/advancedprotection/AdvancedProtectionFeature;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/features/MemoryTaggingExtensionHook;->mFeature:Landroid/security/advancedprotection/AdvancedProtectionFeature;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 57
    nop

    .line 58
    const-string/jumbo v0, "ro.arm64.memtag.bootctl_settings_toggle"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 57
    const-string/jumbo v1, "ro.arm64.memtag.bootctl_device_policy_manager"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onAdvancedProtectionChanged(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 63
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/features/MemoryTaggingExtensionHook;->isAvailable()Z

    move-result v0

    const-string v1, "AdvancedProtectionMTE"

    if-nez v0, :cond_0

    .line 64
    const-string v0, "MTE unavailable on device, skipping."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void

    .line 68
    :cond_0
    if-eqz p1, :cond_1

    .line 69
    const/4 v0, 0x1

    .local v0, "mtePolicy":I
    goto :goto_0

    .line 71
    .end local v0    # "mtePolicy":I
    :cond_1
    const/4 v0, 0x0

    .line 74
    .restart local v0    # "mtePolicy":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting MTE state to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :try_start_0
    iget-object v2, p0, Lcom/android/server/security/advancedprotection/features/MemoryTaggingExtensionHook;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const-string v3, "android.security.advancedprotection"

    invoke-virtual {v2, v3, v0}, Landroid/app/admin/DevicePolicyManager;->setMtePolicy(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_1

    .line 77
    :catch_0
    move-exception v2

    .line 78
    .local v2, "e":Ljava/lang/UnsupportedOperationException;
    const-string v3, "Setting MTE policy unsupported"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    .end local v2    # "e":Ljava/lang/UnsupportedOperationException;
    :goto_1
    return-void
.end method
