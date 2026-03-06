.class Landroid/hardware/audio/effect/HapticGenerator$1;
.super Ljava/lang/Object;
.source "HapticGenerator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/audio/effect/HapticGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/audio/effect/HapticGenerator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/audio/effect/HapticGenerator;
    .locals 2
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 91
    new-instance v0, Landroid/hardware/audio/effect/HapticGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/audio/effect/HapticGenerator;-><init>(Landroid/os/Parcel;Landroid/hardware/audio/effect/HapticGenerator-IA;)V

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

    .line 88
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/HapticGenerator$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/audio/effect/HapticGenerator;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/audio/effect/HapticGenerator;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 95
    new-array v0, p1, [Landroid/hardware/audio/effect/HapticGenerator;

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

    .line 88
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/HapticGenerator$1;->newArray(I)[Landroid/hardware/audio/effect/HapticGenerator;

    move-result-object p1

    return-object p1
.end method
