.class public final Lcom/android/server/security/advancedprotection/AdvancedProtectionService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "AdvancedProtectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/advancedprotection/AdvancedProtectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 448
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 449
    new-instance v0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;-><init>(Landroid/content/Context;Lcom/android/server/security/advancedprotection/AdvancedProtectionService-IA;)V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$Lifecycle;->mService:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    .line 450
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    .line 459
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$Lifecycle;->mService:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-static {v0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->-$$Nest$misAdvancedProtectionEnabledInternal(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)Z

    move-result v0

    .line 461
    .local v0, "enabled":Z
    if-eqz v0, :cond_0

    .line 462
    const-string v1, "AdvancedProtectionService"

    const-string v2, "Advanced protection is enabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_0
    iget-object v1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$Lifecycle;->mService:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-static {v1, v0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->-$$Nest$minitFeatures(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;Z)V

    .line 465
    iget-object v1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$Lifecycle;->mService:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-static {v1}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->-$$Nest$minitLogging(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;)V

    .line 467
    .end local v0    # "enabled":Z
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 454
    const-string v0, "advanced_protection"

    iget-object v1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$Lifecycle;->mService:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 455
    return-void
.end method
