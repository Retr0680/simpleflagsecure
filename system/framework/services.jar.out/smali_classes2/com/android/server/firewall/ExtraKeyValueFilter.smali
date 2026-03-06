.class Lcom/android/server/firewall/ExtraKeyValueFilter;
.super Ljava/lang/Object;
.source "ExtraKeyValueFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final FACTORY:Lcom/android/server/firewall/FilterFactory;


# instance fields
.field private final mKeyFilter:Ljava/lang/String;

.field private final mValueFilter:Lcom/android/server/firewall/StringFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lcom/android/server/firewall/ExtraKeyValueFilter$1;

    const-string v1, "extra"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/ExtraKeyValueFilter$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/ExtraKeyValueFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/android/server/firewall/StringFilter;)V
    .locals 0
    .param p1, "keyFilter"    # Ljava/lang/String;
    .param p2, "valueFilter"    # Lcom/android/server/firewall/StringFilter;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/server/firewall/ExtraKeyValueFilter;->mKeyFilter:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/android/server/firewall/ExtraKeyValueFilter;->mValueFilter:Lcom/android/server/firewall/StringFilter;

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/firewall/StringFilter;Lcom/android/server/firewall/ExtraKeyValueFilter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/firewall/ExtraKeyValueFilter;-><init>(Ljava/lang/String;Lcom/android/server/firewall/StringFilter;)V

    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .locals 3
    .param p1, "ifw"    # Lcom/android/server/firewall/IntentFirewall;
    .param p2, "resolvedComponent"    # Landroid/content/ComponentName;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "callerUid"    # I
    .param p5, "callerPid"    # I
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "receivingUid"    # I

    .line 44
    nop

    .line 47
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 48
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/android/server/firewall/ExtraKeyValueFilter;->mValueFilter:Lcom/android/server/firewall/StringFilter;

    iget-object v2, p0, Lcom/android/server/firewall/ExtraKeyValueFilter;->mKeyFilter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/firewall/StringFilter;->matchesValue(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
