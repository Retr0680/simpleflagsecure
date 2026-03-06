.class Lcom/android/server/inputmethod/ImeProtoLogGroup$Consts;
.super Ljava/lang/Object;
.source "ImeProtoLogGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/ImeProtoLogGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Consts"
.end annotation


# static fields
.field private static final ENABLE_DEBUG:Z = true

.field private static final START_ID:I


# direct methods
.method static bridge synthetic -$$Nest$sfgetSTART_ID()I
    .locals 1

    .line 0
    sget v0, Lcom/android/server/inputmethod/ImeProtoLogGroup$Consts;->START_ID:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 82
    const-class v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 83
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    rem-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lcom/android/server/inputmethod/ImeProtoLogGroup$Consts;->START_ID:I

    .line 82
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
