.class final enum Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;
.super Ljava/lang/Enum;
.source "DiscreteOpsDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/DiscreteOpsDbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ColumnFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

.field public static final enum ATTR_TAG:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

.field public static final enum BEGIN_TIME:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

.field public static final enum END_TIME:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

.field public static final enum OP_CODE_EQUAL:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

.field public static final enum OP_CODE_IN:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

.field public static final enum OP_FLAGS:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

.field public static final enum PACKAGE_NAME:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

.field public static final enum UID:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;


# instance fields
.field final mCondition:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;
    .locals 8

    .line 358
    sget-object v0, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->PACKAGE_NAME:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    sget-object v1, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->UID:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    sget-object v2, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->ATTR_TAG:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    sget-object v3, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->END_TIME:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    sget-object v4, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->OP_CODE_EQUAL:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    sget-object v5, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->BEGIN_TIME:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    sget-object v6, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->OP_FLAGS:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    sget-object v7, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->OP_CODE_IN:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    filled-new-array/range {v0 .. v7}, [Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 359
    new-instance v0, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    const/4 v1, 0x0

    const-string/jumbo v2, "package_name = ? "

    const-string v3, "PACKAGE_NAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->PACKAGE_NAME:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    .line 360
    new-instance v0, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    const/4 v1, 0x1

    const-string/jumbo v2, "uid = ? "

    const-string v3, "UID"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->UID:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    .line 361
    new-instance v0, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    const/4 v1, 0x2

    const-string v2, "attribution_tag = ? "

    const-string v3, "ATTR_TAG"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->ATTR_TAG:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    .line 362
    new-instance v0, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    const/4 v1, 0x3

    const-string v2, "access_time < ? "

    const-string v3, "END_TIME"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->END_TIME:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    .line 363
    new-instance v0, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    const/4 v1, 0x4

    const-string/jumbo v2, "op_code = ? "

    const-string v3, "OP_CODE_EQUAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->OP_CODE_EQUAL:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    .line 364
    new-instance v0, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    const/4 v1, 0x5

    const-string v2, "access_time + access_duration > ? "

    const-string v3, "BEGIN_TIME"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->BEGIN_TIME:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    .line 366
    new-instance v0, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    const/4 v1, 0x6

    const-string v2, "(op_flags & ? ) != 0"

    const-string v3, "OP_FLAGS"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->OP_FLAGS:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    .line 367
    new-instance v0, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    const/4 v1, 0x7

    const-string/jumbo v2, "op_code IN "

    const-string v3, "OP_CODE_IN"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->OP_CODE_IN:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    .line 358
    invoke-static {}, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->$values()[Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->$VALUES:[Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "condition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 371
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 372
    iput-object p3, p0, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->mCondition:Ljava/lang/String;

    .line 373
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;
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

    .line 358
    const-class v0, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    return-object v0
.end method

.method public static values()[Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;
    .locals 1

    .line 358
    sget-object v0, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->$VALUES:[Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    invoke-virtual {v0}, [Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->mCondition:Ljava/lang/String;

    return-object v0
.end method
