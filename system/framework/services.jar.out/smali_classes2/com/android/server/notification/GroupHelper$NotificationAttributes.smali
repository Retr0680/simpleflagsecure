.class public Lcom/android/server/notification/GroupHelper$NotificationAttributes;
.super Ljava/lang/Object;
.source "GroupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/GroupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "NotificationAttributes"
.end annotation


# instance fields
.field public final channelId:Ljava/lang/String;

.field public final flags:I

.field public final groupAlertBehavior:I

.field public final icon:Landroid/graphics/drawable/Icon;

.field public final iconColor:I

.field public final visibility:I


# direct methods
.method public constructor <init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V
    .locals 0
    .param p1, "flags"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;
    .param p3, "iconColor"    # I
    .param p4, "visibility"    # I
    .param p5, "groupAlertBehavior"    # I
    .param p6, "channelId"    # Ljava/lang/String;

    .line 2057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2058
    iput p1, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    .line 2059
    iput-object p2, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    .line 2060
    iput p3, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    .line 2061
    iput p4, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    .line 2062
    iput p5, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->groupAlertBehavior:I

    .line 2063
    iput-object p6, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    .line 2064
    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/GroupHelper$NotificationAttributes;)V
    .locals 1
    .param p1, "attr"    # Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 2066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2067
    iget v0, p1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    iput v0, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    .line 2068
    iget-object v0, p1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    .line 2069
    iget v0, p1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    iput v0, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    .line 2070
    iget v0, p1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    iput v0, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    .line 2071
    iget v0, p1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->groupAlertBehavior:I

    iput v0, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->groupAlertBehavior:I

    .line 2072
    iget-object v0, p1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    .line 2073
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 2077
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 2078
    return v0

    .line 2080
    :cond_0
    instance-of v1, p1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 2083
    .local v1, "that":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    iget v3, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    iget v4, v1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    iget v4, v1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    iget-object v4, v1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    iget v4, v1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->groupAlertBehavior:I

    iget v4, v1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->groupAlertBehavior:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    .line 2086
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 2083
    :goto_0
    return v0

    .line 2081
    .end local v1    # "that":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 7

    .line 2091
    iget v0, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    iget v0, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->groupAlertBehavior:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationAttributes: flags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " color: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " vis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " groupAlertBehavior: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->groupAlertBehavior:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " channelId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
