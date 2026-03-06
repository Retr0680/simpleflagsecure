.class public Lcom/android/server/appop/AppOpsRestrictionsImpl;
.super Ljava/lang/Object;
.source "AppOpsRestrictionsImpl.java"

# interfaces
.implements Lcom/android/server/appop/AppOpsRestrictions;


# static fields
.field private static final UID_ANY:I = -0x2


# instance fields
.field private mAppOpsRestrictionRemovedListener:Lcom/android/server/appop/AppOpsRestrictions$AppOpsRestrictionRemovedListener;

.field private mContext:Landroid/content/Context;

.field private final mGlobalRestrictions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Landroid/util/SparseArray<",
            "Landroid/os/PackageTagsList;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUserRestrictions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$CjDvL82V--Rfte21ogi7681bDSE(Lcom/android/server/appop/AppOpsRestrictionsImpl;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsRestrictionsImpl;->lambda$notifyAllUserRestrictions$0(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/appop/AppOpsRestrictions$AppOpsRestrictionRemovedListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "appOpsRestrictionRemovedListener"    # Lcom/android/server/appop/AppOpsRestrictions$AppOpsRestrictionRemovedListener;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    .line 52
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    .line 56
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    .line 61
    iput-object p1, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mHandler:Landroid/os/Handler;

    .line 63
    iput-object p3, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mAppOpsRestrictionRemovedListener:Lcom/android/server/appop/AppOpsRestrictions$AppOpsRestrictionRemovedListener;

    .line 64
    return-void
.end method

.method private collectAllUserRestrictedCodes(Ljava/lang/Object;)Landroid/util/SparseBooleanArray;
    .locals 9
    .param p1, "clientToken"    # Ljava/lang/Object;

    .line 212
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 213
    .local v0, "allRestrictedCodes":Landroid/util/SparseBooleanArray;
    iget-object v1, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 214
    .local v1, "userIdRestrictedCodes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    if-nez v1, :cond_0

    .line 215
    return-object v0

    .line 217
    :cond_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 218
    .local v2, "userIdRestrictedCodesSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 219
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseBooleanArray;

    .line 220
    .local v4, "restrictedCodes":Landroid/util/SparseBooleanArray;
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    .line 221
    .local v5, "restrictedCodesSize":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v5, :cond_1

    .line 222
    invoke-virtual {v4, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    .line 223
    .local v7, "code":I
    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 221
    .end local v7    # "code":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 218
    .end local v4    # "restrictedCodes":Landroid/util/SparseBooleanArray;
    .end local v5    # "restrictedCodesSize":I
    .end local v6    # "j":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 226
    .end local v3    # "i":I
    return-object v0
.end method

.method private getUserRestriction(Ljava/lang/Object;II)Z
    .locals 3
    .param p1, "clientToken"    # Ljava/lang/Object;
    .param p2, "userId"    # I
    .param p3, "code"    # I

    .line 166
    iget-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    .line 167
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 168
    .local v0, "userIdRestrictedCodes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 169
    return v1

    .line 171
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 172
    .local v2, "restrictedCodes":Landroid/util/SparseBooleanArray;
    if-nez v2, :cond_1

    .line 173
    return v1

    .line 175
    :cond_1
    invoke-virtual {v2, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    return v1
.end method

.method private synthetic lambda$notifyAllUserRestrictions$0(I)V
    .locals 1
    .param p1, "code"    # I

    .line 233
    iget-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mAppOpsRestrictionRemovedListener:Lcom/android/server/appop/AppOpsRestrictions$AppOpsRestrictionRemovedListener;

    invoke-interface {v0, p1}, Lcom/android/server/appop/AppOpsRestrictions$AppOpsRestrictionRemovedListener;->onAppOpsRestrictionRemoved(I)V

    return-void
.end method

.method private notifyAllUserRestrictions(Landroid/util/SparseBooleanArray;)V
    .locals 5
    .param p1, "allUserRestrictedCodes"    # Landroid/util/SparseBooleanArray;

    .line 230
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 231
    .local v0, "restrictedCodesSize":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 232
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 233
    .local v2, "code":I
    iget-object v3, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/appop/AppOpsRestrictionsImpl$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2}, Lcom/android/server/appop/AppOpsRestrictionsImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appop/AppOpsRestrictionsImpl;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    .end local v2    # "code":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 235
    .end local v1    # "j":I
    return-void
.end method

.method private putUserRestriction(Ljava/lang/Object;IIZ)Z
    .locals 4
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "userId"    # I
    .param p3, "code"    # I
    .param p4, "restricted"    # Z

    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "changed":Z
    if-eqz p4, :cond_2

    .line 270
    iget-object v1, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 274
    .local v1, "userIdRestrictedCodes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 277
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 279
    :cond_1
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 281
    .local v2, "restrictedCodes":Landroid/util/SparseBooleanArray;
    invoke-virtual {v2, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 282
    .end local v0    # "changed":Z
    .local v3, "changed":Z
    invoke-virtual {v2, p3, p4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 283
    .end local v1    # "userIdRestrictedCodes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    .end local v2    # "restrictedCodes":Landroid/util/SparseBooleanArray;
    goto :goto_0

    .line 284
    .end local v3    # "changed":Z
    .restart local v0    # "changed":Z
    :cond_2
    iget-object v1, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 285
    .restart local v1    # "userIdRestrictedCodes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 286
    return v2

    .line 288
    :cond_3
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    .line 289
    .local v3, "restrictedCodes":Landroid/util/SparseBooleanArray;
    if-nez v3, :cond_4

    .line 290
    return v2

    .line 292
    :cond_4
    invoke-virtual {v3, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 293
    invoke-virtual {v3, p3}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 294
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 295
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 297
    :cond_5
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_6

    .line 298
    iget-object v2, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .end local v1    # "userIdRestrictedCodes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    .end local v3    # "restrictedCodes":Landroid/util/SparseBooleanArray;
    :cond_6
    move v3, v0

    .end local v0    # "changed":Z
    .local v3, "changed":Z
    :goto_0
    return v3
.end method

.method private putUserRestrictionExclusions(Ljava/lang/Object;ILandroid/os/PackageTagsList;)Z
    .locals 5
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "userId"    # I
    .param p3, "excludedPackageTags"    # Landroid/os/PackageTagsList;

    .line 316
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/PackageTagsList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 317
    .local v2, "addingExclusions":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 318
    iget-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    .line 322
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 323
    .local v0, "userIdExcludedPackageTags":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/PackageTagsList;>;"
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 326
    return v1

    .line 328
    .end local v0    # "userIdExcludedPackageTags":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/PackageTagsList;>;"
    :cond_2
    iget-object v3, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    .line 329
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 330
    .local v3, "userIdExclusions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/PackageTagsList;>;"
    if-nez v3, :cond_3

    .line 331
    return v0

    .line 333
    :cond_3
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    move v0, v1

    .line 334
    .local v0, "changed":Z
    :cond_4
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 335
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 336
    iget-object v1, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_5
    return v0
.end method

.method private resolveUserId(I)[I
    .locals 4
    .param p1, "userId"    # I

    .line 145
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 150
    .local v0, "liveUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 151
    .local v1, "userIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 152
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    aput v3, v1, v2

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 154
    .end local v0    # "liveUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v2    # "i":I
    goto :goto_1

    .line 155
    .end local v1    # "userIds":[I
    :cond_1
    filled-new-array {p1}, [I

    move-result-object v0

    move-object v1, v0

    .line 157
    .restart local v1    # "userIds":[I
    :goto_1
    return-object v1
.end method


# virtual methods
.method public clearGlobalRestrictions(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "clientToken"    # Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 112
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 113
    invoke-static {}, Landroid/app/AppOpsManager;->invalidateAppOpModeCache()V

    .line 115
    :cond_1
    return v0
.end method

.method public clearUserRestrictions(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "clientToken"    # Ljava/lang/Object;

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "changed":Z
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsRestrictionsImpl;->collectAllUserRestrictedCodes(Ljava/lang/Object;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 202
    .local v1, "allUserRestrictedCodes":Landroid/util/SparseBooleanArray;
    iget-object v2, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int/2addr v0, v2

    .line 203
    iget-object v2, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    or-int/2addr v0, v3

    .line 204
    invoke-direct {p0, v1}, Lcom/android/server/appop/AppOpsRestrictionsImpl;->notifyAllUserRestrictions(Landroid/util/SparseBooleanArray;)V

    .line 205
    if-eqz v0, :cond_2

    .line 206
    invoke-static {}, Landroid/app/AppOpsManager;->invalidateAppOpModeCache()V

    .line 208
    :cond_2
    return v0
.end method

.method public clearUserRestrictions(Ljava/lang/Object;Ljava/lang/Integer;)Z
    .locals 4
    .param p1, "clientToken"    # Ljava/lang/Object;
    .param p2, "userId"    # Ljava/lang/Integer;

    .line 239
    const/4 v0, 0x0

    .line 241
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    .line 242
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 243
    .local v1, "userIdRestrictedCodes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    if-eqz v1, :cond_0

    .line 244
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    or-int/2addr v0, v2

    .line 245
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 246
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 247
    iget-object v2, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    .line 252
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 253
    .local v2, "userIdPackageTags":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/PackageTagsList;>;"
    if-eqz v2, :cond_1

    .line 254
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 255
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 256
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 257
    iget-object v3, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_1
    if-eqz v0, :cond_2

    .line 262
    invoke-static {}, Landroid/app/AppOpsManager;->invalidateAppOpModeCache()V

    .line 264
    :cond_2
    return v0
.end method

.method public dumpRestrictions(Ljava/io/PrintWriter;ILjava/lang/String;Z)V
    .locals 27
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "code"    # I
    .param p3, "dumpPackage"    # Ljava/lang/String;
    .param p4, "showUserRestrictions"    # Z

    .line 345
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 346
    .local v4, "globalRestrictionCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const-string v6, "]"

    const-string v7, ", "

    const-string v8, "["

    const-string v9, ":"

    const/4 v10, 0x1

    if-ge v5, v4, :cond_2

    .line 347
    iget-object v11, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    .line 348
    .local v11, "token":Ljava/lang/Object;
    iget-object v12, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v12, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseBooleanArray;

    .line 350
    .local v12, "restrictedOps":Landroid/util/SparseBooleanArray;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  Global restrictions for token "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .local v9, "restrictedOpsValue":Ljava/lang/StringBuilder;
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    .line 354
    .local v8, "restrictedOpCount":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    if-ge v13, v8, :cond_1

    .line 355
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-le v14, v10, :cond_0

    .line 356
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    :cond_0
    invoke-virtual {v12, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v14

    invoke-static {v14}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 360
    .end local v13    # "j":I
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      Restricted ops: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    .end local v8    # "restrictedOpCount":I
    .end local v9    # "restrictedOpsValue":Ljava/lang/StringBuilder;
    .end local v11    # "token":Ljava/lang/Object;
    .end local v12    # "restrictedOps":Landroid/util/SparseBooleanArray;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 364
    .end local v5    # "i":I
    if-nez p4, :cond_3

    .line 365
    return-void

    .line 368
    :cond_3
    iget-object v5, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 369
    .local v5, "userRestrictionCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v5, :cond_15

    .line 370
    iget-object v12, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    .line 371
    .local v12, "token":Ljava/lang/Object;
    iget-object v13, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseArray;

    .line 372
    .local v13, "perUserRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    iget-object v14, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    .line 373
    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/SparseArray;

    .line 375
    .local v14, "perUserExcludedPackageTags":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/PackageTagsList;>;"
    const/4 v15, 0x0

    .line 377
    .local v15, "printedTokenHeader":Z
    const/16 v16, 0x0

    if-eqz v13, :cond_4

    .line 378
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v17

    goto :goto_3

    :cond_4
    move/from16 v17, v16

    :goto_3
    move/from16 v18, v17

    .line 379
    .local v18, "restrictionCount":I
    const-string/jumbo v10, "user: "

    if-lez v18, :cond_c

    if-nez v3, :cond_c

    .line 380
    const/16 v19, 0x0

    .line 381
    .local v19, "printedOpsHeader":Z
    const/16 v20, 0x0

    move/from16 v0, v20

    .local v0, "j":I
    :goto_4
    move/from16 v20, v4

    move/from16 v4, v18

    .end local v18    # "restrictionCount":I
    .local v4, "restrictionCount":I
    .local v20, "globalRestrictionCount":I
    if-ge v0, v4, :cond_b

    .line 382
    move/from16 v18, v4

    .end local v4    # "restrictionCount":I
    .restart local v18    # "restrictionCount":I
    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 383
    .local v4, "userId":I
    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v22, v0

    .end local v0    # "j":I
    .local v22, "j":I
    move-object/from16 v0, v21

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 384
    .local v0, "restrictedOps":Landroid/util/SparseBooleanArray;
    if-nez v0, :cond_5

    .line 385
    goto :goto_5

    .line 387
    :cond_5
    if-ltz v2, :cond_6

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v21

    if-nez v21, :cond_6

    .line 388
    nop

    .line 381
    .end local v0    # "restrictedOps":Landroid/util/SparseBooleanArray;
    .end local v4    # "userId":I
    :goto_5
    move/from16 v21, v5

    move-object/from16 v24, v8

    const/4 v5, 0x1

    goto/16 :goto_8

    .line 390
    .restart local v0    # "restrictedOps":Landroid/util/SparseBooleanArray;
    .restart local v4    # "userId":I
    :cond_6
    if-nez v15, :cond_7

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v5

    .end local v5    # "userRestrictionCount":I
    .local v21, "userRestrictionCount":I
    const-string v5, "  User restrictions for token "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    const/4 v15, 0x1

    goto :goto_6

    .line 390
    .end local v21    # "userRestrictionCount":I
    .restart local v5    # "userRestrictionCount":I
    :cond_7
    move/from16 v21, v5

    .line 394
    .end local v5    # "userRestrictionCount":I
    .restart local v21    # "userRestrictionCount":I
    :goto_6
    if-nez v19, :cond_8

    .line 395
    const-string v2, "      Restricted ops:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    const/16 v19, 0x1

    .line 398
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    .local v2, "restrictedOpsValue":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    .line 401
    .local v5, "restrictedOpCount":I
    const/16 v23, 0x0

    move-object/from16 v24, v8

    move/from16 v8, v23

    .local v8, "k":I
    :goto_7
    if-ge v8, v5, :cond_a

    .line 402
    invoke-virtual {v0, v8}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v23

    .line 403
    .local v23, "restrictedOp":I
    move-object/from16 v25, v0

    .end local v0    # "restrictedOps":Landroid/util/SparseBooleanArray;
    .local v25, "restrictedOps":Landroid/util/SparseBooleanArray;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    move/from16 v26, v5

    const/4 v5, 0x1

    .end local v5    # "restrictedOpCount":I
    .local v26, "restrictedOpCount":I
    if-le v0, v5, :cond_9

    .line 404
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :cond_9
    invoke-static/range {v23 .. v23}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .end local v23    # "restrictedOp":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v25

    move/from16 v5, v26

    goto :goto_7

    .end local v25    # "restrictedOps":Landroid/util/SparseBooleanArray;
    .end local v26    # "restrictedOpCount":I
    .restart local v0    # "restrictedOps":Landroid/util/SparseBooleanArray;
    .restart local v5    # "restrictedOpCount":I
    :cond_a
    move-object/from16 v25, v0

    move/from16 v26, v5

    const/4 v5, 0x1

    .line 408
    .end local v0    # "restrictedOps":Landroid/util/SparseBooleanArray;
    .end local v5    # "restrictedOpCount":I
    .end local v8    # "k":I
    .restart local v25    # "restrictedOps":Landroid/util/SparseBooleanArray;
    .restart local v26    # "restrictedOpCount":I
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    const-string v0, "        "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 412
    const-string v0, " restricted ops: "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 381
    .end local v2    # "restrictedOpsValue":Ljava/lang/StringBuilder;
    .end local v4    # "userId":I
    .end local v25    # "restrictedOps":Landroid/util/SparseBooleanArray;
    .end local v26    # "restrictedOpCount":I
    :goto_8
    add-int/lit8 v0, v22, 0x1

    move/from16 v2, p2

    move/from16 v4, v20

    move/from16 v5, v21

    move-object/from16 v8, v24

    .end local v22    # "j":I
    .local v0, "j":I
    goto/16 :goto_4

    .end local v18    # "restrictionCount":I
    .end local v21    # "userRestrictionCount":I
    .local v4, "restrictionCount":I
    .local v5, "userRestrictionCount":I
    :cond_b
    move/from16 v22, v0

    move/from16 v18, v4

    move/from16 v21, v5

    move-object/from16 v24, v8

    const/4 v5, 0x1

    .end local v0    # "j":I
    .end local v4    # "restrictionCount":I
    .end local v5    # "userRestrictionCount":I
    .restart local v18    # "restrictionCount":I
    .restart local v21    # "userRestrictionCount":I
    .restart local v22    # "j":I
    goto :goto_9

    .line 379
    .end local v19    # "printedOpsHeader":Z
    .end local v20    # "globalRestrictionCount":I
    .end local v21    # "userRestrictionCount":I
    .end local v22    # "j":I
    .local v4, "globalRestrictionCount":I
    .restart local v5    # "userRestrictionCount":I
    :cond_c
    move/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v24, v8

    const/4 v5, 0x1

    .line 417
    .end local v4    # "globalRestrictionCount":I
    .end local v5    # "userRestrictionCount":I
    .restart local v20    # "globalRestrictionCount":I
    .restart local v21    # "userRestrictionCount":I
    :goto_9
    if-eqz v14, :cond_d

    .line 418
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v16

    goto :goto_a

    :cond_d
    nop

    :goto_a
    move/from16 v0, v16

    .line 419
    .local v0, "excludedPackageCount":I
    if-lez v0, :cond_14

    if-gez p2, :cond_14

    .line 420
    new-instance v2, Landroid/util/IndentingPrintWriter;

    invoke-direct {v2, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 421
    .local v2, "ipw":Landroid/util/IndentingPrintWriter;
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 422
    const/4 v4, 0x0

    .line 423
    .local v4, "printedPackagesHeader":Z
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_b
    if-ge v8, v0, :cond_13

    .line 424
    invoke-virtual {v14, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 425
    .local v5, "userId":I
    nop

    .line 426
    invoke-virtual {v14, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v19, v0

    .end local v0    # "excludedPackageCount":I
    .local v19, "excludedPackageCount":I
    move-object/from16 v0, v16

    check-cast v0, Landroid/os/PackageTagsList;

    .line 427
    .local v0, "packageNames":Landroid/os/PackageTagsList;
    if-nez v0, :cond_e

    .line 428
    goto :goto_d

    .line 431
    :cond_e
    if-eqz v3, :cond_f

    .line 432
    invoke-virtual {v0, v3}, Landroid/os/PackageTagsList;->includes(Ljava/lang/String;)Z

    move-result v16

    .local v16, "hasPackage":Z
    goto :goto_c

    .line 434
    .end local v16    # "hasPackage":Z
    :cond_f
    const/16 v16, 0x1

    .line 436
    .restart local v16    # "hasPackage":Z
    :goto_c
    if-nez v16, :cond_10

    .line 437
    goto :goto_d

    .line 439
    :cond_10
    if-nez v15, :cond_11

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User restrictions for token "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 441
    const/4 v15, 0x1

    .line 444
    :cond_11
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 445
    if-nez v4, :cond_12

    .line 446
    const-string v1, "Excluded packages:"

    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 447
    const/4 v4, 0x1

    .line 450
    :cond_12
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 451
    invoke-virtual {v2, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 453
    const-string v1, " packages: "

    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 456
    invoke-virtual {v0, v2}, Landroid/os/PackageTagsList;->dump(Ljava/io/PrintWriter;)V

    .line 458
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 459
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 460
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 423
    .end local v0    # "packageNames":Landroid/os/PackageTagsList;
    .end local v5    # "userId":I
    .end local v16    # "hasPackage":Z
    :goto_d
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move/from16 v0, v19

    const/4 v5, 0x1

    goto :goto_b

    .end local v19    # "excludedPackageCount":I
    .local v0, "excludedPackageCount":I
    :cond_13
    move/from16 v19, v0

    .line 462
    .end local v0    # "excludedPackageCount":I
    .end local v8    # "j":I
    .restart local v19    # "excludedPackageCount":I
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_e

    .line 419
    .end local v2    # "ipw":Landroid/util/IndentingPrintWriter;
    .end local v4    # "printedPackagesHeader":Z
    .end local v19    # "excludedPackageCount":I
    .restart local v0    # "excludedPackageCount":I
    :cond_14
    move/from16 v19, v0

    .line 369
    .end local v0    # "excludedPackageCount":I
    .end local v12    # "token":Ljava/lang/Object;
    .end local v13    # "perUserRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    .end local v14    # "perUserExcludedPackageTags":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/PackageTagsList;>;"
    .end local v15    # "printedTokenHeader":Z
    .end local v18    # "restrictionCount":I
    :goto_e
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, v20

    move/from16 v5, v21

    move-object/from16 v8, v24

    const/4 v10, 0x1

    goto/16 :goto_2

    .end local v20    # "globalRestrictionCount":I
    .end local v21    # "userRestrictionCount":I
    .local v4, "globalRestrictionCount":I
    .local v5, "userRestrictionCount":I
    :cond_15
    nop

    .line 465
    .end local v11    # "i":I
    return-void
.end method

.method public getGlobalRestriction(Ljava/lang/Object;I)Z
    .locals 2
    .param p1, "clientToken"    # Ljava/lang/Object;
    .param p2, "code"    # I

    .line 97
    iget-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 98
    .local v0, "restrictedCodes":Landroid/util/SparseBooleanArray;
    if-nez v0, :cond_0

    .line 99
    const/4 v1, 0x0

    return v1

    .line 101
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    return v1
.end method

.method public getUserRestriction(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "clientToken"    # Ljava/lang/Object;
    .param p2, "userId"    # I
    .param p3, "code"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "isCheckOp"    # Z

    .line 181
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsRestrictionsImpl;->getUserRestriction(Ljava/lang/Object;II)Z

    move-result v0

    .line 182
    .local v0, "restricted":Z
    if-nez v0, :cond_0

    .line 183
    const/4 v1, 0x0

    return v1

    .line 186
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsRestrictionsImpl;->getUserRestrictionExclusions(Ljava/lang/Object;I)Landroid/os/PackageTagsList;

    move-result-object v1

    .line 187
    .local v1, "perUserExclusions":Landroid/os/PackageTagsList;
    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 188
    return v2

    .line 192
    :cond_1
    if-eqz p6, :cond_2

    .line 193
    invoke-virtual {v1, p4}, Landroid/os/PackageTagsList;->includes(Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v2, v3

    return v2

    .line 195
    :cond_2
    invoke-virtual {v1, p4, p5}, Landroid/os/PackageTagsList;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v2, v3

    return v2
.end method

.method public getUserRestrictionExclusions(Ljava/lang/Object;I)Landroid/os/PackageTagsList;
    .locals 2
    .param p1, "clientToken"    # Ljava/lang/Object;
    .param p2, "userId"    # I

    .line 306
    iget-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    .line 307
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 308
    .local v0, "userIdPackageTags":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/PackageTagsList;>;"
    if-nez v0, :cond_0

    .line 309
    const/4 v1, 0x0

    return-object v1

    .line 311
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PackageTagsList;

    return-object v1
.end method

.method public hasGlobalRestrictions(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "clientToken"    # Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasUserRestrictions(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "clientToken"    # Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setGlobalRestriction(Ljava/lang/Object;IZ)Z
    .locals 3
    .param p1, "clientToken"    # Ljava/lang/Object;
    .param p2, "code"    # I
    .param p3, "restricted"    # Z

    .line 69
    if-eqz p3, :cond_1

    .line 70
    iget-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 74
    .local v0, "restrictedCodes":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 76
    .local v1, "changed":Z
    invoke-virtual {v0, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 77
    .end local v0    # "restrictedCodes":Landroid/util/SparseBooleanArray;
    goto :goto_0

    .line 78
    .end local v1    # "changed":Z
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 79
    .restart local v0    # "restrictedCodes":Landroid/util/SparseBooleanArray;
    if-nez v0, :cond_2

    .line 80
    const/4 v1, 0x0

    return v1

    .line 82
    :cond_2
    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 83
    .restart local v1    # "changed":Z
    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 84
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 85
    iget-object v2, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .end local v0    # "restrictedCodes":Landroid/util/SparseBooleanArray;
    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 90
    invoke-static {}, Landroid/app/AppOpsManager;->invalidateAppOpModeCache()V

    .line 92
    :cond_4
    return v1
.end method

.method public setUserRestriction(Ljava/lang/Object;IIZLandroid/os/PackageTagsList;)Z
    .locals 4
    .param p1, "clientToken"    # Ljava/lang/Object;
    .param p2, "userId"    # I
    .param p3, "code"    # I
    .param p4, "restricted"    # Z
    .param p5, "excludedPackageTags"    # Landroid/os/PackageTagsList;

    .line 126
    invoke-direct {p0, p2}, Lcom/android/server/appop/AppOpsRestrictionsImpl;->resolveUserId(I)[I

    move-result-object v0

    .line 127
    .local v0, "userIds":[I
    const/4 v1, 0x0

    .line 128
    .local v1, "changed":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 129
    aget v3, v0, v2

    invoke-direct {p0, p1, v3, p3, p4}, Lcom/android/server/appop/AppOpsRestrictionsImpl;->putUserRestriction(Ljava/lang/Object;IIZ)Z

    move-result v3

    or-int/2addr v1, v3

    .line 130
    aget v3, v0, v2

    invoke-direct {p0, p1, v3, p5}, Lcom/android/server/appop/AppOpsRestrictionsImpl;->putUserRestrictionExclusions(Ljava/lang/Object;ILandroid/os/PackageTagsList;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 133
    .end local v2    # "i":I
    if-eqz v1, :cond_1

    .line 134
    invoke-static {}, Landroid/app/AppOpsManager;->invalidateAppOpModeCache()V

    .line 136
    :cond_1
    return v1
.end method
