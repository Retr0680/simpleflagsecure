.class Landroid/hardware/audio/effect/PresetReverb$Id$1;
.super Ljava/lang/Object;
.source "PresetReverb.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/audio/effect/PresetReverb$Id;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/audio/effect/PresetReverb$Id;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/audio/effect/PresetReverb$Id;
    .locals 2
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 249
    new-instance v0, Landroid/hardware/audio/effect/PresetReverb$Id;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/audio/effect/PresetReverb$Id;-><init>(Landroid/os/Parcel;Landroid/hardware/audio/effect/PresetReverb-IA;)V

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

    .line 246
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/PresetReverb$Id$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/audio/effect/PresetReverb$Id;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/audio/effect/PresetReverb$Id;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 253
    new-array v0, p1, [Landroid/hardware/audio/effect/PresetReverb$Id;

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

    .line 246
    invoke-virtual {p0, p1}, Landroid/hardware/audio/effect/PresetReverb$Id$1;->newArray(I)[Landroid/hardware/audio/effect/PresetReverb$Id;

    move-result-object p1

    return-object p1
.end method
