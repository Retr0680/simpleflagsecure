.class public final enum Lcom/android/server/inputmethod/ImeProtoLogGroup;
.super Ljava/lang/Enum;
.source "ImeProtoLogGroup.java"

# interfaces
.implements Lcom/android/internal/protolog/common/IProtoLogGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/ImeProtoLogGroup$Consts;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/inputmethod/ImeProtoLogGroup;",
        ">;",
        "Lcom/android/internal/protolog/common/IProtoLogGroup;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/inputmethod/ImeProtoLogGroup;

.field public static final enum IME_VISIBILITY_APPLIER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

.field public static final enum IME_VIS_STATE_COMPUTER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

.field public static final enum IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;


# instance fields
.field private final mEnabled:Z

.field private volatile mLogToLogcat:Z

.field private volatile mLogToProto:Z

.field private final mTag:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/android/server/inputmethod/ImeProtoLogGroup;
    .locals 3

    .line 23
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    sget-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VISIBILITY_APPLIER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    sget-object v2, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VIS_STATE_COMPUTER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/inputmethod/ImeProtoLogGroup;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .line 25
    new-instance v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const/4 v5, 0x0

    const-string v6, "InputMethodManagerService"

    const-string v1, "IMMS_DEBUG"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/inputmethod/ImeProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 27
    new-instance v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const/4 v6, 0x0

    const-string v7, "DefaultImeVisibilityApplier"

    const-string v2, "IME_VISIBILITY_APPLIER_DEBUG"

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/inputmethod/ImeProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VISIBILITY_APPLIER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 29
    new-instance v2, Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const/4 v7, 0x0

    const-string v8, "ImeVisibilityStateComputer"

    const-string v3, "IME_VIS_STATE_COMPUTER_DEBUG"

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/inputmethod/ImeProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v2, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VIS_STATE_COMPUTER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 23
    invoke-static {}, Lcom/android/server/inputmethod/ImeProtoLogGroup;->$values()[Lcom/android/server/inputmethod/ImeProtoLogGroup;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->$VALUES:[Lcom/android/server/inputmethod/ImeProtoLogGroup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZLjava/lang/String;)V
    .locals 0
    .param p3, "enabled"    # Z
    .param p4, "logToProto"    # Z
    .param p5, "logToLogcat"    # Z
    .param p6, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-boolean p3, p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->mEnabled:Z

    .line 39
    iput-boolean p4, p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->mLogToProto:Z

    .line 40
    iput-boolean p5, p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->mLogToLogcat:Z

    .line 41
    iput-object p6, p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->mTag:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/inputmethod/ImeProtoLogGroup;
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

    .line 23
    const-class v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;

    return-object v0
.end method

.method public static values()[Lcom/android/server/inputmethod/ImeProtoLogGroup;
    .locals 1

    .line 23
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->$VALUES:[Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-virtual {v0}, [Lcom/android/server/inputmethod/ImeProtoLogGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/inputmethod/ImeProtoLogGroup;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 2

    .line 67
    invoke-static {}, Lcom/android/server/inputmethod/ImeProtoLogGroup$Consts;->-$$Nest$sfgetSTART_ID()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->mEnabled:Z

    return v0
.end method

.method public isLogToLogcat()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->mLogToLogcat:Z

    return v0
.end method

.method public isLogToProto()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->mLogToProto:Z

    return v0
.end method

.method public setLogToLogcat(Z)V
    .locals 0
    .param p1, "logToLogcat"    # Z

    .line 77
    iput-boolean p1, p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->mLogToLogcat:Z

    .line 78
    return-void
.end method

.method public setLogToProto(Z)V
    .locals 0
    .param p1, "logToProto"    # Z

    .line 72
    iput-boolean p1, p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->mLogToProto:Z

    .line 73
    return-void
.end method
