.class public final Lcom/android/server/job/GrantedUriPermissions;
.super Ljava/lang/Object;
.source "GrantedUriPermissions.java"


# instance fields
.field private final mGrantFlags:I

.field private final mPermissionOwner:Landroid/os/IBinder;

.field private final mSourceUserId:I

.field private final mTag:Ljava/lang/String;

.field private final mUriGrantsManagerInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field private final mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(IILjava/lang/String;)V
    .locals 3
    .param p1, "grantFlags"    # I
    .param p2, "uid"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    .line 46
    iput p1, p0, Lcom/android/server/job/GrantedUriPermissions;->mGrantFlags:I

    .line 47
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mSourceUserId:I

    .line 48
    iput-object p3, p0, Lcom/android/server/job/GrantedUriPermissions;->mTag:Ljava/lang/String;

    .line 49
    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    iput-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mUriGrantsManagerInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 50
    iget-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mUriGrantsManagerInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "job: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/uri/UriGrantsManagerInternal;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    .line 51
    return-void
.end method

.method public static checkGrantFlags(I)Z
    .locals 1
    .param p0, "grantFlags"    # I

    .line 62
    and-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static createFromClip(Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;)Lcom/android/server/job/GrantedUriPermissions;
    .locals 8
    .param p0, "clip"    # Landroid/content/ClipData;
    .param p1, "sourceUid"    # I
    .param p2, "targetPackage"    # Ljava/lang/String;
    .param p3, "targetUserId"    # I
    .param p4, "grantFlags"    # I
    .param p5, "tag"    # Ljava/lang/String;

    .line 92
    invoke-static {p4}, Lcom/android/server/job/GrantedUriPermissions;->checkGrantFlags(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_0
    const/4 v7, 0x0

    .line 96
    .local v7, "perms":Lcom/android/server/job/GrantedUriPermissions;
    if-eqz p0, :cond_1

    .line 97
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .end local p0    # "clip":Landroid/content/ClipData;
    .end local p1    # "sourceUid":I
    .end local p2    # "targetPackage":Ljava/lang/String;
    .end local p3    # "targetUserId":I
    .end local p4    # "grantFlags":I
    .end local p5    # "tag":Ljava/lang/String;
    .local v1, "clip":Landroid/content/ClipData;
    .local v2, "sourceUid":I
    .local v3, "targetPackage":Ljava/lang/String;
    .local v4, "targetUserId":I
    .local v5, "grantFlags":I
    .local v6, "tag":Ljava/lang/String;
    invoke-static/range {v1 .. v7}, Lcom/android/server/job/GrantedUriPermissions;->grantClip(Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v7

    goto :goto_0

    .line 96
    .end local v1    # "clip":Landroid/content/ClipData;
    .end local v2    # "sourceUid":I
    .end local v3    # "targetPackage":Ljava/lang/String;
    .end local v4    # "targetUserId":I
    .end local v5    # "grantFlags":I
    .end local v6    # "tag":Ljava/lang/String;
    .restart local p0    # "clip":Landroid/content/ClipData;
    .restart local p1    # "sourceUid":I
    .restart local p2    # "targetPackage":Ljava/lang/String;
    .restart local p3    # "targetUserId":I
    .restart local p4    # "grantFlags":I
    .restart local p5    # "tag":Ljava/lang/String;
    :cond_1
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 100
    .end local p0    # "clip":Landroid/content/ClipData;
    .end local p1    # "sourceUid":I
    .end local p2    # "targetPackage":Ljava/lang/String;
    .end local p3    # "targetUserId":I
    .end local p4    # "grantFlags":I
    .end local p5    # "tag":Ljava/lang/String;
    .restart local v1    # "clip":Landroid/content/ClipData;
    .restart local v2    # "sourceUid":I
    .restart local v3    # "targetPackage":Ljava/lang/String;
    .restart local v4    # "targetUserId":I
    .restart local v5    # "grantFlags":I
    .restart local v6    # "tag":Ljava/lang/String;
    :goto_0
    return-object v7
.end method

.method public static createFromIntent(Landroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/GrantedUriPermissions;
    .locals 7
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "sourceUid"    # I
    .param p2, "targetPackage"    # Ljava/lang/String;
    .param p3, "targetUserId"    # I
    .param p4, "tag"    # Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v4

    .line 69
    .local v4, "grantFlags":I
    invoke-static {v4}, Lcom/android/server/job/GrantedUriPermissions;->checkGrantFlags(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_0
    const/4 v6, 0x0

    .line 75
    .local v6, "perms":Lcom/android/server/job/GrantedUriPermissions;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 76
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 77
    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .end local p1    # "sourceUid":I
    .end local p2    # "targetPackage":Ljava/lang/String;
    .end local p3    # "targetUserId":I
    .end local p4    # "tag":Ljava/lang/String;
    .local v1, "sourceUid":I
    .local v2, "targetPackage":Ljava/lang/String;
    .local v3, "targetUserId":I
    .local v5, "tag":Ljava/lang/String;
    invoke-static/range {v0 .. v6}, Lcom/android/server/job/GrantedUriPermissions;->grantUri(Landroid/net/Uri;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v6

    move-object p1, v0

    .end local v0    # "data":Landroid/net/Uri;
    .local p1, "data":Landroid/net/Uri;
    goto :goto_0

    .line 76
    .end local v1    # "sourceUid":I
    .end local v2    # "targetPackage":Ljava/lang/String;
    .end local v3    # "targetUserId":I
    .end local v5    # "tag":Ljava/lang/String;
    .restart local v0    # "data":Landroid/net/Uri;
    .local p1, "sourceUid":I
    .restart local p2    # "targetPackage":Ljava/lang/String;
    .restart local p3    # "targetUserId":I
    .restart local p4    # "tag":Ljava/lang/String;
    :cond_1
    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object p1, v0

    .line 81
    .end local v0    # "data":Landroid/net/Uri;
    .end local p2    # "targetPackage":Ljava/lang/String;
    .end local p3    # "targetUserId":I
    .end local p4    # "tag":Ljava/lang/String;
    .restart local v1    # "sourceUid":I
    .restart local v2    # "targetPackage":Ljava/lang/String;
    .restart local v3    # "targetUserId":I
    .restart local v5    # "tag":Ljava/lang/String;
    .local p1, "data":Landroid/net/Uri;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 82
    .local v0, "clip":Landroid/content/ClipData;
    if-eqz v0, :cond_2

    .line 83
    invoke-static/range {v0 .. v6}, Lcom/android/server/job/GrantedUriPermissions;->grantClip(Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v6

    .line 87
    :cond_2
    return-object v6
.end method

.method private static grantClip(Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;
    .locals 9
    .param p0, "clip"    # Landroid/content/ClipData;
    .param p1, "sourceUid"    # I
    .param p2, "targetPackage"    # Ljava/lang/String;
    .param p3, "targetUserId"    # I
    .param p4, "grantFlags"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "curPerms"    # Lcom/android/server/job/GrantedUriPermissions;

    .line 106
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 107
    .local v0, "N":I
    const/4 v1, 0x0

    move-object v8, p6

    .end local p6    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    .local v1, "i":I
    .local v8, "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    :goto_0
    if-ge v1, v0, :cond_0

    .line 108
    invoke-virtual {p0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    .end local p1    # "sourceUid":I
    .end local p2    # "targetPackage":Ljava/lang/String;
    .end local p3    # "targetUserId":I
    .end local p4    # "grantFlags":I
    .end local p5    # "tag":Ljava/lang/String;
    .local v3, "sourceUid":I
    .local v4, "targetPackage":Ljava/lang/String;
    .local v5, "targetUserId":I
    .local v6, "grantFlags":I
    .local v7, "tag":Ljava/lang/String;
    invoke-static/range {v2 .. v8}, Lcom/android/server/job/GrantedUriPermissions;->grantItem(Landroid/content/ClipData$Item;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v8

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "sourceUid":I
    .end local v4    # "targetPackage":Ljava/lang/String;
    .end local v5    # "targetUserId":I
    .end local v6    # "grantFlags":I
    .end local v7    # "tag":Ljava/lang/String;
    .restart local p1    # "sourceUid":I
    .restart local p2    # "targetPackage":Ljava/lang/String;
    .restart local p3    # "targetUserId":I
    .restart local p4    # "grantFlags":I
    .restart local p5    # "tag":Ljava/lang/String;
    :cond_0
    nop

    .line 111
    .end local v1    # "i":I
    return-object v8
.end method

.method private static grantItem(Landroid/content/ClipData$Item;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;
    .locals 8
    .param p0, "item"    # Landroid/content/ClipData$Item;
    .param p1, "sourceUid"    # I
    .param p2, "targetPackage"    # Ljava/lang/String;
    .param p3, "targetUserId"    # I
    .param p4, "grantFlags"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "curPerms"    # Lcom/android/server/job/GrantedUriPermissions;

    .line 136
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .end local p1    # "sourceUid":I
    .end local p2    # "targetPackage":Ljava/lang/String;
    .end local p3    # "targetUserId":I
    .end local p4    # "grantFlags":I
    .end local p5    # "tag":Ljava/lang/String;
    .end local p6    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    .local v2, "sourceUid":I
    .local v3, "targetPackage":Ljava/lang/String;
    .local v4, "targetUserId":I
    .local v5, "grantFlags":I
    .local v6, "tag":Ljava/lang/String;
    .local v7, "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    invoke-static/range {v1 .. v7}, Lcom/android/server/job/GrantedUriPermissions;->grantUri(Landroid/net/Uri;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object p6

    move v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, p6

    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    .local v1, "sourceUid":I
    .local v2, "targetPackage":Ljava/lang/String;
    .local v3, "targetUserId":I
    .local v4, "grantFlags":I
    .local v5, "tag":Ljava/lang/String;
    .restart local p6    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    goto :goto_0

    .line 136
    .end local v1    # "sourceUid":I
    .end local v2    # "targetPackage":Ljava/lang/String;
    .end local v3    # "targetUserId":I
    .end local v4    # "grantFlags":I
    .end local v5    # "tag":Ljava/lang/String;
    .restart local p1    # "sourceUid":I
    .restart local p2    # "targetPackage":Ljava/lang/String;
    .restart local p3    # "targetUserId":I
    .restart local p4    # "grantFlags":I
    .restart local p5    # "tag":Ljava/lang/String;
    :cond_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, p6

    .end local p1    # "sourceUid":I
    .end local p2    # "targetPackage":Ljava/lang/String;
    .end local p3    # "targetUserId":I
    .end local p4    # "grantFlags":I
    .end local p5    # "tag":Ljava/lang/String;
    .end local p6    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    .restart local v1    # "sourceUid":I
    .restart local v2    # "targetPackage":Ljava/lang/String;
    .restart local v3    # "targetUserId":I
    .restart local v4    # "grantFlags":I
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v7    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    move-object v6, v7

    .line 140
    .end local v7    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    .local v6, "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    :goto_0
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 141
    .local p1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 142
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static/range {v0 .. v6}, Lcom/android/server/job/GrantedUriPermissions;->grantUri(Landroid/net/Uri;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v6

    .line 145
    :cond_1
    return-object v6
.end method

.method private static grantUri(Landroid/net/Uri;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;
    .locals 9
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "sourceUid"    # I
    .param p2, "targetPackage"    # Ljava/lang/String;
    .param p3, "targetUserId"    # I
    .param p4, "grantFlags"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "curPerms"    # Lcom/android/server/job/GrantedUriPermissions;

    .line 118
    nop

    .line 119
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 118
    invoke-static {p0, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    move v7, v0

    .line 120
    .local v7, "sourceUserId":I
    invoke-static {p0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    .line 121
    .end local p0    # "uri":Landroid/net/Uri;
    .local v5, "uri":Landroid/net/Uri;
    if-nez p6, :cond_0

    .line 122
    :try_start_1
    new-instance p0, Lcom/android/server/job/GrantedUriPermissions;

    invoke-direct {p0, p4, p1, p5}, Lcom/android/server/job/GrantedUriPermissions;-><init>(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object p6, p0

    goto :goto_0

    .line 127
    .end local v7    # "sourceUserId":I
    :catch_0
    move-exception v0

    move-object p0, v0

    move v3, p1

    move-object v4, p2

    move v8, p3

    move v6, p4

    goto :goto_1

    .line 124
    .restart local v7    # "sourceUserId":I
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v1

    iget-object v2, p6, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move v3, p1

    move-object v4, p2

    move v8, p3

    move v6, p4

    .end local p1    # "sourceUid":I
    .end local p2    # "targetPackage":Ljava/lang/String;
    .end local p3    # "targetUserId":I
    .end local p4    # "grantFlags":I
    .local v3, "sourceUid":I
    .local v4, "targetPackage":Ljava/lang/String;
    .local v6, "grantFlags":I
    .local v8, "targetUserId":I
    :try_start_3
    invoke-interface/range {v1 .. v8}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    .line 126
    iget-object p0, p6, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 129
    nop

    .end local v7    # "sourceUserId":I
    goto :goto_2

    .line 127
    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .end local v3    # "sourceUid":I
    .end local v4    # "targetPackage":Ljava/lang/String;
    .end local v6    # "grantFlags":I
    .end local v8    # "targetUserId":I
    .restart local p1    # "sourceUid":I
    .restart local p2    # "targetPackage":Ljava/lang/String;
    .restart local p3    # "targetUserId":I
    .restart local p4    # "grantFlags":I
    :catch_2
    move-exception v0

    move v3, p1

    move-object v4, p2

    move v8, p3

    move v6, p4

    move-object p0, v0

    .end local p1    # "sourceUid":I
    .end local p2    # "targetPackage":Ljava/lang/String;
    .end local p3    # "targetUserId":I
    .end local p4    # "grantFlags":I
    .restart local v3    # "sourceUid":I
    .restart local v4    # "targetPackage":Ljava/lang/String;
    .restart local v6    # "grantFlags":I
    .restart local v8    # "targetUserId":I
    goto :goto_1

    .end local v3    # "sourceUid":I
    .end local v4    # "targetPackage":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "grantFlags":I
    .end local v8    # "targetUserId":I
    .restart local p0    # "uri":Landroid/net/Uri;
    .restart local p1    # "sourceUid":I
    .restart local p2    # "targetPackage":Ljava/lang/String;
    .restart local p3    # "targetUserId":I
    .restart local p4    # "grantFlags":I
    :catch_3
    move-exception v0

    move v3, p1

    move-object v4, p2

    move v8, p3

    move v6, p4

    move-object p1, v0

    move-object v5, p0

    move-object p0, p1

    .end local p0    # "uri":Landroid/net/Uri;
    .end local p1    # "sourceUid":I
    .end local p2    # "targetPackage":Ljava/lang/String;
    .end local p3    # "targetUserId":I
    .end local p4    # "grantFlags":I
    .restart local v3    # "sourceUid":I
    .restart local v4    # "targetPackage":Ljava/lang/String;
    .restart local v5    # "uri":Landroid/net/Uri;
    .restart local v6    # "grantFlags":I
    .restart local v8    # "targetUserId":I
    :goto_1
    nop

    .line 128
    .local p0, "e":Landroid/os/RemoteException;
    const-string p1, "JobScheduler"

    const-string p2, "AM dead"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local p0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-object p6
.end method


# virtual methods
.method public dump(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 161
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 163
    .local v0, "token":J
    const-wide v2, 0x10500000001L

    iget v4, p0, Lcom/android/server/job/GrantedUriPermissions;->mGrantFlags:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 164
    const-wide v2, 0x10500000002L

    iget v4, p0, Lcom/android/server/job/GrantedUriPermissions;->mSourceUserId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 165
    const-wide v2, 0x10900000003L

    iget-object v4, p0, Lcom/android/server/job/GrantedUriPermissions;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 166
    iget-object v2, p0, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    invoke-interface {v2}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 167
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 168
    iget-object v3, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 169
    .local v3, "u":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 170
    const-wide v4, 0x20900000005L

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 167
    .end local v3    # "u":Landroid/net/Uri;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 174
    .end local v2    # "i":I
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 175
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 150
    const-string/jumbo v0, "mGrantFlags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mGrantFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 151
    const-string v0, " mSourceUserId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mSourceUserId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 152
    const-string/jumbo v0, "mTag="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    const-string/jumbo v0, "mPermissionOwner="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 154
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 155
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 158
    .end local v0    # "i":I
    return-void
.end method

.method public revoke()V
    .locals 6

    .line 54
    iget-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/android/server/job/GrantedUriPermissions;->mUriGrantsManagerInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, p0, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iget v4, p0, Lcom/android/server/job/GrantedUriPermissions;->mGrantFlags:I

    iget v5, p0, Lcom/android/server/job/GrantedUriPermissions;->mSourceUserId:I

    .line 55
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    .line 54
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 58
    .end local v0    # "i":I
    iget-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59
    return-void
.end method
