.class public Lcom/android/server/security/advancedprotection/features/DisallowWepAdvancedProtectionProvider;
.super Lcom/android/server/security/advancedprotection/features/AdvancedProtectionProvider;
.source "DisallowWepAdvancedProtectionProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getFeatures(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/security/advancedprotection/AdvancedProtectionFeature;",
            ">;"
        }
    .end annotation

    .line 28
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 29
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getAvailableAdvancedProtectionFeatures()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
