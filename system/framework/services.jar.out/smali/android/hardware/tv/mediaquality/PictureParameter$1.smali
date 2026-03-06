.class Landroid/hardware/tv/mediaquality/PictureParameter$1;
.super Ljava/lang/Object;
.source "PictureParameter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/mediaquality/PictureParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/tv/mediaquality/PictureParameter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 2
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 1339
    new-instance v0, Landroid/hardware/tv/mediaquality/PictureParameter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/tv/mediaquality/PictureParameter;-><init>(Landroid/os/Parcel;Landroid/hardware/tv/mediaquality/PictureParameter-IA;)V

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

    .line 1336
    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 1343
    new-array v0, p1, [Landroid/hardware/tv/mediaquality/PictureParameter;

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

    .line 1336
    invoke-virtual {p0, p1}, Landroid/hardware/tv/mediaquality/PictureParameter$1;->newArray(I)[Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object p1

    return-object p1
.end method
