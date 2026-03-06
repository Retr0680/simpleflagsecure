.class Lcom/android/server/selinux/SelinuxAuditLogsCollector$DefaultDomainSupplier;
.super Ljava/lang/Object;
.source "SelinuxAuditLogsCollector.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/selinux/SelinuxAuditLogsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultDomainSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/selinux/SelinuxAuditLogsCollector-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/selinux/SelinuxAuditLogsCollector$DefaultDomainSupplier;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/android/server/selinux/SelinuxAuditLogsCollector$DefaultDomainSupplier;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 3

    .line 81
    invoke-static {}, Lcom/android/server/selinux/SelinuxAuditLogsService;->enabledForAllDomains()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "\\w+"

    return-object v0

    .line 84
    :cond_0
    const-string/jumbo v0, "selinux_audit_domain"

    const-string/jumbo v1, "no_match^"

    const-string v2, "adservices"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
