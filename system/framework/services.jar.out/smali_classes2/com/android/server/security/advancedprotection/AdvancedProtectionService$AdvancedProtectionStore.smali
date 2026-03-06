.class Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;
.super Ljava/lang/Object;
.source "AdvancedProtectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/advancedprotection/AdvancedProtectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdvancedProtectionStore"
.end annotation


# static fields
.field static final OFF:I = 0x0

.field static final ON:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    iput-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;->mContext:Landroid/content/Context;

    .line 478
    return-void
.end method


# virtual methods
.method retrieveAdvancedProtectionModeEnabled()Z
    .locals 3

    .line 487
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "advanced_protection_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method retrieveInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 498
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method storeAdvancedProtectionModeEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 481
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 482
    nop

    .line 481
    const-string v1, "advanced_protection_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 484
    return-void
.end method

.method storeInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 492
    iget-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$AdvancedProtectionStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 495
    return-void
.end method
