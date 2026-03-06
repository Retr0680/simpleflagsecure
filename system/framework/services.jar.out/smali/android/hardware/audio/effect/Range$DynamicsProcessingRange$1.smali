.class Landroid/hardware/audio/effect/Range$DynamicsProcessingRange$1;
.super Ljava/lang/Object;
.source "Range.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/audio/effect/Range$DynamicsProcessingRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/audio/effect/Range$DynamicsProcessingRange;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/audio/effect/Range$DynamicsProcessingRange;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 866
    new-instance v0, Landroid/hardware/audio/effect/Range$DynamicsProcessingRange;

    invoke-direct {v0}, Landroid/hardware/audio/effect/Range$DynamicsProcessingRange;-><init>()V

    .line 867
    .local v0, "_aidl_out":Landroid/hardware/audio/effect/Range$DynamicsProcessingRange;
    invoke-virtual {v0, p1}, Landroid/hardware/audio/effect/Range$DynamicsProcessingRange;->readFromParcel(Landroid/os/Parcel;)V

    .line 868
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

    .line 863
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/Range$DynamicsProcessingRange$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/audio/effect/Range$DynamicsProcessingRange;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/audio/effect/Range$DynamicsProcessingRange;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 872
    new-array v0, p1, [Landroid/hardware/audio/effect/Range$DynamicsProcessingRange;

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

    .line 863
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/Range$DynamicsProcessingRange$1;->newArray(I)[Landroid/hardware/audio/effect/Range$DynamicsProcessingRange;

    move-result-object p1

    return-object p1
.end method
