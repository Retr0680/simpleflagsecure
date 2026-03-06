.class public final Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;
.super Ljava/lang/Record;
.source "AppLaunchShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/AppLaunchShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InterceptKeyResult"
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
        "consumed",
        "appLaunchData"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        Z,
        Landroid/hardware/input/AppLaunchData;
    }
.end annotation


# static fields
.field private static final CONSUME_KEY:Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

.field private static final DO_NOTHING:Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;


# instance fields
.field private final appLaunchData:Landroid/hardware/input/AppLaunchData;

.field private final consumed:Z


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    iget-boolean v0, p0, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->consumed:Z

    iget-boolean v1, p1, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->consumed:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->appLaunchData:Landroid/hardware/input/AppLaunchData;

    iget-object p1, p1, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->appLaunchData:Landroid/hardware/input/AppLaunchData;

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
    iget-boolean v0, p0, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->consumed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->appLaunchData:Landroid/hardware/input/AppLaunchData;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v2
.end method

.method static bridge synthetic -$$Nest$sfgetCONSUME_KEY()Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->CONSUME_KEY:Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetDO_NOTHING()Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->DO_NOTHING:Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 336
    new-instance v0, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;-><init>(ZLandroid/hardware/input/AppLaunchData;)V

    sput-object v0, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->DO_NOTHING:Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    .line 337
    new-instance v0, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;-><init>(ZLandroid/hardware/input/AppLaunchData;)V

    sput-object v0, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->CONSUME_KEY:Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    return-void
.end method

.method public constructor <init>(ZLandroid/hardware/input/AppLaunchData;)V
    .locals 0
    .param p1, "consumed"    # Z
    .param p2, "appLaunchData"    # Landroid/hardware/input/AppLaunchData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "consumed",
            "appLaunchData"
        }
    .end annotation

    .line 335
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->consumed:Z

    iput-object p2, p0, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->appLaunchData:Landroid/hardware/input/AppLaunchData;

    return-void
.end method


# virtual methods
.method public appLaunchData()Landroid/hardware/input/AppLaunchData;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->appLaunchData:Landroid/hardware/input/AppLaunchData;

    return-object v0
.end method

.method public consumed()Z
    .locals 1

    .line 335
    iget-boolean v0, p0, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->consumed:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 335
    invoke-direct {p0, p1}, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 335
    iget-boolean v0, p0, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->consumed:Z

    iget-object v1, p0, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->appLaunchData:Landroid/hardware/input/AppLaunchData;

    invoke-static {v0, v1}, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult$$ExternalSyntheticRecord0;->m(ZLjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 335
    invoke-direct {p0}, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    const-string v2, "consumed;appLaunchData"

    invoke-static {v0, v1, v2}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
