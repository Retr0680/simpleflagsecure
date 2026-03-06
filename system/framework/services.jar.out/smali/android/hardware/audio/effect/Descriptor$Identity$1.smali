.class Landroid/hardware/audio/effect/Descriptor$Identity$1;
.super Ljava/lang/Object;
.source "Descriptor.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/audio/effect/Descriptor$Identity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/audio/effect/Descriptor$Identity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/audio/effect/Descriptor$Identity;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 96
    new-instance v0, Landroid/hardware/audio/effect/Descriptor$Identity;

    invoke-direct {v0}, Landroid/hardware/audio/effect/Descriptor$Identity;-><init>()V

    .line 97
    .local v0, "_aidl_out":Landroid/hardware/audio/effect/Descriptor$Identity;
    invoke-virtual {v0, p1}, Landroid/hardware/audio/effect/Descriptor$Identity;->readFromParcel(Landroid/os/Parcel;)V

    .line 98
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

    .line 93
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/Descriptor$Identity$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/audio/effect/Descriptor$Identity;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/audio/effect/Descriptor$Identity;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 102
    new-array v0, p1, [Landroid/hardware/audio/effect/Descriptor$Identity;

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

    .line 93
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/Descriptor$Identity$1;->newArray(I)[Landroid/hardware/audio/effect/Descriptor$Identity;

    move-result-object p1

    return-object p1
.end method
