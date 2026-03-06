.class Landroid/hardware/audio/effect/Range$VirtualizerRange$1;
.super Ljava/lang/Object;
.source "Range.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/audio/effect/Range$VirtualizerRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/audio/effect/Range$VirtualizerRange;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/audio/effect/Range$VirtualizerRange;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 1354
    new-instance v0, Landroid/hardware/audio/effect/Range$VirtualizerRange;

    invoke-direct {v0}, Landroid/hardware/audio/effect/Range$VirtualizerRange;-><init>()V

    .line 1355
    .local v0, "_aidl_out":Landroid/hardware/audio/effect/Range$VirtualizerRange;
    invoke-virtual {v0, p1}, Landroid/hardware/audio/effect/Range$VirtualizerRange;->readFromParcel(Landroid/os/Parcel;)V

    .line 1356
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

    .line 1351
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/Range$VirtualizerRange$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/audio/effect/Range$VirtualizerRange;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/audio/effect/Range$VirtualizerRange;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 1360
    new-array v0, p1, [Landroid/hardware/audio/effect/Range$VirtualizerRange;

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

    .line 1351
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/Range$VirtualizerRange$1;->newArray(I)[Landroid/hardware/audio/effect/Range$VirtualizerRange;

    move-result-object p1

    return-object p1
.end method
