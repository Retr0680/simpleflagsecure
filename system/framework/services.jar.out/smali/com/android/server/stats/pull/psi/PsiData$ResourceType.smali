.class public final enum Lcom/android/server/stats/pull/psi/PsiData$ResourceType;
.super Ljava/lang/Enum;
.source "PsiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/pull/psi/PsiData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/stats/pull/psi/PsiData$ResourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

.field public static final enum CPU:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

.field public static final enum IO:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

.field public static final enum MEMORY:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;


# direct methods
.method private static synthetic $values()[Lcom/android/server/stats/pull/psi/PsiData$ResourceType;
    .locals 3

    .line 24
    sget-object v0, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->CPU:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    sget-object v1, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->MEMORY:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    sget-object v2, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->IO:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    const-string v1, "CPU"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->CPU:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    .line 26
    new-instance v0, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    const-string v1, "MEMORY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->MEMORY:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    .line 27
    new-instance v0, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    const-string v1, "IO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->IO:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    .line 24
    invoke-static {}, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->$values()[Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    move-result-object v0

    sput-object v0, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->$VALUES:[Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/stats/pull/psi/PsiData$ResourceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 24
    const-class v0, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/stats/pull/psi/PsiData$ResourceType;
    .locals 1

    .line 24
    sget-object v0, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->$VALUES:[Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    invoke-virtual {v0}, [Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    return-object v0
.end method
