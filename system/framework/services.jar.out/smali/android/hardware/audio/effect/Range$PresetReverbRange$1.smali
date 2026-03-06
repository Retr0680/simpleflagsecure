.class Landroid/hardware/audio/effect/Range$PresetReverbRange$1;
.super Ljava/lang/Object;
.source "Range.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/audio/effect/Range$PresetReverbRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/audio/effect/Range$PresetReverbRange;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/audio/effect/Range$PresetReverbRange;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 1232
    new-instance v0, Landroid/hardware/audio/effect/Range$PresetReverbRange;

    invoke-direct {v0}, Landroid/hardware/audio/effect/Range$PresetReverbRange;-><init>()V

    .line 1233
    .local v0, "_aidl_out":Landroid/hardware/audio/effect/Range$PresetReverbRange;
    invoke-virtual {v0, p1}, Landroid/hardware/audio/effect/Range$PresetReverbRange;->readFromParcel(Landroid/os/Parcel;)V

    .line 1234
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

    .line 1229
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/Range$PresetReverbRange$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/audio/effect/Range$PresetReverbRange;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/audio/effect/Range$PresetReverbRange;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 1238
    new-array v0, p1, [Landroid/hardware/audio/effect/Range$PresetReverbRange;

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

    .line 1229
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/Range$PresetReverbRange$1;->newArray(I)[Landroid/hardware/audio/effect/Range$PresetReverbRange;

    move-result-object p1

    return-object p1
.end method
