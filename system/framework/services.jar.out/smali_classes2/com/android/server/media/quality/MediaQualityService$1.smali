.class Lcom/android/server/media/quality/MediaQualityService$1;
.super Landroid/view/SurfaceControlActivePictureListener;
.source "MediaQualityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/quality/MediaQualityService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/quality/MediaQualityService;


# direct methods
.method constructor <init>(Lcom/android/server/media/quality/MediaQualityService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/quality/MediaQualityService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$1;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p0}, Landroid/view/SurfaceControlActivePictureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivePicturesChanged([Landroid/view/SurfaceControlActivePicture;)V
    .locals 1
    .param p1, "activePictures"    # [Landroid/view/SurfaceControlActivePicture;

    .line 186
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$1;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0, p1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$mhandleOnActivePicturesChanged(Lcom/android/server/media/quality/MediaQualityService;[Landroid/view/SurfaceControlActivePicture;)V

    .line 187
    return-void
.end method
