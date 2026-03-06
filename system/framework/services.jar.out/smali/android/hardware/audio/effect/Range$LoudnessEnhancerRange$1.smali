.class Landroid/hardware/audio/effect/Range$LoudnessEnhancerRange$1;
.super Ljava/lang/Object;
.source "Range.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/audio/effect/Range$LoudnessEnhancerRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/audio/effect/Range$LoudnessEnhancerRange;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/audio/effect/Range$LoudnessEnhancerRange;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 1110
    new-instance v0, Landroid/hardware/audio/effect/Range$LoudnessEnhancerRange;

    invoke-direct {v0}, Landroid/hardware/audio/effect/Range$LoudnessEnhancerRange;-><init>()V

    .line 1111
    .local v0, "_aidl_out":Landroid/hardware/audio/effect/Range$LoudnessEnhancerRange;
    invoke-virtual {v0, p1}, Landroid/hardware/audio/effect/Range$LoudnessEnhancerRange;->readFromParcel(Landroid/os/Parcel;)V

    .line 1112
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1107
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/Range$LoudnessEnhancerRange$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/audio/effect/Range$LoudnessEnhancerRange;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/audio/effect/Range$LoudnessEnhancerRange;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 1116
    new-array v0, p1, [Landroid/hardware/audio/effect/Range$LoudnessEnhancerRange;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1107
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/Range$LoudnessEnhancerRange$1;->newArray(I)[Landroid/hardware/audio/effect/Range$LoudnessEnhancerRange;

    move-result-object p1

    return-object p1
.end method
