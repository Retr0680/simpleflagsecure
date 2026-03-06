.class Landroid/hardware/audio/effect/Descriptor$Common$1;
.super Ljava/lang/Object;
.source "Descriptor.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/audio/effect/Descriptor$Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/audio/effect/Descriptor$Common;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/audio/effect/Descriptor$Common;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 165
    new-instance v0, Landroid/hardware/audio/effect/Descriptor$Common;

    invoke-direct {v0}, Landroid/hardware/audio/effect/Descriptor$Common;-><init>()V

    .line 166
    .local v0, "_aidl_out":Landroid/hardware/audio/effect/Descriptor$Common;
    invoke-virtual {v0, p1}, Landroid/hardware/audio/effect/Descriptor$Common;->readFromParcel(Landroid/os/Parcel;)V

    .line 167
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

    .line 162
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/Descriptor$Common$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/audio/effect/Descriptor$Common;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/audio/effect/Descriptor$Common;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 171
    new-array v0, p1, [Landroid/hardware/audio/effect/Descriptor$Common;

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

    .line 162
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/Descriptor$Common$1;->newArray(I)[Landroid/hardware/audio/effect/Descriptor$Common;

    move-result-object p1

    return-object p1
.end method
