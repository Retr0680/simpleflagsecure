.class final Lcom/android/server/devicepolicy/DevicePolicyManagerService$StatsManagementMode;
.super Ljava/lang/Record;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StatsManagementMode"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "managementMode",
        "admin"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        I,
        Lcom/android/server/devicepolicy/ActiveAdmin;
    }
.end annotation


# instance fields
.field private final admin:Lcom/android/server/devicepolicy/ActiveAdmin;

.field private final managementMode:I


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$StatsManagementMode;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$StatsManagementMode;

    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$StatsManagementMode;->managementMode:I

    iget v1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$StatsManagementMode;->managementMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$StatsManagementMode;->admin:Lcom/android/server/devicepolicy/ActiveAdmin;

    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$StatsManagementMode;->admin:Lcom/android/server/devicepolicy/ActiveAdmin;

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
    .locals 4

    .line 0
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$StatsManagementMode;->managementMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$StatsManagementMode;->admin:Lcom/android/server/devicepolicy/ActiveAdmin;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v2
.end method

.method private constructor <init>(ILcom/android/server/devicepolicy/ActiveAdmin;)V
    .locals 0
    .param p1, "managementMode"    # I
    .param p2, "admin"    # Lcom/android/server/devicepolicy/ActiveAdmin;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "managementMode",
            "admin"
        }
    .end annotation

    .line 3737
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$StatsManagementMode;->managementMode:I

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$StatsManagementMode;->admin:Lcom/android/server/devicepolicy/ActiveAdmin;

    return-void
.end method

.method synthetic constructor <init>(ILcom/android/server/devicepolicy/ActiveAdmin;Lcom/android/server/devicepolicy/DevicePolicyManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$StatsManagementMode;-><init>(ILcom/android/server/devicepolicy/ActiveAdmin;)V

    return-void
.end method


# virtual methods
.method public admin()Lcom/android/server/devicepolicy/ActiveAdmin;
    .locals 1

    .line 3737
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$StatsManagementMode;->admin:Lcom/android/server/devicepolicy/ActiveAdmin;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 3737
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$StatsManagementMode;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 3737
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$StatsManagementMode;->managementMode:I

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$StatsManagementMode;->admin:Lcom/android/server/devicepolicy/ActiveAdmin;

    invoke-static {v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord0;->m(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public managementMode()I
    .locals 1

    .line 3737
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$StatsManagementMode;->managementMode:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 3737
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$StatsManagementMode;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$StatsManagementMode;

    const-string/jumbo v2, "managementMode;admin"

    invoke-static {v0, v1, v2}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
