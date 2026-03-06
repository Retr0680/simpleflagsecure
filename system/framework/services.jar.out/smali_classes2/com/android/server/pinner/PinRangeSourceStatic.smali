.class Lcom/android/server/pinner/PinRangeSourceStatic;
.super Lcom/android/server/pinner/PinRangeSource;
.source "PinRangeSourceStatic.java"


# instance fields
.field private mDone:Z

.field private final mPinLength:I

.field private final mPinStart:I


# direct methods
.method constructor <init>(II)V
    .locals 1
    .param p1, "pinStart"    # I
    .param p2, "pinLength"    # I

    .line 24
    invoke-direct {p0}, Lcom/android/server/pinner/PinRangeSource;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pinner/PinRangeSourceStatic;->mDone:Z

    .line 25
    iput p1, p0, Lcom/android/server/pinner/PinRangeSourceStatic;->mPinStart:I

    .line 26
    iput p2, p0, Lcom/android/server/pinner/PinRangeSourceStatic;->mPinLength:I

    .line 27
    return-void
.end method


# virtual methods
.method read(Lcom/android/server/pinner/PinnerService$PinRange;)Z
    .locals 2
    .param p1, "outPinRange"    # Lcom/android/server/pinner/PinnerService$PinRange;

    .line 31
    iget v0, p0, Lcom/android/server/pinner/PinRangeSourceStatic;->mPinStart:I

    iput v0, p1, Lcom/android/server/pinner/PinnerService$PinRange;->start:I

    .line 32
    iget v0, p0, Lcom/android/server/pinner/PinRangeSourceStatic;->mPinLength:I

    iput v0, p1, Lcom/android/server/pinner/PinnerService$PinRange;->length:I

    .line 33
    iget-boolean v0, p0, Lcom/android/server/pinner/PinRangeSourceStatic;->mDone:Z

    .line 34
    .local v0, "done":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pinner/PinRangeSourceStatic;->mDone:Z

    .line 35
    xor-int/lit8 v1, v0, 0x1

    return v1
.end method
