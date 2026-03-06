.class final Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;
.super Ljava/lang/Object;
.source "MediaQualityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/quality/MediaQualityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActiveProcessingPictureListenerInfo"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mPid:I

.field private mUid:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmPid(Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;->mPid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUid(Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;->mUid:I

    return p0
.end method

.method constructor <init>(Lcom/android/server/media/quality/MediaQualityService;IILjava/lang/String;)V
    .locals 0
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1366
    iput p2, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;->mUid:I

    .line 1367
    iput p3, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;->mPid:I

    .line 1368
    iput-object p4, p0, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;->mPackageName:Ljava/lang/String;

    .line 1369
    return-void
.end method
