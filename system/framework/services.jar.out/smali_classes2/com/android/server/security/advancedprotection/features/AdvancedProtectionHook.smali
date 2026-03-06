.class public abstract Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;
.super Ljava/lang/Object;
.source "AdvancedProtectionHook.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getFeature()Landroid/security/advancedprotection/AdvancedProtectionFeature;
.end method

.method public abstract isAvailable()Z
.end method

.method public onAdvancedProtectionChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 34
    return-void
.end method
