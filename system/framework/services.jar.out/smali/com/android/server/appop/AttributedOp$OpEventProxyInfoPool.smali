.class Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;
.super Landroid/util/Pools$SimplePool;
.source "AttributedOp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AttributedOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OpEventProxyInfoPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Pools$SimplePool<",
        "Landroid/app/AppOpsManager$OpEventProxyInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "maxUnusedPooledObjects"    # I

    .line 922
    invoke-direct {p0, p1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    .line 923
    return-void
.end method


# virtual methods
.method acquire(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$OpEventProxyInfo;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "deviceId"    # Ljava/lang/String;

    .line 930
    invoke-virtual {p0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 931
    .local v0, "recycled":Landroid/app/AppOpsManager$OpEventProxyInfo;
    if-eqz v0, :cond_0

    .line 932
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/AppOpsManager$OpEventProxyInfo;->reinit(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    return-object v0

    .line 936
    :cond_0
    new-instance v1, Landroid/app/AppOpsManager$OpEventProxyInfo;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
