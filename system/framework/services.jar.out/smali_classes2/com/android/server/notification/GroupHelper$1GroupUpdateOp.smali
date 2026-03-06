.class final Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;
.super Ljava/lang/Record;
.source "GroupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/GroupHelper;->moveNotificationsToNewSection(ILjava/lang/String;Ljava/util/List;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GroupUpdateOp"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {}
    }
    componentNames = {
        "groupKey",
        "record",
        "hasSummary"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;,
        Lcom/android/server/notification/NotificationRecord;,
        Z
    }
.end annotation


# instance fields
.field private final groupKey:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

.field private final hasSummary:Z

.field private final record:Lcom/android/server/notification/NotificationRecord;


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;

    iget-boolean v0, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->hasSummary:Z

    iget-boolean v1, p1, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->hasSummary:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->groupKey:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iget-object v1, p1, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->groupKey:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->record:Lcom/android/server/notification/NotificationRecord;

    iget-object p1, p1, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->record:Lcom/android/server/notification/NotificationRecord;

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
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->groupKey:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iget-object v1, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->record:Lcom/android/server/notification/NotificationRecord;

    iget-boolean v2, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->hasSummary:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    return-object v3
.end method

.method static bridge synthetic -$$Nest$fgethasSummary(Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->hasSummary:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrecord(Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;)Lcom/android/server/notification/NotificationRecord;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->record:Lcom/android/server/notification/NotificationRecord;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/NotificationRecord;Z)V
    .locals 0
    .param p1, "groupKey"    # Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    .param p2, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "hasSummary"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "groupKey",
            "record",
            "hasSummary"
        }
    .end annotation

    .line 1409
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->groupKey:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iput-object p2, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->record:Lcom/android/server/notification/NotificationRecord;

    iput-boolean p3, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->hasSummary:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 1409
    invoke-direct {p0, p1}, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public groupKey()Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    .locals 1

    .line 1409
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->groupKey:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    return-object v0
.end method

.method public hasSummary()Z
    .locals 1

    .line 1409
    iget-boolean v0, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->hasSummary:Z

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1409
    iget-boolean v0, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->hasSummary:Z

    iget-object v1, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->groupKey:Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iget-object v2, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->record:Lcom/android/server/notification/NotificationRecord;

    invoke-static {v0, v1, v2}, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp$$ExternalSyntheticRecord0;->m(ZLjava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public record()Lcom/android/server/notification/NotificationRecord;
    .locals 1

    .line 1409
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->record:Lcom/android/server/notification/NotificationRecord;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1409
    invoke-direct {p0}, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;

    const-string/jumbo v2, "groupKey;record;hasSummary"

    invoke-static {v0, v1, v2}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
