.class Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;
.super Landroid/content/IntentFilter;
.source "IntentFirewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/IntentFirewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirewallIntentFilter"
.end annotation


# instance fields
.field private final rule:Lcom/android/server/firewall/IntentFirewall$Rule;


# direct methods
.method static bridge synthetic -$$Nest$fgetrule(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;)Lcom/android/server/firewall/IntentFirewall$Rule;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;->rule:Lcom/android/server/firewall/IntentFirewall$Rule;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/firewall/IntentFirewall$Rule;)V
    .locals 0
    .param p1, "rule"    # Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 620
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 621
    iput-object p1, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;->rule:Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 622
    return-void
.end method
