.class public Lcom/android/server/security/intrusiondetection/SecurityLogSource;
.super Ljava/lang/Object;
.source "SecurityLogSource.java"

# interfaces
.implements Lcom/android/server/security/intrusiondetection/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IntrusionDetection SecurityLogSource"


# instance fields
.field private mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

.field private mEventCallback:Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDataAggregator(Lcom/android/server/security/intrusiondetection/SecurityLogSource;)Lcom/android/server/security/intrusiondetection/DataAggregator;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/security/intrusiondetection/DataAggregator;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataAggregator"    # Lcom/android/server/security/intrusiondetection/DataAggregator;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

    .line 45
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 46
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 47
    new-instance v0, Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;-><init>(Lcom/android/server/security/intrusiondetection/SecurityLogSource;Lcom/android/server/security/intrusiondetection/SecurityLogSource-IA;)V

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mEventCallback:Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;

    .line 48
    return-void
.end method

.method private disableAuditLog()V
    .locals 2

    .line 73
    invoke-direct {p0}, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->isAuditLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->setAuditLogEnabled(Z)V

    .line 76
    :cond_0
    return-void
.end method

.method private enableAuditLog()V
    .locals 2

    .line 66
    invoke-direct {p0}, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->isAuditLogEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->setAuditLogEnabled(Z)V

    .line 69
    :cond_0
    return-void
.end method

.method private isAuditLogEnabled()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isAuditLogEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public disable()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->setInternalEventsCallback(Ljava/util/function/Consumer;)V

    .line 61
    invoke-direct {p0}, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->disableAuditLog()V

    .line 62
    return-void
.end method

.method public enable()V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->enableAuditLog()V

    .line 54
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    iget-object v1, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mEventCallback:Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->setInternalEventsCallback(Ljava/util/function/Consumer;)V

    .line 55
    return-void
.end method
