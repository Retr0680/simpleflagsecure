.class final Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;
.super Ljava/lang/Record;
.source "BackgroundLaunchProcessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BackgroundLaunchProcessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BalCheckConfiguration"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {},
        {}
    }
    componentNames = {
        "isCheckingForFgsStart",
        "checkVisibility",
        "checkOtherExemptions",
        "gracePeriod"
    }
    componentSignatures = {
        null,
        null,
        null,
        null
    }
    componentTypes = {
        Z,
        Z,
        Z,
        J
    }
.end annotation


# instance fields
.field private final checkOtherExemptions:Z

.field private final checkVisibility:Z

.field private final gracePeriod:J

.field private final isCheckingForFgsStart:Z


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    instance-of v0, p1, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    iget-boolean v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->isCheckingForFgsStart:Z

    iget-boolean v1, p1, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->isCheckingForFgsStart:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkVisibility:Z

    iget-boolean v1, p1, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkVisibility:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkOtherExemptions:Z

    iget-boolean v1, p1, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkOtherExemptions:Z

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->gracePeriod:J

    iget-wide v2, p1, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->gracePeriod:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 6

    .line 0
    iget-boolean v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->isCheckingForFgsStart:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkVisibility:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkOtherExemptions:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->gracePeriod:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    return-object v4
.end method

.method static bridge synthetic -$$Nest$fgetcheckOtherExemptions(Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkOtherExemptions:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcheckVisibility(Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkVisibility:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetgracePeriod(Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->gracePeriod:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetisCheckingForFgsStart(Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->isCheckingForFgsStart:Z

    return p0
.end method

.method constructor <init>(ZZZJ)V
    .locals 0
    .param p1, "isCheckingForFgsStart"    # Z
    .param p2, "checkVisibility"    # Z
    .param p3, "checkOtherExemptions"    # Z
    .param p4, "gracePeriod"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "isCheckingForFgsStart",
            "checkVisibility",
            "checkOtherExemptions",
            "gracePeriod"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->isCheckingForFgsStart:Z

    iput-boolean p2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkVisibility:Z

    iput-boolean p3, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkOtherExemptions:Z

    iput-wide p4, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->gracePeriod:J

    return-void
.end method


# virtual methods
.method public checkOtherExemptions()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkOtherExemptions:Z

    return v0
.end method

.method public checkVisibility()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkVisibility:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public gracePeriod()J
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->gracePeriod:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 5

    .line 100
    iget-boolean v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->isCheckingForFgsStart:Z

    iget-boolean v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkVisibility:Z

    iget-boolean v2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkOtherExemptions:Z

    iget-wide v3, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->gracePeriod:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration$$ExternalSyntheticRecord0;->m(ZZZJ)I

    move-result v0

    return v0
.end method

.method public isCheckingForFgsStart()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->isCheckingForFgsStart:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 100
    invoke-direct {p0}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    const-string v2, "isCheckingForFgsStart;checkVisibility;checkOtherExemptions;gracePeriod"

    invoke-static {v0, v1, v2}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
