.class final Lcom/android/server/devicepolicy/StringSetIntersection;
.super Lcom/android/server/devicepolicy/ResolutionMechanism;
.source "StringSetIntersection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/devicepolicy/ResolutionMechanism<",
        "Ljava/util/Set<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/server/devicepolicy/ResolutionMechanism;-><init>()V

    return-void
.end method


# virtual methods
.method bridge synthetic getParcelableResolutionMechanism()Landroid/app/admin/ResolutionMechanism;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/StringSetIntersection;->getParcelableResolutionMechanism()Landroid/app/admin/StringSetIntersection;

    move-result-object v0

    return-object v0
.end method

.method getParcelableResolutionMechanism()Landroid/app/admin/StringSetIntersection;
    .locals 1

    .line 52
    new-instance v0, Landroid/app/admin/StringSetIntersection;

    invoke-direct {v0}, Landroid/app/admin/StringSetIntersection;-><init>()V

    return-object v0
.end method

.method resolve(Ljava/util/LinkedHashMap;)Landroid/app/admin/PolicyValue;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Lcom/android/server/devicepolicy/EnforcingAdmin;",
            "Landroid/app/admin/PolicyValue<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Landroid/app/admin/PolicyValue<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 33
    .local p1, "adminPolicies":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue<Ljava/util/Set<Ljava/lang/String;>;>;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "intersectionOfPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/PolicyValue;

    .line 36
    .local v2, "policy":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<Ljava/util/Set<Ljava/lang/String;>;>;"
    if-nez v0, :cond_0

    .line 37
    new-instance v3, Ljava/util/HashSet;

    invoke-virtual {v2}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v3

    .end local v0    # "intersectionOfPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v3, "intersectionOfPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_1

    .line 39
    .end local v3    # "intersectionOfPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v0    # "intersectionOfPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v2}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v0, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 41
    .end local v2    # "policy":Landroid/app/admin/PolicyValue;, "Landroid/app/admin/PolicyValue<Ljava/util/Set<Ljava/lang/String;>;>;"
    :goto_1
    goto :goto_0

    .line 42
    :cond_1
    if-nez v0, :cond_2

    .line 43
    const/4 v1, 0x0

    return-object v1

    .line 47
    :cond_2
    new-instance v1, Landroid/app/admin/PackageSetPolicyValue;

    invoke-direct {v1, v0}, Landroid/app/admin/PackageSetPolicyValue;-><init>(Ljava/util/Set;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "StringSetIntersection {}"

    return-object v0
.end method
