.class public final Lcom/android/modules/utils/build/SdkLevel;
.super Ljava/lang/Object;
.source "SdkLevel.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static isAtLeastB()Z
    .locals 1

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method private static isAtLeastPreReleaseCodename(Ljava/lang/String;)Z
    .locals 2
    .param p0, "codename"    # Ljava/lang/String;

    .line 82
    const-string v0, "REL"

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 83
    return v1

    .line 88
    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isAtLeastR()Z
    .locals 1

    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastS()Z
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastSv2()Z
    .locals 1

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastT()Z
    .locals 1

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastU()Z
    .locals 1

    .line 63
    nop

    .line 64
    nop

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastV()Z
    .locals 1

    .line 70
    nop

    .line 71
    nop

    .line 70
    const/4 v0, 0x1

    return v0
.end method
