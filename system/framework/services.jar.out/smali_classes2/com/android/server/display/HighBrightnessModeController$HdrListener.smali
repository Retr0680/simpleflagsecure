.class Lcom/android/server/display/HighBrightnessModeController$HdrListener;
.super Landroid/view/SurfaceControlHdrLayerInfoListener;
.source "HighBrightnessModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/HighBrightnessModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HdrListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/HighBrightnessModeController;


# direct methods
.method public static synthetic $r8$lambda$0HjpC6k1WXdrKsTIl1LR5jt9ioY(Lcom/android/server/display/HighBrightnessModeController$HdrListener;IIIF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->lambda$onHdrInfoChanged$0(IIIF)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/display/HighBrightnessModeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/HighBrightnessModeController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 639
    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-direct {p0}, Landroid/view/SurfaceControlHdrLayerInfoListener;-><init>()V

    return-void
.end method

.method private synthetic lambda$onHdrInfoChanged$0(IIIF)V
    .locals 7
    .param p1, "numberOfHdrLayers"    # I
    .param p2, "maxW"    # I
    .param p3, "maxH"    # I
    .param p4, "maxDesiredHdrSdrRatio"    # F

    .line 644
    const-string v0, "HBMController#onHdrInfoChanged"

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    const/4 v3, 0x1

    if-lez p1, :cond_0

    mul-int v4, p2, p3

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v5}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmWidth(Lcom/android/server/display/HighBrightnessModeController;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v6}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmHeight(Lcom/android/server/display/HighBrightnessModeController;)I

    move-result v6

    mul-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v6}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmHbmData(Lcom/android/server/display/HighBrightnessModeController;)Lcom/android/server/display/config/HighBrightnessModeData;

    move-result-object v6

    iget v6, v6, Lcom/android/server/display/config/HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    .line 650
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget-boolean v0, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v0}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmHdrBrightnessCfg(Lcom/android/server/display/HighBrightnessModeController;)Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 651
    move v0, p4

    goto :goto_1

    .line 652
    :cond_1
    move v0, v4

    :goto_1
    nop

    .line 654
    .local v0, "candidateDesiredHdrSdrRatio":F
    cmpg-float v4, v0, v4

    if-gez v4, :cond_2

    .line 655
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring invalid desired HDR/SDR Ratio: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HighBrightnessModeController"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const/high16 v0, 0x3f800000    # 1.0f

    .line 660
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v4}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmMaxDesiredHdrSdrRatio(Lcom/android/server/display/HighBrightnessModeController;)F

    move-result v4

    invoke-static {v4, v0}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v4

    if-nez v4, :cond_3

    .line 662
    iget-object v4, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v4, v3}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fputmForceHbmChangeCallback(Lcom/android/server/display/HighBrightnessModeController;Z)V

    .line 663
    iget-object v3, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v3, v0}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fputmMaxDesiredHdrSdrRatio(Lcom/android/server/display/HighBrightnessModeController;F)V

    .line 668
    :cond_3
    iget-object v3, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget-object v4, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v4}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmBrightness(Lcom/android/server/display/HighBrightnessModeController;)F

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v5}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmUnthrottledBrightness(Lcom/android/server/display/HighBrightnessModeController;)F

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v6}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmThrottlingReason(Lcom/android/server/display/HighBrightnessModeController;)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/display/HighBrightnessModeController;->onBrightnessChanged(FFI)V

    .line 669
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 670
    return-void
.end method


# virtual methods
.method public onHdrInfoChanged(Landroid/os/IBinder;IIIIF)V
    .locals 7
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "numberOfHdrLayers"    # I
    .param p3, "maxW"    # I
    .param p4, "maxH"    # I
    .param p5, "flags"    # I
    .param p6, "maxDesiredHdrSdrRatio"    # F

    .line 643
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v0}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmHandler(Lcom/android/server/display/HighBrightnessModeController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p6

    .end local p2    # "numberOfHdrLayers":I
    .end local p3    # "maxW":I
    .end local p4    # "maxH":I
    .end local p6    # "maxDesiredHdrSdrRatio":F
    .local v3, "numberOfHdrLayers":I
    .local v4, "maxW":I
    .local v5, "maxH":I
    .local v6, "maxDesiredHdrSdrRatio":F
    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/HighBrightnessModeController$HdrListener;IIIF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 671
    return-void
.end method
