.class final Lcom/android/server/notification/GroupHelper$CachedSummary;
.super Ljava/lang/Record;
.source "GroupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/GroupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CachedSummary"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {},
        {},
        {}
    }
    componentNames = {
        "id",
        "tag",
        "originalGroupKey",
        "key",
        "deleteIntent"
    }
    componentSignatures = {
        null,
        null,
        null,
        null,
        null
    }
    componentTypes = {
        I,
        Ljava/lang/String;,
        Ljava/lang/String;,
        Ljava/lang/String;,
        Landroid/app/PendingIntent;
    }
.end annotation


# instance fields
.field private final deleteIntent:Landroid/app/PendingIntent;

.field private final id:I

.field private final key:Ljava/lang/String;

.field private final originalGroupKey:Ljava/lang/String;

.field private final tag:Ljava/lang/String;


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Lcom/android/server/notification/GroupHelper$CachedSummary;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/notification/GroupHelper$CachedSummary;

    iget v0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->id:I

    iget v1, p1, Lcom/android/server/notification/GroupHelper$CachedSummary;->id:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->tag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/notification/GroupHelper$CachedSummary;->tag:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->originalGroupKey:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/notification/GroupHelper$CachedSummary;->originalGroupKey:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->key:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/notification/GroupHelper$CachedSummary;->key:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->deleteIntent:Landroid/app/PendingIntent;

    iget-object p1, p1, Lcom/android/server/notification/GroupHelper$CachedSummary;->deleteIntent:Landroid/app/PendingIntent;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 7

    .line 0
    iget v0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->originalGroupKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->deleteIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    return-object v5
.end method

.method static bridge synthetic -$$Nest$fgetdeleteIntent(Lcom/android/server/notification/GroupHelper$CachedSummary;)Landroid/app/PendingIntent;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->deleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetid(Lcom/android/server/notification/GroupHelper$CachedSummary;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->id:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetkey(Lcom/android/server/notification/GroupHelper$CachedSummary;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->key:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoriginalGroupKey(Lcom/android/server/notification/GroupHelper$CachedSummary;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->originalGroupKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettag(Lcom/android/server/notification/GroupHelper$CachedSummary;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->tag:Ljava/lang/String;

    return-object p0
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "originalGroupKey"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "deleteIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "tag",
            "originalGroupKey",
            "key",
            "deleteIntent"
        }
    .end annotation

    .line 2045
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->id:I

    iput-object p2, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->originalGroupKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->key:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->deleteIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public deleteIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 2045
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->deleteIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 2045
    invoke-direct {p0, p1}, Lcom/android/server/notification/GroupHelper$CachedSummary;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 2045
    iget v0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->id:I

    iget-object v1, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->originalGroupKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->deleteIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/notification/GroupHelper$CachedSummary$$ExternalSyntheticRecord0;->m(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public id()I
    .locals 1

    .line 2045
    iget v0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->id:I

    return v0
.end method

.method public key()Ljava/lang/String;
    .locals 1

    .line 2045
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->key:Ljava/lang/String;

    return-object v0
.end method

.method public originalGroupKey()Ljava/lang/String;
    .locals 1

    .line 2045
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->originalGroupKey:Ljava/lang/String;

    return-object v0
.end method

.method public tag()Ljava/lang/String;
    .locals 1

    .line 2045
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper$CachedSummary;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 2045
    invoke-direct {p0}, Lcom/android/server/notification/GroupHelper$CachedSummary;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/android/server/notification/GroupHelper$CachedSummary;

    const-string/jumbo v2, "id;tag;originalGroupKey;key;deleteIntent"

    invoke-static {v0, v1, v2}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
