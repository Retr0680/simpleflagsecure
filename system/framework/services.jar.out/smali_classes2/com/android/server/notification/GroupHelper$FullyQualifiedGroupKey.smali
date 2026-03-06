.class final Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
.super Ljava/lang/Record;
.source "GroupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/GroupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FullyQualifiedGroupKey"
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
        "userId",
        "pkg",
        "groupName"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        I,
        Ljava/lang/String;,
        Ljava/lang/String;
    }
.end annotation


# instance fields
.field private final groupName:Ljava/lang/String;

.field private final pkg:Ljava/lang/String;

.field private final userId:I


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    iget v0, p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->userId:I

    iget v1, p1, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->userId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->pkg:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->pkg:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->groupName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->groupName:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static bridge synthetic -$$Nest$fgetpkg(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->pkg:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuserId(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->userId:I

    return p0
.end method

.method constructor <init>(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "sectioner"    # Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    .line 1947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aggregate_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    iget-object v1, p3, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1948
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "groupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userId",
            "pkg",
            "groupName"
        }
    .end annotation

    .line 1945
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->userId:I

    iput-object p2, p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->groupName:Ljava/lang/String;

    return-void
.end method

.method static forRecord(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    .locals 3
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p1, "sectioner"    # Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    .line 1952
    new-instance v0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 1945
    invoke-direct {p0, p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public groupName()Ljava/lang/String;
    .locals 1

    .line 1945
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1945
    iget v0, p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->userId:I

    iget-object v1, p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->groupName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask$$ExternalSyntheticRecord0;->m(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public pkg()Ljava/lang/String;
    .locals 1

    .line 1945
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|g:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userId()I
    .locals 1

    .line 1945
    iget v0, p0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->userId:I

    return v0
.end method
